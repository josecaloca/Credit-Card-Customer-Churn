 
*------------------------------------------------------------*;
* Variable: savings;
*------------------------------------------------------------*;
LABEL GRP_savings =
'Grouped: savings';
 
_UFormat200 = put(savings,$3.);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_savings = 1;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq 'A61'
) then do;
GRP_savings = 2;
end;
else
if (_UFormat200 eq 'A65'
) then do;
GRP_savings = 3;
end;
else
if (_UFormat200 eq 'A62'
) then do;
GRP_savings = 4;
end;
else
if (_UFormat200 eq 'A63'
) then do;
GRP_savings = 5;
end;
else
if (_UFormat200 eq 'A64'
) then do;
GRP_savings = 6;
end;
else do;
GRP_savings = 1;
end;
end;
