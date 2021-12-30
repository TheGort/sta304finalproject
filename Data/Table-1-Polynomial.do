drop _all
set mem 80000
set matsize 800
drop _all
insheet using "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\for stata NHIS Alcohol Consumption Patterns.csv"

cd "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007"

log using T01_T03_Alcohol_consumption_patterns_from_the_NHIS.log


reg drinks_12_one_yr post linear square linear_post square_post
outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_all.xls, bdec(4) se br 3aster ctitle(drinks_12_one_yr) replace
outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_white.xls, bdec(4) se br 3aster ctitle(drinks_12_one_yr) replace
outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_black.xls, bdec(4) se br 3aster ctitle(drinks_12_one_yr) replace
outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_hisp.xls, bdec(4) se br 3aster ctitle(drinks_12_one_yr) replace
outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_male.xls, bdec(4) se br 3aster ctitle(drinks_12_one_yr) replace
outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_female.xls, bdec(4) se br 3aster ctitle(drinks_12_one_yr) replace
outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_no_hs_dp.xls, bdec(4) se br 3aster ctitle(drinks_12_one_yr) replace
outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_hs_dp.xls, bdec(4) se br 3aster ctitle(drinks_12_one_yr) replace
outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_more_hs.xls, bdec(4) se br 3aster ctitle(drinks_12_one_yr) replace
outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_ed_miss.xls, bdec(4) se br 3aster ctitle(drinks_12_one_yr) replace


local dep_var "drinks_12_one_yr drinks_12_life days_drnk_per_yr drinks_per_day tot_drnk_per_yr days_more_than5 in_week in_month in_year no_drink per_days_drink per_days_mo_tn5 heavy_drink"
local group "all white black hisp male female no_hs_dp hs_dp more_hs ed_miss"

foreach y of local group {
  foreach x of local dep_var {
   reg `x' post linear square linear_post square_post first_month if `y' == 1, robust 
   outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_`y'.xls, bdec(4) se br 3aster ctitle(`x' quad `y') append
   reg `x' post linear square linear_post square_post first_month if `y' == 1 [pweight = wtfa_sa], robust 
   outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_`y'.xls, bdec(4) se br 3aster ctitle(`x' quad wtfa_sa `y') append
   reg `x' post linear square linear_post square_post first_month bday bday_aft region1 region2 region3 black hispanic no_hs_dp hs_dp ed_miss male employed looking_work no_ins  if `y' == 1 [pweight = wtfa_sa], robust 
   test bday bday_aft region1 region2 region3 black hispanic no_hs_dp hs_dp ed_miss male employed looking_work no_ins
   outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_`y'.xls, bdec(4) se br 3aster ctitle(`x' quad bday Cov wtfa_sa `y') append
   reg `x' post linear square linear_post square_post first_month bday bday_aft region1 region2 region3 black hispanic no_hs_dp hs_dp ed_miss male employed looking_work no_ins  cubic_post cubic if `y' == 1 [pweight = wtfa_sa], robust 
   test cubic_post cubic
   outreg using T01_T03_Alcohol_consumption_patterns_from_the_NHIS_`y'.xls, bdec(4) se br 3aster ctitle(`x' quad bday Cov cubic wtfa_sa `y') append
  }
}



log close
