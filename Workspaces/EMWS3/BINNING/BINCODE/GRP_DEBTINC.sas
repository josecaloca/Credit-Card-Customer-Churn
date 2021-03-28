 
*------------------------------------------------------------*;
* Variable: DEBTINC;
*------------------------------------------------------------*;
LABEL GRP_DEBTINC = "Grouped: DEBTINC";
 
if MISSING(DEBTINC) then do;
GRP_DEBTINC = 1;
end;
else if NOT MISSING(DEBTINC) then do;
if DEBTINC < 28.87 then do;
GRP_DEBTINC = 2;
end;
else
if 28.87 <= DEBTINC AND DEBTINC < 34.73 then do;
GRP_DEBTINC = 3;
end;
else
if 34.73 <= DEBTINC AND DEBTINC < 39.2 then do;
GRP_DEBTINC = 4;
end;
else
if 39.2 <= DEBTINC then do;
GRP_DEBTINC = 5;
end;
end;
