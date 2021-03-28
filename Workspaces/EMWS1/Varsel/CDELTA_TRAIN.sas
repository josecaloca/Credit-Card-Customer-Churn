if upcase(name) = 'CLNO' then role = 'REJECTED';
else
if upcase(name) = 'LOAN' then role = 'REJECTED';
else
if upcase(name) = 'YOJ' then role = 'REJECTED';
if upcase(strip(name)) = "G_DELINQ" then level = "NOMINAL";
if upcase(strip(name)) = "G_DEROG" then level = "NOMINAL";
if upcase(strip(name)) = "G_NINQ" then level = "NOMINAL";
if upcase(strip(name)) = "G_JOB" then level = "NOMINAL";
