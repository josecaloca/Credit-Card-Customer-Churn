*------------------------------------------------------------*;
* Reg: Create decision matrix;
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
set EMWS3.Part_TRAIN(keep=
BAD CLAGE CLNO DEBTINC DELINQ DEROG JOB LOAN MORTDUE NINQ REASON VALUE YOJ );
run;
*------------------------------------------------------------* ;
* Reg: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    BAD(DESC) DELINQ(ASC) DEROG(ASC) JOB(ASC) NINQ(ASC) REASON(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    CLAGE CLNO DEBTINC LOAN MORTDUE VALUE YOJ
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg_DMDB
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
* Reg: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg_DMDB
validata = EMWS3.Part_VALIDATE
outest = EMWS3.Reg_EMESTIMATE
outterms = EMWS3.Reg_OUTTERMS
outmap= EMWS3.Reg_MAPDS namelen=200
;
class
BAD
DELINQ
DEROG
JOB
NINQ
REASON
;
model BAD =
CLAGE
CLNO
DEBTINC
DELINQ
DEROG
JOB
LOAN
MORTDUE
NINQ
REASON
VALUE
YOJ
/error=binomial link=LOGIT
coding=DEVIATION
nodesignprint
selection=STEPWISE choose=NONE
Hierarchy=CLASS
Rule=NONE
;
;
score data=EMWS3.Part_TEST
out=_null_
outfit=EMWS3.Reg_FITTEST
role = TEST
;
code file="C:\Jose\DM_ang\Workspaces\EMWS3\Reg\EMPUBLISHSCORE.sas"
group=Reg
;
code file="C:\Jose\DM_ang\Workspaces\EMWS3\Reg\EMFLOWSCORE.sas"
group=Reg
residual
;
run;
quit;
