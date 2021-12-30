libname library "C:\CarlosDobkin";

data junk1;*(keep = age_yrs age_dif Offense Summary_Offense FBI_Offense);
   format dob dod date.;
   set library.combined;
  *Compute age centered on the 18 birthday;
   if (month(dob) ne 2 or day(dob) ne 29) then age18 = mdy(month(dob),day(dob),year(dob)+18);
   if  month(dob) = 2 and day(dob)   = 29 then age18 = mdy(3,1,year(dob)+18);
   days_to_18 = intck('days',age18,dod);

  *Compute age centered on the 19 birthday;
   if (month(dob) ne 2 or day(dob) ne 29) then age19 = mdy(month(dob),day(dob),year(dob)+19);
   if  month(dob) = 2 and day(dob)   = 29 then age19 = mdy(3,1,year(dob)+19);
   days_to_19 = intck('days',age19,dod);

  *Compute age centered on the 20 birthday;
   if (month(dob) ne 2 or day(dob) ne 29) then age20 = mdy(month(dob),day(dob),year(dob)+20);
   if  month(dob) = 2 and day(dob) = 29   then age20 = mdy(3,1,year(dob)+20);
   days_to_20 = intck('days',age20,dod);

  *Compute age centered on the 22 birthday;
   if (month(dob) ne 2 or day(dob) ne 29) then age22 = mdy(month(dob),day(dob),year(dob)+22);
   if  month(dob) = 2 and day(dob) = 29   then age22 = mdy(3,1,year(dob)+22);
   days_to_22 = intck('days',age22,dod);

  *Compute age centered on the 23 birthday;
   if (month(dob) ne 2 or day(dob) ne 29) then age23 = mdy(month(dob),day(dob),year(dob)+23);
   if  month(dob) = 2 and day(dob) = 29   then age23 = mdy(3,1,year(dob)+23);
   days_to_23 = intck('days',age23,dod);

  *Compute age centered on the 24 birthday;
   if (month(dob) ne 2 or day(dob) ne 29) then age24 = mdy(month(dob),day(dob),year(dob)+24);
   if  month(dob) = 2 and day(dob)   = 29 then age24 = mdy(3,1,year(dob)+24);
   days_to_24 = intck('days',age24,dod);
run; 

%macro days_b(a_where,o_file);
*Overall;
proc freq data = junk1 noprint;
   tables days_to_19 / out = days_to_19 (rename=(count = &o_file._19 days_to_19 = days));
   &a_where.;
run;
proc freq data = junk1 noprint;
   tables days_to_20 / out = days_to_20 (rename=(count = &o_file._20 days_to_20 = days));
   &a_where.;
run;
proc freq data = junk1 noprint;
   tables days_to_21 / out = days_to_21 (rename=(count = &o_file._21 days_to_21 = days));
   &a_where.;
run;
proc freq data = junk1 noprint;
   tables days_to_22 / out = days_to_22 (rename=(count = &o_file._22 days_to_22 = days));
   &a_where.;
run;
proc freq data = junk1 noprint;
   tables days_to_23 / out = days_to_23 (rename=(count = &o_file._23 days_to_23 = days));
   &a_where.;
run;
*Combine these;
data &o_file. (drop = percent);
   merge days_to_19 days_to_20 days_to_21 days_to_22 days_to_23;
   by  days;
   if days >= -30 and days <= 30;
run;
proc datasets;
   delete days_to_19 days_to_20 days_to_21 days_to_22 days_to_23;
run;
%mend;
%days_b(,all);
%days_b(where white = 1,white);
%days_b(where black = 1,black);
%days_b(where hispanic_r = 1,hispanic_r);
%days_b(where male = 1,male);
%days_b(where male = 0,female);
%days_b(where external = 0,internal);
%days_b(where alcohol_e = 1,alcohol_e);
%days_b(where homicide_e = 1,homicide_e);
%days_b(where suicide_e = 1,suicide_e);
%days_b(where MVA_e = 1,MVA_e);
%days_b(where drugs_e = 1,drugs_e);
%days_b(where external_other = 1,external_other);
%days_b(where external = 1,external);



*By cause also add ac;

*Combine and Export;
data figure2;* (drop = percent);
   merge all white black hispanic_r male female internal alcohol_e homicide_e suicide_e MVA_e drugs_e external_other external;
   by  days;
   if days >= -30 and days <= 30;
   array recode{30}
  		 alcohol_e_19	alcohol_e_20	alcohol_e_21	alcohol_e_22	alcohol_e_23	
         homicide_e_19	homicide_e_20	homicide_e_21	homicide_e_22	homicide_e_23	
         suicide_e_19	suicide_e_20	suicide_e_21	suicide_e_22	suicide_e_23	
         MVA_e_19	MVA_e_20	MVA_e_21	MVA_e_22	MVA_e_23	
         drugs_e_19	drugs_e_20	drugs_e_21	drugs_e_22	drugs_e_23	
         external_other_19	external_other_20	external_other_21	external_other_22	external_other_23;
   do i = 1 to 30;
      if recode{i} = . then recode{i} = 0;
   end;
run;

PROC EXPORT DATA= figure2
            OUTFILE= "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\Appendix A Histogram of death counts by day to birthday.csv" 
            DBMS=csv REPLACE;
RUN;
