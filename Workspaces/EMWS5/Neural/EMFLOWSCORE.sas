***********************************;
*** Begin Scoring Code for Neural;
***********************************;
DROP _DM_BAD _EPS _NOCL_ _MAX_ _MAXP_ _SUM_ _NTRIALS;
 _DM_BAD = 0;
 _NOCL_ = .;
 _MAX_ = .;
 _MAXP_ = .;
 _SUM_ = .;
 _NTRIALS = .;
 _EPS =                1E-10;
LENGTH _WARN_ $4
      F_default  $ 12
;
      label GRP_acc_status2 = 'Dummy: GRP_acc_status=2' ;

      label GRP_acc_status3 = 'Dummy: GRP_acc_status=3' ;

      label GRP_acc_status4 = 'Dummy: GRP_acc_status=4' ;

      label GRP_credit_history2 = 'Dummy: GRP_credit_history=2' ;

      label GRP_credit_history3 = 'Dummy: GRP_credit_history=3' ;

      label GRP_credit_history4 = 'Dummy: GRP_credit_history=4' ;

      label GRP_credit_history5 = 'Dummy: GRP_credit_history=5' ;

      label GRP_duration2 = 'Dummy: GRP_duration=2' ;

      label GRP_duration3 = 'Dummy: GRP_duration=3' ;

      label GRP_duration4 = 'Dummy: GRP_duration=4' ;

      label GRP_pourpose2 = 'Dummy: GRP_pourpose=2' ;

      label GRP_pourpose3 = 'Dummy: GRP_pourpose=3' ;

      label GRP_pourpose4 = 'Dummy: GRP_pourpose=4' ;

      label GRP_pourpose5 = 'Dummy: GRP_pourpose=5' ;

      label GRP_pourpose6 = 'Dummy: GRP_pourpose=6' ;

      label GRP_pourpose7 = 'Dummy: GRP_pourpose=7' ;

      label GRP_pourpose8 = 'Dummy: GRP_pourpose=8' ;

      label GRP_pourpose9 = 'Dummy: GRP_pourpose=9' ;

      label GRP_pourpose10 = 'Dummy: GRP_pourpose=10' ;

      label GRP_savings2 = 'Dummy: GRP_savings=2' ;

      label GRP_savings3 = 'Dummy: GRP_savings=3' ;

      label GRP_savings4 = 'Dummy: GRP_savings=4' ;

      label GRP_savings5 = 'Dummy: GRP_savings=5' ;

      label H11 = 'Hidden: H1=1' ;

      label H12 = 'Hidden: H1=2' ;

      label H13 = 'Hidden: H1=3' ;

      label I_default = 'Into: default' ;

      label F_default = 'From: default' ;

      label U_default = 'Unnormalized Into: default' ;

      label P_default1 = 'Predicted: default=1' ;

      label R_default1 = 'Residual: default=1' ;

      label P_default0 = 'Predicted: default=0' ;

      label R_default0 = 'Residual: default=0' ;

      label  _WARN_ = "Warnings";

*** Generate dummy variables for GRP_acc_status ;
drop GRP_acc_status2 GRP_acc_status3 GRP_acc_status4 ;
if missing( GRP_acc_status ) then do;
   GRP_acc_status2 = .;
   GRP_acc_status3 = .;
   GRP_acc_status4 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_acc_status , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      GRP_acc_status2 = -0.63245553203367;
      GRP_acc_status3 = -0.63245553203367;
      GRP_acc_status4 = -0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_acc_status2 = 0.63245553203367;
      GRP_acc_status3 = -0.63245553203367;
      GRP_acc_status4 = -0.63245553203367;
   end;
   else if _dm12 = '4'  then do;
      GRP_acc_status2 = 0.63245553203367;
      GRP_acc_status3 = 0.63245553203367;
      GRP_acc_status4 = -0.63245553203367;
   end;
   else if _dm12 = '5'  then do;
      GRP_acc_status2 = 0.63245553203367;
      GRP_acc_status3 = 0.63245553203367;
      GRP_acc_status4 = 0.63245553203367;
   end;
   else do;
      GRP_acc_status2 = .;
      GRP_acc_status3 = .;
      GRP_acc_status4 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_credit_history ;
