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
      label S_age = 'Standard: age' ;

      label S_duration = 'Standard: duration' ;

      label acc_statusA11 = 'Dummy: acc_status=A11' ;

      label acc_statusA12 = 'Dummy: acc_status=A12' ;

      label acc_statusA13 = 'Dummy: acc_status=A13' ;

      label credit_historyA30 = 'Dummy: credit_history=A30' ;

      label credit_historyA31 = 'Dummy: credit_history=A31' ;

      label credit_historyA32 = 'Dummy: credit_history=A32' ;

      label credit_historyA33 = 'Dummy: credit_history=A33' ;

      label employmentA71 = 'Dummy: employment=A71' ;

      label employmentA72 = 'Dummy: employment=A72' ;

      label employmentA73 = 'Dummy: employment=A73' ;

      label employmentA74 = 'Dummy: employment=A74' ;

      label instalment1 = 'Dummy: instalment=1' ;

      label instalment2 = 'Dummy: instalment=2' ;

      label instalment3 = 'Dummy: instalment=3' ;

      label jobA171 = 'Dummy: job=A171' ;

      label jobA172 = 'Dummy: job=A172' ;

      label jobA173 = 'Dummy: job=A173' ;

      label other_instalmentsA141 = 'Dummy: other_instalments=A141' ;

      label other_instalmentsA142 = 'Dummy: other_instalments=A142' ;

      label personal_statusA91 = 'Dummy: personal_status=A91' ;

      label personal_statusA92 = 'Dummy: personal_status=A92' ;

      label personal_statusA93 = 'Dummy: personal_status=A93' ;

      label pourposeA40 = 'Dummy: pourpose=A40' ;

      label pourposeA41 = 'Dummy: pourpose=A41' ;

      label pourposeA410 = 'Dummy: pourpose=A410' ;

      label pourposeA42 = 'Dummy: pourpose=A42' ;

      label pourposeA43 = 'Dummy: pourpose=A43' ;

      label pourposeA44 = 'Dummy: pourpose=A44' ;

      label pourposeA45 = 'Dummy: pourpose=A45' ;

      label pourposeA46 = 'Dummy: pourpose=A46' ;

      label pourposeA48 = 'Dummy: pourpose=A48' ;

      label residence1 = 'Dummy: residence=1' ;

      label residence2 = 'Dummy: residence=2' ;

      label residence3 = 'Dummy: residence=3' ;

      label savingsA61 = 'Dummy: savings=A61' ;

      label savingsA62 = 'Dummy: savings=A62' ;

      label savingsA63 = 'Dummy: savings=A63' ;

      label savingsA64 = 'Dummy: savings=A64' ;

      label H11 = 'Hidden: H1=1' ;

      label H12 = 'Hidden: H1=2' ;

      label H13 = 'Hidden: H1=3' ;

      label H14 = 'Hidden: H1=4' ;

      label H15 = 'Hidden: H1=5' ;

      label H16 = 'Hidden: H1=6' ;

      label I_default = 'Into: default' ;

      label F_default = 'From: default' ;

      label U_default = 'Unnormalized Into: default' ;

      label P_default1 = 'Predicted: default=1' ;

      label R_default1 = 'Residual: default=1' ;

      label P_default0 = 'Predicted: default=0' ;

      label R_default0 = 'Residual: default=0' ;

      label  _WARN_ = "Warnings";

*** Generate dummy variables for acc_status ;
drop acc_statusA11 acc_statusA12 acc_statusA13 ;
if missing( acc_status ) then do;
   acc_statusA11 = .;
   acc_statusA12 = .;
   acc_statusA13 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm3 $ 3; drop _dm3 ;
   _dm3 = put( acc_status , $3. );
   %DMNORMIP( _dm3 )
   if _dm3 = 'A14'  then do;
      acc_statusA11 = -1;
      acc_statusA12 = -1;
      acc_statusA13 = -1;
   end;
   else if _dm3 = 'A12'  then do;
      acc_statusA11 = 0;
      acc_statusA12 = 1;
      acc_statusA13 = 0;
   end;
   else if _dm3 = 'A11'  then do;
      acc_statusA11 = 1;
      acc_statusA12 = 0;
      acc_statusA13 = 0;
   end;
   else if _dm3 = 'A13'  then do;
      acc_statusA11 = 0;
      acc_statusA12 = 0;
      acc_statusA13 = 1;
   end;
   else do;
      acc_statusA11 = .;
      acc_statusA12 = .;
      acc_statusA13 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for credit_history ;
