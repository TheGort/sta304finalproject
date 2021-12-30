drop _all
set mem 80000
set matsize 800
drop _all
insheet using "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007\for stata NHIS Alcohol Consumption Patterns.csv"

cd "C:\Documents and Settings\RDC3\Desktop\Dobkin\Alcohol 21 for DC March 2007"

log using T04_Check_confounders_in_NHIS.log

reg drinks_12_one_yr post linear square linear_post square_post
outreg using T04_Check_confounders_in_NHIS.xls, bdec(4) se br 3aster ctitle(drinks_12_one_yr) replace

local dep_var "male no_hs_dp hs_dp more_hs ed_miss white black hispanic employed looking_work no_ins region1 region2 region3 region4"


foreach x of local dep_var {
   reg `x' if linear >= -1 & linear <= 0 , robust 
   outreg using T04_Check_confounders_in_NHIS.xls, bdec(4) se br 3aster ctitle(`x' quad ) append
   reg `x' post linear square linear_post square_post first_month  , robust 
   outreg using T04_Check_confounders_in_NHIS.xls, bdec(4) se br 3aster ctitle(`x' quad  ) append
   reg `x' post linear square linear_post square_post first_month bday bday_aft region1 region2 region3 black hispanic no_hs_dp hs_dp ed_miss male employed looking_work no_ins   , robust 
   outreg using T04_Check_confounders_in_NHIS.xls, bdec(4) se br 3aster ctitle(`x' quad bday Cov  ) append
   reg `x' post linear square linear_post square_post first_month bday bday_aft region1 region2 region3 black hispanic no_hs_dp hs_dp ed_miss male employed looking_work no_ins  cubic_post cubic  , robust 
   outreg using T04_Check_confounders_in_NHIS.xls, bdec(4) se br 3aster ctitle(`x' quad bday Cov cubic  ) append

   reg `x' if linear >= -1 & linear <= 0 [pweight = wtfa_sa], robust 
   outreg using T04_Check_confounders_in_NHIS.xls, bdec(4) se br 3aster ctitle(`x' quad wtfa_sa) append
   reg `x' post linear square linear_post square_post first_month  [pweight = wtfa_sa], robust 
   outreg using T04_Check_confounders_in_NHIS.xls, bdec(4) se br 3aster ctitle(`x' quad wtfa_sa ) append
   reg `x' post linear square linear_post square_post first_month bday bday_aft region1 region2 region3 black hispanic no_hs_dp hs_dp ed_miss male employed looking_work no_ins   [pweight = wtfa_sa], robust 
   outreg using T04_Check_confounders_in_NHIS.xls, bdec(4) se br 3aster ctitle(`x' quad bday Cov wtfa_sa ) append
   reg `x' post linear square linear_post square_post first_month bday bday_aft region1 region2 region3 black hispanic no_hs_dp hs_dp ed_miss male employed looking_work no_ins  cubic_post cubic  [pweight = wtfa_sa], robust 
   outreg using T04_Check_confounders_in_NHIS.xls, bdec(4) se br 3aster ctitle(`x' quad bday Cov cubic wtfa_sa ) append
}


log close



