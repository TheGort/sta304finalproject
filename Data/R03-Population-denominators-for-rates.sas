libname pop "C:\DATA\Populations State by age and race";

data all_pops90_99 (keep = year age Fips_state all male female white black hispanic other); 
   set pop.Sasrh90 pop.Sasrh91 pop.Sasrh92 pop.Sasrh93 pop.Sasrh94 pop.Sasrh95 pop.Sasrh96 pop.Sasrh97 pop.Sasrh98 pop.Sasrh99;

   all = AMERIN_FEMALE + AMERIN_MALE + AS_PI_FEMALE + AS_PI_MALE + BLACK_FEMALE + 
         BLACK_MALE + H_AS_PI_FEMALE + H_AS_PI_MALE + H_Black_female + H_amerin_female + H_amerin_male + 
         H_black_male + H_white_female + H_white_male + WHITE_FEMALE + WHITE_MALE;
   male =  AMERIN_MALE  + AS_PI_MALE  +  BLACK_MALE  + H_AS_PI_MALE   + H_amerin_male +  H_black_male  + H_white_male + + WHITE_MALE;
   female = AMERIN_FEMALE + AS_PI_FEMALE + BLACK_FEMALE + H_AS_PI_FEMALE + H_Black_female + H_amerin_female + H_white_female + WHITE_FEMALE;
   white = WHITE_FEMALE + WHITE_MALE;
   black = BLACK_FEMALE + BLACK_MALE;
   hispanic =  H_AS_PI_FEMALE + H_AS_PI_MALE + H_Black_female + H_amerin_female + 
               H_amerin_male  + H_black_male + H_white_female + H_white_male;
   other = AMERIN_FEMALE + AMERIN_MALE + AS_PI_FEMALE + AS_PI_MALE;
run;
proc means data = all_pops90_99 sum;
   var all;
   where age = 21;
run;

/*
The key for sex code is as follows:
	1 = Male
	2 = Female

The key for ethnic origin code is as follows:
	1 = Non-Hispanic or Latino Origin
	2 = Hispanic or Latino Origin

The key for race code is as follows:
	1 = White Alone
	2 = Black Alone
	3 = American Indian or Alaskan Native Alone
	4 = Asian Alone
	5 = Native Hawaiian and Other Pacific Islander Alone
	6 = Two or More Race Groups
*/

data white_male white_female black_male black_female 
     H_white_male H_white_female H_black_male H_black_female
     white_indian_male white_indian_female H_white_indian_male H_white_indian_female
     white_Asian_male white_Asian_female H_white_Asian_male H_white_Asian_female
	 white_pac_i_male white_pac_i_female H_white_pac_i_male H_white_pac_i_female
  	 white_mult_r_male white_mult_r_female H_white_mult_r_male H_white_mult_r_female;
   set pop.EST2005_alldata6;
   fips_state = state;
/*
The key for RACE is as follows:
	1 = White Alone 
	2 = Black Alone 
	3 = American Indian and Alaskan Native Alone 
	4 = Asian Alone 
	5 = Native Hawaiian and Other Pacific Islander Alone 
	6 = Two or More Race Groups
*/
   if race = 1 and origin = 1 and sex = 1 then output white_male;
   if race = 1 and origin = 1 and sex = 2 then output white_female;
   if race = 1 and origin = 2 and sex = 1 then output H_white_male;
   if race = 1 and origin = 2 and sex = 2 then output H_white_female;

   if race = 2 and origin = 1 and sex = 1 then output black_male;
   if race = 2 and origin = 1 and sex = 2 then output black_female;
   if race = 2 and origin = 2 and sex = 1 then output H_black_male;
   if race = 2 and origin = 2 and sex = 2 then output H_black_female;

   if race = 3 and origin = 1 and sex = 1 then output white_indian_male;
   if race = 3 and origin = 1 and sex = 2 then output white_indian_female;
   if race = 3 and origin = 2 and sex = 1 then output H_white_indian_male;
   if race = 3 and origin = 2 and sex = 2 then output H_white_indian_female;
   
   if race = 4 and origin = 1 and sex = 1 then output white_Asian_male;
   if race = 4 and origin = 1 and sex = 2 then output white_Asian_female;
   if race = 4 and origin = 2 and sex = 1 then output H_white_Asian_male;
   if race = 4 and origin = 2 and sex = 2 then output H_white_Asian_female;

   if race = 5 and origin = 1 and sex = 1 then output white_pac_i_male;
   if race = 5 and origin = 1 and sex = 2 then output white_pac_i_female;
   if race = 5 and origin = 2 and sex = 1 then output H_white_pac_i_male;
   if race = 5 and origin = 2 and sex = 2 then output H_white_pac_i_female;

   if race = 6 and origin = 1 and sex = 1 then output white_mult_r_male;
   if race = 6 and origin = 1 and sex = 2 then output white_mult_r_female;
   if race = 6 and origin = 2 and sex = 1 then output H_white_mult_r_male;
   if race = 6 and origin = 2 and sex = 2 then output H_white_mult_r_female;
