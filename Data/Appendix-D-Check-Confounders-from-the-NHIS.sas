

*Restrict the sample;
data junk2;
   set all_merged;
   if age_est_fixed < 19 or age_est_fixed > 23 then delete;
  *Create month variable I will need for means procedure;
   months_to_21_yr = (30*floor((days_to_21)/30)+15)/365;
  *Create pseudo weeks;  
   weeks_to_21_yr = (7*floor((days_to_21)/7)+3.5)/365;
   years_to_21 = days_to_21/365;
   relative =  years_to_21; 
  *Compute the variables we will need;
   if relative >= 0 then post = 1; else post = 0;
   linear = relative;
   square = linear*linear;
   cubic = square*linear;
   linear_post = linear*post;
   square_post = square*post;
   cubic_post = cubic*post;
   all = 1;
   if male = 0 then female = 1; else female = 0;
   cluster_v =  PSU + 100*STRATUM;
   if region = 1 then region1 = 1; else region1 = 0;
   if region = 2 then region2 = 1; else region2 = 0;
   if region = 3 then region3 = 1; else region3 = 0;
   if region = 4 then region4 = 1; else region4 = 0;
   per_days_drink = percent_days_drinking;
   if male = 1 then female = 0; else female = 1;
   tot_drnk_per_yr = total_drinks_per_yr;
   days_drnk_per_yr = days_drinking_per_yr;
   hisp = hispanic;
run;

*Create figures of drinking patterns;
%macro pull_co(var_ex);
*Run the regression;
proc reg data = junk2 outseb outest = junk3 (where=(_TYPE_='PARMS')) noprint ;
   model &var_ex. = post linear square linear_post square_post first_month;
  *weight WTFA_sa;
run;
*This will read the regression output into a macro;
data _null_;
   set junk3;
   call symput('Intercept',Intercept);
   call symput('post',post);
   call symput('linear',linear);
   call symput('square',square);
   call symput('linear_post',linear_post);
   call symput('square_post',square_post);
run;
*Compute the means of the days;
proc means data = junk2 noprint;
   var &var_ex.;
   output out = junk4 (where=(_type_ = 1 and _stat_ = 'MEAN') rename=(&var_ex.=&var_ex._m));
   class months_to_21_yr;
   *weight WTFA_sa;
run;

proc reg data = junk2 outseb outest = junk5 (where=(_TYPE_='PARMS')) noprint ;
   model &var_ex. = post linear square linear_post square_post;
   weight WTFA_sa;
run;
*This will read the regression output into a macro;
data _null_;
   set junk5;
   call symput('Intercept1',Intercept);
   call symput('post1',post);
   call symput('linear1',linear);
   call symput('square1',square);
   call symput('linear_post1',linear_post);
   call symput('square_post1',square_post);
run;
*Compute the means of the days;
proc means data = junk2 noprint;
   var &var_ex.;
   output out = junk6 (where=(_type_ = 1 and _stat_ = 'MEAN') rename=(&var_ex.=&var_ex._m_wght));
   class months_to_21_yr;
    weight WTFA_sa;
run;
*These are the group lists;
data &var_ex.;
   merge junk4 junk6;
   by months_to_21_yr;
  *Compute age;
   if months_to_21_yr >= 0 then post = 1; else post = 0;
   linear = months_to_21_yr;
   square = linear*linear;
   linear_post = linear*post;
   square_post = square*post;
   &var_ex._ft = &Intercept. + &post.*post + &linear.*linear + &square.*square + &linear_post.*linear_post + &square_post.*square_post;
   &var_ex._ft_wt = &Intercept1. + &post1.*post + &linear1.*linear + &square1.*square + &linear_post1.*linear_post + &square_post1.*square_post;
run;
proc datasets nolist;
   delete junk1 junk3 junk4 junk5 junk6;
run;
%mend;
*See spreadsheet "1999-2003 ICD9 Codes" for variable definitions;


%pull_co(male);
%pull_co(white);
%pull_co(black);
%pull_co(hispanic);
%pull_co(employed);
%pull_co(looking_work);
%pull_co(no_ins);


%pull_co(no_hs_dp);
%pull_co(hs_dp);
%pull_co(more_hs);
%pull_co(ed_miss);


%pull_co(region1);
%pull_co(region2);
%pull_co(region3);
%pull_co(region4);
*Combine;
data confounders (drop =  _TYPE_	_FREQ_	_STAT_		post	linear	square	linear_post	square_post);
   merge male no_hs_DP hs_DP more_hs ed_miss white black hispanic employed looking_work no_ins region1 region2 region3 region4;
   by months_to_21_yr;
   count = _freq_;
run;

PROC EXPORT DATA= confounders
            OUTFILE= "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\Appendix E Check Confounders from the NHIS.csv" 
            DBMS=csv REPLACE;
RUN;














