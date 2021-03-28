drop _temp_;
if (P_BAD1 ge 0.74242424242424) then do;
_temp_ = dmran(1234);
b_BAD = floor(1 + 3*_temp_);
end;
else
if (P_BAD1 ge 0.29496402877697) then do;
b_BAD = 4;
end;
else
if (P_BAD1 ge 0.14201183431952) then do;
_temp_ = dmran(1234);
b_BAD = floor(5 + 2*_temp_);
end;
else
do;
_temp_ = dmran(1234);
b_BAD = floor(7 + 14*_temp_);
end;