run;



*reformat this;
%macro pull_r(rcategory);
data junk1;
   set &rcategory.;      
   &rcategory. = census2000pop;
   year = 2000;
run;
data junk2;
   set &rcategory.;      
   &rcategory. = popestimate2001;
   year = 2001;
run;
 
data junk3;
   set &rcategory.;      
   &rcategory. = popestimate2002;
   year = 2002;
run;
data junk4;
   set &rcategory.;      
   &rcategory. = popestimate2003;
   year = 2003;
run;
data junk5;
   set &rcategory.;      
   &rcategory. = popestimate2004;
   year = 2004;
run;
data junk6;
   set &rcategory.;      
   &rcategory. = popestimate2005;
   year = 2005;
run;
data &rcategory.1 (keep = year age fips_state &rcategory.);
   set junk1 junk2 junk3 junk4 junk5;
run;
proc sort data = &rcategory.1;
   by fips_state age;
run;
%mend;
%pull_r(white_male);
%pull_r(white_female);
%pull_r(H_white_male); 
%pull_r(H_white_female); 
 
%pull_r(black_male); 
%pull_r(black_female); 
%pull_r(H_black_male); 
%pull_r(H_black_female);
   
%pull_r(white_indian_male);
%pull_r(white_indian_female);
%pull_r(H_white_indian_male);
%pull_r(H_white_indian_female);
   
%pull_r(white_Asian_male);
%pull_r(white_Asian_female);
%pull_r(H_white_Asian_male);
%pull_r(H_white_Asian_female);

%pull_r(white_pac_i_male);
%pull_r(white_pac_i_female);
%pull_r(H_white_pac_i_male);
%pull_r(H_white_pac_i_female);

%pull_r(white_mult_r_male);
%pull_r(white_mult_r_female);
%pull_r(H_white_mult_r_male);
%pull_r(H_white_mult_r_female);

data all_pops00_05 (keep = year age Fips_state all male female white black hispanic other);
   merge white_male1 white_female1 black_male1 black_female1 
         H_white_male1 H_white_female1 H_black_male1 H_black_female1
		 white_indian_male1 white_indian_female1 H_white_indian_male1 H_white_indian_female1
		 white_Asian_male1 white_Asian_female1 H_white_Asian_male1 H_white_Asian_female1
		 white_pac_i_male1 white_pac_i_female1 H_white_pac_i_male1 H_white_pac_i_female1
  	 	 white_mult_r_male1 white_mult_r_female1 H_white_mult_r_male1 H_white_mult_r_female1;
   by fips_state age year;
   all =  white_male + white_female + black_male + black_female + 
          H_white_male + H_white_female + H_black_male + H_black_female +
	 	  white_indian_male + white_indian_female + H_white_indian_male + H_white_indian_female +
		  white_Asian_male + white_Asian_female + H_white_Asian_male + H_white_Asian_female +
		  white_pac_i_male + white_pac_i_female + H_white_pac_i_male + H_white_pac_i_female +
  	 	  white_mult_r_male + white_mult_r_female + H_white_mult_r_male + H_white_mult_r_female;
   male = white_male +  black_male +  H_white_male  + H_black_male +  white_indian_male +  H_white_indian_male +  
          white_Asian_male +  H_white_Asian_male + white_pac_i_male +  H_white_pac_i_male  +  white_mult_r_male +  H_white_mult_r_male;
   female =  white_female + black_female + H_white_female + H_black_female + white_indian_female + H_white_indian_female +
          white_Asian_female + H_white_Asian_female + white_pac_i_female + H_white_pac_i_female + white_mult_r_female + H_white_mult_r_female;
   white =  white_male + white_female;
   black =  black_male + black_female;
   hispanic = H_white_male + H_white_female + H_black_male + H_black_female + H_white_indian_male + 
              H_white_indian_female + H_white_Asian_male + H_white_Asian_female + H_white_pac_i_male + H_white_pac_i_female +
              H_white_mult_r_male + H_white_mult_r_female;
   other = white_indian_male + white_indian_female +  white_Asian_male + white_Asian_female  +
		   white_pac_i_male + white_pac_i_female + white_mult_r_male + white_mult_r_female ;