drop credit_historyA30 credit_historyA31 credit_historyA32 credit_historyA33 ;
*** encoding is sparse, initialize to zero;
credit_historyA30 = 0;
credit_historyA31 = 0;
credit_historyA32 = 0;
credit_historyA33 = 0;
if missing( credit_history ) then do;
   credit_historyA30 = .;
   credit_historyA31 = .;
   credit_historyA32 = .;
   credit_historyA33 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm3 $ 3; drop _dm3 ;
   _dm3 = put( credit_history , $3. );
   %DMNORMIP( _dm3 )
   if _dm3 = 'A32'  then do;
      credit_historyA32 = 1;
   end;
   else if _dm3 = 'A34'  then do;
      credit_historyA30 = -1;
      credit_historyA31 = -1;
      credit_historyA32 = -1;
      credit_historyA33 = -1;
   end;
   else if _dm3 = 'A33'  then do;
      credit_historyA33 = 1;
   end;
   else if _dm3 = 'A31'  then do;
      credit_historyA31 = 1;
   end;
   else if _dm3 = 'A30'  then do;
      credit_historyA30 = 1;
   end;
   else do;
      credit_historyA30 = .;
      credit_historyA31 = .;
      credit_historyA32 = .;
      credit_historyA33 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for employment ;
drop employmentA71 employmentA72 employmentA73 employmentA74 ;
*** encoding is sparse, initialize to zero;
employmentA71 = 0;
employmentA72 = 0;
employmentA73 = 0;
employmentA74 = 0;
if missing( employment ) then do;
   employmentA71 = .;
   employmentA72 = .;
   employmentA73 = .;
   employmentA74 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm3 $ 3; drop _dm3 ;
   _dm3 = put( employment , $3. );
   %DMNORMIP( _dm3 )
   if _dm3 = 'A73'  then do;
      employmentA73 = 1;
   end;
   else if _dm3 = 'A75'  then do;
      employmentA71 = -1;
      employmentA72 = -1;
      employmentA73 = -1;
      employmentA74 = -1;
   end;
   else if _dm3 = 'A74'  then do;
      employmentA74 = 1;
   end;
   else if _dm3 = 'A72'  then do;
      employmentA72 = 1;
   end;
   else if _dm3 = 'A71'  then do;
      employmentA71 = 1;
   end;
   else do;
      employmentA71 = .;
      employmentA72 = .;
      employmentA73 = .;
      employmentA74 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for instalment ;
