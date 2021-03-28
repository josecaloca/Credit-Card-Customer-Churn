****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;
 
******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH I_I_default  $   12;
LENGTH U_I_default  $   12;
LENGTH _WARN_  $    4;
 
******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_I_default0 = 'Predicted: I_default=0' ;
label P_I_default1 = 'Predicted: I_default=1' ;
label Q_I_default0 = 'Unadjusted P: I_default=0' ;
label Q_I_default1 = 'Unadjusted P: I_default=1' ;
label I_I_default = 'Into: I_default' ;
label U_I_default = 'Unnormalized Into: I_default' ;
label _WARN_ = 'Warnings' ;
 
 
******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12;
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */
 
 
******             ASSIGN OBSERVATION TO NODE             ******;
_ARBFMT_12 = PUT( GRP_acc_status , BEST12.);
 %DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('2' ) THEN DO;
  _NODE_  =                    2;
  _LEAF_  =                    1;
  P_I_default0  =     0.98561151079136;
  P_I_default1  =     0.01438848920863;
  Q_I_default0  =     0.98561151079136;
  Q_I_default1  =     0.01438848920863;
  I_I_default  = '0' ;
  U_I_default  = '0' ;
  END;
ELSE DO;
  _ARBFMT_12 = PUT( GRP_duration , BEST12.);
   %DMNORMIP( _ARBFMT_12);
  IF _ARBFMT_12 IN ('5' ) THEN DO;
    _ARBFMT_12 = PUT( GRP_savings , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'4' ,'5' ,'6' ) THEN DO;
      _NODE_  =                   13;
      _LEAF_  =                   11;
      P_I_default0  =     0.66666666666666;
      P_I_default1  =     0.33333333333333;
      Q_I_default0  =     0.66666666666666;
      Q_I_default1  =     0.33333333333333;
      I_I_default  = '0' ;
      U_I_default  = '0' ;
      END;
    ELSE DO;
      _ARBFMT_12 = PUT( GRP_pourpose , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('6' ,'7' ,'8' ,'9' ,'10' ,'11' ) THEN DO;
        _ARBFMT_12 = PUT( GRP_pourpose , BEST12.);
         %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('7' ,'8' ,'9' ,'10' ,'11' ) THEN DO;
          _NODE_  =                   25;
          _LEAF_  =                   10;
          P_I_default0  =     0.06666666666666;
          P_I_default1  =     0.93333333333333;
          Q_I_default0  =     0.06666666666666;
          Q_I_default1  =     0.93333333333333;
          I_I_default  = '1' ;
          U_I_default  = '1' ;
          END;
        ELSE DO;
          _NODE_  =                   24;
          _LEAF_  =                    9;
          P_I_default0  =                0.875;
          P_I_default1  =                0.125;
          Q_I_default0  =                0.875;
          Q_I_default1  =                0.125;
          I_I_default  = '0' ;
          U_I_default  = '0' ;
          END;
        END;
      ELSE DO;
        _ARBFMT_12 = PUT( GRP_acc_status , BEST12.);
         %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('2' ,'3' ) THEN DO;
          _ARBFMT_12 = PUT( GRP_pourpose , BEST12.);
           %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('2' ) THEN DO;
            _NODE_  =                   28;
            _LEAF_  =                    6;
            P_I_default0  =     0.88888888888888;
            P_I_default1  =     0.11111111111111;
            Q_I_default0  =     0.88888888888888;
            Q_I_default1  =     0.11111111111111;
            I_I_default  = '0' ;
            U_I_default  = '0' ;
            END;
          ELSE DO;
            _NODE_  =                   29;
            _LEAF_  =                    7;
            P_I_default0  =     0.17391304347826;
            P_I_default1  =     0.82608695652173;
            Q_I_default0  =     0.17391304347826;
            Q_I_default1  =     0.82608695652173;
            I_I_default  = '1' ;
            U_I_default  = '1' ;
            END;
          END;
        ELSE DO;
          _NODE_  =                   23;
          _LEAF_  =                    8;
          P_I_default0  =     0.11111111111111;
          P_I_default1  =     0.88888888888888;
          Q_I_default0  =     0.11111111111111;
          Q_I_default1  =     0.88888888888888;
          I_I_default  = '1' ;
          U_I_default  = '1' ;
          END;
        END;
      END;
    END;
  ELSE DO;
    _ARBFMT_12 = PUT( GRP_credit_history , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('5' ,'6' ) THEN DO;
      _NODE_  =                   11;
      _LEAF_  =                    5;
      P_I_default0  =                  0.2;
      P_I_default1  =                  0.8;
      Q_I_default0  =                  0.2;
      Q_I_default1  =                  0.8;
      I_I_default  = '1' ;
      U_I_default  = '1' ;
      END;
    ELSE DO;
      _ARBFMT_12 = PUT( GRP_acc_status , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'3' ) THEN DO;
        _NODE_  =                   16;
        _LEAF_  =                    2;
        P_I_default0  =     0.88118811881188;
        P_I_default1  =     0.11881188118811;
        Q_I_default0  =     0.88118811881188;
        Q_I_default1  =     0.11881188118811;
        I_I_default  = '0' ;
        U_I_default  = '0' ;
        END;
      ELSE DO;
        _ARBFMT_12 = PUT( GRP_pourpose , BEST12.);
         %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('7' ,'8' ,'9' ,'10' ,'11' ) THEN DO;
          _NODE_  =                   21;
          _LEAF_  =                    4;
          P_I_default0  =                 0.25;
          P_I_default1  =                 0.75;
          Q_I_default0  =                 0.25;
          Q_I_default1  =                 0.75;
          I_I_default  = '1' ;
          U_I_default  = '1' ;
          END;
        ELSE DO;
          _NODE_  =                   20;
          _LEAF_  =                    3;
          P_I_default0  =     0.77981651376146;
          P_I_default1  =     0.22018348623853;
          Q_I_default0  =     0.77981651376146;
          Q_I_default1  =     0.22018348623853;
          I_I_default  = '0' ;
          U_I_default  = '0' ;
          END;
        END;
      END;
    END;
  END;
 
****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
 
drop _LEAF_;
