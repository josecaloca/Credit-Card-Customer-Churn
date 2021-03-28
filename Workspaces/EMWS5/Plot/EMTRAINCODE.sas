*------------------------------------------------------------* ;
* Plot: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    acc_status(ASC) age(ASC) credit_amt(ASC) credit_history(ASC) debtors(ASC)
   default(DESC) duration(ASC) employment(ASC) foreign_worker(ASC) housing(ASC)
   instalment(ASC) job(ASC) number_of_credit(ASC) other_instalments(ASC)
   people(ASC) personal_status(ASC) pourpose(ASC) property(ASC) residence(ASC)
   savings(ASC) telephone(ASC)
%mend DMDBClass;
*------------------------------------------------------------*;
* Plot: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=EMWS5.Ids_DATA
dmdbcat=WORK.Plot_DMDB
maxlevel = 23
nonorm
;
class %DMDBClass;
target
default
;
run;
quit;
*------------------------------------------------------------*;
* Plot: Creating variable by class target charts;
*------------------------------------------------------------*;
goptions ftext="SWISS";
goptions nodisplay device=PNG;
axis1 width=2 offset=(1,1) label=(rotate=90 angle=270) minor=none;
axis2 width=2 minor=none;
pattern1 value=solid;
proc gchart
data=EMWS5.Ids_DATA gout=WORK.PlotGRAPH;
*;
title "acc_status by default";
vbar acc_status /
name = "acc_status     x default        " description = "acc_status by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "age by default";
vbar age /
name = "age            x default        " description = "age by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "credit_amt by default";
vbar credit_amt /
name = "credit_amt     x default        " description = "credit_amt by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "credit_history by default";
vbar credit_history /
name = "credit_history x default        " description = "credit_history by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "debtors by default";
vbar debtors /
name = "debtors        x default        " description = "debtors by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "duration by default";
vbar duration /
name = "duration       x default        " description = "duration by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "employment by default";
vbar employment /
name = "employment     x default        " description = "employment by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "foreign_worker by default";
vbar foreign_worker /
name = "foreign_worker x default        " description = "foreign_worker by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "housing by default";
vbar housing /
name = "housing        x default        " description = "housing by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "instalment by default";
vbar instalment /
name = "instalment     x default        " description = "instalment by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
discrete
raxis=axis1 maxis=axis2;
run;
title "job by default";
vbar job /
name = "job            x default        " description = "job by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "number_of_credit by default";
vbar number_of_credit /
name = "number_of_credix default        " description = "number_of_credit by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
discrete
raxis=axis1 maxis=axis2;
run;
title "other_instalments by default";
vbar other_instalments /
name = "other_instalmenx default        " description = "other_instalments by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "people by default";
vbar people /
name = "people         x default        " description = "people by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
discrete
raxis=axis1 maxis=axis2;
run;
title "personal_status by default";
vbar personal_status /
name = "personal_statusx default        " description = "personal_status by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "pourpose by default";
vbar pourpose /
name = "pourpose       x default        " description = "pourpose by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "property by default";
vbar property /
name = "property       x default        " description = "property by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "residence by default";
vbar residence /
name = "residence      x default        " description = "residence by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
discrete
raxis=axis1 maxis=axis2;
run;
title "savings by default";
vbar savings /
name = "savings        x default        " description = "savings by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "telephone by default";
vbar telephone /
name = "telephone      x default        " description = "telephone by default"
FREQ
type=FREQ
subgroup=default
noframe
missing
raxis=axis1 maxis=axis2;
run;
quit;
title;
goptions display;
*------------------------------------------------------------*;
* Plot: Copying graphs to node folder;
*------------------------------------------------------------*;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\acc_status by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay ACC_STAT;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\age by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay AGE;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\credit_amt by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay CREDIT_A;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\credit_history by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay CREDIT_H;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\debtors by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay DEBTORS;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\duration by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay DURATION;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\employment by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay EMPLOYME;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\foreign_worker by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay FOREIGN_;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\housing by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay HOUSING;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\instalment by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay INSTALME;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\job by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay JOB;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\number_of_credit by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay NUMBER_O;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\other_instalments by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay OTHER_IN;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\people by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay PEOPLE;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\personal_status by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay PERSONAL;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\pourpose by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay POURPOSE;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\property by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay PROPERTY;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\residence by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay RESIDENC;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\savings by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay SAVINGS;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS5\Plot\GRAPH\telephone by default.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay TELEPHON;
quit;
goptions device=win;
filename gsasfile;
