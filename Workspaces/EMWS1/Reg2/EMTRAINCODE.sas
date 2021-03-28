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
BAD="1"; COUNT=1189; DATAPRIOR=0.1994966442953; TRAINPRIOR=0.1994966442953; DECPRIOR=.; DECISION1=1; DECISION2=0;
output;
BAD="0"; COUNT=4771; DATAPRIOR=0.80050335570469; TRAINPRIOR=0.80050335570469; DECPRIOR=.; DECISION1=0; DECISION2=1;
output;
;
run;
proc datasets lib=work nolist;
modify BAD(type=PROFIT label=BAD);
label DECISION1= '1';
label DECISION2= '0';
run;
quit;
data EM_DMREG / view=EM_DMREG;
set EMWS1.Impt_TRAIN(keep=
BAD IMP_DEBTINC IMP_DELINQ IMP_DEROG IMP_JOB IMP_NINQ IMP_REASON IMP_VALUE );
run;
*------------------------------------------------------------* ;
* Reg2: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    BAD(DESC) IMP_DELINQ(ASC) IMP_DEROG(ASC) IMP_JOB(ASC) IMP_NINQ(ASC)
   IMP_REASON(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg2: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    IMP_DEBTINC IMP_VALUE
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
validata = EMWS1.Impt_VALIDATE
outest = EMWS1.Reg2_EMESTIMATE
outterms = EMWS1.Reg2_OUTTERMS
outmap= EMWS1.Reg2_MAPDS namelen=200
;
class
BAD
IMP_DELINQ
IMP_DEROG
IMP_JOB
IMP_NINQ
IMP_REASON
;
model BAD =
IMP_DEBTINC
IMP_DELINQ
IMP_DEROG
IMP_JOB
IMP_NINQ
IMP_REASON
IMP_VALUE
/error=binomial link=LOGIT
coding=DEVIATION
nodesignprint
selection=STEPWISE choose=NONE
Hierarchy=CLASS
Rule=NONE
;
;
score data=EMWS1.Impt_TEST
out=_null_
outfit=EMWS1.Reg2_FITTEST
role = TEST
;
code file="C:\Jose\DM_ang\Workspaces\EMWS1\Reg2\EMPUBLISHSCORE.sas"
group=Reg2
;
code file="C:\Jose\DM_ang\Workspaces\EMWS1\Reg2\EMFLOWSCORE.sas"
group=Reg2
residual
;
run;
quit;
