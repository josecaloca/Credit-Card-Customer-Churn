****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH I_BAD  $   12; 
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label P_BAD1 = 'Predicted: BAD=1' ;
      P_BAD1  = 0;
label P_BAD0 = 'Predicted: BAD=0' ;
      P_BAD0  = 0;
label Q_BAD1 = 'Unadjusted P: BAD=1' ;
      Q_BAD1  = 0;
label Q_BAD0 = 'Unadjusted P: BAD=0' ;
      Q_BAD0  = 0;
label I_BAD = 'Into: BAD' ;
label U_BAD = 'Unnormalized Into: BAD' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12; 
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_7 $      7; DROP _ARBFMT_7; 
_ARBFMT_7 = ' '; /* Initialize to avoid warning. */


 DROP _ARB_F_;
 DROP _ARB_BADF_;
     _ARB_F_ = 0.695037542;
     _ARB_BADF_ = 0;
******             ASSIGN OBSERVATION TO NODE             ******;
 DROP _ARB_P_;
 _ARB_P_ = 0;
 DROP _ARB_PPATH_; _ARB_PPATH_ = 1;

********** LEAF     1  NODE   346 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

   DROP _BRANCH_;
  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     45.5785633067104 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <               302617 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0391191037;
      END;
    END;
  END;

********** LEAF     2  NODE   347 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     45.5785633067104 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                    302617 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.198555841;
      END;
    END;
  END;

********** LEAF     3  NODE   348 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        45.5785633067104 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     260.266666666666 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.151355471;
      END;
    END;
  END;

********** LEAF     4  NODE   349 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        45.5785633067104 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          260.266666666666 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.034990407;
      END;
    END;
  END;

********** LEAF     5  NODE   353 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     45.2095399781756 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0381559509;
      END;
    END;
  END;

********** LEAF     6  NODE   354 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     45.2095399781756 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
    _BRANCH_ = -1;
    IF MISSING( VALUE ) THEN _BRANCH_ = 2;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.184961075;
      END;
    END;
  END;

********** LEAF     7  NODE   355 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        45.2095399781756 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'2' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.087997439;
      END;
    END;
  END;

********** LEAF     8  NODE   356 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        45.2095399781756 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'6' ,'3' ,'4' ,'5' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.171419576;
      END;
    END;
  END;

********** LEAF     9  NODE   360 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7178576520843 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <               660965 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0357516317;
      END;
    END;
  END;

********** LEAF    10  NODE   361 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7178576520843 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                    660965 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.152304751;
      END;
    END;
  END;

********** LEAF    11  NODE   362 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7178576520843 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     174.383333333333 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.112620966;
      END;
    END;
  END;

********** LEAF    12  NODE   363 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7178576520843 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          174.383333333333 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.046638577;
      END;
    END;
  END;

********** LEAF    13  NODE   367 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7178576520843 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <               301802 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0340291611;
      END;
    END;
  END;

********** LEAF    14  NODE   368 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7178576520843 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                    301802 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.106838443;
      END;
    END;
  END;

********** LEAF    15  NODE   369 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7178576520843 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     148.703656079484 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.095146875;
      END;
    END;
  END;

********** LEAF    16  NODE   370 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7178576520843 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          148.703656079484 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.029563918;
      END;
    END;
  END;

********** LEAF    17  NODE   374 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.9037219057249 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <                22013 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.108391099;
      END;
    END;
  END;

********** LEAF    18  NODE   375 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.9037219057249 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                     22013 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0348113466;
      END;
    END;
  END;

********** LEAF    19  NODE   376 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.9037219057249 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'6' ,'3' ,'4' ,'5' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'6' ,'3' ,'4' ,'5' ,'0' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.090223141;
      END;
    END;
  END;

********** LEAF    20  NODE   377 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.9037219057249 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.04229996;
      END;
    END;
  END;

********** LEAF    21  NODE   381 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7336573513381 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     85.6001928719099 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.016460867;
      END;
    END;
  END;

********** LEAF    22  NODE   382 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7336573513381 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          85.6001928719099 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0370517522;
      END;
    END;
  END;

********** LEAF    23  NODE   383 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7336573513381 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'2' ,'1' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.045585568;
      END;
    END;
  END;

