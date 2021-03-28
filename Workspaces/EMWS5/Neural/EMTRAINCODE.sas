*------------------------------------------------------------*;
* Neural: Create decision matrix;
*------------------------------------------------------------*;
data WORK.default;
  length   default                          $  32
           COUNT                                8
           DATAPRIOR                            8
           TRAINPRIOR                           8
           DECPRIOR                             8
           DECISION1                            8
           DECISION2                            8
           ;

  label    COUNT="Level Counts"
           DATAPRIOR="Data Proportions"
           TRAINPRIOR="Training Proportions"
           DECPRIOR="Decision Priors"
           DECISION1="1"
           DECISION2="0"
           ;
  format   COUNT 10.
           ;
default="1"; COUNT=300; DATAPRIOR=0.3; TRAINPRIOR=0.3; DECPRIOR=0; DECISION1=0; DECISION2=5;
output;
default="0"; COUNT=700; DATAPRIOR=0.7; TRAINPRIOR=0.7; DECPRIOR=0; DECISION1=1; DECISION2=0;
output;
;
run;
proc datasets lib=work nolist;
modify default(type=LOSS label=default);
label DECISION1= '1';
label DECISION2= '0';
run;
quit;
data EM_Neural;
set EMWS5.BINNING_TRAIN(keep=
GRP_acc_status GRP_credit_history GRP_duration GRP_pourpose GRP_savings
default );
run;
*------------------------------------------------------------* ;
* Neural: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    GRP_acc_status(ASC) GRP_credit_history(ASC) GRP_duration(ASC)
   GRP_pourpose(ASC) GRP_savings(ASC) default(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Neural: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;

%mend DMDBVar;
*------------------------------------------------------------*;
* Neural: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_Neural
dmdbcat=WORK.Neural_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
default
;
run;
quit;
*------------------------------------------------------------* ;
* Neural: Interval Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INTINPUTS;

%mend INTINPUTS;
*------------------------------------------------------------* ;
* Neural: Binary Inputs Macro ;
*------------------------------------------------------------* ;
%macro BININPUTS;

%mend BININPUTS;
*------------------------------------------------------------* ;
* Neural: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro NOMINPUTS;

%mend NOMINPUTS;
*------------------------------------------------------------* ;
* Neural: Ordinal Inputs Macro ;
*------------------------------------------------------------* ;
%macro ORDINPUTS;
    GRP_acc_status GRP_credit_history GRP_duration GRP_pourpose GRP_savings
%mend ORDINPUTS;
*------------------------------------------------------------*;
* Neural Network Training;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural dmdbcat=WORK.Neural_DMDB
random=12345
;
nloptions
;
performance alldetails noutilfile;
decision decdata=WORK.default
decvars=
DECISION1
DECISION2
;
netopts
decay=0;
input %ORDINPUTS / level=ordinal id=ord
;
target default / level=NOMINAL id=default
bias
;
arch MLP
Hidden=3
;
Prelim 5 preiter=10
pretime=3600
Outest=EMWS5.Neural_PRELIM_OUTEST
;
save network=EMWS5.Neural_NETWORK.dm_neural;
train Maxiter=50
maxtime=14400
Outest=EMWS5.Neural_outest estiter=1
Outfit=EMWS5.Neural_OUTFIT
;
run;
quit;
proc sort data=EMWS5.Neural_OUTFIT(where=(_iter_ ne . and _NAME_="OVERALL")) out=fit_Neural;
by _ALOSS_;
run;
%GLOBAL ITER;
data _null_;
set fit_Neural(obs=1);
call symput('ITER',put(_ITER_, 6.));
run;
data EMWS5.Neural_INITIAL;
set EMWS5.Neural_outest(where=(_ITER_ eq &ITER and _OBJ_ ne .));
run;
*------------------------------------------------------------*;
* Neural Network Model Selection;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural dmdbcat=WORK.Neural_DMDB
network = EMWS5.Neural_NETWORK.dm_neural
random=12345
;
nloptions noprint;
performance alldetails noutilfile;
decision decdata=WORK.default
decvars=
DECISION1
DECISION2
;
initial inest=EMWS5.Neural_INITIAL;
train tech=NONE;
code file="C:\Jose\DM_ang\Workspaces\EMWS5\Neural\SCORECODE.sas"
group=Neural
;
;
code file="C:\Jose\DM_ang\Workspaces\EMWS5\Neural\RESIDUALSCORECODE.sas"
group=Neural
residual
;
;
score data=EMWS5.BINNING_TRAIN out=_NULL_
outfit=WORK.FIT1
role=TRAIN
outkey=EMWS5.Neural_OUTKEY;
score data=EMWS5.BINNING_TEST out=_NULL_
outfit=WORK.FIT2
role=TEST
outkey=EMWS5.Neural_OUTKEY;
run;
quit;
data EMWS5.Neural_OUTFIT;
merge WORK.FIT1 WORK.FIT2;
run;
data EMWS5.Neural_EMESTIMATE;
set EMWS5.Neural_outest;
if _type_ ^in('HESSIAN' 'GRAD');
run;
proc datasets lib=work nolist;
delete EM_Neural;
run;
quit;
