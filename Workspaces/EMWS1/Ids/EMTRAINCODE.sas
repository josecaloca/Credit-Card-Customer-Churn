*------------------------------------------------------------*;
* Configuración fuente de datos;
*------------------------------------------------------------*;
libname EMWS1 "C:\Jose\DM_ang\Workspaces\EMWS1";
*------------------------------------------------------------*;
* Ids: creando datos DATA;
*------------------------------------------------------------*;
data EMWS1.Ids_DATA (label="")
/ view=EMWS1.Ids_DATA
;
set JOSE.HMEQ;
run;
