libname nhis "F:\Dobkin\Data";

data all_merged (drop = dob age_21_junk days_to_21_junk diff) 
     check_age (keep = days_to_21 days_to_21_junk diff);
   set nhis.dhis1997 nhis.dhis1998 nhis.dhis1999 nhis.dhis2000 nhis.dhis2001 nhis.dhis2002 nhis.dhis2003 
       nhis.dhis2004 nhis.dhis2005;
   format dob_true survey_d_true age_21 date.;
   *if AGE_P >= 18 and age_p <= 23;
   dob_true = mdy(DOB_M,DOB_D,DOB_Y);
   if INT_DATE ne '' then survey_d_true = mdy(substr(INT_DATE,1,2),substr(INT_DATE,3,2),substr(INT_DATE,5,4));
   int_month = floor(FCDATE/1000000);
   int_day = floor((FCDATE-int_month*1000000)/10000);
   int_year = (FCDATE-int_month*1000000-int_day*10000);
   if FCDATE ne . then survey_d_true = mdy(int_month,int_day,int_year);
  *Compute birthday 21;
   if (month(dob_true) ne 2 or day(dob_true) ne 29) then 
      age_21 = mdy(month(dob_true),day(dob_true),year(dob_true)+21);
   if (month(dob_true) = 2 and day(dob_true) = 29) then 
      age_21 = mdy(3,1,year(dob_true)+21);    
  *Compute exact age in deviations from age 21;
   days_to_21 = intck('days',age_21,survey_d_true);
  *Restirct to + - 366*2 days for analysis;
   if days_to_21 >= -2*366 and days_to_21 <= 2*366;
  *compute birthday dummies;
   if days_to_21 = 0 then bday = 1; else bday = 0;
   if days_to_21 = 1 then bday_aft = 1; else bday_aft = 0;
  *Compute birthday 21;
   if (month(dob) ne 2 or day(dob) ne 29) then 
      age_21_junk = mdy(month(dob),day(dob),year(dob)+21);
   if (month(dob) = 2 and day(dob) = 29) then 
      age_21_junk = mdy(3,1,year(dob)+21);    
  *Compute exact age in deviations from age 21;
   days_to_21_junk = intck('days',age_21_junk,survey_date);
   diff = days_to_21_junk - days_to_21;
  *compute the education variables;
   no_hs_DP = 0;
   hs_DP = 0;
   more_hs = 0;
   ed_miss = 0;
   if educ >= 1 and educ <= 12 then no_hs_DP = 1; 
   if educ1 >= 1 and educ1 <= 12 then no_hs_DP = 1;
   if educ in (13,14) then hs_DP = 1; 
   if educ1 in (13,14) then hs_DP = 1;
   if educ >= 15 and educ <= 21 then more_hs = 1;
   if educ1 >= 15 and educ1 <= 21 then more_hs = 1;
   if (educ < 1 or educ > 21) and (educ1 < 1 or educ1 > 21) then ed_miss = 1;
  *Month after 21st birthday;
   if days_to_21 >= 0 and days_to_21 <= 30 then first_month = 1; else first_month = 0;
  *Code up days more than 5;
   if per_days_mo_tn5 > 0 and per_days_mo_tn5 <= 1 then heavy_drink = 1; else heavy_drink = 0;
run;

*Check variable stability;
proc means data = all_merged noprint;
   var slip slip1 male no_hs_DP hs_DP more_hs ed_miss white black hispanic ALC12MTP   drinks_12_one_yr drinks_12_life days_drinking_per_yr 
      drinks_per_day  total_drinks_per_yr days_more_than5 employed looking_work no_ins heavy_drink first_month;
   class srvy_yr;
   output out = stability (where=(_type_  = 1 and _stat_ = 'MEAN'));
run;
PROC EXPORT DATA= stability
            OUTFILE= "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\P07A Check stability of recoded variables.csv" 
            DBMS=csv REPLACE;
RUN;
proc freq data = check_age;
   tables diff / out = diff_imputed_bday;
run;

PROC EXPORT DATA= diff_imputed_bday
            OUTFILE= "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\P07B Check correct age against old inputed age.csv" 
            DBMS=csv REPLACE;
RUN;


data nhis_stata;
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

*Export for Stata;
PROC EXPORT DATA= nhis_stata
            OUTFILE= "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\for stata NHIS Alcohol Consumption Patterns.csv" 
            DBMS=csv REPLACE;
RUN;