drop GRP_credit_history2 GRP_credit_history3 GRP_credit_history4
        GRP_credit_history5 ;
if missing( GRP_credit_history ) then do;
   GRP_credit_history2 = .;
   GRP_credit_history3 = .;
   GRP_credit_history4 = .;
   GRP_credit_history5 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_credit_history , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      GRP_credit_history2 = -0.55901699437494;
      GRP_credit_history3 = -0.55901699437494;
      GRP_credit_history4 = -0.55901699437494;
      GRP_credit_history5 = -0.55901699437494;
   end;
   else if _dm12 = '3'  then do;
      GRP_credit_history2 = 0.55901699437494;
      GRP_credit_history3 = -0.55901699437494;
      GRP_credit_history4 = -0.55901699437494;
      GRP_credit_history5 = -0.55901699437494;
   end;
   else if _dm12 = '4'  then do;
      GRP_credit_history2 = 0.55901699437494;
      GRP_credit_history3 = 0.55901699437494;
      GRP_credit_history4 = -0.55901699437494;
      GRP_credit_history5 = -0.55901699437494;
   end;
   else if _dm12 = '5'  then do;
      GRP_credit_history2 = 0.55901699437494;
      GRP_credit_history3 = 0.55901699437494;
      GRP_credit_history4 = 0.55901699437494;
      GRP_credit_history5 = -0.55901699437494;
   end;
   else if _dm12 = '6'  then do;
      GRP_credit_history2 = 0.55901699437494;
      GRP_credit_history3 = 0.55901699437494;
      GRP_credit_history4 = 0.55901699437494;
      GRP_credit_history5 = 0.55901699437494;
   end;
   else do;
      GRP_credit_history2 = .;
      GRP_credit_history3 = .;
      GRP_credit_history4 = .;
      GRP_credit_history5 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_duration ;
drop GRP_duration2 GRP_duration3 GRP_duration4 ;
if missing( GRP_duration ) then do;
   GRP_duration2 = .;
   GRP_duration3 = .;
   GRP_duration4 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_duration , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '5'  then do;
      GRP_duration2 = 0.63245553203367;
      GRP_duration3 = 0.63245553203367;
      GRP_duration4 = 0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_duration2 = 0.63245553203367;
      GRP_duration3 = -0.63245553203367;
      GRP_duration4 = -0.63245553203367;
   end;
   else if _dm12 = '2'  then do;
      GRP_duration2 = -0.63245553203367;
      GRP_duration3 = -0.63245553203367;
      GRP_duration4 = -0.63245553203367;
   end;
   else if _dm12 = '4'  then do;
      GRP_duration2 = 0.63245553203367;
      GRP_duration3 = 0.63245553203367;
      GRP_duration4 = -0.63245553203367;
   end;
   else do;
      GRP_duration2 = .;
      GRP_duration3 = .;
      GRP_duration4 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_pourpose ;
drop GRP_pourpose2 GRP_pourpose3 GRP_pourpose4 GRP_pourpose5 GRP_pourpose6
        GRP_pourpose7 GRP_pourpose8 GRP_pourpose9 GRP_pourpose10 ;
