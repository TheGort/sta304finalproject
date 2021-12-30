
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
%macro pull_cy(var_ex,group);
*Run the regression without weights;
proc reg data = junk2 outseb outest = junk3 (where=(_TYPE_='PARMS')) noprint ;
   model &var_ex. = post linear square linear_post square_post;
  *weight WTFA_sa;
   where &group. = 1;
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
*Run the regression without weights with a month dummy;
proc reg data = junk2 outseb outest = junk7 (where=(_TYPE_='PARMS')) noprint ;
   model &var_ex. = post linear square linear_post square_post first_month;
  *weight WTFA_sa;
   where &group. = 1;
run;
*This will read the regression output into a macro;
data _null_;
   set junk7;
   call symput('Intercept2',Intercept);
   call symput('post2',post);
   call symput('linear2',linear);
   call symput('square2',square);
   call symput('linear_post2',linear_post);
   call symput('square_post2',square_post);
   call symput('first_month2',first_month);
run;
*Compute the means of the days;
proc means data = junk2 noprint;
   var &var_ex.;
   output out = junk4 (where=(_type_ = 1 and _stat_ = 'MEAN') rename=(&var_ex.=&var_ex._&group._m));
   class months_to_21_yr;
   *weight WTFA_sa;
   where &group. = 1;
run;

proc reg data = junk2 outseb outest = junk5 (where=(_TYPE_='PARMS')) noprint ;
   model &var_ex. = post linear square linear_post square_post;
   weight WTFA_sa;
   where &group. = 1;
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
   output out = junk6 (where=(_type_ = 1 and _stat_ = 'MEAN') rename=(&var_ex.=&var_ex._&group._m_wght));
   class months_to_21_yr;
    weight WTFA_sa;
   where &group. = 1;
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
   &var_ex._&group._ft = &Intercept. + &post.*post + &linear.*linear + &square.*square + &linear_post.*linear_post + &square_post.*square_post;
   &var_ex._&group._ft_wt = &Intercept1. + &post1.*post + &linear1.*linear + &square1.*square + &linear_post1.*linear_post + &square_post1.*square_post;
  *I do not want the month dummy in here;
   &var_ex._&group._ft_FM = &Intercept2. + &post2.*post + &linear2.*linear + &square2.*square + &linear_post2.*linear_post + &square_post2.*square_post;
run;
proc datasets nolist;
   delete junk1 junk3 junk4 junk5 junk6;
run;
%mend;
*See spreadsheet "1999-2003 ICD9 Codes" for variable definitions;
%macro pull_c(group);
%pull_cy(drinks_12_one_yr,&group.);
%pull_cy(drinks_12_life,&group.);
%pull_cy(days_drnk_per_yr,&group.); 
%pull_cy(drinks_per_day,&group.); 
%pull_cy(tot_drnk_per_yr,&group.); 
%pull_cy(days_more_than5,&group.); 
%pull_cy(in_week,&group.); 
%pull_cy(in_month,&group.); 
%pull_cy(in_year,&group.); 
%pull_cy(no_drink,&group.);
%pull_cy(per_days_drink,&group.);
%pull_cy(per_days_mo_tn5,&group.);
%pull_cy(heavy_drink,&group.);
*Combine;
data &group. (drop =  _TYPE_	_FREQ_	_STAT_		post	linear	square	linear_post	square_post);
   merge drinks_12_one_yr drinks_12_life days_drnk_per_yr drinks_per_day 
         tot_drnk_per_yr days_more_than5 in_week in_month in_year no_drink per_days_drink 
         per_days_mo_tn5 heavy_drink;
   by months_to_21_yr;
   count = _freq_;
run;
proc datasets;
   delete drinks_12_one_yr drinks_12_life days_drnk_per_yr drinks_per_day 
          tot_drnk_per_yr days_more_than5 in_week in_month in_year no_drink per_days_drink 
          per_days_mo_tn5 heavy_drink;
run;
%mend;
%pull_c(all);
%pull_c(male);
%pull_c(female);
%pull_c(white);
%pull_c(black);
%pull_c(hisp);
%pull_c(no_hs_DP);
%pull_c(hs_DP);
%pull_c(more_hs);
%pull_c(ed_miss);

*Gender and race next also HS drop out and not HS drop out;

data figure_all_gender;
   merge all male female;
   by months_to_21_yr;
run;

PROC EXPORT DATA= figure_all_gender
            OUTFILE= "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\F01 - F03 and F05 Alcohol Consumption Patterns from NHIS.csv" 
            DBMS=csv REPLACE;
RUN;


data figure_race;
   merge white black hisp;
   by months_to_21_yr;
run;

PROC EXPORT DATA= figure_race
            OUTFILE= "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\F01B Alcohol Consumption Patterns NHIS by race.csv" 
            DBMS=csv REPLACE;
RUN;
data figure_ed;
   merge no_hs_DP hs_DP more_hs ed_miss ;
   by months_to_21_yr;
run;

PROC EXPORT DATA= figure_ed
            OUTFILE= "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\F01C Alcohol Consumption Patterns NHIS by education.csv" 
            DBMS=csv REPLACE;
RUN;
 
















