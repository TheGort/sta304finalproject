drop _all
set mem 800000
set matsize 800
drop _all
insheet using "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\F02 Plots of number of deaths by days until birthday by educational attainement.csv"

drop if days_to_21_yr <= -2 
drop if days_to_21_yr > 2 

cd "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007"

log using T11_RDD_estimates_of_Mortality_by_Educational_Attainement.log

reg all_cause_hs_drop_red_l post linear linear_post 
outreg using T11_RDD_estimates_of_Mortality_by_Educational_Attainement.xls, bdec(3) noaster se br ctitle(template linear) replace

local dep_var "all_cause_hs_drop_red_l all_cause_hs_red_l all_cause_college_red_l all_cause_ed_missing_red_l2"

foreach x of local dep_var {
   reg `x' post linear square linear_post square_post, robust 
   outreg using T11_RDD_estimates_of_Mortality_by_Educational_Attainement.xls, bdec(3) noaster se br ctitle(`x' quad 97-04 log) append
   reg `x' post linear square linear_post square_post birthday birthday_af, robust 
   test birthday birthday_af
   outreg using T11_RDD_estimates_of_Mortality_by_Educational_Attainement.xls, bdec(3) noaster se br ctitle(`x' quad birth 97-04 log) append
   reg `x' post linear square cubic linear_post square_post cubic_post birthday birthday_af, robust 
   test cubic  cubic_post
   outreg using T11_RDD_estimates_of_Mortality_by_Educational_Attainement.xls, bdec(3) noaster se br ctitle(`x' cubic birth 97-04 log) append
   reg `x' post linear square linear_post square_post birthday birthday_af first_month, robust 
   outreg using T11_RDD_estimates_of_Mortality_by_Educational_Attainement.xls, bdec(3) noaster se br ctitle(`x' quad birth first_month 97-04 log) append
}

log close
