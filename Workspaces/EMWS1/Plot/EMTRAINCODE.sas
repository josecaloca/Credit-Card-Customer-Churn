*------------------------------------------------------------* ;
* Plot: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    BAD(DESC) CLAGE(ASC) CLNO(ASC) DEBTINC(ASC) DELINQ(ASC) DEROG(ASC) JOB(ASC)
   LOAN(ASC) MORTDUE(ASC) NINQ(ASC) REASON(ASC) VALUE(ASC) YOJ(ASC)
%mend DMDBClass;
*------------------------------------------------------------*;
* Plot: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=EMWS1.Part_TRAIN
dmdbcat=WORK.Plot_DMDB
maxlevel = 23
nonorm
;
class %DMDBClass;
target
BAD
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
data=EMWS1.Part_TRAIN gout=WORK.PlotGRAPH;
*;
title "CLAGE por BAD";
vbar CLAGE /
name = "CLAGE          x BAD            " description = "CLAGE por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "CLNO por BAD";
vbar CLNO /
name = "CLNO           x BAD            " description = "CLNO por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "DEBTINC por BAD";
vbar DEBTINC /
name = "DEBTINC        x BAD            " description = "DEBTINC por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "DELINQ por BAD";
vbar DELINQ /
name = "DELINQ         x BAD            " description = "DELINQ por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
discrete
raxis=axis1 maxis=axis2;
run;
title "DEROG por BAD";
vbar DEROG /
name = "DEROG          x BAD            " description = "DEROG por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
discrete
raxis=axis1 maxis=axis2;
run;
title "JOB por BAD";
vbar JOB /
name = "JOB            x BAD            " description = "JOB por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "LOAN por BAD";
vbar LOAN /
name = "LOAN           x BAD            " description = "LOAN por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "MORTDUE por BAD";
vbar MORTDUE /
name = "MORTDUE        x BAD            " description = "MORTDUE por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "NINQ por BAD";
vbar NINQ /
name = "NINQ           x BAD            " description = "NINQ por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
discrete
raxis=axis1 maxis=axis2;
run;
title "REASON por BAD";
vbar REASON /
name = "REASON         x BAD            " description = "REASON por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "VALUE por BAD";
vbar VALUE /
name = "VALUE          x BAD            " description = "VALUE por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
raxis=axis1 maxis=axis2;
run;
title "YOJ por BAD";
vbar YOJ /
name = "YOJ            x BAD            " description = "YOJ por BAD"
FREQ
type=FREQ
subgroup=BAD
noframe
missing
raxis=axis1 maxis=axis2;
run;
quit;
title;
goptions display;
*------------------------------------------------------------*;
* Plot: copiando gráficos en la carpeta nodo;
*------------------------------------------------------------*;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\CLAGE por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay CLAGE;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\CLNO por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay CLNO;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\DEBTINC por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay DEBTINC;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\DELINQ por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay DELINQ;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\DEROG por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay DEROG;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\JOB por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay JOB;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\LOAN por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay LOAN;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\MORTDUE por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay MORTDUE;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\NINQ por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay NINQ;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\REASON por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay REASON;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\VALUE por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay VALUE;
quit;
goptions device=win;
filename gsasfile;
filename gsasfile "C:\Jose\DM_ang\Workspaces\EMWS1\Plot\GRAPH\YOJ por BAD.png";
goptions device= PNG display gaccess= gsasfile gsfmode= replace cback= white;
proc greplay igout=WORK.PLOTGRAPH nofs;
replay YOJ;
quit;
goptions device=win;
filename gsasfile;