if missing( GRP_pourpose ) then do;
   GRP_pourpose2 = .;
   GRP_pourpose3 = .;
   GRP_pourpose4 = .;
   GRP_pourpose5 = .;
   GRP_pourpose6 = .;
   GRP_pourpose7 = .;
   GRP_pourpose8 = .;
   GRP_pourpose9 = .;
   GRP_pourpose10 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_pourpose , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '4'  then do;
      if _dm12 <= '2'  then do;
         if _dm12 <= '11'  then do;
            if _dm12 = '10'  then do;
               GRP_pourpose2 = 0.38924947208076;
               GRP_pourpose3 = 0.38924947208076;
               GRP_pourpose4 = 0.38924947208076;
               GRP_pourpose5 = 0.38924947208076;
               GRP_pourpose6 = 0.38924947208076;
               GRP_pourpose7 = 0.38924947208076;
               GRP_pourpose8 = 0.38924947208076;
               GRP_pourpose9 = 0.38924947208076;
               GRP_pourpose10 = -0.38924947208076;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '11'  then do;
                  GRP_pourpose2 = 0.38924947208076;
                  GRP_pourpose3 = 0.38924947208076;
                  GRP_pourpose4 = 0.38924947208076;
                  GRP_pourpose5 = 0.38924947208076;
                  GRP_pourpose6 = 0.38924947208076;
                  GRP_pourpose7 = 0.38924947208076;
                  GRP_pourpose8 = 0.38924947208076;
                  GRP_pourpose9 = 0.38924947208076;
                  GRP_pourpose10 = 0.38924947208076;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '2'  then do;
               GRP_pourpose2 = -0.38924947208076;
               GRP_pourpose3 = -0.38924947208076;
               GRP_pourpose4 = -0.38924947208076;
               GRP_pourpose5 = -0.38924947208076;
               GRP_pourpose6 = -0.38924947208076;
               GRP_pourpose7 = -0.38924947208076;
               GRP_pourpose8 = -0.38924947208076;
               GRP_pourpose9 = -0.38924947208076;
               GRP_pourpose10 = -0.38924947208076;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            GRP_pourpose2 = 0.38924947208076;
            GRP_pourpose3 = -0.38924947208076;
            GRP_pourpose4 = -0.38924947208076;
            GRP_pourpose5 = -0.38924947208076;
            GRP_pourpose6 = -0.38924947208076;
            GRP_pourpose7 = -0.38924947208076;
            GRP_pourpose8 = -0.38924947208076;
            GRP_pourpose9 = -0.38924947208076;
            GRP_pourpose10 = -0.38924947208076;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '4'  then do;
               GRP_pourpose2 = 0.38924947208076;
               GRP_pourpose3 = 0.38924947208076;
               GRP_pourpose4 = -0.38924947208076;
               GRP_pourpose5 = -0.38924947208076;
               GRP_pourpose6 = -0.38924947208076;
               GRP_pourpose7 = -0.38924947208076;
               GRP_pourpose8 = -0.38924947208076;
               GRP_pourpose9 = -0.38924947208076;
               GRP_pourpose10 = -0.38924947208076;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '7'  then do;
         if _dm12 <= '6'  then do;
            if _dm12 = '5'  then do;
               GRP_pourpose2 = 0.38924947208076;
               GRP_pourpose3 = 0.38924947208076;
               GRP_pourpose4 = 0.38924947208076;
               GRP_pourpose5 = -0.38924947208076;
               GRP_pourpose6 = -0.38924947208076;
               GRP_pourpose7 = -0.38924947208076;
               GRP_pourpose8 = -0.38924947208076;
               GRP_pourpose9 = -0.38924947208076;
               GRP_pourpose10 = -0.38924947208076;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '6'  then do;
                  GRP_pourpose2 = 0.38924947208076;
                  GRP_pourpose3 = 0.38924947208076;
                  GRP_pourpose4 = 0.38924947208076;
                  GRP_pourpose5 = 0.38924947208076;
                  GRP_pourpose6 = -0.38924947208076;
                  GRP_pourpose7 = -0.38924947208076;
                  GRP_pourpose8 = -0.38924947208076;
                  GRP_pourpose9 = -0.38924947208076;
                  GRP_pourpose10 = -0.38924947208076;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '7'  then do;
               GRP_pourpose2 = 0.38924947208076;
               GRP_pourpose3 = 0.38924947208076;
               GRP_pourpose4 = 0.38924947208076;
               GRP_pourpose5 = 0.38924947208076;
               GRP_pourpose6 = 0.38924947208076;
               GRP_pourpose7 = -0.38924947208076;
               GRP_pourpose8 = -0.38924947208076;
               GRP_pourpose9 = -0.38924947208076;
               GRP_pourpose10 = -0.38924947208076;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '8'  then do;
            GRP_pourpose2 = 0.38924947208076;
            GRP_pourpose3 = 0.38924947208076;
            GRP_pourpose4 = 0.38924947208076;
            GRP_pourpose5 = 0.38924947208076;
            GRP_pourpose6 = 0.38924947208076;
            GRP_pourpose7 = 0.38924947208076;
            GRP_pourpose8 = -0.38924947208076;
            GRP_pourpose9 = -0.38924947208076;
            GRP_pourpose10 = -0.38924947208076;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '9'  then do;
               GRP_pourpose2 = 0.38924947208076;
               GRP_pourpose3 = 0.38924947208076;
               GRP_pourpose4 = 0.38924947208076;
               GRP_pourpose5 = 0.38924947208076;
               GRP_pourpose6 = 0.38924947208076;
               GRP_pourpose7 = 0.38924947208076;
               GRP_pourpose8 = 0.38924947208076;
               GRP_pourpose9 = -0.38924947208076;
               GRP_pourpose10 = -0.38924947208076;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      GRP_pourpose2 = .;
      GRP_pourpose3 = .;
      GRP_pourpose4 = .;
      GRP_pourpose5 = .;
      GRP_pourpose6 = .;
      GRP_pourpose7 = .;
      GRP_pourpose8 = .;
      GRP_pourpose9 = .;
      GRP_pourpose10 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_savings ;
