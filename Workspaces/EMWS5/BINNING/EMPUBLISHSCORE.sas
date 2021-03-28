length _UFormat200 $200;
drop _UFormat200;
_UFormat200='';

*------------------------------------------------------------*;
* Variable: duration;
*------------------------------------------------------------*;
LABEL GRP_duration =
'Grouped: duration';

if MISSING(duration) then do;
GRP_duration = 1;
end;
else if NOT MISSING(duration) then do;
if duration < 12 then do;
GRP_duration = 2;
end;
else
if 12 <= duration AND duration < 18 then do;
GRP_duration = 3;
end;
else
if 18 <= duration AND duration < 24 then do;
GRP_duration = 4;
end;
else
if 24 <= duration then do;
GRP_duration = 5;
end;
end;

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

*------------------------------------------------------------*;
* Variable: pourpose;
*------------------------------------------------------------*;
LABEL GRP_pourpose =
'Grouped: pourpose';

_UFormat200 = put(pourpose,$4.);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_pourpose = 1;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq 'A43'
) then do;
GRP_pourpose = 2;
end;
else
if (_UFormat200 eq 'A40'
) then do;
GRP_pourpose = 3;
end;
else
if (_UFormat200 eq 'A42'
) then do;
GRP_pourpose = 4;
end;
else
if (_UFormat200 eq 'A49'
) then do;
GRP_pourpose = 5;
end;
else
if (_UFormat200 eq 'A41'
) then do;
GRP_pourpose = 6;
end;
else
if (_UFormat200 eq 'A46'
) then do;
GRP_pourpose = 7;
end;
else
if (_UFormat200 eq 'A45'
) then do;
GRP_pourpose = 8;
end;
else
if (_UFormat200 eq 'A44'
) then do;
GRP_pourpose = 9;
end;
else
if (_UFormat200 eq 'A410'
) then do;
GRP_pourpose = 10;
end;
else
if (_UFormat200 eq 'A48'
) then do;
GRP_pourpose = 11;
end;
else do;
GRP_pourpose = 1;
end;
end;

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
