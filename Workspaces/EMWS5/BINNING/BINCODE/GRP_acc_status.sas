 
*------------------------------------------------------------*;
* Variable: acc_status;
*------------------------------------------------------------*;
LABEL GRP_acc_status =
'Grouped: acc_status';
 
_UFormat200 = put(acc_status,$3.);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_acc_status = 1;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq 'A14'
) then do;
GRP_acc_status = 2;
end;
else
if (_UFormat200 eq 'A12'
) then do;
GRP_acc_status = 3;
end;
else
if (_UFormat200 eq 'A11'
) then do;
GRP_acc_status = 4;
end;
else
if (_UFormat200 eq 'A13'
) then do;
GRP_acc_status = 5;
end;
else do;
GRP_acc_status = 1;
end;
end;