drop GRP_savings2 GRP_savings3 GRP_savings4 GRP_savings5 ;
if missing( GRP_savings ) then do;
   GRP_savings2 = .;
   GRP_savings3 = .;
   GRP_savings4 = .;
   GRP_savings5 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_savings , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      GRP_savings2 = -0.55901699437494;
      GRP_savings3 = -0.55901699437494;
      GRP_savings4 = -0.55901699437494;
      GRP_savings5 = -0.55901699437494;
   end;
   else if _dm12 = '3'  then do;
      GRP_savings2 = 0.55901699437494;
      GRP_savings3 = -0.55901699437494;
      GRP_savings4 = -0.55901699437494;
      GRP_savings5 = -0.55901699437494;
   end;
   else if _dm12 = '4'  then do;
      GRP_savings2 = 0.55901699437494;
      GRP_savings3 = 0.55901699437494;
      GRP_savings4 = -0.55901699437494;
      GRP_savings5 = -0.55901699437494;
   end;
   else if _dm12 = '5'  then do;
      GRP_savings2 = 0.55901699437494;
      GRP_savings3 = 0.55901699437494;
      GRP_savings4 = 0.55901699437494;
      GRP_savings5 = -0.55901699437494;
   end;
   else if _dm12 = '6'  then do;
      GRP_savings2 = 0.55901699437494;
      GRP_savings3 = 0.55901699437494;
      GRP_savings4 = 0.55901699437494;
      GRP_savings5 = 0.55901699437494;
   end;
   else do;
      GRP_savings2 = .;
      GRP_savings3 = .;
      GRP_savings4 = .;
      GRP_savings5 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;
