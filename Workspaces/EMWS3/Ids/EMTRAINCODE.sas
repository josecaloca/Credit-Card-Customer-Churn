*------------------------------------------------------------*;
* Configuración fuente de datos;
*------------------------------------------------------------*;
libname EMWS3 "C:\Jose\DM_ang\Workspaces\EMWS3";
*------------------------------------------------------------*;
* Ids: creando datos DATA;
*------------------------------------------------------------*;
data EMWS3.Ids_DATA (label="")
/ view=EMWS3.Ids_DATA
;
set JOSE.HMEQ;
run;
