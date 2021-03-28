if upcase(NAME) = "IMP_JOB" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_MORTDUE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_REASON" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_YOJ" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "Q_BAD0" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "Q_BAD1" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