*** *************************;
*** Writing the Node ord ;
*** *************************;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     1.06324242829785 * GRP_acc_status2  +      1.4388737573454 *
        GRP_acc_status3  +     0.79135504267205 * GRP_acc_status4
          +     0.87138310300778 * GRP_credit_history2
          +                1E-10 * GRP_credit_history3
          +     0.07395399861491 * GRP_credit_history4
          +     0.12695069063371 * GRP_credit_history5
          +  1.0000000827403E-10 * GRP_duration2  +  9.9999994396249E-11 *
        GRP_duration3  +  1.0000000133514E-10 * GRP_duration4
          +     1.46958184817951 * GRP_pourpose2  +     0.54768516394763 *
        GRP_pourpose3  +  1.0000000133514E-10 * GRP_pourpose4
          +     2.45876398075337 * GRP_pourpose5  +     0.37391410595514 *
        GRP_pourpose6  +  9.9999999600419E-11 * GRP_pourpose7
          +  9.9999994396249E-11 * GRP_pourpose8  +  1.0000000827403E-10 *
        GRP_pourpose9  +      2.2139363947525 * GRP_pourpose10
          +     0.94520474783645 * GRP_savings2  +  1.0000000827403E-10 *
        GRP_savings3  +     0.49964207697826 * GRP_savings4
          +     0.41085297802019 * GRP_savings5 ;
   H12  =     2.15147291718301 * GRP_acc_status2  +     2.31437613536176 *
        GRP_acc_status3  +     0.63101710548318 * GRP_acc_status4
          +     0.74498541053998 * GRP_credit_history2
          +     0.41833197701319 * GRP_credit_history3
          +     0.62478626876624 * GRP_credit_history4
          +                1E-10 * GRP_credit_history5
          +     0.08154696075291 * GRP_duration2  +  9.9999994396249E-11 *
        GRP_duration3  +     0.14760600774393 * GRP_duration4
          +     1.74472674740342 * GRP_pourpose2  +  1.0000000133514E-10 *
        GRP_pourpose3  +  1.0000000827403E-10 * GRP_pourpose4
          +     4.35954675112891 * GRP_pourpose5  +  9.9999994396249E-11 *
        GRP_pourpose6  +  1.0000000827403E-10 * GRP_pourpose7
          +  1.0000000133514E-10 * GRP_pourpose8  +     1.13650719457767 *
        GRP_pourpose9  +  9.9999994396249E-11 * GRP_pourpose10
          +       0.829673301188 * GRP_savings2  +     0.45548712040032 *
        GRP_savings3  +  1.0000000133514E-10 * GRP_savings4
          +  1.0000000133514E-10 * GRP_savings5 ;
   H13  =     0.42071690139704 * GRP_acc_status2  +     0.35055515047105 *
        GRP_acc_status3  +     0.05341878845655 * GRP_acc_status4
          +  1.0000000827403E-10 * GRP_credit_history2
          +     0.05728639764379 * GRP_credit_history3
          +                1E-10 * GRP_credit_history4
          +     0.34364816750091 * GRP_credit_history5
          +     0.00512180423758 * GRP_duration2  +     0.18700191186454 *
        GRP_duration3  +     0.02348966282822 * GRP_duration4
          +     0.52041249607525 * GRP_pourpose2  +     0.12833814958348 *
        GRP_pourpose3  +  1.0000000133514E-10 * GRP_pourpose4
          +  1.0000000827403E-10 * GRP_pourpose5  +     0.81521279073145 *
        GRP_pourpose6  +  9.9999994396249E-11 * GRP_pourpose7
          +  9.9999994396249E-11 * GRP_pourpose8  +  9.9999994396249E-11 *
        GRP_pourpose9  +  1.0000000827403E-10 * GRP_pourpose10
          +  1.0000000133514E-10 * GRP_savings2  +     0.09061525884904 *
        GRP_savings3  +     0.21726237197706 * GRP_savings4
          +  1.0000000827403E-10 * GRP_savings5 ;
   H11  =     1.55048474060545 + H11 ;
   H12  =     0.23894452863513 + H12 ;
   H13  =     0.69166436626921 + H13 ;
   H11  = TANH(H11 );
   H12  = TANH(H12 );
   H13  = TANH(H13 );
END;
ELSE DO;
   H11  = .;
   H12  = .;
   H13  = .;
END;
*** *************************;
*** Writing the Node default ;
*** *************************;

