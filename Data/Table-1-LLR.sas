options ls=110 nocenter nofmterr;

title1 'Analysis of age 21 disconitnuity in Drinking';

*libname hisdata '/tmp/';
*libname here '.';

data nhis_stata1;
   set nhis_stata;
   match = 1;
run;
*Get means to demean estimate;
proc means data = nhis_stata1 noprint;
   var drinks_12_one_yr drinks_12_life days_drnk_per_yr drinks_per_day tot_drnk_per_yr days_more_than5 in_week in_month in_year no_drink per_days_drink per_days_mo_tn5 heavy_drink;
       output out = means_dep mean(drinks_12_one_yr drinks_12_life days_drnk_per_yr drinks_per_day tot_drnk_per_yr days_more_than5 in_week in_month in_year no_drink per_days_drink per_days_mo_tn5 heavy_drink
                                   ) =/autoname ;
run;
data means_dep1; 
   set means_dep;
   match = 1;
run;

data one ;*(drop = age_n);*(rename = (years_to_21=age_n));
   merge nhis_stata1  means_dep1;
   by match;
  *these are the  possible dep vars rescaled so regression is not a problem;
   drinks_12_one_yr_m = drinks_12_one_yr - drinks_12_one_yr_mean;
   drinks_12_life_m = 	drinks_12_life -drinks_12_life_mean; 
   days_drnk_per_yr_m = days_drnk_per_yr -days_drnk_per_yr_mean;
   drinks_per_day_m = 	drinks_per_day - drinks_per_day_mean;
   tot_drnk_per_yr_m = 	tot_drnk_per_yr - tot_drnk_per_yr_mean;
   days_more_than5_m = 	days_more_than5 - days_more_than5_mean;
   in_week_m =		 	in_week - in_week_mean;
   in_month_m =			in_month - in_month_mean;
   in_year_m = 			in_year - in_year_mean;
   no_drink_m = 		no_drink - no_drink_mean;
   per_days_drink_m = 	per_days_drink - per_days_drink_mean;
   per_days_mo_tn5_m = 	per_days_mo_tn5 - per_days_mo_tn5_mean;
   heavy_drink_m = 		heavy_drink - heavy_drink_mean;


  *Covariates for bandwidth fit;
   age = years_to_21;
   agesq=age*age;
   agecu=age*age*age;
   agequ=agesq*agesq;

   if years_to_21 <= -2 or years_to_21 > 2 then delete;
   if bday = 1 or bday_aft = 1 then delete;
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

%ll(drinks_12_one_yr_m);
%ll(drinks_12_life_m);
%ll(days_drnk_per_yr_m);
%ll(drinks_per_day_m);
%ll(tot_drnk_per_yr_m);
%ll(days_more_than5_m);
%ll(in_week_m);
%ll(in_month_m);
%ll(in_year_m);
%ll(no_drink_m);
%ll(per_days_drink_m);
%ll(per_days_mo_tn5_m);
%ll(heavy_drink);








*Demeaned;



********************************************;
*  
 all_bypass 
 all_joint 
 white_all 
 white_bypass 
 white_joint 
 black_all 
 black_bypass 
 black_joint 
 hispanic_all 
 hispanic_bypass 
 hispanic_joint;
