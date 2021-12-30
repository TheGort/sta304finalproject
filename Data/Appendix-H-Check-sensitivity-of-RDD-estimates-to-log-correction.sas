
libname library "C:\CarlosDobkin\";

proc freq data = library.combined;
   tables age;
run;
*Put correct age variable here;
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

*Create figures of arrest rates;
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
data junk2 &group._&suf._stata (drop = PERCENT months_to_21_yr weeks_to_21_yr &group._&suf. );
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
   &group._&suf._red_l3 = log(&group._&suf._red + 1);
   if days_to_21_yr >= 0 then post = 1; else post = 0;
   linear = days_to_21_yr;
   square = linear*linear;
   cubic = linear*linear*linear;
   linear_post = linear*post;
   square_post = square*post;
   cubic_post = cubic*post;
run;


proc datasets nolist;
   delete junk1 junk2  ;
run;
%mend;
*See spreadsheet "1999-2003 ICD9 Codes" for variable definitions;

%macro by_cat(category);
%pull_cy(where alcohol_e = 1 and &category. = 1,alcohol,&category.); 
%pull_cy(where drugs_e = 1 and &category. = 1,drugs,&category.); 
data &category._stata;
   merge alcohol_&category._stata drugs_&category._stata;
   by days_to_21_yr;
run;
%mend;
%by_cat(all);

data for_appendixk;
   set all_stata;
 *Create birthdya dummies in stata code;
  *Create a birthday dummy and a day after birthdya dummy;
   if 365*days_to_21_yr = 0 then birthday = 1; else birthday = 0;
   if 365*days_to_21_yr = 1 then birthday_aft = 1; else birthday_aft = 0;
   if 365*days_to_21_yr >= 0 and 365*days_to_21_yr <= 30 then first_month = 1; else first_month = 0;
run;

*Output file for all figures;
PROC EXPORT DATA= for_appendixk
            OUTFILE= "C:\CarlosDobkin\Fix up Code for AEJ\Fix it code\Appendix K data.csv" 
            DBMS=csv REPLACE;
RUN;


