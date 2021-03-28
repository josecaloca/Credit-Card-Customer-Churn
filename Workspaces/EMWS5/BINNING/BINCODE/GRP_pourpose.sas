 
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
