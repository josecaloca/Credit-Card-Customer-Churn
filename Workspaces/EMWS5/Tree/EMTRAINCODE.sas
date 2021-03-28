%macro main;

  %if %upcase(&EM_ACTION) = CREATE %then %do;
    filename temp catalog 'sashelp.emmodl.tree_create.source';
    %include temp;
    filename temp;

    %em_tree_create;
  %end;

   %else
   %if %upcase(&EM_ACTION) = TRAIN %then %do;

       filename temp catalog 'sashelp.emmodl.tree_train.source';
       %include temp;
       filename temp;
       %em_tree_train;
   %end;

  %else
  %if %upcase(&EM_ACTION) = SCORE %then %do;
    filename temp catalog 'sashelp.emmodl.tree_score.source';
    %include temp;
    filename temp;

    %em_tree_score;

  %end;

  %else
  %if %upcase(&EM_ACTION) = REPORT %then %do;

       filename temp catalog 'sashelp.emmodl.tree_report.source';
       %include temp;
       filename temp;

       %em_tree_report;
   %end;

  %else
  %if %upcase(&EM_ACTION) = OPENINT %then %do;

       filename temp catalog 'sashelp.emmodl.tree_actions.source';
       %include temp;
       filename temp;
       %EM_TREE_OPENTREEVIEWER;

   %end;

  %else
  %if %upcase(&EM_ACTION) = CLOSEINT %then %do;

       filename temp catalog 'sashelp.emmodl.tree_actions.source';
       %include temp;
       filename temp;
       %EM_TREE_CLOSETREEVIEWER;

   %end;


   %doendm:
%mend main;

%main;