*** Generate dummy variables for default ;
drop default1 default0 ;
label F_default = 'From: default' ;
length F_default $ 12;
F_default = put( default , BEST12. );
%DMNORMIP( F_default )
if missing( default ) then do;
   default1 = .;
   default0 = .;
end;
else do;
   if F_default = '0'  then do;
      default1 = 0;
      default0 = 1;
   end;
   else if F_default = '1'  then do;
      default1 = 1;
      default0 = 0;
   end;
   else do;
      default1 = .;
      default0 = .;
   end;
end;
IF _DM_BAD EQ 0 THEN DO;
   P_default1  =    -8.31614635264269 * H11  +      6.4637710841217 * H12
          +     4.56379532327133 * H13 ;
   P_default1  =    -1.96819761727551 + P_default1 ;
   P_default0  = 0;
   _MAX_ = MAX (P_default1 , P_default0 );
   _SUM_ = 0.;
   P_default1  = EXP(P_default1  - _MAX_);
   _SUM_ = _SUM_ + P_default1 ;
   P_default0  = EXP(P_default0  - _MAX_);
   _SUM_ = _SUM_ + P_default0 ;
   P_default1  = P_default1  / _SUM_;
   P_default0  = P_default0  / _SUM_;
END;
ELSE DO;
   P_default1  = .;
   P_default0  = .;
END;
IF _DM_BAD EQ 1 THEN DO;
   P_default1  =                  0.3;
   P_default0  =                  0.7;
END;
*** *****************************;
*** Writing the Residuals  of the Node default ;
*** ******************************;
IF MISSING( default1 ) THEN R_default1  = . ;
ELSE R_default1  = default1  - P_default1 ;
IF MISSING( default0 ) THEN R_default0  = . ;
ELSE R_default0  = default0  - P_default0 ;


*** Decision Processing;
label D_DEFAULT = 'Decision: default' ;
label EL_DEFAULT = 'Expected Loss: default' ;
label BL_DEFAULT = 'Best Loss: default' ;
label CL_DEFAULT = 'Computed Loss: default' ;

length D_DEFAULT $ 9;

D_DEFAULT = ' ';
EL_DEFAULT = .;
BL_DEFAULT = .;
CL_DEFAULT = .;

*** Compute Expected Consequences and Choose Decision;
_decnum = 1; drop _decnum;

D_DEFAULT = '1' ;
EL_DEFAULT = P_default1 * 0 + P_default0 * 1;
drop _sum;
_sum = P_default1 * 5 + P_default0 * 0;
if _sum < EL_DEFAULT + -2.27374E-12 then do;
   EL_DEFAULT = _sum; _decnum = 2;
   D_DEFAULT = '0' ;
end;

*** Decision Matrix;
array NEURALdema [2,2] _temporary_ (
/* row 1 */  0 5
/* row 2 */  1 0
);

*** Find Index of Target Category;
drop _tarnum; select( F_default );
   when('1' ) _tarnum = 1;
   when('0' ) _tarnum = 2;
   otherwise _tarnum = 0;
end;
if _tarnum <= 0 then goto NEURALdeex;

*** Computed Consequence of Chosen Decision;
CL_DEFAULT = NEURALdema [_tarnum,_decnum];

*** Best Possible Consequence of Any Decision without Cost;
array NEURALdebe [2] _temporary_ ( 0 0);
BL_DEFAULT = NEURALdebe [_tarnum];


NEURALdeex:;

*** End Decision Processing ;
*** *************************;
*** Writing the I_default  AND U_default ;
*** *************************;
_MAXP_ = P_default1 ;
I_default  = "1           " ;
U_default  =                    1;
IF( _MAXP_ LT P_default0  ) THEN DO;
   _MAXP_ = P_default0 ;
   I_default  = "0           " ;
   U_default  =                    0;
END;
********************************;
*** End Scoring Code for Neural;
********************************;
drop
H11
H12
H13
;
