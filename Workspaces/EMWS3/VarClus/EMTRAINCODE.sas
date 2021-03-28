
%macro main;

   filename temp catalog 'sashelp.emexpl.variableclustering_macros.source';
   %include temp;
   filename temp catalog 'sashelp.emexpl.variableclustering_macros2.source';
   %include temp;
   filename temp;

  %SetProperties;

   %if %upcase(&EM_ACTION) = CREATE %then %do;
       filename temp catalog 'sashelp.emexpl.variableclustering_create.source';
       %include temp;
       filename temp;
       %create;
   %end;
   %else
   %if %upcase(&EM_ACTION) = TRAIN %then %do;
        filename temp catalog 'sashelp.emexpl.variableclustering_train.source';
           %include temp;
           filename temp;
           %train;
   %end;
   %else
   %if %upcase(&EM_ACTION) = SCORE %then %do;
           filename temp catalog 'sashelp.emexpl.variableclustering_score.source';
           %include temp;
           filename temp;
           %score;
   %end;
   %else
   %if %upcase(&EM_ACTION) = REPORT %then %do;
           filename temp catalog 'sashelp.emexpl.variableclustering_report.source';
           %include temp;
           filename temp;
           %report;
   %end;
   /*
   %if %upcase(&EM_ACTION) = OPENTESTTABLE %then %do;
       %put 'OPENING TABLE';
   %end;
   %if %upcase(&EM_ACTION) = CLOSETESTTABLE %then %do;
       %put 'CLOSE TABLE';
   %end;
   */
%mend main;
%main;

