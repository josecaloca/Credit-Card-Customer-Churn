*------------------------------------------------------------*;
* Reg2: Create decision matrix;
*------------------------------------------------------------*;
data WORK.BAD;
  length   BAD                              $  32
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
BAD="1"; COUNT=1189; DATAPRIOR=0.1994966442953; TRAINPRIOR=0.1994966442953; DECPRIOR=0; DECISION1=0; DECISION2=5;
output;
BAD="0"; COUNT=4771; DATAPRIOR=0.80050335570469; TRAINPRIOR=0.80050335570469; DECPRIOR=0; DECISION1=1; DECISION2=0;
output;
;
run;
proc datasets lib=work nolist;
modify BAD(type=LOSS label=BAD);
label DECISION1= '1';
label DECISION2= '0';
run;
quit;
data EM_DMREG / view=EM_DMREG;
set EMWS4.BINNING_TRAIN(keep=
BAD GRP_IMP_DELINQ GRP_IMP_DEROG GRP_IMP_NINQ );
run;
*------------------------------------------------------------* ;
* Reg2: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    BAD(DESC) GRP_IMP_DELINQ(ASC) GRP_IMP_DEROG(ASC) GRP_IMP_NINQ(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg2: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;

%mend DMDBVar;
*------------------------------------------------------------*;
* Reg2: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg2_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
BAD
;
run;
quit;
*------------------------------------------------------------*;
* Reg2: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg2_DMDB
validata = EMWS4.BINNING_VALIDATE
outest = EMWS4.Reg2_EMESTIMATE
outterms = EMWS4.Reg2_OUTTERMS
outmap= EMWS4.Reg2_MAPDS namelen=200
;
class
BAD
GRP_IMP_DELINQ
GRP_IMP_DEROG
GRP_IMP_NINQ
;
model BAD =
GRP_IMP_DELINQ
GRP_IMP_DEROG
GRP_IMP_NINQ
/error=binomial link=LOGIT
coding=DEVIATION
nodesignprint
;
;
decision decdata=WORK.BAD
decvars=
DECISION1
DECISION2
;
score data=EMWS4.BINNING_TEST
out=_null_
outfit=EMWS4.Reg2_FITTEST
role = TEST
;
code file="C:\Jose\DM_ang\Workspaces\EMWS4\Reg2\EMPUBLISHSCORE.sas"
group=Reg2
;
code file="C:\Jose\DM_ang\Workspaces\EMWS4\Reg2\EMFLOWSCORE.sas"
group=Reg2
residual
;
run;
quit;
