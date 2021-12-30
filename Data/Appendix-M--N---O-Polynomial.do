drop _all
set mem 800000
set matsize 800
drop _all

adopath + "C:\CarlosDobkin\"

insheet using "C:\CarlosDobkin\Fix up Code for AEJ\Fix it code\F02 Plots of number of deaths by days until birthday.csv"

drop if days_to_21_yr <= -2 
drop if days_to_21_yr > 2 

cd "C:\CarlosDobkin\Fix up Code for AEJ\Fix it code"

log using T06_T07_RDD_estimates_of_Mortality_External_by_cause.log


reg all_cause_all_l post linear square linear_post square_post
outreg using T06_T07_RDD_estimates_of_Mortality_External_by_cause.xls, bdec(3) noaster se br ctitle(template) replace

local dep_var "alcohol_all_red_l2 homicide_all_red_l suicide_all_red_l mva_all_red_l drugs_all_red_l2 external_other_all_red_l"

foreach x of local dep_var {
   reg `x' post linear square linear_post square_post, robust 
   outreg using T06_T07_RDD_estimates_of_Mortality_External_by_cause.xls, bdec(3) noaster se br ctitle(`x' quad 97-04 log) append
   reg `x' post linear square linear_post square_post birthday birthday_af, robust 
   test birthday birthday_af
   outreg using T06_T07_RDD_estimates_of_Mortality_External_by_cause.xls, bdec(3) noaster se br ctitle(`x' quad birth 97-04 log) append
   reg `x' post linear square cubic linear_post square_post cubic_post birthday birthday_af, robust 
   test cubic  cubic_post
   outreg using T06_T07_RDD_estimates_of_Mortality_External_by_cause.xls, bdec(3) noaster se br ctitle(`x' cubic birth 97-04 log) append


  reg `x' post linear square linear_post square_post birthday birthday_af first_month, robust 
   outreg using T06_T07_RDD_estimates_of_Mortality_External_by_cause.xls, bdec(3) noaster se br ctitle(`x' quad birth fmonth 97-04 log) append

}


log close
