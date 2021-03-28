 
*------------------------------------------------------------*;
* Variable: credit_history;
*------------------------------------------------------------*;
LABEL GRP_credit_history =
'Grouped: credit_history';
 
_UFormat200 = put(credit_history,$3.);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_credit_history = 1;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq 'A32'
) then do;
GRP_credit_history = 2;
end;
else
if (_UFormat200 eq 'A34'
) then do;
GRP_credit_history = 3;
end;
else
if (_UFormat200 eq 'A33'
) then do;
GRP_credit_history = 4;
end;
else
if (_UFormat200 eq 'A31'
) then do;
GRP_credit_history = 5;
end;
else
if (_UFormat200 eq 'A30'
) then do;
GRP_credit_history = 6;
end;
else do;
GRP_credit_history = 1;
end;
end;
