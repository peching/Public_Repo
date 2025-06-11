proc sql;
create table car_output as
select make, model, origin 
from sashelp.cars 
where origin="Asia";
quit;
run;
