if upcase(NAME) = "CLNO" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "DEROG" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "JOB" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "MORTDUE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "NINQ" then do;
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
if upcase(NAME) = "REASON" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "YOJ" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
