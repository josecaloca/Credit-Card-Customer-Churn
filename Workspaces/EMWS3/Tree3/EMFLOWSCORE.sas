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
          _NODE_  =                   26;
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
          _NODE_  =                   27;
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
        IF  NOT MISSING(LOAN ) AND
          LOAN  <                 4150 THEN DO;
          _NODE_  =                   28;
          _LEAF_  =                    4;
          P_BAD1  =                  0.5;
          P_BAD0  =                  0.5;
          Q_BAD1  =                  0.5;
          Q_BAD0  =                  0.5;
          V_BAD1  =     0.36363636363636;
          V_BAD0  =     0.63636363636363;
          I_BAD  = '1' ;
          U_BAD  =                    1;
          END;
        ELSE DO;
          _NODE_  =                   29;
          _LEAF_  =                    5;
          P_BAD1  =      0.0453141091658;
          P_BAD0  =     0.95468589083419;
          Q_BAD1  =      0.0453141091658;
          Q_BAD0  =     0.95468589083419;
          V_BAD1  =     0.04247787610619;
          V_BAD0  =      0.9575221238938;
          I_BAD  = '0' ;
          U_BAD  =                    0;
          END;
        END;
      END;
    END;
  ELSE DO;
    _NODE_  =                    5;
    _LEAF_  =                    6;
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
  IF  NOT MISSING(CLAGE ) AND
        165.524113475177 <= CLAGE  THEN DO;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'2' ) THEN DO;
      IF  NOT MISSING(VALUE ) AND
                       56000 <= VALUE  THEN DO;
        _NODE_  =                   23;
        _LEAF_  =                    9;
        P_BAD1  =     0.29496402877697;
        P_BAD0  =     0.70503597122302;
        Q_BAD1  =     0.29496402877697;
        Q_BAD0  =     0.70503597122302;
        V_BAD1  =     0.36363636363636;
        V_BAD0  =     0.63636363636363;
        I_BAD  = '0' ;
        U_BAD  =                    0;
        END;
      ELSE DO;
        _NODE_  =                   22;
        _LEAF_  =                    8;
        P_BAD1  =     0.64864864864864;
        P_BAD0  =     0.35135135135135;
        Q_BAD1  =     0.64864864864864;
        Q_BAD0  =     0.35135135135135;
        V_BAD1  =     0.47368421052631;
        V_BAD0  =     0.52631578947368;
        I_BAD  = '1' ;
        U_BAD  =                    1;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(CLAGE ) AND
            345.933333333333 <= CLAGE  THEN DO;
        _NODE_  =                   25;
        _LEAF_  =                   11;
        P_BAD1  =     0.16666666666666;
        P_BAD0  =     0.83333333333333;
        Q_BAD1  =     0.16666666666666;
        Q_BAD0  =     0.83333333333333;
        V_BAD1  =                    0;
        V_BAD0  =                    1;
        I_BAD  = '0' ;
        U_BAD  =                    0;
        END;
      ELSE DO;
        _NODE_  =                   24;
        _LEAF_  =                   10;
        P_BAD1  =     0.82278481012658;
        P_BAD0  =     0.17721518987341;
        Q_BAD1  =     0.82278481012658;
        Q_BAD0  =     0.17721518987341;
        V_BAD1  =     0.66129032258064;
        V_BAD0  =     0.33870967741935;
        I_BAD  = '1' ;
        U_BAD  =                    1;
        END;
      END;
    END;
  ELSE DO;
    _NODE_  =                    6;
    _LEAF_  =                    7;
    P_BAD1  =     0.74242424242424;
    P_BAD0  =     0.25757575757575;
    Q_BAD1  =     0.74242424242424;
    Q_BAD0  =     0.25757575757575;
    V_BAD1  =     0.73306772908366;
    V_BAD0  =     0.26693227091633;
    I_BAD  = '1' ;
    U_BAD  =                    1;
    END;
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
