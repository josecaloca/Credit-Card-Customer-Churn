if upcase(NAME) = "AGE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "CREDIT_HISTORY" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "INSTALMENT" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "PERSONAL_STATUS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "Q_DEFAULT0" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "Q_DEFAULT1" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "RESIDENCE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
