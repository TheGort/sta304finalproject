libname library "C:\CarlosDobkin\Data\Mortality 1990 2004";

proc freq data = library.combined;
   tables age;
run;

data junk;
   set library.combined;
  *Day level variable;
   *Create a pseudo month;
  * months_to_21_yr = (30*floor(days_to_21/30)+15)/365;
  *Create pseudo weeks;
   *weeks_to_21_yr = (7*floor(days_to_21/7)+3.5)/365;
   days_to_21_yr = days_to_21/365;
  *Restrict the sample;
   if days_to_21 >= -2*366 and days_to_21 <= 2*366;
run;

proc sort data = junk (keep =days_to_21_yr) out = template_days nodupkey;
   by days_to_21_yr;
run;

%macro pull_cy(a_where,group,suf);
*Pull counts by period for everyone;
proc freq data = junk noprint;
   tables days_to_21_yr / out = junk1 (rename=(count=&group._&suf.));
     &a_where. ;
run;
proc freq data = junk noprint;
   tables days_to_21_yr / out = junk_red (rename=(count=&group._&suf._red));
     &a_where. and year >= 1997;
run;
data junk2 &group._&suf._stata (drop = PERCENT months_to_21_yr weeks_to_21_yr &group._&suf. &group._&suf._red);
   merge junk1 template_days junk_red;
   by days_to_21_yr;
  *Create month variable I will need for means procedure;
   months_to_21_yr = (30*floor((365*days_to_21_yr)/30)+15)/365;
  *Create pseudo weeks;  
   weeks_to_21_yr = (7*floor((365*days_to_21_yr)/7)+3.5)/365;
  *Take care of the missings;
   if &group._&suf. = . then &group._&suf. =0;
   if &group._&suf._red = . then &group._&suf._red = 0;
 
  *In logs for stata;
   &group._&suf._l = log(&group._&suf.);
   &group._&suf._red_l = log(&group._&suf._red);
   &group._&suf._l2 = log(&group._&suf. + .5);
   &group._&suf._red_l2 = log(&group._&suf._red + .5);


   if days_to_21_yr >= 0 then post = 1; else post = 0;
   linear = days_to_21_yr;
   square = linear*linear;
   cubic = linear*linear*linear;
   linear_post = linear*post;
   square_post = square*post;
   cubic_post = cubic*post;
run;
*Run the regression;
proc reg data = junk2 outseb outest = junk3 (where=(_TYPE_='PARMS'))  ;
   model &group._&suf._red = post linear square linear_post square_post;
   title "&group.";
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

*Compute the means by month cells;
proc means data = junk2 noprint;
   var &group._&suf._red;
   class months_to_21_yr;
   output out = junk4 (where =(_stat_ = 'MEAN' and _type_ = 1));
run;
*These are the group lists;
data &group._&suf. (drop =  _TYPE_  _stat_ _freq_
                     post linear square linear_post square_post );
   set junk4;
   if months_to_21_yr >= 0 then post = 1; else post = 0;
   linear = months_to_21_yr;
   square = linear*linear;
   linear_post = linear*post;
   square_post = square*post;
   &group._&suf._red_ft = &Intercept. + &post.*post + &linear.*linear + &square.*square + &linear_post.*linear_post + &square_post.*square_post;
run;

proc datasets nolist;
   delete junk1 junk2 junk3 junk4;
run;
%mend;
*See spreadsheet "1999-2003 ICD9 Codes" for variable definitions;

%macro by_cat(category);
%pull_cy(where &category. = 1,all_cause,&category.);
*By internal vs external;
%pull_cy(where external = 0 and &category. = 1,internal,&category.);
%pull_cy(where external = 1 and &category. = 1,external,&category.);
*By subcause of external;
%pull_cy(where alcohol_e = 1 and &category. = 1,alcohol,&category.); 
%pull_cy(where homicide_e = 1 and &category. = 1,homicide,&category.); 
%pull_cy(where suicide_e = 1 and &category. = 1,suicide,&category.); 
%pull_cy(where MVA_e = 1 and &category. = 1,MVA,&category.); 
%pull_cy(where drugs_e = 1 and &category. = 1,drugs,&category.); 
%pull_cy(where external_other = 1 and &category. = 1,external_other,&category.); 
*For figures;
data &category.;
   merge All_cause_&category. internal_&category. external_&category. alcohol_&category.
         homicide_&category. suicide_&category. MVA_&category. drugs_&category. 
         external_other_&category.;
   by months_to_21_yr;
run;
data &category._stata;
   merge All_cause_&category._stata internal_&category._stata external_&category._stata alcohol_&category._stata
         homicide_&category._stata suicide_&category._stata MVA_&category._stata drugs_&category._stata 
         external_other_&category._stata;;
   by days_to_21_yr;
run;
proc datasets;
   delete All_cause_&category._stata internal_&category._stata external_&category._stata alcohol_&category._stata
         homicide_&category._stata suicide_&category._stata MVA_&category._stata drugs_&category._stata 
         external_other_&category._stata
         All_cause_&category. internal_&category. external_&category. alcohol_&category.
         homicide_&category. suicide_&category. MVA_&category. drugs_&category. 
         external_other_&category.;
run;
%mend;
%by_cat(all);
%by_cat(male);
%by_cat(female);
%by_cat(white);
%by_cat(black);
%by_cat(hispanic_r);
%by_cat(HS_drop);
%by_cat(HS);
%by_cat(college);
%by_cat(ed_missing);

data figure;
   merge all male female white black hispanic_r HS_drop HS college ed_missing;
   by months_to_21_yr;
run;


data for_stata_mort;
   merge all_stata male_stata female_stata white_stata black_stata hispanic_r_stata ;
   by days_to_21_yr;
 *Create birthdya dummies in stata code;
  *Create a birthday dummy and a day after birthdya dummy;
   if 365*days_to_21_yr = 0 then birthday = 1; else birthday = 0;
   if 365*days_to_21_yr = 1 then birthday_aft = 1; else birthday_aft = 0;
   if 365*days_to_21_yr >= 0 and 365*days_to_21_yr <= 30 then first_month = 1; else first_month = 0;
run;
data for_stata_mort_ed;
   merge HS_drop_stata HS_stata college_stata ed_missing_stata ;
   by days_to_21_yr;
 *Create birthdya dummies in stata code;
  *Create a birthday dummy and a day after birthdya dummy;
   if 365*days_to_21_yr = 0 then birthday = 1; else birthday = 0;
   if 365*days_to_21_yr = 1 then birthday_aft = 1; else birthday_aft = 0;
   if 365*days_to_21_yr >= 0 and 365*days_to_21_yr <= 30 then first_month = 1; else first_month = 0;
run;

*Output file for all figures;
PROC EXPORT DATA= figure
            OUTFILE= "C:\CarlosDobkin\Fix up Code for AEJ\Fix it code\F06 - F10 Mortality figures.csv" 
            DBMS=csv REPLACE;
RUN;

PROC EXPORT DATA= for_stata_mort
            OUTFILE= "C:\CarlosDobkin\Fix up Code for AEJ\Fix it code\F02 Plots of number of deaths by days until birthday.csv" 
            DBMS=csv REPLACE;
RUN;
PROC EXPORT DATA= for_stata_mort_ed
            OUTFILE= "C:\CarlosDobkin\Fix up Code for AEJ\Fix it code\F02 Plots of number of deaths by days until birthday by educational attainement.csv" 
            DBMS=csv REPLACE;
RUN;

