options ls=110 nocenter nofmterr;

title1 'Analysis of age 21 disconitnuity in deaths';


data deaths1;
   set for_stata_mort;
   match = 1;
   all_hispanic_red_l = all_cause_hispanic_r_red_l;
run;
*Get means to demean estimate;
proc means data = deaths1 noprint;
   var all_cause_all_red_l internal_all_red_l	external_all_red_l 
       alcohol_all_red_l2 homicide_all_red_l 
       suicide_all_red_l mva_all_red_l 
       drugs_all_red_l2 external_other_all_red_l2
       all_cause_male_red_l all_cause_female_red_l all_cause_white_red_l all_cause_black_red_l all_hispanic_red_l;
       output out = means_dep mean(all_cause_all_red_l internal_all_red_l	external_all_red_l  alcohol_all_red_l2 homicide_all_red_l 
                                   suicide_all_red_l mva_all_red_l drugs_all_red_l2 external_other_all_red_l2
                                   all_cause_male_red_l all_cause_female_red_l all_cause_white_red_l all_cause_black_red_l all_hispanic_red_l
                                   ) =/autoname ;
run;
data means_dep1; 
   set means_dep;
   match = 1;
run;

data one (drop = age_n);
   merge deaths1 (rename = (days_to_21_yr=age_n)) means_dep1;
   by match;
  *these are the  possible dep vars rescaled so regression is not a problem;
   all_cause_all = all_cause_all_red_l - all_cause_all_red_l_mean;
   internal_all = internal_all_red_l   - internal_all_red_l_mean;
   external_all = external_all_red_l   - external_all_red_l_mean;
   alcohol_all = alcohol_all_red_l2   - alcohol_all_red_l2_mean;
   homicide_all = homicide_all_red_l   - homicide_all_red_l_mean;
   suicide_all = suicide_all_red_l   - suicide_all_red_l_mean;
   mva_all = mva_all_red_l   - mva_all_red_l_mean;
   drugs_all = drugs_all_red_l2   - drugs_all_red_l2_mean;
   external_other_all = external_other_all_red_l2   - external_other_all_red_l2_mean;
   male_all = all_cause_male_red_l   - all_cause_male_red_l_mean;
   female_all = all_cause_female_red_l   - all_cause_female_red_l_mean;
   white_all = all_cause_white_red_l   - all_cause_white_red_l_mean;
   black_all = all_cause_black_red_l   - all_cause_black_red_l_mean;
   hispanic_r_all = all_hispanic_red_l   - all_hispanic_red_l_mean;

  *Covariates for bandwidth fit;
   age = age_n;
   agesq=age*age;
   agecu=age*age*age;
   agequ=agesq*agesq;

   if age_n <= -2 or age_n > 2 then delete;
   if birthday = 1 or birthday_aft = 1 then delete;

run;

*******************************************************;
*macro finds bandwidth and runs local linear regression
  on two sides of age=65
  -age re-centered to be 0 at age65
  -list of alternative depvars selected by 1st argument
  -list of samples selected by second argument
  -cutoff defined by age<0 and age>=0
  -all data in data set one
  -triangular kernel assumed

  FOR EACH CALL TO LL
  -for each side 
    - run quartic polynomial on age
    -get coefficients and mean sq err of reg=MSE
    -calculate fitted value of 2nd derivative=d2
    -calculate sum of squared second derivs=sd2sq
    -calculate range of age 
    -h=bandwidth=3.438*( range-of-age * MSE/sd2sq)**.2 
    -then for values of age s.t. |age|<h 
      -set weight=1-|age|/h
      -run linear regression of y on age, capture const and st err
    -this gives est of value of y on this side, plus st err 
  -repeat for other side, compute diff in constants and st err   ;


*%ll(depvar=1, kgroup=0);


%macro ll(depvar);
data w0;
   set one;
  *select dep var, called y from now on;
   y = &depvar.;
   *if &depvar=1 then y=all_all; *in logs so no problem help with regression function invert matrix;
/*   else if &depvar=2 then y=cov;
   else if &depvar=3 then y=priv;
   else if &depvar=4 then y=dual;
   else if &depvar=5 then y=mang;
*/
   usevar=&depvar;

  *if y ne .;
