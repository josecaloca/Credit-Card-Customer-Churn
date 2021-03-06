*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_BAD $ 12;
label I_BAD = 'Into: BAD' ;
*** Target Values;
array REG2DRF [2] $12 _temporary_ ('1' '0' );
label U_BAD = 'Unnormalized Into: BAD' ;
*** Unnormalized target values;
ARRAY REG2DRU[2]  _TEMPORARY_ (1 0);

drop _DM_BAD;
_DM_BAD=0;

*** Check IMP_DEBTINC for missing values ;
if missing( IMP_DEBTINC ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Generate dummy variables for IMP_DELINQ ;
drop _1_0 _1_1 _1_2 _1_3 _1_4 _1_5 _1_6 _1_7 _1_8 _1_9 _1_10 _1_11 _1_12 ;
*** encoding is sparse, initialize to zero;
_1_0 = 0;
_1_1 = 0;
_1_2 = 0;
_1_3 = 0;
_1_4 = 0;
_1_5 = 0;
_1_6 = 0;
_1_7 = 0;
_1_8 = 0;
_1_9 = 0;
_1_10 = 0;
_1_11 = 0;
_1_12 = 0;
if missing( IMP_DELINQ ) then do;
   _1_0 = .;
   _1_1 = .;
   _1_2 = .;
   _1_3 = .;
   _1_4 = .;
   _1_5 = .;
   _1_6 = .;
   _1_7 = .;
   _1_8 = .;
   _1_9 = .;
   _1_10 = .;
   _1_11 = .;
   _1_12 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( IMP_DELINQ , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      _1_0 = 1;
   end;
   else if _dm12 = '1'  then do;
      _1_1 = 1;
   end;
   else if _dm12 = '2'  then do;
      _1_2 = 1;
   end;
   else if _dm12 = '3'  then do;
      _1_3 = 1;
   end;
   else if _dm12 = '4'  then do;
      _1_4 = 1;
   end;
   else if _dm12 = '6'  then do;
      _1_6 = 1;
   end;
   else if _dm12 = '5'  then do;
      _1_5 = 1;
   end;
   else if _dm12 = '7'  then do;
      _1_7 = 1;
   end;
   else if _dm12 = '8'  then do;
      _1_8 = 1;
   end;
   else if _dm12 = '11'  then do;
      _1_10 = 1;
   end;
   else if _dm12 = '10'  then do;
      _1_9 = 1;
   end;
   else if _dm12 = '12'  then do;
      _1_11 = 1;
   end;
   else if _dm12 = '13'  then do;
      _1_12 = 1;
   end;
   else if _dm12 = '15'  then do;
      _1_0 = -1;
      _1_1 = -1;
      _1_2 = -1;
      _1_3 = -1;
      _1_4 = -1;
      _1_5 = -1;
      _1_6 = -1;
      _1_7 = -1;
      _1_8 = -1;
      _1_9 = -1;
      _1_10 = -1;
      _1_11 = -1;
      _1_12 = -1;
   end;
   else do;
      _1_0 = .;
      _1_1 = .;
      _1_2 = .;
      _1_3 = .;
      _1_4 = .;
      _1_5 = .;
      _1_6 = .;
      _1_7 = .;
      _1_8 = .;
      _1_9 = .;
      _1_10 = .;
      _1_11 = .;
      _1_12 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for IMP_DEROG ;
drop _2_0 _2_1 _2_2 _2_3 _2_4 _2_5 _2_6 _2_7 _2_8 _2_9 ;
*** encoding is sparse, initialize to zero;
_2_0 = 0;
_2_1 = 0;
_2_2 = 0;
_2_3 = 0;
_2_4 = 0;
_2_5 = 0;
_2_6 = 0;
_2_7 = 0;
_2_8 = 0;
_2_9 = 0;
if missing( IMP_DEROG ) then do;
   _2_0 = .;
   _2_1 = .;
   _2_2 = .;
   _2_3 = .;
   _2_4 = .;
   _2_5 = .;
   _2_6 = .;
   _2_7 = .;
   _2_8 = .;
   _2_9 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( IMP_DEROG , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      _2_0 = 1;
   end;
   else if _dm12 = '1'  then do;
      _2_1 = 1;
   end;
   else if _dm12 = '2'  then do;
      _2_2 = 1;
   end;
   else if _dm12 = '3'  then do;
      _2_3 = 1;
   end;
   else if _dm12 = '4'  then do;
      _2_4 = 1;
   end;
   else if _dm12 = '5'  then do;
      _2_5 = 1;
   end;
   else if _dm12 = '6'  then do;
      _2_6 = 1;
   end;
   else if _dm12 = '7'  then do;
      _2_7 = 1;
   end;
   else if _dm12 = '8'  then do;
      _2_8 = 1;
   end;
   else if _dm12 = '10'  then do;
      _2_0 = -1;
      _2_1 = -1;
      _2_2 = -1;
      _2_3 = -1;
      _2_4 = -1;
      _2_5 = -1;
      _2_6 = -1;
      _2_7 = -1;
      _2_8 = -1;
      _2_9 = -1;
   end;
   else if _dm12 = '9'  then do;
      _2_9 = 1;
   end;
   else do;
      _2_0 = .;
      _2_1 = .;
      _2_2 = .;
      _2_3 = .;
      _2_4 = .;
      _2_5 = .;
      _2_6 = .;
      _2_7 = .;
      _2_8 = .;
      _2_9 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for IMP_JOB ;
drop _3_0 _3_1 _3_2 _3_3 _3_4 ;
*** encoding is sparse, initialize to zero;
_3_0 = 0;
_3_1 = 0;
_3_2 = 0;
_3_3 = 0;
_3_4 = 0;
if missing( IMP_JOB ) then do;
   _3_0 = .;
   _3_1 = .;
   _3_2 = .;
   _3_3 = .;
   _3_4 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm7 $ 7; drop _dm7 ;
   %DMNORMCP( IMP_JOB , _dm7 )
   _dm_find = 0; drop _dm_find;
   if _dm7 <= 'OTHER'  then do;
      if _dm7 <= 'OFFICE'  then do;
         if _dm7 = 'MGR'  then do;
            _3_0 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm7 = 'OFFICE'  then do;
               _3_1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm7 = 'OTHER'  then do;
            _3_2 = 1;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm7 <= 'SALES'  then do;
         if _dm7 = 'PROFEXE'  then do;
            _3_3 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm7 = 'SALES'  then do;
               _3_4 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm7 = 'SELF'  then do;
            _3_0 = -1;
            _3_1 = -1;
            _3_2 = -1;
            _3_3 = -1;
            _3_4 = -1;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      _3_0 = .;
      _3_1 = .;
      _3_2 = .;
      _3_3 = .;
      _3_4 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for IMP_NINQ ;
drop _4_0 _4_1 _4_2 _4_3 _4_4 _4_5 _4_6 _4_7 _4_8 _4_9 _4_10 _4_11 _4_12 _4_13
         ;
*** encoding is sparse, initialize to zero;
_4_0 = 0;
_4_1 = 0;
_4_2 = 0;
_4_3 = 0;
_4_4 = 0;
_4_5 = 0;
_4_6 = 0;
_4_7 = 0;
_4_8 = 0;
_4_9 = 0;
_4_10 = 0;
_4_11 = 0;
_4_12 = 0;
_4_13 = 0;
if missing( IMP_NINQ ) then do;
   _4_0 = .;
   _4_1 = .;
   _4_2 = .;
   _4_3 = .;
   _4_4 = .;
   _4_5 = .;
   _4_6 = .;
   _4_7 = .;
   _4_8 = .;
   _4_9 = .;
   _4_10 = .;
   _4_11 = .;
   _4_12 = .;
   _4_13 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( IMP_NINQ , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '2'  then do;
      if _dm12 <= '11'  then do;
         if _dm12 <= '1'  then do;
            if _dm12 = '0'  then do;
               _4_0 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '1'  then do;
                  _4_1 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '10'  then do;
               _4_10 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '11'  then do;
                  _4_11 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
      end;
      else do;
         if _dm12 <= '13'  then do;
            if _dm12 = '12'  then do;
               _4_12 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '13'  then do;
                  _4_13 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '14'  then do;
               _4_0 = -1;
               _4_1 = -1;
               _4_2 = -1;
               _4_3 = -1;
               _4_4 = -1;
               _4_5 = -1;
               _4_6 = -1;
               _4_7 = -1;
               _4_8 = -1;
               _4_9 = -1;
               _4_10 = -1;
               _4_11 = -1;
               _4_12 = -1;
               _4_13 = -1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '2'  then do;
                  _4_2 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '6'  then do;
         if _dm12 <= '4'  then do;
            if _dm12 = '3'  then do;
               _4_3 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '4'  then do;
                  _4_4 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '5'  then do;
               _4_5 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '6'  then do;
                  _4_6 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
      end;
      else do;
         if _dm12 <= '8'  then do;
            if _dm12 = '7'  then do;
               _4_7 = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '8'  then do;
                  _4_8 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '9'  then do;
               _4_9 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      _4_0 = .;
      _4_1 = .;
      _4_2 = .;
      _4_3 = .;
      _4_4 = .;
      _4_5 = .;
      _4_6 = .;
      _4_7 = .;
      _4_8 = .;
      _4_9 = .;
      _4_10 = .;
      _4_11 = .;
      _4_12 = .;
      _4_13 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for IMP_REASON ;
drop _5_0 ;
if missing( IMP_REASON ) then do;
   _5_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm7 $ 7; drop _dm7 ;
   %DMNORMCP( IMP_REASON , _dm7 )
   if _dm7 = 'DEBTCON'  then do;
      _5_0 = 1;
   end;
   else if _dm7 = 'HOMEIMP'  then do;
      _5_0 = -1;
   end;
   else do;
      _5_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** If missing inputs, use averages;
if _DM_BAD > 0 then do;
   _P0 = 0.1993957704;
   _P1 = 0.8006042296;
   goto REG2DR1;
end;

*** Compute Linear Predictor;
drop _TEMP;
drop _LP0;
_LP0 = 0;

***  Effect: IMP_DEBTINC ;
_TEMP = IMP_DEBTINC ;
_LP0 = _LP0 + (    0.02289913858542 * _TEMP);

***  Effect: IMP_DELINQ ;
_TEMP = 1;
_LP0 = _LP0 + (   -6.36810610762426) * _TEMP * _1_0;
_LP0 = _LP0 + (     -5.514049956722) * _TEMP * _1_1;
_LP0 = _LP0 + (    -5.2843695033657) * _TEMP * _1_2;
_LP0 = _LP0 + (   -4.33915431549382) * _TEMP * _1_3;
_LP0 = _LP0 + (   -4.25984995623968) * _TEMP * _1_4;
_LP0 = _LP0 + (   -3.28507383244363) * _TEMP * _1_5;
_LP0 = _LP0 + (   -3.09323594638332) * _TEMP * _1_6;
_LP0 = _LP0 + (   -3.18770351982685) * _TEMP * _1_7;
_LP0 = _LP0 + (    5.82333407130081) * _TEMP * _1_8;
_LP0 = _LP0 + (    5.70394237244294) * _TEMP * _1_9;
_LP0 = _LP0 + (     6.2858432496825) * _TEMP * _1_10;
_LP0 = _LP0 + (    6.38306165550988) * _TEMP * _1_11;
_LP0 = _LP0 + (     6.8109576786943) * _TEMP * _1_12;

***  Effect: IMP_DEROG ;
_TEMP = 1;
_LP0 = _LP0 + (   -2.86735097139464) * _TEMP * _2_0;
_LP0 = _LP0 + (   -2.11874325860727) * _TEMP * _2_1;
_LP0 = _LP0 + (   -1.76350136096206) * _TEMP * _2_2;
_LP0 = _LP0 + (   -0.48813030136529) * _TEMP * _2_3;
_LP0 = _LP0 + (   -1.38611408157288) * _TEMP * _2_4;
_LP0 = _LP0 + (   -2.42294775600152) * _TEMP * _2_5;
_LP0 = _LP0 + (   -1.63523498828215) * _TEMP * _2_6;
_LP0 = _LP0 + (    6.54670767437824) * _TEMP * _2_7;
_LP0 = _LP0 + (     8.4369694791475) * _TEMP * _2_8;
_LP0 = _LP0 + (   -1.53379076929278) * _TEMP * _2_9;

***  Effect: IMP_JOB ;
_TEMP = 1;
_LP0 = _LP0 + (    0.03770979332431) * _TEMP * _3_0;
_LP0 = _LP0 + (   -0.53848818107953) * _TEMP * _3_1;
_LP0 = _LP0 + (    0.01017544415566) * _TEMP * _3_2;
_LP0 = _LP0 + (    -0.3275979270872) * _TEMP * _3_3;
_LP0 = _LP0 + (    0.93231248131988) * _TEMP * _3_4;

***  Effect: IMP_NINQ ;
_TEMP = 1;
_LP0 = _LP0 + (   -3.20142529362903) * _TEMP * _4_0;
_LP0 = _LP0 + (   -2.97761269627832) * _TEMP * _4_1;
_LP0 = _LP0 + (    -2.5958928200474) * _TEMP * _4_2;
_LP0 = _LP0 + (   -2.72910725202414) * _TEMP * _4_3;
_LP0 = _LP0 + (   -2.16450819343992) * _TEMP * _4_4;
_LP0 = _LP0 + (    -1.7022775235962) * _TEMP * _4_5;
_LP0 = _LP0 + (   -1.40380406429631) * _TEMP * _4_6;
_LP0 = _LP0 + (    -2.0130731413641) * _TEMP * _4_7;
_LP0 = _LP0 + (   -1.86586169639211) * _TEMP * _4_8;
_LP0 = _LP0 + (   -1.45933464010808) * _TEMP * _4_9;
_LP0 = _LP0 + (   -2.48147900155389) * _TEMP * _4_10;
_LP0 = _LP0 + (   -2.84845528171252) * _TEMP * _4_11;
_LP0 = _LP0 + (    8.80778823729157) * _TEMP * _4_12;
_LP0 = _LP0 + (    9.69207784540914) * _TEMP * _4_13;

***  Effect: IMP_REASON ;
_TEMP = 1;
_LP0 = _LP0 + (   -0.16946157702693) * _TEMP * _5_0;

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1;
_TEMP =     9.55572185479483 + _LP0;
if (_TEMP < 0) then do;
   _TEMP = exp(_TEMP);
   _P0 = _TEMP / (1 + _TEMP);
end;
else _P0 = 1 / (1 + exp(-_TEMP));
_P1 = 1.0 - _P0;

REG2DR1:


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
I_BAD = REG2DRF[_IY];
U_BAD = REG2DRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
