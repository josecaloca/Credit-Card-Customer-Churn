*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_BAD $ 12;
label I_BAD = 'Into: BAD' ;
*** Target Values;
array REGDRF [2] $12 _temporary_ ('1' '0' );
label U_BAD = 'Unnormalized Into: BAD' ;
*** Unnormalized target values;
ARRAY REGDRU[2]  _TEMPORARY_ (1 0);

*** Generate dummy variables for BAD ;
drop _Y ;
label F_BAD = 'From: BAD' ;
length F_BAD $ 12;
F_BAD = put( BAD , BEST12. );
%DMNORMIP( F_BAD )
if missing( BAD ) then do;
   _Y = .;
end;
else do;
   if F_BAD = '0'  then do;
      _Y = 1;
   end;
   else if F_BAD = '1'  then do;
      _Y = 0;
   end;
   else do;
      _Y = .;
   end;
end;

drop _DM_BAD;
_DM_BAD=0;

*** Generate dummy variables for GRP_IMP_DELINQ ;
drop _1_0 _1_1 ;
if missing( GRP_IMP_DELINQ ) then do;
   _1_0 = .;
   _1_1 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_IMP_DELINQ , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      _1_0 = 1;
      _1_1 = 0;
   end;
   else if _dm12 = '3'  then do;
      _1_0 = 0;
      _1_1 = 1;
   end;
   else if _dm12 = '4'  then do;
      _1_0 = -1;
      _1_1 = -1;
   end;
   else do;
      _1_0 = .;
      _1_1 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_IMP_DEROG ;
drop _2_0 _2_1 ;
if missing( GRP_IMP_DEROG ) then do;
   _2_0 = .;
   _2_1 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_IMP_DEROG , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      _2_0 = 1;
      _2_1 = 0;
   end;
   else if _dm12 = '3'  then do;
      _2_0 = 0;
      _2_1 = 1;
   end;
   else if _dm12 = '4'  then do;
      _2_0 = -1;
      _2_1 = -1;
   end;
   else do;
      _2_0 = .;
      _2_1 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** If missing inputs, use averages;
if _DM_BAD > 0 then do;
   _P0 = 0.1993957704;
   _P1 = 0.8006042296;
   goto REGDR1;
end;

*** Compute Linear Predictor;
drop _TEMP;
drop _LP0;
_LP0 = 0;

***  Effect: GRP_IMP_DELINQ ;
_TEMP = 1;
_LP0 = _LP0 + (   -0.95433214767846) * _TEMP * _1_0;
_LP0 = _LP0 + (   -0.07771239174577) * _TEMP * _1_1;

***  Effect: GRP_IMP_DEROG ;
_TEMP = 1;
_LP0 = _LP0 + (   -0.94790053438677) * _TEMP * _2_0;
_LP0 = _LP0 + (    0.11606584736529) * _TEMP * _2_1;

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1;
_TEMP =    -0.07908916701392 + _LP0;
if (_TEMP < 0) then do;
   _TEMP = exp(_TEMP);
   _P0 = _TEMP / (1 + _TEMP);
end;
else _P0 = 1 / (1 + exp(-_TEMP));
_P1 = 1.0 - _P0;

REGDR1:

*** Residuals;
if (_Y = .) then do;
   R_BAD1 = .;
   R_BAD0 = .;
end;
else do;
    label R_BAD1 = 'Residual: BAD=1' ;
    label R_BAD0 = 'Residual: BAD=0' ;
   R_BAD1 = - _P0;
   R_BAD0 = - _P1;
   select( _Y );
      when (0)  R_BAD1 = R_BAD1 + 1;
      when (1)  R_BAD0 = R_BAD0 + 1;
   end;
end;


*** Decision Processing;
label D_BAD = 'Decision: BAD' ;
label EL_BAD = 'Expected Loss: BAD' ;
label BL_BAD = 'Best Loss: BAD' ;
label CL_BAD = 'Computed Loss: BAD' ;

length D_BAD $ 9;

D_BAD = ' ';
EL_BAD = .;
BL_BAD = .;
CL_BAD = .;

*** Compute Expected Consequences and Choose Decision;
_decnum = 1; drop _decnum;

D_BAD = '1' ;
EL_BAD = _P0 * 0 + _P1 * 1;
drop _sum; 
_sum = _P0 * 5 + _P1 * 0;
if _sum < EL_BAD + -2.27374E-12 then do;
   EL_BAD = _sum; _decnum = 2;
   D_BAD = '0' ;
end;

*** Decision Matrix;
array REGdema [2,2] _temporary_ (
/* row 1 */  0 5
/* row 2 */  1 0
);

*** Find Index of Target Category;
drop _tarnum; select( F_BAD );
   when('1' ) _tarnum = 1;
   when('0' ) _tarnum = 2;
   otherwise _tarnum = 0;
end;
if _tarnum <= 0 then goto REGdeex;

*** Computed Consequence of Chosen Decision;
CL_BAD = REGdema [_tarnum,_decnum];

*** Best Possible Consequence of Any Decision without Cost;
array REGdebe [2] _temporary_ ( 0 0);
BL_BAD = REGdebe [_tarnum];


REGdeex:;

*** End Decision Processing ;

*** Posterior Probabilities and Predicted Level;
label P_BAD1 = 'Predicted: BAD=1' ;
label P_BAD0 = 'Predicted: BAD=0' ;
P_BAD1 = _P0;
_MAXP = _P0;
_IY = 1;
P_BAD0 = _P1;
if (_P1 >  _MAXP + 1E-8) then do;
   _MAXP = _P1;
   _IY = 2;
end;
I_BAD = REGDRF[_IY];
U_BAD = REGDRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