********** LEAF    24  NODE   384 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7336573513381 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('6' ,'3' ,'4' ,'5' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.111168362;
      END;
    END;
  END;

********** LEAF    25  NODE   388 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     43.6761232217406 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <                49361 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.028415036;
      END;
    END;
  END;

********** LEAF    26  NODE   389 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     43.6761232217406 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                     49361 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.034552358;
      END;
    END;
  END;

********** LEAF    27  NODE   390 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        43.6761232217406 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'3' ,'2' ,'1' ,'4' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.037651575;
      END;
    END;
  END;

********** LEAF    28  NODE   391 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        43.6761232217406 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'1' ,'4' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.092842132;
      END;
    END;
  END;

********** LEAF    29  NODE   395 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7336573513381 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <             313485.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0281631768;
      END;
    END;
  END;

********** LEAF    30  NODE   396 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7336573513381 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                  313485.5 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.088701992;
      END;
    END;
  END;

********** LEAF    31  NODE   397 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7336573513381 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'3' ,'2' ,'1' ,'4' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.033451341;
      END;
    END;
  END;

********** LEAF    32  NODE   398 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7336573513381 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'1' ,'4' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.083079324;
      END;
    END;
  END;

********** LEAF    33  NODE   402 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     42.9148011625534 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
      DEBTINC  <     3.12586758245056 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.20529741;
      END;
    END;
  END;

********** LEAF    34  NODE   403 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     42.9148011625534 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
          3.12586758245056 <= DEBTINC  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0308641266;
      END;
    END;
  END;

********** LEAF    35  NODE   404 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        42.9148011625534 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'6' ,'3' ,'4' ,'5' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'1' ,'6' ,'3' ,'4' ,'5' ,'0' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.066472774;
      END;
    END;
  END;

********** LEAF    36  NODE   405 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        42.9148011625534 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.02700683;
      END;
    END;
  END;

********** LEAF    37  NODE   409 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7336573513381 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'2' ,'1' ,'3' ,'4' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.030857285;
      END;
    END;
  END;

********** LEAF    38  NODE   410 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7336573513381 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'3' ,'4' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.02807109;
      END;
    END;
  END;

********** LEAF    39  NODE   411 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7336573513381 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <             200816.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.026057896;
      END;
    END;
  END;

********** LEAF    40  NODE   412 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7336573513381 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                  200816.5 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.097661916;
      END;
    END;
  END;

********** LEAF    41  NODE   416 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     43.6761232217406 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <               303749 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0278449529;
      END;
    END;
  END;

********** LEAF    42  NODE   417 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     43.6761232217406 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                    303749 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.097629874;
      END;
    END;
  END;

********** LEAF    43  NODE   418 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        43.6761232217406 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <               178.05 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.046917982;
      END;
    END;
  END;

********** LEAF    44  NODE   419 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        43.6761232217406 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
                    178.05 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.007424476;
      END;
    END;
  END;

********** LEAF    45  NODE   423 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     43.6761232217406 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'2' ,'1' ,'3' ,'4' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'2' ,'1' ,'3' ,'4' ,'7' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0251854908;
      END;
    END;
  END;

********** LEAF    46  NODE   424 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     43.6761232217406 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('7' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.311679606;
      END;
    END;
  END;

********** LEAF    47  NODE   425 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        43.6761232217406 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.013404193;
      END;
    END;
  END;

********** LEAF    48  NODE   426 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        43.6761232217406 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'6' ,'3' ,'4' ,'5' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.056882075;
      END;
    END;
  END;

********** LEAF    49  NODE   430 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'1' ,'2' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( NINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'0' ,'2' ,'3' ,'4' ,'7' ,'11' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( NINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '1' ,'0' ,'2' ,'3' ,'4' ,'7' ,'11' ,'5' ,'9' ,'8' ,'6' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0142163687;
      END;
    END;
  END;

********** LEAF    50  NODE   431 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'1' ,'2' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( NINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('5' ,'9' ,'8' ,'6' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.081560529;
      END;
    END;
  END;

********** LEAF    51  NODE   432 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('2' ,'3' ,'4' ,'5' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'3' ,'4' ,'5' ,'6' ,'7' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.053687883;
      END;
    END;
  END;

********** LEAF    52  NODE   433 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'7' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.124631041;
      END;
    END;
  END;

********** LEAF    53  NODE   437 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'1' ,'2' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'4' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'4' ,'3' ,'2' ,'1' ,'5' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0165664425;
      END;
    END;
  END;

********** LEAF    54  NODE   438 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'1' ,'2' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'1' ,'5' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.044317138;
      END;
    END;
  END;

********** LEAF    55  NODE   439 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('2' ,'3' ,'4' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'3' ,'4' ,'6' ,'5' ,'7' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.042826657;
      END;
    END;
  END;

********** LEAF    56  NODE   440 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF _ARBFMT_12 IN ('6' ,'5' ,'7' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.118996841;
      END;
    END;
  END;

********** LEAF    57  NODE   444 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     45.2095399781756 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <             313485.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0165277778;
      END;
    END;
  END;

********** LEAF    58  NODE   445 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     45.2095399781756 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                  313485.5 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.102242824;
      END;
    END;
  END;

********** LEAF    59  NODE   446 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        45.2095399781756 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <              56623.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.059273211;
      END;
    END;
  END;

********** LEAF    60  NODE   447 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        45.2095399781756 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                   56623.5 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.011127159;
      END;
    END;
  END;

********** LEAF    61  NODE   451 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7336573513381 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'2' ,'1' ,'3' ,'4' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'2' ,'1' ,'3' ,'4' ,'7' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0169548517;
      END;
    END;
  END;

********** LEAF    62  NODE   452 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7336573513381 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('7' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.168187776;
      END;
    END;
  END;

********** LEAF    63  NODE   453 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7336573513381 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <               166.35 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.038751944;
      END;
    END;
  END;

********** LEAF    64  NODE   454 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7336573513381 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
                    166.35 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.001547663;
      END;
    END;
  END;

********** LEAF    65  NODE   458 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     42.6738629776513 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'2' ,'1' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' ,'7' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0095540562;
      END;
    END;
  END;

********** LEAF    66  NODE   459 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     42.6738629776513 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.059456867;
      END;
    END;
  END;

********** LEAF    67  NODE   460 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        42.6738629776513 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     292.277616622411 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.10131981;
      END;
    END;
  END;

********** LEAF    68  NODE   461 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        42.6738629776513 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          292.277616622411 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0612956613;
      END;
    END;
  END;

********** LEAF    69  NODE   465 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     43.5461251099459 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
      DEBTINC  <     8.70786683383298 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.146283942;
      END;
    END;
  END;

********** LEAF    70  NODE   466 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     43.5461251099459 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
          8.70786683383298 <= DEBTINC  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0196143417;
      END;
    END;
  END;

********** LEAF    71  NODE   467 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        43.5461251099459 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_7 = PUT( JOB , $7.);
     %DMNORMIP( _ARBFMT_7);
      IF _ARBFMT_7 IN ('OFFICE' ,'SELF' ,'PROFEXE' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( JOB  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_7 NOTIN (
        'OFFICE' ,'SELF' ,'PROFEXE' ,'OTHER' ,'MGR' ,'SALES' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.001806148;
      END;
    END;
  END;

********** LEAF    72  NODE   468 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        43.5461251099459 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_7 = PUT( JOB , $7.);
     %DMNORMIP( _ARBFMT_7);
      IF _ARBFMT_7 IN ('OTHER' ,'MGR' ,'SALES' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.039157115;
      END;
    END;
  END;

********** LEAF    73  NODE   472 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
    VALUE  <                22535 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(LOAN ) AND 
      LOAN  <                 5850 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.125175436;
      END;
    END;
  END;

********** LEAF    74  NODE   473 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
    VALUE  <                22535 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(LOAN ) AND 
                      5850 <= LOAN  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( LOAN  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.0691239;
      END;
    END;
  END;

********** LEAF    75  NODE   474 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
                   22535 <= VALUE  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'1' ,'2' ,'6' ,'3' ,'4' ,'5' ,'7' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0117723723;
      END;
    END;
  END;

********** LEAF    76  NODE   475 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
                   22535 <= VALUE  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.048612647;
      END;
    END;
  END;

********** LEAF    77  NODE   479 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
    VALUE  <               298533 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'3' ,'2' ,'1' ,'5' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0107824894;
      END;
    END;
  END;

********** LEAF    78  NODE   480 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
    VALUE  <               298533 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'1' ,'5' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.041314379;
      END;
    END;
  END;

********** LEAF    79  NODE   481 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
                  298533 <= VALUE  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(YOJ ) THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.078905491;
      END;
    END;
  END;

********** LEAF    80  NODE   482 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
                  298533 <= VALUE  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
    _BRANCH_ = -1;
    IF MISSING( YOJ ) THEN _BRANCH_ = 2;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.03668722;
      END;
    END;
  END;

********** LEAF    81  NODE   486 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     42.9148011625534 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
      CLNO  <                  8.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.056052509;
      END;
    END;
  END;

********** LEAF    82  NODE   487 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     42.9148011625534 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
                       8.5 <= CLNO  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLNO  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0210847373;
      END;
    END;
  END;

********** LEAF    83  NODE   488 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        42.9148011625534 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     178.105823980133 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.042360449;
      END;
    END;
  END;

********** LEAF    84  NODE   489 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        42.9148011625534 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          178.105823980133 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0026908842;
      END;
    END;
  END;

********** LEAF    85  NODE   493 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'2' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <                50003 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.044351516;
      END;
    END;
  END;

********** LEAF    86  NODE   494 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'2' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                     50003 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0134756289;
      END;
    END;
  END;

********** LEAF    87  NODE   495 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
      CLNO  <                 26.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.10911538;
      END;
    END;
  END;

********** LEAF    88  NODE   496 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
                      26.5 <= CLNO  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLNO  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.02790859;
      END;
    END;
  END;

********** LEAF    89  NODE   500 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     45.1848045236243 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( NINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'0' ,'2' ,'3' ,'4' ,'7' ,'11' ,'8' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( NINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '1' ,'0' ,'2' ,'3' ,'4' ,'7' ,'11' ,'8' ,'5' ,'6' ,'10' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0047634147;
      END;
    END;
  END;

********** LEAF    90  NODE   501 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     45.1848045236243 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( NINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('5' ,'6' ,'10' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.078792;
      END;
    END;
  END;

********** LEAF    91  NODE   502 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        45.1848045236243 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.087833791;
      END;
    END;
  END;

********** LEAF    92  NODE   503 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        45.1848045236243 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
    _BRANCH_ = -1;
    IF MISSING( DEROG ) THEN _BRANCH_ = 2;
    ELSE DO;
      _ARBFMT_12 = PUT( DEROG , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 NOTIN (
        '0' 
         ) THEN _BRANCH_ = 2;
    END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.072810517;
      END;
    END;
  END;

********** LEAF    93  NODE   507 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(CLAGE ) AND 
    CLAGE  <     123.606587183474 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
      DEBTINC  <     31.4170214726133 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0349638326;
      END;
    END;
  END;

********** LEAF    94  NODE   508 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(CLAGE ) AND 
    CLAGE  <     123.606587183474 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
          31.4170214726133 <= DEBTINC  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.038251787;
      END;
    END;
  END;

********** LEAF    95  NODE   509 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(CLAGE ) AND 
        123.606587183474 <= CLAGE  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <              50684.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.037476983;
      END;
    END;
  END;

********** LEAF    96  NODE   510 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(CLAGE ) AND 
        123.606587183474 <= CLAGE  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                   50684.5 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0200821561;
      END;
    END;
  END;

********** LEAF    97  NODE   514 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'2' ,'1' ,'3' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'2' ,'1' ,'3' ,'6' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <               660965 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0080522487;
      END;
    END;
  END;

********** LEAF    98  NODE   515 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'2' ,'1' ,'3' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'2' ,'1' ,'3' ,'6' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                    660965 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.074142248;
      END;
    END;
  END;

********** LEAF    99  NODE   516 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
      DEBTINC  <     34.7375104366464 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0098519003;
      END;
    END;
  END;

********** LEAF   100  NODE   517 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
          34.7375104366464 <= DEBTINC  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.079060294;
      END;
    END;
  END;

********** LEAF   101  NODE   521 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.1623577903943 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(LOAN ) AND 
      LOAN  <                 4150 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.173991727;
      END;
    END;
  END;

********** LEAF   102  NODE   522 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.1623577903943 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(LOAN ) AND 
                      4150 <= LOAN  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( LOAN  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0196618243;
      END;
    END;
  END;

********** LEAF   103  NODE   523 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.1623577903943 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.083852632;
      END;
    END;
  END;

********** LEAF   104  NODE   524 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.1623577903943 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
    _BRANCH_ = -1;
    IF MISSING( DEBTINC ) THEN _BRANCH_ = 2;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.016644226;
      END;
    END;
  END;

********** LEAF   105  NODE   528 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'1' ,'3' ,'2' ,'4' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <              50684.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.03112229;
      END;
    END;
  END;

********** LEAF   106  NODE   529 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'1' ,'3' ,'2' ,'4' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                   50684.5 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0097043761;
      END;
    END;
  END;

********** LEAF   107  NODE   530 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <                77613 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.107836419;
      END;
    END;
  END;

********** LEAF   108  NODE   531 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                     77613 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.048041856;
      END;
    END;
  END;

********** LEAF   109  NODE   535 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'1' ,'2' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     92.5215422777547 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.027125831;
      END;
    END;
  END;

********** LEAF   110  NODE   536 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'1' ,'2' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          92.5215422777547 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0156704394;
      END;
    END;
  END;

********** LEAF   111  NODE   537 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '2' ,'0' ,'3' ,'1' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0081013224;
      END;
    END;
  END;

********** LEAF   112  NODE   538 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'3' ,'1' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.061217608;
      END;
    END;
  END;

********** LEAF   113  NODE   542 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'5' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'5' ,'3' ,'2' ,'1' ,'4' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
      DEBTINC  <     44.7104234257295 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEBTINC  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0083548838;
      END;
    END;
  END;

********** LEAF   114  NODE   543 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'5' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'5' ,'3' ,'2' ,'1' ,'4' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
          44.7104234257295 <= DEBTINC  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.077375292;
      END;
    END;
  END;

********** LEAF   115  NODE   544 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'1' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(YOJ ) AND 
      YOJ  <                 0.25 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0561668446;
      END;
    END;
  END;

********** LEAF   116  NODE   545 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'1' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(YOJ ) AND 
                      0.25 <= YOJ  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( YOJ  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.050812008;
      END;
    END;
  END;

********** LEAF   117  NODE   549 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <      42.363536185079 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <               301802 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.017237861;
      END;
    END;
  END;

********** LEAF   118  NODE   550 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <      42.363536185079 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                    301802 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.164621341;
      END;
    END;
  END;

********** LEAF   119  NODE   551 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
         42.363536185079 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
      CLNO  <                  3.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLNO  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.07275648;
      END;
    END;
  END;

********** LEAF   120  NODE   552 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
         42.363536185079 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
                       3.5 <= CLNO  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.012533007;
      END;
    END;
  END;

********** LEAF   121  NODE   556 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'3' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'3' ,'2' ,'1' ,'6' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(LOAN ) AND 
      LOAN  <                 4150 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.062166584;
      END;
    END;
  END;

********** LEAF   122  NODE   557 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'3' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'3' ,'2' ,'1' ,'6' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(LOAN ) AND 
                      4150 <= LOAN  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( LOAN  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0119442691;
      END;
    END;
  END;

********** LEAF   123  NODE   558 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ,'6' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
      CLNO  <                  8.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.129006433;
      END;
    END;
  END;

********** LEAF   124  NODE   559 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'1' ,'6' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
                       8.5 <= CLNO  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLNO  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.027476514;
      END;
    END;
  END;

********** LEAF   125  NODE   563 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'2' ,'1' ,'3' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'2' ,'1' ,'3' ,'4' ,'6' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     178.673758474118 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.013415668;
      END;
    END;
  END;

********** LEAF   126  NODE   564 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'2' ,'1' ,'3' ,'4' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'2' ,'1' ,'3' ,'4' ,'6' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          178.673758474118 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0213808126;
      END;
    END;
  END;

********** LEAF   127  NODE   565 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
      DEBTINC  <     45.0587789446342 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.13664455;
      END;
    END;
  END;

********** LEAF   128  NODE   566 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
          45.0587789446342 <= DEBTINC  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.061106748;
      END;
    END;
  END;

********** LEAF   129  NODE   570 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( NINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'0' ,'2' ,'3' ,'7' ,'11' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( NINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'2' ,'3' ,'7' ,'11' ,'4' ,'5' ,'6' ,'10' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
      CLNO  <                  3.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.066493008;
      END;
    END;
  END;

********** LEAF   130  NODE   571 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( NINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'0' ,'2' ,'3' ,'7' ,'11' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( NINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'2' ,'3' ,'7' ,'11' ,'4' ,'5' ,'6' ,'10' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
                       3.5 <= CLNO  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLNO  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0077199879;
      END;
    END;
  END;

********** LEAF   131  NODE   572 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( NINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'10' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <                72900 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.120125552;
      END;
    END;
  END;

********** LEAF   132  NODE   573 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( NINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('4' ,'5' ,'6' ,'10' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                     72900 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.030333166;
      END;
    END;
  END;

********** LEAF   133  NODE   575 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     1.91495976499978 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.229289873;
    END;
  END;

********** LEAF   134  NODE   577 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        1.91495976499978 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'3' ,'2' ,'1' ,'4' ,'5' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0079650403;
      END;
    END;
  END;

********** LEAF   135  NODE   578 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        1.91495976499978 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'1' ,'4' ,'5' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.035267188;
      END;
    END;
  END;

********** LEAF   136  NODE   582 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
    VALUE  <               303749 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     137.071236556373 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.014240107;
      END;
    END;
  END;

********** LEAF   137  NODE   583 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
    VALUE  <               303749 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          137.071236556373 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0179925402;
      END;
    END;
  END;

********** LEAF   138  NODE   584 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
                  303749 <= VALUE  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
      DEBTINC  <     20.0286096659226 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEBTINC  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.057619775;
      END;
    END;
  END;

********** LEAF   139  NODE   585 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(VALUE ) AND 
                  303749 <= VALUE  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
          20.0286096659226 <= DEBTINC  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.105245535;
      END;
    END;
  END;

********** LEAF   140  NODE   589 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7178576520843 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'2' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' ,'7' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0112738485;
      END;
    END;
  END;

********** LEAF   141  NODE   590 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     44.7178576520843 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.030010168;
      END;
    END;
  END;

********** LEAF   142  NODE   591 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7178576520843 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.077988027;
      END;
    END;
  END;

********** LEAF   143  NODE   592 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        44.7178576520843 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
    _BRANCH_ = -1;
    IF MISSING( DEROG ) THEN _BRANCH_ = 2;
    ELSE DO;
      _ARBFMT_12 = PUT( DEROG , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 NOTIN (
        '0' 
         ) THEN _BRANCH_ = 2;
    END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.063981954;
      END;
    END;
  END;

********** LEAF   144  NODE   596 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( NINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'0' ,'8' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( NINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'8' ,'2' ,'3' ,'4' ,'7' ,'5' ,'6' ,'10' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
      CLNO  <                  2.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.103537271;
      END;
    END;
  END;

********** LEAF   145  NODE   597 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( NINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ,'0' ,'8' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( NINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '1' ,'0' ,'8' ,'2' ,'3' ,'4' ,'7' ,'5' ,'6' ,'10' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
                       2.5 <= CLNO  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLNO  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0103603135;
      END;
    END;
  END;

********** LEAF   146  NODE   598 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( NINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'3' ,'4' ,'7' ,'5' ,'6' ,'10' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     342.005821143427 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.021561031;
      END;
    END;
  END;

********** LEAF   147  NODE   599 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( NINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'3' ,'4' ,'7' ,'5' ,'6' ,'10' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          342.005821143427 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.191735349;
      END;
    END;
  END;

********** LEAF   148  NODE   603 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'2' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <              48293.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.026891528;
      END;
    END;
  END;

********** LEAF   149  NODE   604 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'2' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                   48293.5 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0116334161;
      END;
    END;
  END;

********** LEAF   150  NODE   605 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
      CLNO  <                 24.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.081004944;
      END;
    END;
  END;

********** LEAF   151  NODE   606 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
                      24.5 <= CLNO  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLNO  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.034499804;
      END;
    END;
  END;

********** LEAF   152  NODE   610 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(LOAN ) AND 
    LOAN  <                 4150 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <              69930.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.112552364;
      END;
    END;
  END;

********** LEAF   153  NODE   611 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(LOAN ) AND 
    LOAN  <                 4150 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                   69930.5 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0087636501;
      END;
    END;
  END;

********** LEAF   154  NODE   612 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(LOAN ) AND 
                    4150 <= LOAN  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( LOAN  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0117476012;
      END;
    END;
  END;

********** LEAF   155  NODE   613 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(LOAN ) AND 
                    4150 <= LOAN  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( LOAN  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'6' ,'3' ,'4' ,'5' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.025518639;
      END;
    END;
  END;

********** LEAF   156  NODE   617 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     43.5461251099459 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
      CLNO  <                  2.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.070395486;
      END;
    END;
  END;

********** LEAF   157  NODE   618 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     43.5461251099459 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
                       2.5 <= CLNO  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLNO  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0045336255;
      END;
    END;
  END;

********** LEAF   158  NODE   619 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        43.5461251099459 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     284.870164764958 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.074758847;
      END;
    END;
  END;

********** LEAF   159  NODE   620 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        43.5461251099459 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          284.870164764958 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.065122412;
      END;
    END;
  END;

********** LEAF   160  NODE   624 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'3' ,'2' ,'1' ,'4' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <              50728.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.028744257;
      END;
    END;
  END;

********** LEAF   161  NODE   625 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'3' ,'2' ,'1' ,'4' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                   50728.5 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0110756074;
      END;
    END;
  END;

********** LEAF   162  NODE   626 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'1' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
      DEBTINC  <     34.5967678536203 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0165536388;
      END;
    END;
  END;

********** LEAF   163  NODE   627 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DEROG , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('3' ,'2' ,'1' ,'4' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
          34.5967678536203 <= DEBTINC  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.053014248;
      END;
    END;
  END;

********** LEAF   164  NODE   631 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(LOAN ) AND 
    LOAN  <                 3950 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
      DEBTINC  <     32.8023375378327 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEBTINC  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.047465374;
      END;
    END;
  END;

********** LEAF   165  NODE   632 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(LOAN ) AND 
    LOAN  <                 3950 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
          32.8023375378327 <= DEBTINC  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.150134666;
      END;
    END;
  END;

********** LEAF   166  NODE   633 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(LOAN ) AND 
                    3950 <= LOAN  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( LOAN  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( NINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('1' ,'0' ,'2' ,'3' ,'11' ,'10' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( NINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '1' ,'0' ,'2' ,'3' ,'11' ,'10' ,'4' ,'7' ,'5' ,'8' ,'6' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0068637916;
      END;
    END;
  END;

********** LEAF   167  NODE   634 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(LOAN ) AND 
                    3950 <= LOAN  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( LOAN  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( NINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('4' ,'7' ,'5' ,'8' ,'6' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.048826207;
      END;
    END;
  END;

********** LEAF   168  NODE   636 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <      2.7832979405221 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.17110178;
    END;
  END;

********** LEAF   169  NODE   638 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
         2.7832979405221 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
      CLAGE  <     146.939746812832 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.017757289;
      END;
    END;
  END;

********** LEAF   170  NODE   639 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
         2.7832979405221 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLAGE ) AND 
          146.939746812832 <= CLAGE  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0136318783;
      END;
    END;
  END;

********** LEAF   171  NODE   643 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_7 = PUT( JOB , $7.);
   %DMNORMIP( _ARBFMT_7);
    IF _ARBFMT_7 IN ('OFFICE' ,'SELF' ,'PROFEXE' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( JOB  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_7 NOTIN (
      'OFFICE' ,'SELF' ,'PROFEXE' ,'OTHER' ,'MGR' ,'SALES' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEROG  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'3' ,'2' ,'1' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.025370899;
      END;
    END;
  END;

********** LEAF   172  NODE   644 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_7 = PUT( JOB , $7.);
   %DMNORMIP( _ARBFMT_7);
    IF _ARBFMT_7 IN ('OFFICE' ,'SELF' ,'PROFEXE' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( JOB  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_7 NOTIN (
      'OFFICE' ,'SELF' ,'PROFEXE' ,'OTHER' ,'MGR' ,'SALES' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DEROG , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('3' ,'2' ,'1' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.04299048;
      END;
    END;
  END;

********** LEAF   173  NODE   645 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_7 = PUT( JOB , $7.);
   %DMNORMIP( _ARBFMT_7);
    IF _ARBFMT_7 IN ('OTHER' ,'MGR' ,'SALES' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ,'4' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_12 NOTIN (
        '0' ,'4' ,'2' ,'1' ,'6' ,'3' ,'5' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.005585564;
      END;
    END;
  END;

********** LEAF   174  NODE   646 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_7 = PUT( JOB , $7.);
   %DMNORMIP( _ARBFMT_7);
    IF _ARBFMT_7 IN ('OTHER' ,'MGR' ,'SALES' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_12 = PUT( DELINQ , BEST12.);
     %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('2' ,'1' ,'6' ,'3' ,'5' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.050522659;
      END;
    END;
  END;

********** LEAF   175  NODE   650 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(CLAGE ) AND 
    CLAGE  <     179.117004316826 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
      DEBTINC  <     35.0496976089639 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0171726353;
      END;
    END;
  END;

********** LEAF   176  NODE   651 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(CLAGE ) AND 
    CLAGE  <     179.117004316826 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( CLAGE  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
          35.0496976089639 <= DEBTINC  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.025578851;
      END;
    END;
  END;

********** LEAF   177  NODE   652 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(CLAGE ) AND 
        179.117004316826 <= CLAGE  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
      DEBTINC  <     12.8669769950569 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.18241887;
      END;
    END;
  END;

********** LEAF   178  NODE   653 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(CLAGE ) AND 
        179.117004316826 <= CLAGE  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(DEBTINC ) AND 
          12.8669769950569 <= DEBTINC  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0234304157;
      END;
    END;
  END;

********** LEAF   179  NODE   657 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'2' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
      CLNO  <                  2.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.068323911;
      END;
    END;
  END;

********** LEAF   180  NODE   658 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ,'2' ,'1' ) THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DELINQ  ) THEN _BRANCH_ = 1;
    ELSE IF _ARBFMT_12 NOTIN (
      '0' ,'2' ,'1' ,'6' ,'3' ,'4' ,'5' ,'7' 
       ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
                       2.5 <= CLNO  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLNO  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.00582155;
      END;
    END;
  END;

********** LEAF   181  NODE   659 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
      CLNO  <                 24.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.081329956;
      END;
    END;
  END;

********** LEAF   182  NODE   660 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
  _ARBFMT_12 = PUT( DELINQ , BEST12.);
   %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('6' ,'3' ,'4' ,'5' ,'7' ) THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(CLNO ) AND 
                      24.5 <= CLNO  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( CLNO  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.015978729;
      END;
    END;
  END;

********** LEAF   183  NODE   662 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
    DEBTINC  <     1.88238257164246 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.137474259;
    END;
  END;

********** LEAF   184  NODE   664 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        1.88238257164246 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
      VALUE  <               660966 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0023157409;
      END;
    END;
  END;

********** LEAF   185  NODE   665 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(DEBTINC ) AND 
        1.88238257164246 <= DEBTINC  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( DEBTINC  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(VALUE ) AND 
                    660966 <= VALUE  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( VALUE  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.058755776;
      END;
    END;
  END;

********** LEAF   186  NODE   669 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(CLNO ) AND 
    CLNO  <                   60 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( CLNO  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_7 = PUT( JOB , $7.);
     %DMNORMIP( _ARBFMT_7);
      IF _ARBFMT_7 IN ('OFFICE' ,'SELF' ,'PROFEXE' ,'OTHER' ,'MGR' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( JOB  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_7 NOTIN (
        'OFFICE' ,'SELF' ,'PROFEXE' ,'OTHER' ,'MGR' ,'SALES' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.004916264;
      END;
    END;
  END;

********** LEAF   187  NODE   670 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(CLNO ) AND 
    CLNO  <                   60 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( CLNO  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_7 = PUT( JOB , $7.);
     %DMNORMIP( _ARBFMT_7);
      IF _ARBFMT_7 IN ('SALES' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.088901349;
      END;
    END;
  END;

********** LEAF   188  NODE   668 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(CLNO ) AND 
                      60 <= CLNO  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.220793835;
    END;
  END;

_ARB_F_ = 2.0 * _ARB_F_;
IF _ARB_BADF_ NE 0 THEN P_BAD0  = 0.8006042296;
ELSE IF _ARB_F_ > 45.0 THEN P_BAD0  = 1.0;
ELSE IF _ARB_F_ < -45.0 THEN P_BAD0  = 0.0;
ELSE P_BAD0  = 1.0/(1.0 + EXP( - _ARB_F_));
P_BAD1  = 1.0 - P_BAD0 ;
*****  CREATE Q_: POSTERIORS WITHOUT PRIORS ****;
Q_BAD1  = P_BAD1 ;
Q_BAD0  = P_BAD0 ;

*****  I_ AND U_ VARIABLES *******************;
 DROP _ARB_I_ _ARB_IP_;
 _ARB_IP_ = -1.0;
 IF _ARB_IP_ + 1.0/32768.0 < P_BAD1 THEN DO;
   _ARB_IP_ = P_BAD1 ;
   _ARB_I_  = 1;
   END;
 IF _ARB_IP_ + 1.0/32768.0 < P_BAD0 THEN DO;
   _ARB_IP_ = P_BAD0 ;
   _ARB_I_  = 2;
   END;
 SELECT( _ARB_I_);
  WHEN( 1) DO;
    I_BAD  = '1' ;
    U_BAD  =  1;
     END;
  WHEN( 2) DO;
    I_BAD  = '0' ;
    U_BAD  =  0;
     END;
   END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

