drop _all
set mem 800000
set matsize 800
drop _all
insheet using "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\Appendix L data.csv"
   drop if days_to_21_yr <= -2 
   drop if days_to_21_yr > 2 

cd "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007"


reg all_cause_all_90_96_l post linear square linear_post square_post
outreg using Appendix_L_check_stability_of_mortality_result_across_periods.xls, bdec(3) noaster  se br ctitle(template) replace

local dep_var "all_cause_all_90_03_l all_cause_all_90_96_l all_cause_all_97_03_l internal_all_90_03_l internal_all_90_96_l internal_all_97_03_l external_all_90_03_l external_all_90_96_l external_all_97_03_l alcohol_all_90_03_l2 alcohol_all_90_96_l2 alcohol_all_97_03_l2 homicide_all_90_03_l homicide_all_90_96_l homicide_all_97_03_l suicide_all_90_03_l suicide_all_90_96_l suicide_all_97_03_l mva_all_90_03_l mva_all_90_96_l mva_all_97_03_l drugs_all_90_03_l2  drugs_all_90_96_l2 drugs_all_97_03_l2 external_other_all_90_03_l external_other_all_90_96_l external_other_all_97_03_l"

foreach x of local dep_var {
   reg `x' post linear square linear_post square_post birthday birthday_af, robust 
   outreg using Appendix_L_check_stability_of_mortality_result_across_periods.xls, bdec(3) noaster se br ctitle(`x') append
}

