proc print data=work.SUM_ORDER_REV_XDAY_XSTATE noobs;
by CategoryName;
var State CategoryName date Orders Revenue;
run;

proc means data=work.SUM_ORDER_REV_XDAY_XSTATE;
var Orders Revenue;
run;

proc freq data=work.SUM_ORDER_REV_XDAY_XSTATE;
tables CategoryName * State;
run;