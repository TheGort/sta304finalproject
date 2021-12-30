drop _all
set mem 800000
set matsize 800
drop _all
insheet using "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\F02 Plots of number of deaths by days until birthday.csv"

drop if days_to_21_yr <= -2 
drop if days_to_21_yr > 2 

cd "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007"

log using T09_T10_RDD_Estimates_of_Mortality_by_gender_and_race.log

reg all_cause_all_l post linear square linear_post square_post
outreg using T09_T10_RDD_Estimates_of_Mortality_by_gender_and_race.xls, bdec(3) noaster se br ctitle(template) replace

local dep_var "all_cause_male_red_l all_cause_female_red_l all_cause_white_red_l all_cause_black_red_l all_cause_hispanic_r_red_l"

foreach x of local dep_var {
   reg `x' post linear square linear_post square_post, robust 
   outreg using T09_T10_RDD_Estimates_of_Mortality_by_gender_and_race.xls, bdec(3) noaster se br ctitle(`x' quad 97-04 log) append
   reg `x' post linear square linear_post square_post birthday birthday_af, robust 
   test birthday birthday_af
   outreg using T09_T10_RDD_Estimates_of_Mortality_by_gender_and_race.xls, bdec(3) noaster se br ctitle(`x' quad birth 97-04 log) append
   reg `x' post linear square cubic linear_post square_post cubic_post birthday birthday_af, robust 
   test cubic  cubic_post
   outreg using T09_T10_RDD_Estimates_of_Mortality_by_gender_and_race.xls, bdec(3) noaster se br ctitle(`x' cubic birth 97-04 log) append
   reg `x' post linear square linear_post square_post birthday birthday_af first_month, robust 
   outreg using T09_T10_RDD_Estimates_of_Mortality_by_gender_and_race.xls, bdec(3) noaster se br ctitle(`x' quad birth first_month 97-04 log) append
}


log close
