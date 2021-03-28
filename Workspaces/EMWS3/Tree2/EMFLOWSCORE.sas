****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;
 
******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH F_BAD  $   12;
LENGTH I_BAD  $   12;
LENGTH _WARN_  $    4;
 
******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_BAD1 = 'Predicted: BAD=1' ;
label P_BAD0 = 'Predicted: BAD=0' ;
label Q_BAD1 = 'Unadjusted P: BAD=1' ;
label Q_BAD0 = 'Unadjusted P: BAD=0' ;
label V_BAD1 = 'Validated: BAD=1' ;
label V_BAD0 = 'Validated: BAD=0' ;
label R_BAD1 = 'Residual: BAD=1' ;
label R_BAD0 = 'Residual: BAD=0' ;
label F_BAD = 'From: BAD' ;
label I_BAD = 'Into: BAD' ;
label U_BAD = 'Unnormalized Into: BAD' ;
label _WARN_ = 'Warnings' ;
 
 
******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12;
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */
 
 
_ARBFMT_12 = PUT( BAD , BEST12.);
 %DMNORMCP( _ARBFMT_12, F_BAD );
 
******             ASSIGN OBSERVATION TO NODE             ******;
_ARBFMT_12 = PUT( GRP_DEBTINC , BEST12.);
 %DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('1' ) THEN DO;
  _ARBFMT_12 = PUT( GRP_DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
  IF _ARBFMT_12 IN ('5' ,'6' ,'7' ,'8' ,'9' ) THEN DO;
    _NODE_  =                    5;
    _LEAF_  =                    3;
    P_BAD1  =     0.96470588235294;
    P_BAD0  =     0.03529411764705;
    Q_BAD1  =     0.96470588235294;
    Q_BAD0  =     0.03529411764705;
    V_BAD1  =     0.89583333333333;
    V_BAD0  =     0.10416666666666;
    I_BAD  = '1' ;
    U_BAD  =                    1;
    END;
  ELSE DO;
    _ARBFMT_12 = PUT( GRP_CLAGE , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ) THEN DO;
      _NODE_  =                    9;
      _LEAF_  =                    2;
      P_BAD1  =     0.38219895287958;
      P_BAD0  =     0.61780104712041;
      Q_BAD1  =     0.38219895287958;
      Q_BAD0  =     0.61780104712041;
      V_BAD1  =     0.38970588235294;
      V_BAD0  =     0.61029411764705;
      I_BAD  = '0' ;
      U_BAD  =                    0;
      END;
    ELSE DO;
      _NODE_  =                    8;
      _LEAF_  =                    1;
      P_BAD1  =     0.67846607669616;
      P_BAD0  =     0.32153392330383;
      Q_BAD1  =     0.67846607669616;
      Q_BAD0  =     0.32153392330383;
      V_BAD1  =      0.6774193548387;
      V_BAD0  =     0.32258064516129;
      I_BAD  = '1' ;
      U_BAD  =                    1;
      END;
    END;
  END;
ELSE DO;
  _NODE_  =                    3;
  _LEAF_  =                    4;
  P_BAD1  =     0.08840947546531;
  P_BAD0  =     0.91159052453468;
  Q_BAD1  =     0.08840947546531;
  Q_BAD0  =     0.91159052453468;
  V_BAD1  =     0.08219178082191;
  V_BAD0  =     0.91780821917808;
  I_BAD  = '0' ;
  U_BAD  =                    0;
  END;
 
*****  RESIDUALS R_ *************;
IF  F_BAD  NE '1'
AND F_BAD  NE '0'  THEN DO;
        R_BAD1  = .;
        R_BAD0  = .;
 END;
 ELSE DO;
       R_BAD1  =  -P_BAD1 ;
       R_BAD0  =  -P_BAD0 ;
       SELECT( F_BAD  );
          WHEN( '1'  ) R_BAD1  = R_BAD1  +1;
          WHEN( '0'  ) R_BAD0  = R_BAD0  +1;
       END;
 END;
 
****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
 
drop _LEAF_;
