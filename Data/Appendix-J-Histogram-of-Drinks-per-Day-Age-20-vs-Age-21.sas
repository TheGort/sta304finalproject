

*Check variable stability;
proc freq data = all_merged;
   tables drinks_per_day ;
   where days_to_21 >= 0 and days_to_21 < 365 ;
run;

*Check variable stability;
proc freq data = all_merged;
   tables drinks_per_day ;
   where days_to_21 < 0 and days_to_21 <= -365 ;
run;