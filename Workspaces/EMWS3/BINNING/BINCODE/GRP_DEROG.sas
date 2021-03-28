 
*------------------------------------------------------------*;
* Variable: DEROG;
*------------------------------------------------------------*;
LABEL GRP_DEROG = "Grouped: DEROG";
 
if MISSING(DEROG) then do;
GRP_DEROG = 1;
end;
else if NOT MISSING(DEROG) then do;
if (DEROG eq 0
) then do;
GRP_DEROG = 2;
end;
else
if (DEROG eq 1
) then do;
GRP_DEROG = 3;
end;
else
if (DEROG eq 2
) then do;
GRP_DEROG = 4;
end;
else
if (DEROG eq 3
) then do;
GRP_DEROG = 5;
end;
else
if (DEROG eq 10 OR DEROG eq 4 OR DEROG eq 5 OR DEROG eq 6 OR DEROG eq 7 OR DEROG eq 8 OR DEROG eq 9
) then do;
GRP_DEROG = 6;
end;
else do;
GRP_DEROG = 1;
end;
end;
