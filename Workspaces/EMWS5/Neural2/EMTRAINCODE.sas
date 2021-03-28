*------------------------------------------------------------*;
* Neural2: Create decision matrix;
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
data EM_Neural2;
set EMWS5.VarClus_TRAIN(keep=
acc_status age credit_history default duration employment instalment job
other_instalments personal_status pourpose residence savings );
run;
*------------------------------------------------------------* ;
* Neural2: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    acc_status(ASC) credit_history(ASC) default(DESC) employment(ASC)
   instalment(ASC) job(ASC) other_instalments(ASC) personal_status(ASC)
   pourpose(ASC) residence(ASC) savings(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Neural2: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    age duration
%mend DMDBVar;
*------------------------------------------------------------*;
* Neural2: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_Neural2
dmdbcat=WORK.Neural2_DMDB
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
* Neural2: Interval Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INTINPUTS;
    age duration
%mend INTINPUTS;
*------------------------------------------------------------* ;
* Neural2: Binary Inputs Macro ;
*------------------------------------------------------------* ;
%macro BININPUTS;

%mend BININPUTS;
*------------------------------------------------------------* ;
* Neural2: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro NOMINPUTS;
    acc_status credit_history employment instalment job other_instalments
   personal_status pourpose residence savings
%mend NOMINPUTS;
*------------------------------------------------------------* ;
* Neural2: Ordinal Inputs Macro ;
*------------------------------------------------------------* ;
%macro ORDINPUTS;

%mend ORDINPUTS;
*------------------------------------------------------------*;
* Neural Network Training;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural2 dmdbcat=WORK.Neural2_DMDB
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
input %INTINPUTS / level=interval id=intvl
;
input %NOMINPUTS / level=nominal id=nom
;
target default / level=NOMINAL id=default
bias
;
arch MLP
Hidden=6
;
Prelim 5 preiter=10
pretime=3600
Outest=EMWS5.Neural2_PRELIM_OUTEST
;
save network=EMWS5.Neural2_NETWORK.dm_neural;
train Maxiter=200
maxtime=14400
Outest=EMWS5.Neural2_outest estiter=1
Outfit=EMWS5.Neural2_OUTFIT
;
run;
quit;
proc sort data=EMWS5.Neural2_OUTFIT(where=(_iter_ ne . and _NAME_="OVERALL")) out=fit_Neural2;
by _ALOSS_;
run;
%GLOBAL ITER;
data _null_;
set fit_Neural2(obs=1);
call symput('ITER',put(_ITER_, 6.));
run;
data EMWS5.Neural2_INITIAL;
set EMWS5.Neural2_outest(where=(_ITER_ eq &ITER and _OBJ_ ne .));
run;
*------------------------------------------------------------*;
* Neural Network Model Selection;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural2 dmdbcat=WORK.Neural2_DMDB
network = EMWS5.Neural2_NETWORK.dm_neural
random=12345
;
nloptions noprint;
performance alldetails noutilfile;
decision decdata=WORK.default
decvars=
DECISION1
DECISION2
;
initial inest=EMWS5.Neural2_INITIAL;
train tech=NONE;
code file="C:\Jose\DM_ang\Workspaces\EMWS5\Neural2\SCORECODE.sas"
group=Neural2
;
;
code file="C:\Jose\DM_ang\Workspaces\EMWS5\Neural2\RESIDUALSCORECODE.sas"
group=Neural2
residual
;
;
score data=EMWS5.VarClus_TRAIN out=_NULL_
outfit=WORK.FIT1
role=TRAIN
outkey=EMWS5.Neural2_OUTKEY;
score data=EMWS5.VarClus_TEST out=_NULL_
outfit=WORK.FIT2
role=TEST
outkey=EMWS5.Neural2_OUTKEY;
run;
quit;
data EMWS5.Neural2_OUTFIT;
merge WORK.FIT1 WORK.FIT2;
run;
data EMWS5.Neural2_EMESTIMATE;
set EMWS5.Neural2_outest;
if _type_ ^in('HESSIAN' 'GRAD');
run;
proc datasets lib=work nolist;
delete EM_Neural2;
run;
quit;