run;
PROC EXPORT DATA= all_pops00_05
            OUTFILE= "C:\Research\Alcohol Age 21\1. Production\junk.csv" 
            DBMS=csv REPLACE;
RUN;
data state_pops;
   set all_pops90_99 all_pops00_05;
run;

*Split and add this;
%macro state_p(junk);
%do num = 0 %to 11;
data state_pops&num.;
   set state_pops;
   age = age + &num./12;
   flag = &num.;
run;
%end;
data stacked_pop; 
   set %do num = 0 %to 11; state_pops&num. %end;;
run;

%mend;
%state_p(123)
proc sort data = stacked_pop;
   by year Fips_state descending age;
run;
*Now interpolate;
data stacked_pop1;
   set stacked_pop;
   array race{7} all male female white black hispanic other;
   array race_in{7};
  *The lag function only stores in a number when it is called;
   if lag(year) = year and  lag(Fips_state) = Fips_state then do;
      do i = 1 to 7;
         if flag = 11 then race_in{i} = (1/12)*race{i} + (11/12)*lag(race{i});
         if flag = 10 then race_in{i} = (2/12)*race{i} + (10/12)*lag(race{i});
         if flag = 9  then race_in{i} = (3/12)*race{i} + (9/12)*lag(race{i});
         if flag = 8  then race_in{i} = (4/12)*race{i} + (8/12)*lag(race{i});
         if flag = 7  then race_in{i} = (5/12)*race{i} + (7/12)*lag(race{i});
         if flag = 6  then race_in{i} = (6/12)*race{i} + (6/12)*lag(race{i});
         if flag = 5  then race_in{i} = (7/12)*race{i} + (5/12)*lag(race{i});
         if flag = 4  then race_in{i} = (8/12)*race{i} + (4/12)*lag(race{i});
         if flag = 3  then race_in{i} = (9/12)*race{i} + (3/12)*lag(race{i});
         if flag = 2  then race_in{i} = (10/12)*race{i} + (2/12)*lag(race{i});
         if flag = 1  then race_in{i} = (11/12)*race{i} + (1/12)*lag(race{i});
		 if flag = 0  then race_in{i} = race{i};
      end;
   end;
   *Relabel the variables and reduce it to the 1/12th for each month;
   do i = 1 to 7;
      race{i} = (1/12)*race_in{i};
   end;
run;

data check_interp;
   set stacked_pop1;
   if _n_ <= 1000;
run;

PROC EXPORT DATA= check_interp
            OUTFILE= "C:\Research\Alcohol Age 21\1. Production\P04 check interpolation.csv" 
            DBMS=csv REPLACE;
RUN;

*To match national mortality records reduced series;
proc means data = stacked_pop1 noprint;
   class age;
   var all male female white black hispanic other;
   where age >= 19 and age <= 23 and year >= 1997 and year <= 2003;
   output  out = pop.national_1997_2003 (where=(_TYPE_ ne 0) drop = _freq_) sum = all male female white black hispanic other;
