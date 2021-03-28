 
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
