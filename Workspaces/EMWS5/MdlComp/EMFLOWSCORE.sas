drop _temp_;
if (P_default1 ge 0.99996511840758) then do;
b_default = 1;
end;
else
if (P_default1 ge 0.99941514104592) then do;
b_default = 2;
end;
else
if (P_default1 ge 0.99758110070164) then do;
b_default = 3;
end;
else
if (P_default1 ge 0.9833537422404) then do;
b_default = 4;
end;
else
if (P_default1 ge 0.95994684429671) then do;
b_default = 5;
end;
else
if (P_default1 ge 0.11318707760473) then do;
b_default = 6;
end;
else
if (P_default1 ge 0.09645047337013) then do;
b_default = 7;
end;
else
if (P_default1 ge 0.09635078853177) then do;
b_default = 8;
end;
else
if (P_default1 ge 0.05076028481021) then do;
b_default = 9;
end;
else
if (P_default1 ge 0.02088600387382) then do;
b_default = 10;
end;
else
if (P_default1 ge 0.01483757319071) then do;
b_default = 11;
end;
else
if (P_default1 ge 0.00734863349172) then do;
b_default = 12;
end;
else
if (P_default1 ge 0.00218698707933) then do;
b_default = 13;
end;
else
if (P_default1 ge 0.00031631720413) then do;
b_default = 14;
end;
else
if (P_default1 ge 0.00006904791822) then do;
b_default = 15;
end;
else
if (P_default1 ge 6.9037294313525E-6) then do;
b_default = 16;
end;
else
do;
_temp_ = dmran(1234);
b_default = floor(17 + 4*_temp_);
end;