/*
  *select sample.  kgroup=outside (1-9) defaults to overall sample;
   if &kgroup=1 and ngroup ne 1 then delete; 
   else if &kgroup=2 and ngroup ne 2 then delete; 
   else if &kgroup=3 and ngroup ne 3 then delete; 
   else if &kgroup=4 and ngroup ne 4 then delete; 
   else if &kgroup=5 and ngroup ne 5 then delete; 
   else if &kgroup=6 and ngroup ne 6 then delete; 
   else if &kgroup=7 and rgroup ne 1 then delete; 
   else if &kgroup=8 and rgroup ne 2 then delete; 
   else if &kgroup=9 and rgroup ne 3 then delete; 
*/
run;
****for the left side;
data w;
  set w0;
  if age<0;
  id=1;
run;
*SHOULD THIS BE SET TO Y DAGE HAD IT SET TO MEDICARE;
proc reg outest=ests noprint;
   model y=age agesq agecu agequ;
run;

data sum;
   set ests;
   mse=_RMSE_**2;
   b2=agesq;
   b3=agecu;
   b4=agequ;
   id=1;
   keep mse b2 b3 b4 id;
run;

data w2;
   merge w (in=in1) sum;
   by id;
   if in1=1;
   d2=2*b2+6*b3*age+12*b4*agesq;
   d2sq=d2*d2;
run;
*proc means;
*var d2 d2sq;

proc summary;
   var d2sq age id;
   output out=sum2 
   min(age)=lb
   max(age)=ub
   sum(d2sq)=sd2sq
   mean(d2sq)=meansq
   mean(id)=id;
run;
*proc print data=sum2; 

data w3;
   merge w2 (in=in1) sum2;
   by id;
   if in1=1;
   rx=ub-lb;
   h=3.438*(rx*mse/sd2sq)**.2;
   wt=1-abs(age/h);
   aage=abs(age);
run;

proc means n mean stderr min max ;
  title2 'to the left';
  where (aage<h);
  var usevar age y wt h; *ngroup rgroup ;
run;

proc reg outest=left covout noprint;
   where (aage<h);
   model y=age;
   weight wt;
run;

***for the right side;
data w;
   set w0;
   if age>=0;
   id=1;
run;
proc reg outest=ests noprint;
   model y=age agesq agecu agequ;
run;

data sum;
   set ests;
   mse=_RMSE_**2;
   b2=agesq;
   b3=agecu;
   b4=agequ;
   id=1;
   keep mse b2 b3 b4 id;
run;

data w2;
   merge w (in=in1) sum;
   by id;
   if in1=1;
   d2=2*b2+6*b3*age+12*b4*agesq;
   d2sq=d2*d2;
run;

proc summary;
   var d2sq age id;
   output out=sum2 
   min(age)=lb
   max(age)=ub
   sum(d2sq)=sd2sq
   mean(d2sq)=meansq
   mean(id)=id;
run;

*proc print data=sum2; 

data w3;
   merge w2 (in=in1) sum2;
   by id;
   if in1=1;
   rx=ub-lb;
   h=3.438*(rx*mse/sd2sq)**.2;
   wt=1-abs(age/h);
   aage=abs(age);
run;

proc means n mean stderr min max ;
   title2 'to the right';
   where (aage<h);
   var usevar age y wt h;*ngroup rgroup ;
run;

proc reg outest=right covout noprint;
   where (aage<h);
   model y=age;
   weight wt;
run;

data s1;
   set left;
   if _type_='PARMS' then do;
      exp=intercept;
      type=1;
   end;
   else if _type_='COV' and _name_='Intercept' then do;
   se=sqrt(intercept);
   type=2;
   end;
run;
proc sort data=s1; by type;run;
*proc print data =s1;

data s2;
   set right;
   if _type_='PARMS' then do;
      exp=intercept;
      type=1;
   end;
   else if _type_='COV' and _name_='Intercept' then do;
      se=sqrt(intercept);
      type=2;
   end;
run;
proc sort data=s2; by type;run;
*proc print data =s2;

data s1s;
   set s1;
   id=1;
   exp_l=lag(exp);
   se_l=se;
   if type=2;
run;

data s2s;
   set s2;
   id=1;
   exp_r=lag(exp);
   se_r=se;
   if type=2;
run;

data all;
   merge s1s s2s; by id;
   rd=exp_r-exp_l;
   se=sqrt(se_l**2+se_r**2);
run;

proc print;
   title2 "rd results &depvar.";
   var exp_l se_l exp_r se_r rd se;
run;

%mend ll;
*Do with and without means;

%ll(alcohol_all);
%ll(drugs_all);
