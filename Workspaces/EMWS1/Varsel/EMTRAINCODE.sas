*------------------------------------------------------------* ;
* EM: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    BAD(DESC) DELINQ(ASC) DEROG(ASC) JOB(ASC) NINQ(ASC) REASON(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* EM: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    CLAGE CLNO DEBTINC LOAN MORTDUE VALUE YOJ
%mend DMDBVar;
*------------------------------------------------------------*;
* EM: Create DMDB;
*------------------------------------------------------------*;
libname _spdslib SPDE "C:\Users\JOSECA~1\AppData\Local\Temp\SAS Temporary Files\_TD11816_DESKTOP-97HB97B_\Prc2";
proc dmdb batch data=EMWS1.Part_TRAIN
dmdbcat=WORK.EM_DMDB
maxlevel = 101
out=_spdslib.EM_DMDB
;
class %DMDBClass;
var %DMDBVar;
target
BAD
;
run;
quit;
*------------------------------------------------------------* ;
* Varsel: Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INPUTS;
    CLAGE CLNO DEBTINC DELINQ DEROG JOB LOAN MORTDUE NINQ REASON VALUE YOJ
%mend INPUTS;
proc dmsplit data=_spdslib.EM_DMDB dmdbcat=WORK.EM_DMDB
bins=50 chisq=3.84 passes=6 outvars=WORK._Varsel_OUTESTDMSPLIT
PSHORT
;
;
var %INPUTS;
target BAD;
run;
proc split dmdbcat=WORK.EM_DMDB indmsplit subtree=largest outtree=EMWS1.Varsel_TREE
outnodes =EMWS1.Varsel_OUTNODES outleaf = EMWS1.Varsel_OUTLEAF outimportance = EMWS1.Varsel_OUTIMPORTNC
;
run;
