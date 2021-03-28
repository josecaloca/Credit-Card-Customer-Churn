*------------------------------------------------------------*;
* Generating Bins for interval variables;
*------------------------------------------------------------*;
if age eq . then BIN_age= .;
else do;
if age < 27 then BIN_age=1;
else if age < 33 then BIN_age=2;
else if age < 42 then BIN_age=3;
else if age >= 42 then BIN_age=4;
end;
if duration eq . then BIN_duration= .;
else do;
if duration < 12 then BIN_duration=1;
else if duration < 18 then BIN_duration=2;
else if duration < 24 then BIN_duration=3;
else if duration >= 24 then BIN_duration=4;
end;
drop
age
duration
;
