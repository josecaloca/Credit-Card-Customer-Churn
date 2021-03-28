%macro main;

  filename temp catalog 'sashelp.emmdfy.binning_macros.source';
  %include temp;
  filename temp;

  %setProperties;

  %if %upcase(&EM_ACTION) = CREATE %then %do;
    filename temp catalog 'sashelp.emmdfy.binning_create.source';
    %include temp;
    filename temp;

    %create;
  %end;

   %else
   %if %upcase(&EM_ACTION) = TRAIN %then %do;

       filename temp catalog 'sashelp.emmdfy.binning_train.source';
       %include temp;
       filename temp;
       %train;
   %end;

  %else
  %if %upcase(&EM_ACTION) = SCORE %then %do;
    filename temp catalog 'sashelp.emmdfy.binning_score.source';
    %include temp;
    filename temp;

    %score;

  %end;

  %else
  %if %upcase(&EM_ACTION) = REPORT %then %do;

       filename temp catalog 'sashelp.emmdfy.binning_report.source';
       %include temp;
       filename temp;

       %report;
   %end;

   %doendm:
%mend main;

%main;

