length _UFormat200 $200;
drop _UFormat200;
_UFormat200='';

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

*------------------------------------------------------------*;
* Variable: VALUE;
*------------------------------------------------------------*;
LABEL GRP_VALUE = "Grouped: VALUE";

if MISSING(VALUE) then do;
GRP_VALUE = 1;
end;
else if NOT MISSING(VALUE) then do;
if VALUE < 66345 then do;
GRP_VALUE = 2;
end;
else
if 66345 <= VALUE AND VALUE < 89107 then do;
GRP_VALUE = 3;
end;
else
if 89107 <= VALUE AND VALUE < 121714 then do;
GRP_VALUE = 4;
end;
else
if 121714 <= VALUE then do;
GRP_VALUE = 5;
end;
end;

*------------------------------------------------------------*;
* Variable: DELINQ;
*------------------------------------------------------------*;
LABEL GRP_DELINQ = "Grouped: DELINQ";

if MISSING(DELINQ) then do;
GRP_DELINQ = 1;
end;
else if NOT MISSING(DELINQ) then do;
if (DELINQ eq 0
) then do;
GRP_DELINQ = 2;
end;
else
if (DELINQ eq 1
) then do;
GRP_DELINQ = 3;
end;
else
if (DELINQ eq 2
) then do;
GRP_DELINQ = 4;
end;
else
if (DELINQ eq 3
) then do;
GRP_DELINQ = 5;
end;
else
if (DELINQ eq 4
) then do;
GRP_DELINQ = 6;
end;
else
if (DELINQ eq 5
) then do;
GRP_DELINQ = 7;
end;
else
if (DELINQ eq 6
) then do;
GRP_DELINQ = 8;
end;
else
if (DELINQ eq 10 OR DELINQ eq 11 OR DELINQ eq 12 OR DELINQ eq 13 OR DELINQ eq 15 OR DELINQ eq 7 OR DELINQ eq 8
) then do;
GRP_DELINQ = 9;
end;
else do;
GRP_DELINQ = 1;
end;
end;

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