run;

*Check this out;
PROC EXPORT DATA= pop.national_1997_2003
            OUTFILE= "C:\Research\Alcohol Age 21\1. Production\age profile national 1997 2003.csv" 
            DBMS=csv REPLACE;
RUN;

*To match national mortality records;
proc means data = stacked_pop1 noprint;
   class age;
   var all male female white black hispanic other;
   where age >= 19 and age <= 23 and year >= 1990 and year <= 2003;
   output  out = pop.national_1990_2003 (where=(_TYPE_ ne 0) drop = _freq_) sum = all male female white black hispanic other;
run;
*Check this out;
PROC EXPORT DATA= pop.national_1990_2003
            OUTFILE= "C:\Research\Alcohol Age 21\1. Production\age profile national 1990 2003.csv" 
            DBMS=csv REPLACE;
RUN;
*To match national mortality records;
proc means data = stacked_pop1 noprint;
   class age;
   var all male female white black hispanic other;
   where age >= 19 and age <= 23 and year >= 1990 and year <= 2004;
   output  out = pop.national_1990_2004 (where=(_TYPE_ ne 0) drop = _freq_) sum = all male female white black hispanic other;
run;
*Check this out;
PROC EXPORT DATA= pop.national_1990_2004
            OUTFILE= "C:\Research\Alcohol Age 21\1. Production\age profile national 1990 2004.csv" 
            DBMS=csv REPLACE;
RUN;
/*
proc means data = stacked_pop1 noprint;
   class age;
   var all male female white black hispanic other;
   where age >= 15 and age <= 30 and year >= 1990 and year <= 2005 and fips_state = 6;
   output  out = pop.ca_1990_2005 (where=(_TYPE_ ne 0) drop = _freq_) sum = white_male white_female black_male black_female 
                      H_white_male H_white_female H_black_male H_black_female;
run;
*Check this out;
PROC EXPORT DATA= pop.ca_1990_2005
            OUTFILE= "C:\Research\Alcohol Age 21\1. Production\age profile in California 1990 2005.csv" 
            DBMS=csv REPLACE;
RUN;
*/
*To match crime data;
proc means data = stacked_pop1 noprint;
   class age;
   var all male female white black hispanic other;
   where age >= 19 and age <= 23 and year >= 1993 and year <= 1999 and fips_state = 6;
   output  out = pop.ca_1993_1999 (where=(_TYPE_ ne 0) drop = _freq_) sum =all male female white black hispanic other;
run;

*Check this out;
PROC EXPORT DATA= pop.ca_1993_1999
            OUTFILE= "C:\Research\Alcohol Age 21\1. Production\age profile in California 1993 1999.csv" 
            DBMS=csv REPLACE;
RUN;

proc means data = stacked_pop1 noprint;
  *class age;
   var all male female white black hispanic other;
   where year = 1999 and fips_state = 6;
   output  out = test  sum =all male female white black hispanic other;
run;
proc means data = stacked_pop1 noprint;
   class age;
   var all male female white black hispanic other;
   where year >= 1993 and year <= 1999 and fips_state = 6;
   output  out = test1 (where=(_TYPE_ ne 0) drop = _freq_) sum =all male female white black hispanic other;
run;

*Check this out;
PROC EXPORT DATA= test1
            OUTFILE= "C:\Research\Alcohol Age 21\1. Production\test.csv" 
            DBMS=csv REPLACE;
RUN;

proc means data = stacked_pop1 noprint;
   class age;
   var all male female white black hispanic other;
   where age >= 19 and age <= 23 and year >= 1997 and year <= 2004;
   output  out = pop.national_1997_2004 (where=(_TYPE_ ne 0) drop = _freq_) sum = all male female white black hispanic other;
run;
*Check this out;
PROC EXPORT DATA= pop.national_1997_2004
            OUTFILE= "C:\Research\Alcohol Age 21\1. Production\age profile national 1997 2004.csv" 
            DBMS=csv REPLACE;
RUN;


