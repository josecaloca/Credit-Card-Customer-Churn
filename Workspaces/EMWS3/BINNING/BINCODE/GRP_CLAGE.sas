 
*------------------------------------------------------------*;
* Variable: CLAGE;
*------------------------------------------------------------*;
LABEL GRP_CLAGE = "Grouped: CLAGE";
 
if MISSING(CLAGE) then do;
GRP_CLAGE = 1;
end;
else if NOT MISSING(CLAGE) then do;
if CLAGE < 116.22 then do;
GRP_CLAGE = 2;
end;
else
if 116.22 <= CLAGE AND CLAGE < 175.17 then do;
GRP_CLAGE = 3;
end;
else
if 175.17 <= CLAGE AND CLAGE < 230.93 then do;
GRP_CLAGE = 4;
end;
else
if 230.93 <= CLAGE then do;
GRP_CLAGE = 5;
end;
end;
