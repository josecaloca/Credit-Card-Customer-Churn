*------------------------------------------------------------* ;
* EM: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    acc_status(ASC) credit_history(ASC) debtors(ASC) default(DESC) employment(ASC)
   foreign_worker(ASC) housing(ASC) instalment(ASC) job(ASC) number_of_credit(ASC)
   other_instalments(ASC) people(ASC) personal_status(ASC) pourpose(ASC)
   property(ASC) residence(ASC) savings(ASC) telephone(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* EM: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    age credit_amt duration
%mend DMDBVar;
*------------------------------------------------------------*;
* EM: Create DMDB;
*------------------------------------------------------------*;
libname _spdslib SPDE "C:\Users\JOSECA~1\AppData\Local\Temp\SAS Temporary Files\_TD13232_DESKTOP-97HB97B_\Prc2";
proc dmdb batch data=EMWS5.Part_TRAIN
dmdbcat=WORK.EM_DMDB
maxlevel = 101
out=_spdslib.EM_DMDB
;
class %DMDBClass;
var %DMDBVar;
target
default
;
run;
quit;
*------------------------------------------------------------* ;
* Varsel: Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INPUTS;
               ACC_STATUS AGE CREDIT_AMT CREDIT_HISTORY DEBTORS DURATION EMPLOYMENT
              foreign_worker HOUSING INSTALMENT JOB NUMBER_OF_CREDIT OTHER_INSTALMENTS PEOPLE
   personal_status POURPOSE PROPERTY RESIDENCE SAVINGS TELEPHONE
%mend INPUTS;
proc dmsplit data=_spdslib.EM_DMDB dmdbcat=WORK.EM_DMDB
bins=50 chisq=3.84 passes=6 outvars=WORK._Varsel_OUTESTDMSPLIT
PSHORT
;
;
var %INPUTS;
target default;
run;
proc split dmdbcat=WORK.EM_DMDB indmsplit subtree=largest outtree=EMWS5.Varsel_TREE
outnodes =EMWS5.Varsel_OUTNODES outleaf = EMWS5.Varsel_OUTLEAF outimportance = EMWS5.Varsel_OUTIMPORTNC
;
run;
