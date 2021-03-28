****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;
 
******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH I_default  $   12;
LENGTH _WARN_  $    4;
 
******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_default1 = 'Predicted: default=1' ;
label P_default0 = 'Predicted: default=0' ;
label Q_default1 = 'Unadjusted P: default=1' ;
label Q_default0 = 'Unadjusted P: default=0' ;
label I_default = 'Into: default' ;
label U_default = 'Unnormalized Into: default' ;
label _WARN_ = 'Warnings' ;
 
 
******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12;
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_3 $      3; DROP _ARBFMT_3;
_ARBFMT_3 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_4 $      4; DROP _ARBFMT_4;
_ARBFMT_4 = ' '; /* Initialize to avoid warning. */
 
 
******             ASSIGN OBSERVATION TO NODE             ******;
_ARBFMT_3 = PUT( acc_status , $3.);
 %DMNORMIP( _ARBFMT_3);
IF _ARBFMT_3 IN ('A14' ,'A13' ) THEN DO;
  _ARBFMT_4 = PUT( other_instalments , $4.);
   %DMNORMIP( _ARBFMT_4);
  IF _ARBFMT_4 IN ('A141' ) THEN DO;
    _NODE_  =                    6;
    _LEAF_  =                    5;
    P_default1  =     0.36585365853658;
    P_default0  =     0.63414634146341;
    Q_default1  =     0.36585365853658;
    Q_default0  =     0.63414634146341;
    I_default  = '0' ;
    U_default  =                    0;
    END;
  ELSE DO;
    _ARBFMT_3 = PUT( acc_status , $3.);
     %DMNORMIP( _ARBFMT_3);
    IF _ARBFMT_3 IN ('A13' ) THEN DO;
      _NODE_  =                   14;
      _LEAF_  =                    6;
      P_default1  =     0.22222222222222;
      P_default0  =     0.77777777777777;
      Q_default1  =     0.22222222222222;
      Q_default0  =     0.77777777777777;
      I_default  = '0' ;
      U_default  =                    0;
      END;
    ELSE DO;
      _ARBFMT_4 = PUT( pourpose , $4.);
       %DMNORMIP( _ARBFMT_4);
      IF _ARBFMT_4 IN ('A43' ,'A40' ,'A41' ,'A46' ) THEN DO;
        _NODE_  =                   21;
        _LEAF_  =                   10;
        P_default1  =     0.04022988505747;
        P_default0  =     0.95977011494252;
        Q_default1  =     0.04022988505747;
        Q_default0  =     0.95977011494252;
        I_default  = '0' ;
        U_default  =                    0;
        END;
      ELSE DO;
        _ARBFMT_4 = PUT( job , $4.);
         %DMNORMIP( _ARBFMT_4);
        IF _ARBFMT_4 IN ('A174' ) THEN DO;
          _NODE_  =                   24;
          _LEAF_  =                    7;
          P_default1  =     0.66666666666666;
          P_default0  =     0.33333333333333;
          Q_default1  =     0.66666666666666;
          Q_default0  =     0.33333333333333;
          I_default  = '1' ;
          U_default  =                    1;
          END;
        ELSE DO;
          _ARBFMT_3 = PUT( employment , $3.);
           %DMNORMIP( _ARBFMT_3);
          IF _ARBFMT_3 IN ('A72' ) THEN DO;
            _NODE_  =                   26;
            _LEAF_  =                    8;
            P_default1  =     0.46153846153846;
            P_default0  =     0.53846153846153;
            Q_default1  =     0.46153846153846;
            Q_default0  =     0.53846153846153;
            I_default  = '0' ;
            U_default  =                    0;
            END;
          ELSE DO;
            _NODE_  =                   27;
            _LEAF_  =                    9;
            P_default1  =                 0.08;
            P_default0  =                 0.92;
            Q_default1  =                 0.08;
            Q_default0  =                 0.92;
            I_default  = '0' ;
            U_default  =                    0;
            END;
          END;
        END;
      END;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(duration ) AND
                    22.5 <= duration  THEN DO;
    _ARBFMT_3 = PUT( savings , $3.);
     %DMNORMIP( _ARBFMT_3);
    IF _ARBFMT_3 IN ('A65' ,'A64' ) THEN DO;
      _ARBFMT_3 = PUT( acc_status , $3.);
       %DMNORMIP( _ARBFMT_3);
      IF _ARBFMT_3 IN ('A11' ) THEN DO;
        _NODE_  =                   18;
        _LEAF_  =                    3;
        P_default1  =     0.44444444444444;
        P_default0  =     0.55555555555555;
        Q_default1  =     0.44444444444444;
        Q_default0  =     0.55555555555555;
        I_default  = '0' ;
        U_default  =                    0;
        END;
      ELSE DO;
        _NODE_  =                   19;
        _LEAF_  =                    4;
        P_default1  =               0.0625;
        P_default0  =               0.9375;
        Q_default1  =               0.0625;
        Q_default0  =               0.9375;
        I_default  = '0' ;
        U_default  =                    0;
        END;
      END;
    ELSE DO;
      _NODE_  =                   10;
      _LEAF_  =                    2;
      P_default1  =     0.62857142857142;
      P_default0  =     0.37142857142857;
      Q_default1  =     0.62857142857142;
      Q_default0  =     0.37142857142857;
      I_default  = '1' ;
      U_default  =                    1;
      END;
    END;
  ELSE DO;
    _NODE_  =                    4;
    _LEAF_  =                    1;
    P_default1  =     0.33953488372093;
    P_default0  =     0.66046511627906;
    Q_default1  =     0.33953488372093;
    Q_default0  =     0.66046511627906;
    I_default  = '0' ;
    U_default  =                    0;
    END;
  END;
 
*****  DECISION VARIABLES *******;
 
*** Decision Processing;
label D_DEFAULT = 'Decision: default' ;
label EL_DEFAULT = 'Expected Loss: default' ;
 
length D_DEFAULT $ 9;
 
D_DEFAULT = ' ';
EL_DEFAULT = .;
 
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
 
 
*** End Decision Processing ;
 
****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
 
drop _LEAF_;
