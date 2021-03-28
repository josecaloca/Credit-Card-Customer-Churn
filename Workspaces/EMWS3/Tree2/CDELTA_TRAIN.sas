if upcase(NAME) = "GRP_DEROG" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GRP_NINQ" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GRP_VALUE" then do;
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
