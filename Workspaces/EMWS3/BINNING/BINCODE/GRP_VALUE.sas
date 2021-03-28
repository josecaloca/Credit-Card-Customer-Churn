 
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
