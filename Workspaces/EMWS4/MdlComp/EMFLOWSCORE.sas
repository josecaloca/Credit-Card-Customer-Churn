drop _temp_;
if (P_BAD1 ge 0.582116100984) then do;
b_BAD = 1;
end;
else
if (P_BAD1 ge 0.45668710340885) then do;
b_BAD = 2;
end;
else
if (P_BAD1 ge 0.32900966830345) then do;
b_BAD = 3;
end;
else
if (P_BAD1 ge 0.30601284304099) then do;
b_BAD = 4;
end;
else
if (P_BAD1 ge 0.21676428472823) then do;
b_BAD = 5;
end;
else
if (P_BAD1 ge 0.20762721283381) then do;
b_BAD = 6;
end;
else
if (P_BAD1 ge 0.16237627614914) then do;
b_BAD = 7;
end;
else
if (P_BAD1 ge 0.13901388314779) then do;
b_BAD = 8;
end;
else
if (P_BAD1 ge 0.10623528642505) then do;
_temp_ = dmran(1234);
b_BAD = floor(9 + 3*_temp_);
end;
else
do;
_temp_ = dmran(1234);
b_BAD = floor(12 + 9*_temp_);
end;
