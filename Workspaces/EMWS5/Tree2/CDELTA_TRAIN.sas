if upcase(NAME) = "Q_I_DEFAULT0" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "Q_I_DEFAULT1" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
