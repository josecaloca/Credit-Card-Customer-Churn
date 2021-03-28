drop _temp_;
if (P_BAD1 ge 0.8267124754308) then do;
b_BAD = 1;
end;
else
if (P_BAD1 ge 0.67776649114242) then do;
b_BAD = 2;
end;
else
if (P_BAD1 ge 0.53752338099265) then do;
b_BAD = 3;
end;
else
if (P_BAD1 ge 0.35717648929756) then do;
b_BAD = 4;
end;
else
if (P_BAD1 ge 0.18901834618445) then do;
b_BAD = 5;
end;
else
if (P_BAD1 ge 0.12090953973343) then do;
b_BAD = 6;
end;
else
if (P_BAD1 ge 0.09714386484657) then do;
b_BAD = 7;
end;
else
if (P_BAD1 ge 0.08182027381583) then do;
b_BAD = 8;
end;
else
if (P_BAD1 ge 0.07400289853807) then do;
b_BAD = 9;
end;
else
if (P_BAD1 ge 0.06879364334686) then do;
b_BAD = 10;
end;
else
if (P_BAD1 ge 0.06402834778608) then do;
b_BAD = 11;
end;
else
if (P_BAD1 ge 0.05968373843952) then do;
b_BAD = 12;
end;
else
if (P_BAD1 ge 0.05418583869058) then do;
b_BAD = 13;
end;
else
if (P_BAD1 ge 0.05207436063454) then do;
b_BAD = 14;
end;
else
if (P_BAD1 ge 0.0485206126557) then do;
b_BAD = 15;
end;
else
if (P_BAD1 ge 0.04534228540744) then do;
b_BAD = 16;
end;
else
if (P_BAD1 ge 0.045258826238) then do;
_temp_ = dmran(1234);
b_BAD = floor(17 + 2*_temp_);
end;
else
do;
_temp_ = dmran(1234);
b_BAD = floor(19 + 2*_temp_);
end;
