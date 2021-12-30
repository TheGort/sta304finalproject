*Restrict the sample;
data appendixB;
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

%macro pull_cy(var_ex,group);
*Run linear;
proc reg data = appendixB outseb outest = reg_linear (where=(_TYPE_='PARMS')) noprint ;
   model &var_ex. = post linear  linear_post ;
   where &group. = 1;
run;
*This will read the regression output into a macro;
data _null_;
   set reg_linear;
   call symput('Intercept0',Intercept);
   call symput('post0',post);
   call symput('linear0',linear);
   call symput('linear_post0',linear_post);
run;
*Run the quadratic;
proc reg data = appendixB outseb outest = reg_quadratic (where=(_TYPE_='PARMS')) noprint ;
   model &var_ex. = post linear square linear_post square_post;
   where &group. = 1;
run;
*This will read the regression output into a macro;
data _null_;
   set reg_quadratic;
   call symput('Intercept1',Intercept);
   call symput('post1',post);
   call symput('linear1',linear);
   call symput('square1',square);
   call symput('linear_post1',linear_post);
   call symput('square_post1',square_post);
run;
*Run quadratic with a month dummy;
proc reg data = appendixB outseb outest = reg_quadratic_m (where=(_TYPE_='PARMS')) noprint ;
   model &var_ex. = post linear square linear_post square_post first_month;
   where &group. = 1;
run;
*This will read the regression output into a macro;
data _null_;
   set reg_quadratic_m;
   call symput('Intercept2',Intercept);
   call symput('post2',post);
   call symput('linear2',linear);
   call symput('square2',square);
   call symput('linear_post2',linear_post);
   call symput('square_post2',square_post);
   call symput('first_month2',first_month);
run;
*Run cubic with month dummy;
proc reg data = appendixB outseb outest = reg_cubic_m (where=(_TYPE_='PARMS')) noprint ;
   model &var_ex. = post linear square cubic linear_post square_post cubic_post first_month;
   where &group. = 1;
run;
*This will read the regression output into a macro;
data _null_;
   set reg_cubic_m;
   call symput('Intercept3',Intercept);
   call symput('post3',post);
   call symput('linear3',linear);
   call symput('square3',square);
   call symput('cubic3',cubic);
   call symput('linear_post3',linear_post);
   call symput('square_post3',square_post);
   call symput('cubic_post3',cubic_post);
   call symput('first_month3',first_month);
run;

*Compute the means of the days;
proc means data = appendixB noprint;
   var &var_ex.;
   output out = junk4 (where=(_type_ = 1 and _stat_ = 'MEAN') rename=(&var_ex.=&var_ex._&group._m));
   class months_to_21_yr;
   where &group. = 1;
run;
*These are the group lists;
data &var_ex.;
   set junk4;
   by months_to_21_yr;
  *Compute age;
   if months_to_21_yr >= 0 then post = 1; else post = 0;
   linear = months_to_21_yr;
   square = linear*linear;
   cubic = linear*square;
   linear_post = linear*post;
   square_post = square*post;
   cubic_post = cubic*post;
  *Linear;
   &var_ex._&group._lin_ft = &Intercept0. + &post0.*post + &linear0.*linear + &linear_post0.*linear_post;
  *Quadratic;
   &var_ex._&group._quad_ft = &Intercept1. + &post1.*post + &linear1.*linear + &square1.*square + &linear_post1.*linear_post + &square_post1.*square_post;
  *Quadratic with first month;
   &var_ex._&group._quad_fm = &Intercept2. + &post2.*post + &linear2.*linear + &square2.*square + &linear_post2.*linear_post + &square_post2.*square_post;
  *Cubic with first month; 
   &var_ex._&group._cub_fm = &Intercept3. + &post3.*post + &linear3.*linear + &square3.*square + &cubic3.*cubic + &linear_post3.*linear_post + &square_post3.*square_post + &cubic_post3.*cubic_post;
run;
proc datasets nolist;
   delete junk1 junk3 junk4 junk5 junk6;
run;
%mend;
%macro pull_c(group);
%pull_cy(drinks_12_one_yr,&group.);
%pull_cy(drinks_12_life,&group.);
%pull_cy(days_drnk_per_yr,&group.); 
%pull_cy(drinks_per_day,&group.); 
%pull_cy(tot_drnk_per_yr,&group.); 
%pull_cy(days_more_than5,&group.); 
%pull_cy(per_days_drink,&group.);
%pull_cy(per_days_mo_tn5,&group.);
%pull_cy(heavy_drink,&group.);
*Combine;
data &group. (drop =  _TYPE_	_FREQ_	_STAT_		post	linear	square	linear_post	square_post);
   merge drinks_12_one_yr drinks_12_life days_drnk_per_yr drinks_per_day 
         tot_drnk_per_yr days_more_than5  per_days_drink 
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


PROC EXPORT DATA= all
            OUTFILE= "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\Appendix B Figures with fit of different specs on drinking.csv" 
            DBMS=csv REPLACE;
RUN;









