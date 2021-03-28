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
_ARBFMT_12 = PUT( IMP_DELINQ , BEST12.);
 %DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
  IF  NOT MISSING(IMP_DEBTINC ) AND 
        44.7336573513381 <= IMP_DEBTINC  THEN DO;
    _NODE_  =                    5;
    _LEAF_  =                    5;
    P_BAD1  =     0.72972972972972;
    P_BAD0  =     0.27027027027027;
    Q_BAD1  =     0.72972972972972;
    Q_BAD0  =     0.27027027027027;
    V_BAD1  =     0.71428571428571;
    V_BAD0  =     0.28571428571428;
    I_BAD  = '1' ;
    U_BAD  =                    1;
    END;
  ELSE DO;
    _ARBFMT_12 = PUT( IMP_DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
      _ARBFMT_12 = PUT( IMP_NINQ , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'0' ,'2' ,'3' ,'4' ,'8' ,'7' ,'11' ) THEN DO;
        IF  NOT MISSING(IMP_DEBTINC ) AND 
          IMP_DEBTINC  <     12.5702078408748 THEN DO;
          _NODE_  =                   22;
          _LEAF_  =                    2;
          P_BAD1  =     0.43636363636363;
          P_BAD0  =     0.56363636363636;
          Q_BAD1  =     0.43636363636363;
          Q_BAD0  =     0.56363636363636;
          V_BAD1  =               0.1875;
          V_BAD0  =               0.8125;
          I_BAD  = '0' ;
          U_BAD  =                    0;
          END;
        ELSE DO;
          _NODE_  =                   23;
          _LEAF_  =                    3;
          P_BAD1  =     0.10176211453744;
          P_BAD0  =     0.89823788546255;
          Q_BAD1  =     0.10176211453744;
          Q_BAD0  =     0.89823788546255;
          V_BAD1  =      0.1155589123867;
          V_BAD0  =     0.88444108761329;
          I_BAD  = '0' ;
          U_BAD  =                    0;
          END;
        END;
      ELSE DO;
        _NODE_  =                   16;
        _LEAF_  =                    1;
        P_BAD1  =     0.52941176470588;
        P_BAD0  =     0.47058823529411;
        Q_BAD1  =     0.52941176470588;
        Q_BAD0  =     0.47058823529411;
        V_BAD1  =     0.24137931034482;
        V_BAD0  =     0.75862068965517;
        I_BAD  = '1' ;
        U_BAD  =                    1;
        END;
      END;
    ELSE DO;
      _NODE_  =                    9;
      _LEAF_  =                    4;
      P_BAD1  =     0.37743190661478;
      P_BAD0  =     0.62256809338521;
      Q_BAD1  =     0.37743190661478;
      Q_BAD0  =     0.62256809338521;
      V_BAD1  =     0.31927710843373;
      V_BAD0  =     0.68072289156626;
      I_BAD  = '0' ;
      U_BAD  =                    0;
      END;
    END;
  END;
ELSE DO;
  _NODE_  =                    3;
  _LEAF_  =                    6;
  P_BAD1  =     0.59191176470588;
  P_BAD0  =     0.40808823529411;
  Q_BAD1  =     0.59191176470588;
  Q_BAD0  =     0.40808823529411;
  V_BAD1  =     0.54143646408839;
  V_BAD0  =      0.4585635359116;
  I_BAD  = '1' ;
  U_BAD  =                    1;
  END;

*****  DECISION VARIABLES *******;

*** Decision Processing;
label D_BAD = 'Decision: BAD' ;
label EL_BAD = 'Expected Loss: BAD' ;

length D_BAD $ 9;

D_BAD = ' ';
EL_BAD = .;

*** Compute Expected Consequences and Choose Decision;
_decnum = 1; drop _decnum;

D_BAD = '1' ;
EL_BAD = P_BAD1 * 0 + P_BAD0 * 1;
drop _sum; 
_sum = P_BAD1 * 5 + P_BAD0 * 0;
if _sum < EL_BAD + -2.27374E-12 then do;
   EL_BAD = _sum; _decnum = 2;
   D_BAD = '0' ;
end;


*** End Decision Processing ;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

