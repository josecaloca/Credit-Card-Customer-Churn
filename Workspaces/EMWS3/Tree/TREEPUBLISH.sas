****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
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
label I_BAD = 'Into: BAD' ;
label U_BAD = 'Unnormalized Into: BAD' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12; 
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */


******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(DEBTINC ) AND 
  DEBTINC  <     44.7336573513381 THEN DO;
  IF  NOT MISSING(VALUE ) AND 
    VALUE  <               303749 THEN DO;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('7' ) THEN DO;
      _NODE_  =                    8;
      _LEAF_  =                    1;
      P_BAD1  =                    1;
      P_BAD0  =                    0;
      Q_BAD1  =                    1;
      Q_BAD0  =                    0;
      V_BAD1  =                    0;
      V_BAD0  =                    0;
      I_BAD  = '1' ;
      U_BAD  =                    1;
      END;
    ELSE DO;
      _ARBFMT_12 = PUT( DELINQ , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'3' ,'4' ) THEN DO;
        IF  NOT MISSING(DEBTINC ) AND 
          DEBTINC  <      9.5345039737618 THEN DO;
          _NODE_  =                   22;
          _LEAF_  =                    2;
          P_BAD1  =                    1;
          P_BAD0  =                    0;
          Q_BAD1  =                    1;
          Q_BAD0  =                    0;
          V_BAD1  =                    1;
          V_BAD0  =                    0;
          I_BAD  = '1' ;
          U_BAD  =                    1;
          END;
        ELSE DO;
          _NODE_  =                   23;
          _LEAF_  =                    3;
          P_BAD1  =     0.14201183431952;
          P_BAD0  =     0.85798816568047;
          Q_BAD1  =     0.14201183431952;
          Q_BAD0  =     0.85798816568047;
          V_BAD1  =      0.1231527093596;
          V_BAD0  =     0.87684729064039;
          I_BAD  = '0' ;
          U_BAD  =                    0;
          END;
        END;
      ELSE DO;
        _NODE_  =                   17;
        _LEAF_  =                    4;
        P_BAD1  =     0.04810644831115;
        P_BAD0  =     0.95189355168884;
        Q_BAD1  =     0.04810644831115;
        Q_BAD0  =     0.95189355168884;
        V_BAD1  =     0.04557405784399;
        V_BAD0  =       0.954425942156;
        I_BAD  = '0' ;
        U_BAD  =                    0;
        END;
      END;
    END;
  ELSE DO;
    _NODE_  =                    5;
    _LEAF_  =                    5;
    P_BAD1  =                 0.85;
    P_BAD0  =                 0.15;
    Q_BAD1  =                 0.85;
    Q_BAD0  =                 0.15;
    V_BAD1  =     0.81818181818181;
    V_BAD0  =     0.18181818181818;
    I_BAD  = '1' ;
    U_BAD  =                    1;
    END;
  END;
ELSE DO;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
  IF _ARBFMT_12 IN ('0' ) THEN DO;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
      IF  NOT MISSING(VALUE ) AND 
                       76239 <= VALUE  THEN DO;
        IF  NOT MISSING(DEBTINC ) THEN DO;
          _NODE_  =                   26;
          _LEAF_  =                    7;
          P_BAD1  =      0.9090909090909;
          P_BAD0  =     0.09090909090909;
          Q_BAD1  =      0.9090909090909;
          Q_BAD0  =     0.09090909090909;
          V_BAD1  =     0.76470588235294;
          V_BAD0  =     0.23529411764705;
          I_BAD  = '1' ;
          U_BAD  =                    1;
          END;
        ELSE DO;
          _NODE_  =                   27;
          _LEAF_  =                    8;
          P_BAD1  =     0.33962264150943;
          P_BAD0  =     0.66037735849056;
          Q_BAD1  =     0.33962264150943;
          Q_BAD0  =     0.66037735849056;
          V_BAD1  =     0.38679245283018;
          V_BAD0  =     0.61320754716981;
          I_BAD  = '0' ;
          U_BAD  =                    0;
          END;
        END;
      ELSE DO;
        _NODE_  =                   18;
        _LEAF_  =                    6;
        P_BAD1  =     0.63432835820895;
        P_BAD0  =     0.36567164179104;
        Q_BAD1  =     0.63432835820895;
        Q_BAD0  =     0.36567164179104;
        V_BAD1  =     0.47222222222222;
        V_BAD0  =     0.52777777777777;
        I_BAD  = '1' ;
        U_BAD  =                    1;
        END;
      END;
    ELSE DO;
      _NODE_  =                   13;
      _LEAF_  =                    9;
      P_BAD1  =     0.77941176470588;
      P_BAD0  =     0.22058823529411;
      Q_BAD1  =     0.77941176470588;
      Q_BAD0  =     0.22058823529411;
      V_BAD1  =     0.73684210526315;
      V_BAD0  =     0.26315789473684;
      I_BAD  = '1' ;
      U_BAD  =                    1;
      END;
    END;
  ELSE DO;
    _NODE_  =                    7;
    _LEAF_  =                   10;
    P_BAD1  =     0.78245614035087;
    P_BAD0  =     0.21754385964912;
    Q_BAD1  =     0.78245614035087;
    Q_BAD0  =     0.21754385964912;
    V_BAD1  =     0.77386934673366;
    V_BAD0  =     0.22613065326633;
    I_BAD  = '1' ;
    U_BAD  =                    1;
    END;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

