if upcase(NAME) = "CLAGE" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "CLNO" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "DEBTINC" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "DELINQ" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "DEROG" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "JOB" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "LOAN" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "MORTDUE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "NINQ" then do;
ROLE = "INPUT";
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
if upcase(NAME) = "VALUE" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "YOJ" then do;
ROLE = "INPUT";
end;