drop instalment1 instalment2 instalment3 ;
if missing( instalment ) then do;
   instalment1 = .;
   instalment2 = .;
   instalment3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( instalment , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '4'  then do;
      instalment1 = -1;
      instalment2 = -1;
      instalment3 = -1;
   end;
   else if _dm12 = '2'  then do;
      instalment1 = 0;
      instalment2 = 1;
      instalment3 = 0;
   end;
   else if _dm12 = '3'  then do;
      instalment1 = 0;
      instalment2 = 0;
      instalment3 = 1;
   end;
   else if _dm12 = '1'  then do;
      instalment1 = 1;
      instalment2 = 0;
      instalment3 = 0;
   end;
   else do;
      instalment1 = .;
      instalment2 = .;
      instalment3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for job ;
drop jobA171 jobA172 jobA173 ;
if missing( job ) then do;
   jobA171 = .;
   jobA172 = .;
   jobA173 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm4 $ 4; drop _dm4 ;
   _dm4 = put( job , $4. );
   %DMNORMIP( _dm4 )
   if _dm4 = 'A173'  then do;
      jobA171 = 0;
      jobA172 = 0;
      jobA173 = 1;
   end;
   else if _dm4 = 'A172'  then do;
      jobA171 = 0;
      jobA172 = 1;
      jobA173 = 0;
   end;
   else if _dm4 = 'A174'  then do;
      jobA171 = -1;
      jobA172 = -1;
      jobA173 = -1;
   end;
   else if _dm4 = 'A171'  then do;
      jobA171 = 1;
      jobA172 = 0;
      jobA173 = 0;
   end;
   else do;
      jobA171 = .;
      jobA172 = .;
      jobA173 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for other_instalments ;
drop other_instalmentsA141 other_instalmentsA142 ;
if missing( other_instalments ) then do;
   other_instalmentsA141 = .;
   other_instalmentsA142 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm4 $ 4; drop _dm4 ;
   _dm4 = put( other_instalments , $4. );
   %DMNORMIP( _dm4 )
   if _dm4 = 'A143'  then do;
      other_instalmentsA141 = -1;
      other_instalmentsA142 = -1;
   end;
   else if _dm4 = 'A141'  then do;
      other_instalmentsA141 = 1;
      other_instalmentsA142 = 0;
   end;
   else if _dm4 = 'A142'  then do;
      other_instalmentsA141 = 0;
      other_instalmentsA142 = 1;
   end;
   else do;
      other_instalmentsA141 = .;
      other_instalmentsA142 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for personal_status ;
drop personal_statusA91 personal_statusA92 personal_statusA93 ;
if missing( personal_status ) then do;
   personal_statusA91 = .;
   personal_statusA92 = .;
   personal_statusA93 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm3 $ 3; drop _dm3 ;
   _dm3 = put( personal_status , $3. );
   %DMNORMIP( _dm3 )
   if _dm3 = 'A93'  then do;
      personal_statusA91 = 0;
      personal_statusA92 = 0;
      personal_statusA93 = 1;
   end;
   else if _dm3 = 'A92'  then do;
      personal_statusA91 = 0;
      personal_statusA92 = 1;
      personal_statusA93 = 0;
   end;
   else if _dm3 = 'A94'  then do;
      personal_statusA91 = -1;
      personal_statusA92 = -1;
      personal_statusA93 = -1;
   end;
   else if _dm3 = 'A91'  then do;
      personal_statusA91 = 1;
      personal_statusA92 = 0;
      personal_statusA93 = 0;
   end;
   else do;
      personal_statusA91 = .;
      personal_statusA92 = .;
      personal_statusA93 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for pourpose ;
drop pourposeA40 pourposeA41 pourposeA410 pourposeA42 pourposeA43 pourposeA44
        pourposeA45 pourposeA46 pourposeA48 ;
*** encoding is sparse, initialize to zero;
pourposeA40 = 0;
pourposeA41 = 0;
pourposeA410 = 0;
pourposeA42 = 0;
pourposeA43 = 0;
pourposeA44 = 0;
pourposeA45 = 0;
pourposeA46 = 0;
pourposeA48 = 0;
if missing( pourpose ) then do;
   pourposeA40 = .;
   pourposeA41 = .;
   pourposeA410 = .;
   pourposeA42 = .;
   pourposeA43 = .;
   pourposeA44 = .;
   pourposeA45 = .;
   pourposeA46 = .;
   pourposeA48 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm4 $ 4; drop _dm4 ;
   _dm4 = put( pourpose , $4. );
   %DMNORMIP( _dm4 )
   if _dm4 = 'A43'  then do;
      pourposeA43 = 1;
   end;
   else if _dm4 = 'A40'  then do;
      pourposeA40 = 1;
   end;
   else if _dm4 = 'A42'  then do;
      pourposeA42 = 1;
   end;
   else if _dm4 = 'A49'  then do;
      pourposeA40 = -1;
      pourposeA41 = -1;
      pourposeA410 = -1;
      pourposeA42 = -1;
      pourposeA43 = -1;
      pourposeA44 = -1;
      pourposeA45 = -1;
      pourposeA46 = -1;
      pourposeA48 = -1;
   end;
   else if _dm4 = 'A41'  then do;
      pourposeA41 = 1;
   end;
   else if _dm4 = 'A46'  then do;
      pourposeA46 = 1;
   end;
   else if _dm4 = 'A45'  then do;
      pourposeA45 = 1;
   end;
   else if _dm4 = 'A44'  then do;
      pourposeA44 = 1;
   end;
   else if _dm4 = 'A410'  then do;
      pourposeA410 = 1;
   end;
   else if _dm4 = 'A48'  then do;
      pourposeA48 = 1;
   end;
   else do;
      pourposeA40 = .;
      pourposeA41 = .;
      pourposeA410 = .;
      pourposeA42 = .;
      pourposeA43 = .;
      pourposeA44 = .;
      pourposeA45 = .;
      pourposeA46 = .;
      pourposeA48 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for residence ;
drop residence1 residence2 residence3 ;
if missing( residence ) then do;
   residence1 = .;
   residence2 = .;
   residence3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( residence , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '4'  then do;
      residence1 = -1;
      residence2 = -1;
      residence3 = -1;
   end;
   else if _dm12 = '2'  then do;
      residence1 = 0;
      residence2 = 1;
      residence3 = 0;
   end;
   else if _dm12 = '3'  then do;
      residence1 = 0;
      residence2 = 0;
      residence3 = 1;
   end;
   else if _dm12 = '1'  then do;
      residence1 = 1;
      residence2 = 0;
      residence3 = 0;
   end;
   else do;
      residence1 = .;
      residence2 = .;
      residence3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for savings ;
drop savingsA61 savingsA62 savingsA63 savingsA64 ;
*** encoding is sparse, initialize to zero;
savingsA61 = 0;
savingsA62 = 0;
savingsA63 = 0;
savingsA64 = 0;
if missing( savings ) then do;
   savingsA61 = .;
   savingsA62 = .;
   savingsA63 = .;
   savingsA64 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm3 $ 3; drop _dm3 ;
   _dm3 = put( savings , $3. );
   %DMNORMIP( _dm3 )
   if _dm3 = 'A61'  then do;
      savingsA61 = 1;
   end;
   else if _dm3 = 'A65'  then do;
      savingsA61 = -1;
      savingsA62 = -1;
      savingsA63 = -1;
      savingsA64 = -1;
   end;
   else if _dm3 = 'A62'  then do;
      savingsA62 = 1;
   end;
   else if _dm3 = 'A63'  then do;
      savingsA63 = 1;
   end;
   else if _dm3 = 'A64'  then do;
      savingsA64 = 1;
   end;
   else do;
      savingsA61 = .;
      savingsA62 = .;
      savingsA63 = .;
      savingsA64 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** *************************;
*** Checking missing input Interval
*** *************************;

IF NMISS(
   age ,
   duration   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_age  =     -3.1260583987077 +     0.08769801535329 * age ;
   S_duration  =    -1.72080747443144 +     0.08139504237462 * duration ;
END;
ELSE DO;
   IF MISSING( age ) THEN S_age  = . ;
   ELSE S_age  =     -3.1260583987077 +     0.08769801535329 * age ;
   IF MISSING( duration ) THEN S_duration  = . ;
   ELSE S_duration  =    -1.72080747443144 +     0.08139504237462 * duration ;
END;
*** *************************;
*** Writing the Node nom ;
*** *************************;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     3.88470315034752 * S_age  +     3.02606491130675 * S_duration ;
   H12  =     1.92474614192261 * S_age  +     1.84703719017681 * S_duration ;
   H13  =    -3.83220328218462 * S_age  +    -0.69731880291194 * S_duration ;
   H14  =      1.2128725473386 * S_age  +    -4.83920139652938 * S_duration ;
   H15  =     3.15823655910557 * S_age  +     1.97067002064809 * S_duration ;
   H16  =     1.86063342364953 * S_age  +      2.2821047710014 * S_duration ;
   H11  = H11  +     5.85336113518091 * acc_statusA11
          +    -1.51910872522856 * acc_statusA12  +     2.85267673133872 *
        acc_statusA13  +    -0.04558862107847 * credit_historyA30
          +    -9.15832724294458 * credit_historyA31
          +     1.80130829761548 * credit_historyA32
          +     1.01253783638328 * credit_historyA33
          +     1.52665521811108 * employmentA71  +     5.80408288482473 *
        employmentA72  +     1.59365347153506 * employmentA73
          +    -1.82413662435134 * employmentA74  +    -2.58965920027424 *
        instalment1  +     1.28904745176096 * instalment2
          +     1.25649457703727 * instalment3  +     0.23861980471539 *
        jobA171  +     1.42735134863783 * jobA172  +    -2.47517777695746 *
        jobA173  +       5.240287793369 * other_instalmentsA141
          +     0.14730633181981 * other_instalmentsA142
          +    -1.18802225261226 * personal_statusA91
          +     6.92742477634271 * personal_statusA92
          +    -3.15424088763945 * personal_statusA93
          +    -1.90490833567753 * pourposeA40  +     2.10830562889933 *
        pourposeA41  +    -1.56025448177615 * pourposeA410
          +     3.10704481686831 * pourposeA42  +    -6.64908873200413 *
        pourposeA43  +    -0.11415751993223 * pourposeA44
          +    -1.82088346011256 * pourposeA45  +     1.92391080202812 *
        pourposeA46  +     0.19738482075784 * pourposeA48
          +     2.20267787404329 * residence1  +    -0.53226123369492 *
        residence2  +     1.21273686985158 * residence3
          +     1.33881561206283 * savingsA61  +    -5.52577706951782 *
        savingsA62  +     3.41905048053849 * savingsA63
          +     1.44923641640566 * savingsA64 ;
   H12  = H12  +     0.40874973128462 * acc_statusA11
          +     3.53972813950845 * acc_statusA12  +     -2.5365612755193 *
        acc_statusA13  +      0.2960446296625 * credit_historyA30
          +     -0.8191392350611 * credit_historyA31
          +    -1.28605090922108 * credit_historyA32
          +    -0.18605400840381 * credit_historyA33
          +    -0.72818255924901 * employmentA71  +     2.64248388614912 *
        employmentA72  +     -2.5083438470866 * employmentA73
          +    -3.99823325721787 * employmentA74  +     3.74132781268226 *
        instalment1  +     2.43617356630769 * instalment2
          +     2.06753271682016 * instalment3  +     0.43347341806171 *
        jobA171  +     0.79659540117967 * jobA172  +    -4.00712774486279 *
        jobA173  +     0.32180456225706 * other_instalmentsA141
          +     5.30008192937965 * other_instalmentsA142
          +     2.50939576335502 * personal_statusA91
          +    -3.17832247827687 * personal_statusA92
          +     3.90285486423423 * personal_statusA93
          +     -3.4859867600795 * pourposeA40  +     2.93757854639238 *
        pourposeA41  +     0.57234622702094 * pourposeA410
          +    -3.17908352121335 * pourposeA42  +    -2.44399719483471 *
        pourposeA43  +    -0.14552835222264 * pourposeA44
          +     1.30633361508351 * pourposeA45  +      0.6817908908468 *
        pourposeA46  +    -0.35508968853294 * pourposeA48
          +    -3.81506777797343 * residence1  +     0.03235463658955 *
        residence2  +    -2.79820659583566 * residence3
          +    -0.79421069338311 * savingsA61  +     3.59460140605684 *
        savingsA62  +     1.85925499950209 * savingsA63
          +     1.72977239750017 * savingsA64 ;
   H13  = H13  +     0.02627109434597 * acc_statusA11
          +    -0.40414025011613 * acc_statusA12  +    -0.40893626735337 *
        acc_statusA13  +    -10.1461835058999 * credit_historyA30
          +    -5.40983906216908 * credit_historyA31
          +     5.58968201800791 * credit_historyA32
          +    -1.89148284635023 * credit_historyA33
          +    -0.69034165498916 * employmentA71  +    -6.28231426802577 *
        employmentA72  +    -1.62163276229487 * employmentA73
          +     3.51711748332864 * employmentA74  +     4.01953098339699 *
        instalment1  +    -3.42909784690118 * instalment2
          +     -0.3246805130258 * instalment3  +     3.61646209516151 *
        jobA171  +    -4.92852111368414 * jobA172  +     2.36899306252136 *
        jobA173  +     1.84176151329654 * other_instalmentsA141
          +     3.61336321564192 * other_instalmentsA142
          +    -6.28988256069041 * personal_statusA91
          +    -4.95898924200421 * personal_statusA92
          +     4.19358037873929 * personal_statusA93
          +     2.60179668150474 * pourposeA40  +     3.04783278132385 *
        pourposeA41  +    -1.85825181368882 * pourposeA410
          +    -3.36798496969519 * pourposeA42  +     7.19094497337727 *
        pourposeA43  +    -2.00430699319357 * pourposeA44
          +    -3.46396946833663 * pourposeA45  +    -3.85881725299088 *
        pourposeA46  +     2.45196424033222 * pourposeA48
          +     3.15575710649774 * residence1  +    -3.44369900456848 *
        residence2  +    -3.53309183322318 * residence3
          +      3.7239893069196 * savingsA61  +     2.46380277484355 *
        savingsA62  +     4.20919805297718 * savingsA63
          +     10.2300859432272 * savingsA64 ;
   H14  = H14  +    -3.47116496850798 * acc_statusA11
          +    -0.04028267429063 * acc_statusA12  +     -1.8070213103054 *
        acc_statusA13  +     4.69985662749945 * credit_historyA30
          +     2.45453531178196 * credit_historyA31
          +    -0.57311454501342 * credit_historyA32
          +    -2.28308085818639 * credit_historyA33
          +    -1.23952941936394 * employmentA71  +    -3.46380378159007 *
        employmentA72  +     2.85524520194781 * employmentA73
          +    -2.09557419452106 * employmentA74  +     2.01765631144493 *
        instalment1  +     0.43903469840887 * instalment2
          +    -3.36075870796471 * instalment3  +    -1.61103118193839 *
        jobA171  +     0.40353409733314 * jobA172  +    -2.24160289202626 *
        jobA173  +    -5.57372126640324 * other_instalmentsA141
          +     2.51516233044409 * other_instalmentsA142
          +    -1.95203510492347 * personal_statusA91
          +    -0.09443056582913 * personal_statusA92
          +     0.78232823216767 * personal_statusA93
          +    -0.58109234371231 * pourposeA40  +     2.56034231156012 *
        pourposeA41  +     1.95353925115582 * pourposeA410
          +     0.17783814692462 * pourposeA42  +     2.40613701820139 *
        pourposeA43  +    -0.22370051076584 * pourposeA44
          +    -2.90155206781463 * pourposeA45  +      0.4247474192809 *
        pourposeA46  +    -4.03278496259953 * pourposeA48
          +     5.13604873683846 * residence1  +    -3.53899220254688 *
        residence2  +    -0.90760752155468 * residence3
          +    -5.25220877128637 * savingsA61  +     2.09667916798316 *
        savingsA62  +    -6.55233802541035 * savingsA63
          +     6.03035566557181 * savingsA64 ;
   H15  = H15  +    -5.13870995571291 * acc_statusA11
          +    -0.93090791599081 * acc_statusA12  +     0.08290689621647 *
        acc_statusA13  +    -1.75241854349394 * credit_historyA30
          +      3.4984143918753 * credit_historyA31
          +    -3.77258138768396 * credit_historyA32
          +     2.14918665651411 * credit_historyA33
          +    -0.38166522429418 * employmentA71  +    -4.33876270326727 *
        employmentA72  +    -0.97591723468346 * employmentA73
          +      4.3767824413533 * employmentA74  +     2.13229556510306 *
        instalment1  +     2.18557433541965 * instalment2
          +      0.8267829825008 * instalment3  +    -0.04920883269904 *
        jobA171  +      2.9349839310711 * jobA172  +     0.69663453174024 *
        jobA173  +    -4.83724654443814 * other_instalmentsA141
          +    -3.42653964690379 * other_instalmentsA142
          +     2.85887656939615 * personal_statusA91
          +    -1.13430314595419 * personal_statusA92
          +    -1.42271967230904 * personal_statusA93
          +    -5.44371811788823 * pourposeA40  +     2.45416228621317 *
        pourposeA41  +    -2.15824493043412 * pourposeA410
          +    -0.32024811687555 * pourposeA42  +    -1.15756130350396 *
        pourposeA43  +     2.61591592290617 * pourposeA44
          +     3.98394702967944 * pourposeA45  +     3.54626256299379 *
        pourposeA46  +     4.07598904926656 * pourposeA48
          +    -9.79269111967874 * residence1  +     4.68948344453852 *
        residence2  +     3.51633800177621 * residence3
          +     1.02670714955746 * savingsA61  +    -1.02645031864036 *
        savingsA62  +    -1.58793544391311 * savingsA63
          +     -5.4116583397411 * savingsA64 ;
   H16  = H16  +     6.24424985639943 * acc_statusA11
          +    -1.60139591409873 * acc_statusA12  +    -5.44002756333355 *
        acc_statusA13  +     3.17444613601367 * credit_historyA30
          +    -3.90366636673192 * credit_historyA31
          +     1.33445959622971 * credit_historyA32
          +    -1.93041493262026 * credit_historyA33
          +    -0.20653100687855 * employmentA71  +    -2.20086833605874 *
        employmentA72  +     3.60696613615584 * employmentA73
          +     -5.5715968820629 * employmentA74  +    -0.24735051952392 *
        instalment1  +    -0.82515283722191 * instalment2
          +    -0.19410387770336 * instalment3  +    -2.06125962946396 *
        jobA171  +    -0.27442942387422 * jobA172  +    -0.17324277271499 *
        jobA173  +    -2.51711411986199 * other_instalmentsA141
          +      0.3699041882887 * other_instalmentsA142
          +     0.89559379566286 * personal_statusA91
          +     0.21915851134358 * personal_statusA92
          +    -2.80086914950026 * personal_statusA93
          +     5.50083722026902 * pourposeA40  +    -3.47123237651318 *
        pourposeA41  +    -3.32176499440496 * pourposeA410
          +     2.97363831580786 * pourposeA42  +     2.70804786258688 *
        pourposeA43  +     0.04133492338976 * pourposeA44
          +    -0.11950133351543 * pourposeA45  +    -0.34449869871402 *
        pourposeA46  +     0.24955479539046 * pourposeA48
          +     0.23623412266027 * residence1  +    -0.01589590342722 *
        residence2  +     3.16274821650315 * residence3
          +     4.76881953811668 * savingsA61  +     1.12466433888124 *
        savingsA62  +    -2.81910088287391 * savingsA63
          +    -0.06966627063783 * savingsA64 ;
   H11  =    -6.09377765773818 + H11 ;
   H12  =    -2.76875271195626 + H12 ;
   H13  =    -4.21500268270065 + H13 ;
   H14  =     10.6484786799228 + H14 ;
   H15  =     -7.0834543217775 + H15 ;
   H16  =    -1.38516541840178 + H16 ;
   H11  = TANH(H11 );
   H12  = TANH(H12 );
   H13  = TANH(H13 );
   H14  = TANH(H14 );
   H15  = TANH(H15 );
   H16  = TANH(H16 );
END;
ELSE DO;
   H11  = .;
   H12  = .;
   H13  = .;
   H14  = .;
   H15  = .;
   H16  = .;
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
   P_default1  =    -5.62522999260239 * H11  +     2.92428141717916 * H12
          +    -4.87546792267536 * H13  +    -7.51771208699719 * H14
          +    -5.85424199814977 * H15  +     4.85181206552492 * H16 ;
   P_default1  =    -3.25147222609689 + P_default1 ;
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
array NEURAL2dema [2,2] _temporary_ (
/* row 1 */  0 5
/* row 2 */  1 0
);

*** Find Index of Target Category;
drop _tarnum; select( F_default );
   when('1' ) _tarnum = 1;
   when('0' ) _tarnum = 2;
   otherwise _tarnum = 0;
end;
if _tarnum <= 0 then goto NEURAL2deex;

*** Computed Consequence of Chosen Decision;
CL_DEFAULT = NEURAL2dema [_tarnum,_decnum];

*** Best Possible Consequence of Any Decision without Cost;
array NEURAL2debe [2] _temporary_ ( 0 0);
BL_DEFAULT = NEURAL2debe [_tarnum];


NEURAL2deex:;

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
S_age
S_duration
H11
H12
H13
H14
H15
H16
;
