 
*------------------------------------------------------------*;
* Variable: NINQ;
*------------------------------------------------------------*;
LABEL GRP_NINQ = "Grouped: NINQ";
 
if MISSING(NINQ) then do;
GRP_NINQ = 1;
end;
else if NOT MISSING(NINQ) then do;
if (NINQ eq 0
) then do;
GRP_NINQ = 2;
end;
else
if (NINQ eq 1
) then do;
GRP_NINQ = 3;
end;
else
if (NINQ eq 2
) then do;
GRP_NINQ = 4;
end;
else
if (NINQ eq 3
) then do;
GRP_NINQ = 5;
end;
else
if (NINQ eq 4
) then do;
GRP_NINQ = 6;
end;
else
if (NINQ eq 5
) then do;
GRP_NINQ = 7;
end;
else
if (NINQ eq 6
) then do;
GRP_NINQ = 8;
end;
else
if (NINQ eq 7
) then do;
GRP_NINQ = 9;
end;
else
if (NINQ eq 10 OR NINQ eq 11 OR NINQ eq 12 OR NINQ eq 13 OR NINQ eq 14 OR NINQ eq 8 OR NINQ eq 9
) then do;
GRP_NINQ = 10;
end;
else do;
GRP_NINQ = 1;
end;
end;
