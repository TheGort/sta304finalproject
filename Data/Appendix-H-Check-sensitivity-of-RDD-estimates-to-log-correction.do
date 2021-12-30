drop _all
set mem 800000
set matsize 800
drop _all
insheet using "C:\CarlosDobkin\Fix up Code for AEJ\Fix it code\Appendix K data.csv"

drop if days_to_21_yr <= -2 
drop if days_to_21_yr > 2 

cd "C:\CarlosDobkin\Fix up Code for AEJ\Fix it code\"

reg alcohol_all_l post linear square linear_post square_post
outreg using Appendix_H_Check_sensitivity_of_RDD_estimates_to_log_correction.xls, bdec(3) se br ctitle(template) replace

local dep_var "alcohol_all drugs_all"

foreach x of local dep_var {
   reg `x'_red_l2 post linear square linear_post square_post birthday birthday_af, robust 
   outreg using Appendix_H_Check_sensitivity_of_RDD_estimates_to_log_correction.xls, bdec(3) se br ctitle(`x' quad birth 97-04 log + .5) append
   reg `x'_red_l3 post linear square linear_post square_post birthday birthday_af, robust 
   outreg using Appendix_H_Check_sensitivity_of_RDD_estimates_to_log_correction.xls, bdec(3) se br ctitle(`x' quad birth 97-04 log + 1) append
   reg `x'_red    post linear square linear_post square_post birthday birthday_af, robust 
   outreg using Appendix_H_Check_sensitivity_of_RDD_estimates_to_log_correction.xls, bdec(3) se br ctitle(`x' quad birth 97-04 level) append
}


