*********************************************************************   
 NOVEMBER 12, 2003  5:05 PM                                             
                                                                        
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS                 
 FILE FROM THE 2002 NHIS PUBLIC USE PERSONSX.DAT ASCII FILE             
                                                                        
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN                
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                   
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                     
       DOCUMENTATION                                                    
                                                                        
 THIS IS STORED IN PERSONSX.SAS                                         
*********************************************************************;  
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;          
                                                                        
LIBNAME  NHIS     'C:\DATA\NHIS\';                                       
LIBNAME  LIBRARY  'C:\DATA\NHIS\2002';                                       
                                                                        
FILENAME ASCIIDAT 'C:\DATA\NHIS\2002\da2002person.sas';                           
                                                                        
* DEFINE VARIABLE VALUES FOR REPORTS;                                   
                                                                        
PROC FORMAT LIBRARY=LIBRARY;                                            
  VALUE PEP001X                                                         
    20               = "Person"                                         
   ;                                                                    
  VALUE PEP002X                                                         
    2002             = "2002"                                           
   ;                                                                    
  VALUE $PEP004X                                                        
    "01" - "08"      = "Family number 1 thru 8"                         
   ;                                                                    
  VALUE $PEP005X                                                        
    "01" - "30"      = "Person number 1 thru 30"                        
   ;                                                                    
  VALUE PEP006X                                                         
    1                = "Quarter 1"                                      
    2                = "Quarter 2"                                      
    3                = "Quarter 3"                                      
    4                = "Quarter 4"                                      
   ;                                                                    
  VALUE PEP007X                                                         
    1                = "Male"                                           
    2                = "Female"                                         
   ;                                                                    
  VALUE PEP008X                                                         
    00               = "Under 1 year"                                   
    01 - 84          = "1-84 years"                                     
    85               = "85+ years"                                      
   ;                                                                    
  VALUE PEP009X                                                         
    1                = "Under 5 years"                                  
    2                = "5-17 years"                                     
    3                = "18-24 years"                                    
    4                = "25-44 years"                                    
    5                = "45-64 years"                                    
    6                = "65-69 years"                                    
    7                = "70-74 years"                                    
    8                = "75 years and over"                              
   ;                                                                    
  VALUE PEP010X                                                         
    1                = "Under 6 years"                                  
    2                = "6-16 years"                                     
    3                = "17-24 years"                                    
    4                = "25-34 years"                                    
    5                = "35-44 years"                                    
    6                = "45-54 years"                                    
    7                = "55-64 years"                                    
    8                = "65-74 years"                                    
    9                = "75 years and over"                              
   ;                                                                    
  VALUE $PEP011X                                                        
    "01"             = "January"                                        
    "02"             = "February"                                       
    "03"             = "March"                                          
    "04"             = "April"                                          
    "05"             = "May"                                            
    "06"             = "June"                                           
    "07"             = "July"                                           
    "08"             = "August"                                         
    "09"             = "September"                                      
    "10"             = "October"                                        
    "11"             = "November"                                       
    "12"             = "December"                                       
    "97"             = "Refused"                                        
    "98"             = "Not ascertained"                                
    "99"             = "Don't know"                                     
   ;                                                                    
  VALUE $PEP012X                                                        
    "1918"           = "1918 or before"                                 
    "1919" - "2003"  = "1919-2003"                                      
    "9997"           = "Refused"                                        
    "9998"           = "Not ascertained"                                
    "9999"           = "Don't know"                                     
   ;                                                                    
  VALUE PEP013X                                                         
    1                = "Yes"                                            
    2                = "No"                                             
   ;                                                                    
  VALUE PEP014X                                                         
    1                = "Imputed 'refused' Hispanic Origin response"     
    2                = "Imputed 'not ascertained' Hispanic Origin"      
    3                = "Imputed 'does not know' Hispanic Origin"        
    4                = "Hispanic origin given by respondent/proxy"      
   ;                                                                    
  VALUE PEP015X                                                         
    00               = "Multiple Hispanic"                              
    01               = "Puerto Rican"                                   
    02               = "Mexican"                                        
    03               = "Mexican-American"                               
    04               = "Cuban/Cuban American"                           
    05               = "Dominican (Republic)"                           
    06               = "Central or South American"                      
    07               = "Other Latin American, type not specified"       
    08               = "Other Spanish"                                  
    09               = "Hispanic/Latino/Spanish, non-specific type"     
    10               = "Hispanic/Latino/Spanish, type refused"          
    11               = "Hispanic/Latino/Spanish, type not ascertained"  
    12               = "Not Hispanic/Spanish origin"                    
   ;                                                                    
  VALUE PEP016X                                                         
    1                = "Imputed 'refused' Hispanic Origin type"         
    2                = "Imputed 'not ascertained' Hispanic Origin type" 
    3                = "Imputed 'does not know' Hispanic Origin type"   
    4                = "Hispanic Origin type given by respondent/proxy" 
   ;                                                                    
  VALUE PEP017X                                                         
    01               = "White only"                                     
    02               = "Black/African American only"                    
    03               = "AIAN only"                                      
    09               = "Asian Indian only"                              
    10               = "Chinese only"                                   
    11               = "Filipino only"                                  
    15               = "Other Asian only"                               
    16               = "Other race only"                                
    17               = "Multiple detailed race*"                        
   ;                                                                    
  VALUE PEP018X                                                         
    01               = "White only"                                     
    02               = "Black/African American only"                    
    03               = "AIAN only*"                                     
    04               = "Asian only"                                     
    05               = "Other race only"                                
    06               = "Multiple detailed race only"                    
   ;                                                                    
  VALUE PEP019X                                                         
    01               = "White only"                                     
    02               = "Black/African American only"                    
    03               = "AIAN* only"                                     
    04               = "Asian only"                                     
    05               = "Other race only"                                
    06               = "Multiple race"                                  
   ;                                                                    
  VALUE PEP020X                                                         
    1                = "Imputed 'refused' race response"                
    2                = "Imputed 'not ascertained' race response"        
    3                = "Imputed 'does not know' race response"          
    4                = "Race given by respondent/proxy"                 
   ;                                                                    
  VALUE PEP021X                                                         
    01               = "White"                                          
    02               = "Black/African American"                         
    03               = "Indian (American), Alaska Native"               
    09               = "Asian Indian"                                   
    10               = "Chinese"                                        
    11               = "Filipino"                                       
    15               = "Other Asian*"                                   
    16               = "Other Race*"                                    
    17               = "Multiple Race*"                                 
   ;                                                                    
  VALUE PEP022X                                                         
    01               = "White"                                          
    02               = "Black/African American"                         
    03               = "Indian (American) (includes Eskimo, Aleut)"     
    06               = "Chinese"                                        
    07               = "Filipino"                                       
    12               = "Asian Indian"                                   
    16               = "Other race"                                     
    17               = "Multiple race"                                  
   ;                                                                    
  VALUE PEP023X                                                         
    1                = "White"                                          
    2                = "Black"                                          
    3                = "Other"                                          
   ;                                                                    
  VALUE PEP024X                                                         
    1                = "Hispanic"                                       
    2                = "Non-Hispanic White"                             
    3                = "Non-Hispanic Black"                             
    4                = "Non-Hispanic Other"                             
   ;                                                                    
  VALUE PEP025X                                                         
    1                = "Ethnicity/race imputed"                         
    2                = "Ethnicity/race given by respondent/proxy"       
   ;                                                                    
  VALUE PEP026X                                                         
    0                = "Under 14 years"                                 
    1                = "Married - spouse in household"                  
    2                = "Married - spouse not in household"              
    3                = "Married - spouse in household unknown"          
    4                = "Widowed"                                        
    5                = "Divorced"                                       
    6                = "Separated"                                      
    7                = "Never married"                                  
    8                = "Living with partner"                            
    9                = "Unknown marital status"                         
   ;                                                                    
  VALUE PEP027X                                                         
    1                = "Yes"                                            
    2                = "No"                                             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE PEP028X                                                         
    1                = "Married"                                        
    2                = "Widowed"                                        
    3                = "Divorced"                                       
    4                = "Separated"                                      
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE PEP029X                                                         
    1                = "Married, spouse in household"                   
    2                = "Married, spouse not in household"               
    3                = "Married, spouse in household unknown"           
    4                = "Widowed"                                        
    5                = "Divorced"                                       
    6                = "Separated"                                      
    7                = "Never Married"                                  
    9                = "Unknown marital status"                         
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP030X                                                         
    1                = "Separated"                                      
    2                = "Divorced"                                       
    3                = "Married"                                        
    4                = "Single/never married"                           
    5                = "Widowed"                                        
    9                = "Unknown marital status"                         
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP031X                                                         
    01               = "Household reference person"                     
    02               = "Spouse (husband/wife)"                          
    03               = "Unmarried Partner"                              
    04               = "Child (biological/adoptive/in-law/step/foster)" 
    05               = "Child of partner"                               
    06               = "Grandchild"                                     
    07               = "Parent (bio./adoptive/in-law/step/foster)"      
    08               = "Brother/sister (bio./adop./in-law/step/foster)" 
    09               = "Grandparent (Grandmother/Grandfather)"          
    10               = "Aunt/Uncle"                                     
    11               = "Niece/Nephew"                                   
    12               = "Other relative"                                 
    13               = "Housemate/roommate"                             
    14               = "Roomer/Boarder"                                 
    15               = "Other nonrelative"                              
    16               = "Legal guardian"                                 
    17               = "Ward"                                           
    97               = "Refused"                                        
    99               = "Don't know"                                     
   ;                                                                    
  VALUE $PEP032X                                                        
    "01" - "30"      = "Person number 1 thru 30"                        
    "98"             = "Not ascertained"                                
   ;                                                                    
  VALUE $PEP033X                                                        
    "P"              = "HH Reference person"                            
    "8"              = "Not ascertained"                                
    " "              = "<Blank:  Not reference person>"                 
   ;                                                                    
  VALUE PEP034X                                                         
    01               = "Family reference person"                        
    02               = "Spouse (husband/wife)"                          
    03               = "Unmarried Partner"                              
    04               = "Child (biological/adoptive/in-law/step/foster)" 
    05               = "Child of partner"                               
    06               = "Grandchild"                                     
    07               = "Parent (bio./adoptive/in-law/step/foster)"      
    08               = "Brother/sister (bio./adop./in-law/step/foster)" 
    09               = "Grandparent (Grandmother/Grandfather)"          
    10               = "Aunt/Uncle"                                     
    11               = "Niece/Nephew"                                   
    12               = "Other relative"                                 
    16               = "Legal guardian"                                 
    17               = "Ward"                                           
    97               = "Refused"                                        
    99               = "Don't know"                                     
   ;                                                                    
  VALUE $PEP036X                                                        
    "P"              = "Family reference person"                        
    "8"              = "Not ascertained"                                
    " "              = "<Blank:  Not reference person>"                 
   ;                                                                    
  VALUE PEP037X                                                         
    01 - 30          = "Person number 1 thru 30"                        
    98               = "Not ascertained"                                
   ;                                                                    
  VALUE $PEP038X                                                        
    "B"              = "Family respondent"                              
    "8"              = "Not ascertained"                                
    " "              = "<Blank:  Not family respondent>"                
   ;                                                                    
  VALUE PEP039X                                                         
    1                = "Full  {brother/sister}"                         
    2                = "Half {brother/sister}"                          
    3                = "Adopted {brother/sister}"                       
    4                = "Step {brother/sister}"                          
    5                = "Foster {brother/sister}"                        
    6                = "{brother/sister}-in-law"                        
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE $PEP040X                                                        
    "00"             = "No mother in the household"                     
    "01" - "30"      = "Person number (of mother)"                      
    "96"             = "Has legal guardian"                             
    "97"             = "Refused"                                        
    "98"             = "Not ascertained"                                
    "99"             = "Don't know"                                     
   ;                                                                    
  VALUE PEP041X                                                         
    1                = "Biological"                                     
    2                = "Step"                                           
    3                = "Adoptive"                                       
    4                = "Foster"                                         
    5                = "In-law"                                         
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE $PEP042X                                                        
    "00"             = "No father in the household"                     
    "01" - "30"      = "Person number (of father)"                      
    "96"             = "Has legal guardian"                             
    "97"             = "Refused"                                        
    "98"             = "Not ascertained"                                
    "99"             = "Don't know"                                     
   ;                                                                    
  VALUE $PEP044X                                                        
    "00"             = "Guardian is not a household member"             
    "01" - "30"      = "Person number of guardian"                      
    "97"             = "Refused"                                        
    "98"             = "Not ascertained"                                
    "99"             = "Don't know"                                     
    " "              = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP045X                                                         
    1                = "Mother, no father"                              
    2                = "Father, no mother"                              
    3                = "Mother and father"                              
    4                = "Neither mother nor father"                      
    9                = "Unknown"                                        
   ;                                                                    
  VALUE PEP046X                                                         
    01               = "Less/equal to 8th grade"                        
    02               = "9-12th grade, no high school diploma"           
    03               = "High school graduate/GED recipient"             
    04               = "Some college, no degree"                        
    05               = "AA degree, technical or vocational"             
    06               = "AA degree, academic program"                    
    07               = "Bachelor's degree"                              
    08               = "Master's, professional, or doctoral degree"     
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP048X                                                         
    01 - 30          = "01-30 persons"                                  
   ;                                                                    
  VALUE PEP049X                                                         
    1                = "One adult, no child(ren) under 18"              
    2                = "Multiple adults, no child(ren) under 18"        
    3                = "One adult, 1+ child(ren) under 18"              
    4                = "Multiple adults, 1+ child(ren) under 18"        
    9                = "Unknown"                                        
   ;                                                                    
  VALUE PEP052X                                                         
    1                = "Armed Forces"                                   
    2                = "Not Armed Forces"                               
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE PEP053X                                                         
    0                = "Sample Adult - no record"                       
    1                = "Sample Adult - has record"                      
    2                = "Not selected as Sample Adult"                   
    3                = "No one selected as Sample Adult"                
    4                = "Armed Force member"                             
    5                = "Armed Force member - selected as Sample Adult"  
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE PEP054X                                                         
    0                = "Sample Child - no record"                       
    1                = "Sample Child - has record"                      
    2                = "Not selected as Sample Child"                   
    3                = "No one selected as Sample Child"                
    4                = "Emancipated Minor"                              
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE PEP055X                                                         
    0                = "Immunization Child - no record"                 
    1                = "Immunization Child - has record"                
    2                = "Not eligible for immunization questions"        
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE PEP056X                                                         
    1                = "Northeast"                                      
    2                = "Midwest"                                        
    3                = "South"                                          
    4                = "West"                                           
   ;                                                                    
  VALUE PEP074X                                                         
    0                = "Unable to work"                                 
    1                = "Limited in work"                                
    2                = "Not limited in work"                            
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE PEP075X                                                         
    1                = "Yes"                                            
    2                = "No"                                             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE PEP077X                                                         
    0                = "Limitation previously mentioned"                
    1                = "Yes, limited in some other way"                 
    2                = "Not limited in any way"                         
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE PEP078X                                                         
    1                = "Limited in any way"                             
    2                = "Not limited in any way"                         
    3                = "Unknown if limited"                             
   ;                                                                    
  VALUE PEP079X                                                         
    1                = "Mentioned"                                      
    2                = "Not mentioned"                                  
    6                = "No condition at all"                            
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP094X                                                         
    01 - 94          = "1-94"                                           
    95               = "95+"                                            
    96               = "Since birth"                                    
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP095X                                                         
    1                = "Day(s)"                                         
    2                = "Week(s)"                                        
    3                = "Month(s)"                                       
    4                = "Year(s)"                                        
    6                = "Since birth"                                    
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP096X                                                         
    00               = "Less than 1 year"                               
    01 - 17          = "01-17 years"                                    
    96               = "Unknown number of years"                        
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP097X                                                         
    0                = "Since birth and child < 1 year of age"          
    1                = "Less than 3 months"                             
    2                = "3 - 5 months"                                   
    3                = "6 - 12 months"                                  
    4                = "More than 1 year"                               
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP098X                                                         
    1                = "Chronic"                                        
    2                = "Not chronic"                                    
    9                = "Unknown if chronic"                             
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP207X                                                         
    00               = "Less than 1 year"                               
    01 - 84          = "01-84 years"                                    
    85               = "85+ years"                                      
    96               = "Unknown number of years"                        
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP208X                                                         
    1                = "Less than 3 months"                             
    2                = "3 - 5 months"                                   
    3                = "6 - 12 months"                                  
    4                = "More than 1 year"                               
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP385X                                                         
    1                = "At least one condition causing LA is chronic"   
    2                = "No condition causing LA is chronic"             
    9                = "Unk if any condition causing LA is chronic"     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE PEP386X                                                         
    0                = "Not limited in any way (incl unk if limited)"   
    1                = "Limited; caused by at least one chronic cond"   
    2                = "Limited; not caused by chronic cond"            
    3                = "Limited; unk if cond causing LA is chronic"     
   ;                                                                    
  VALUE PEP387X                                                         
    1                = "Excellent"                                      
    2                = "Very good"                                      
    3                = "Good"                                           
    4                = "Fair"                                           
    5                = "Poor"                                           
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE PEP391X                                                         
    001 - 365        = "1-365 times"                                    
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP392X                                                         
    001 - 365        = "1-365 nights"                                   
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP394X                                                         
    01 - 50          = "1-50 visits"                                    
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP396X                                                         
    01 - 50          = "1-50 calls"                                     
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP398X                                                         
    01 - 50          = "1-50 times"                                     
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
                                                                        
  VALUE PEP400X                                                         
    1                = "Mentioned"                                      
    2                = "Not mentioned"                                  
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE PEP414X                                                         
    1                = "Yes, information"                               
    2                = "Yes, but no information"                        
    3                = "No"                                             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE PEP415X                                                         
    1                = "Part A - Hospital Only"                         
    2                = "Part B - Medical Only"                          
    3                = "Both Part A and Part B"                         
    4                = "Card Not Available"                             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP418X                                                         
    04               = "Medigap plan"                                   
    12               = "Group"                                          
    22               = "Staff"                                          
    32               = "IPA"                                            
    92               = "Other"                                          
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP422X                                                         
    1                = "Any doctor"                                     
    2                = "Select from a book/list"                        
    3                = "Doctor is assigned"                             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP425X                                                         
    1                = "Yes with information"                           
    2                = "Yes with no information"                        
    3                = "No"                                             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE PEP426X                                                         
    1                = "Mentioned"                                      
    2                = "Not mentioned"                                  
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in universe>"                       
   ;                                                                    
  VALUE PEP439X                                                         
    01 - 92          = "Refer to Health Insurance Plan Appendix"        
    98               = "Not ascertained"                                
    99               = "Unknown"                                        
    .                = "<Blank: Not in universe>"                       
   ;                                                                    
  VALUE PEP440X                                                         
    1                = "In own name"                                    
    2                = "Someone else in family"                         
    3                = "Person not in household"                        
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP441X                                                         
    1                = "Employer"                                       
    2                = "Union"                                          
    3                = "Through work, but DK if employer or union"      
    4                = "Through work, self-employ or prof assoc"        
    5                = "No"                                             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP449X                                                         
    00001 - 19999    = "$1-$19,999"                                     
    20000            = "$20,000 or more"                                
    99997            = "Refused"                                        
    99998            = "Not ascertained"                                
    99999            = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP450X                                                         
    1                = "HMO/IPA"                                        
    2                = "PPO"                                            
    3                = "POS"                                            
    4                = "Fee-for-service/indemnity"                      
    5                = "Other"                                          
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP451X                                                         
    1                = "Any doctor"                                     
    2                = "Select from group/list"                         
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP504X                                                         
    1                = "Yes, Military/VA only"                          
    2                = "Yes, TRICARE/CHAMPUS/CHAMP-VA only"             
    3                = "Yes Both Military/VA + TRICARE/CHAMPUS/CHAMP-VA"
    4                = "Yes unknown type"                               
    5                = "No"                                             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE PEP508X                                                         
    1                = "Not covered"                                    
    2                = "Covered"                                        
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP509X                                                         
    1                = "6 months or less"                               
    2                = "More than 6 months, but not more than 1 year ago
"                                                                       
    3                = "More than 1 year, but not more than 3 years ago"
    4                = "More than 3 years"                              
    5                = "Never"                                          
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP526X                                                         
    01 - 12          = "1-12 months"                                    
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE PEP527X                                                         
    0                = "Zero"                                           
    1                = "Less than $500"                                 
    2                = "$500-$1,999"                                    
    3                = "$2,000-$2,999"                                  
    4                = "$3,000-$4,999"                                  
    5                = "$5,000 or more"                                 
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't Know"                                     
   ;                                                                    
                                                                        
  VALUE PEP528X                                                         
    01               = "United States"                                  
    02               = "Mexico, Central America, Caribbean Islands"     
    03               = "South America"                                  
    04               = "Europe"                                         
    05               = "Russia (and former USSR areas)"                 
    06               = "Africa"                                         
    07               = "Middle East"                                    
    08               = "Indian Subcontinent"                            
    09               = "Asia"                                           
    10               = "SE Asia"                                        
    11               = "Elsewhere"                                      
    99               = "Unknown"                                        
   ;                                                                    
  VALUE PEP529X                                                         
    1                = "USA: born in one of the 50 United States or D.C"
    2                = "USA: born in a U.S. territory"                  
    3                = "Not born in the U.S. or a U.S. territory"       
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE PEP530X                                                         
    1                = "Less than 1 year"                               
    2                = "1 yr., less than 5 yrs."                        
    3                = "5 yrs., less than 10 yrs."                      
    4                = "10 yrs., less than 15 yrs."                     
    5                = "15 years or more"                               
    9                = "Unknown"                                        
    .                = "<Blank: Not in universe>"                       
   ;                                                                    
  VALUE PEP531X                                                         
    1                = "Yes, citizen of the United States"              
    2                = "No, not a citizen of the United States"         
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE PEP534X                                                         
    00               = "Never attended/ kindergarten only"              
    01 - 11          = "Grades 1 - 11"                                  
    12               = "12th grade, no diploma"                         
    13               = "HIGH SCHOOL GRADUATE"                           
    14               = "GED or equivalent"                              
    15               = "Some college, no degree"                        
    16               = "AA degree: technical or vocational"             
    17               = "AA degree: academic program"                    
    18               = "Bachelor's degree (BA, AB, BS, BBA)"            
    19               = "Master's degree (MA, MS, MEng, MEd, MBA)"       
    20               = "Professional degree (MD, DDS, DVM, JD)"         
    21               = "Doctoral degree (PhD, EdD)"                     
    96               = "Child under 5 years old"                        
    97               = "Refused"                                        
    98               = "Not Ascertained"                                
    99               = "Don't know"                                     
   ;                                                                    
  VALUE PEP535X                                                         
    01               = "Less/equal to 8th grade"                        
    02               = "9-12th grade, no high school diploma"           
    03               = "High school graduate"                           
    04               = "GED recipient"                                  
    05               = "Some college, no degree"                        
    06               = "AA degree, technical or vocational"             
    07               = "AA degree, academic program"                    
    08               = "Bachelor's degree (BA, BS, AB, BBA)"            
    09               = "Master's, professional, or doctoral degree"     
    96               = "Child under 5 years of age"                     
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
   ;                                                                    
  VALUE PEP537X                                                         
    1                = "Working for pay at a job or business"           
    2                = "With a job or business but not at work"         
    3                = "Looking for work"                               
    4                = "Working, but not for pay, at a job or business" 
    5                = "Not working and not looking for work"           
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in universe>"                       
   ;                                                                    
  VALUE PEP538X                                                         
    01               = "Taking care of house or family"                 
    02               = "Going to school"                                
    03               = "Retired"                                        
    04               = "On a planned vacation from work"                
    05               = "On family or maternity leave"                   
    06               = "Temporarily unable to work for health reasons"  
    07               = "On layoff"                                      
    08               = "Disabled"                                       
    09               = "Have job/contract; off-season"                  
    10               = "Other"                                          
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP539X                                                         
    01 - 94          = "1-94 hours"                                     
    95               = "95+ hours"                                      
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE PEP543X                                                         
    1                = "Working at a job or business"                   
    2                = "Keeping house"                                  
    3                = "Going to school"                                
    4                = "Something else"                                 
    5                = "Unknown"                                        
    .                = "<Blank: Not in universe>"                       
   ;                                                                    
  VALUE PEP544X                                                         
    01               = "$01-$4999"                                      
    02               = "$5000-$9999"                                    
    03               = "$10000-$14999"                                  
    04               = "$15000-$19999"                                  
    05               = "$20000-$24999"                                  
    06               = "$25000-$34999"                                  
    07               = "$35000-$44999"                                  
    08               = "$45000-$54999"                                  
    09               = "$55000-$64999"                                  
    10               = "$65000-$74999"                                  
    11               = "$75000 and over"                                
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in universe>"                       
   ;                                                                    
  VALUE PEP561X                                                         
    01               = "0-$4999"                                        
    02               = "$5000-$9999"                                    
    03               = "$10000-$14999"                                  
    04               = "$15000-$19999"                                  
    05               = "$20000-$24999"                                  
    06               = "$25000-$34999"                                  
    07               = "$35000-$44999"                                  
    08               = "$45000-$54999"                                  
    09               = "$55000-$64999"                                  
    10               = "$65000-$74999"                                  
    11               = "$75000 and over"                                
    12               = "$20000 or more (no detail)"                     
    13               = "Less than $20000 (no detail)"                   
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
   ;                                                                    
  VALUE PEP562X                                                         
    1                = "$20,000 or more"                                
    2                = "Less than $20,000"                              
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE PEP563X                                                         
    01               = "Under .50"                                      
    02               = ".50 to .74"                                     
    03               = ".75 to .99"                                     
    04               = "1.00 to 1.24"                                   
    05               = "1.25 to 1.49"                                   
    06               = "1.50 to 1.74"                                   
    07               = "1.75 to 1.99"                                   
    08               = "2.00 to 2.49"                                   
    09               = "2.50 to 2.99"                                   
    10               = "3.00 to 3.49"                                   
    11               = "3.50 to 3.99"                                   
    12               = "4.00 to 4.49"                                   
    13               = "4.50 to 4.99"                                   
    14               = "5.00 and over"                                  
    96               = "Undefinable"                                    
    99               = "Unknown"                                        
   ;                                                                    
  VALUE PEP564X                                                         
    1                = "Owned or being bought"                          
    2                = "Rented"                                         
    3                = "Other arrangement"                              
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE PEP568X                                                         
    01 - 12          = "01-12 months"                                   
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE PEP571X                                                         
    0                = "No WIC age-eligible family members"             
    1                = "At least 1 WIC age-eligible family member"      
   ;                                                                    
  VALUE PEP573X                                                         
    0                = "Person not age-eligible"                        
    1                = "Person age-eligible"                            
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
                                                                        
DATA NHIS.PERSON_2002;                                                     
   * CREATE A SAS DATA SET;                                             
   INFILE ASCIIDAT PAD LRECL=762;                                       
                                                                        
   * DEFINE LENGTH OF ALL VARIABLES;                                    
                                                                        
   LENGTH                                                               
      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2         
      PX       $ 2   INTV_QRT   3   SEX        3   AGE_P      3         
      R_AGE1     3   R_AGE2     3   DOB_M    $ 2   DOB_Y_P  $ 4         
      ORIGIN_I   3   ORIGIMPT   3   HISPAN_I   3   HISPIMPT   3         
      RCDT1P_I   3   RC_SMP_I   3   RACERP_I   3   RACEIMPT   3         
      MRACRP_I   3   MRACBP_I   3   RACREC_I   3   HISCOD_I   3         
      ERIMPFLG   3   R_MARITL   3   COHAB1     3   COHAB2     3         
      LG_MSTAT   3   CDCMSTAT   3   RRP        3   HH_REF   $ 2         
      HHREFLG  $ 1   FRRP       3   FM_REF   $ 2   FMREFLG  $ 1         
      FM_RESP    3   FMRPFLG  $ 1   SIB_DEG    3   MOTHER   $ 2         
      MOM_DEG    3   FATHER   $ 2   DAD_DEG    3   GUARD    $ 2         
      PARENTS    3   MOM_ED     3   DAD_ED     3   FM_SIZE    3         
      FM_TYPE    3   FM_STRCP   3   FM_STRP    3   NOWAF      3         
      ASTATFLG   3   CSTATFLG   3   IMMUNFLG   3   REGION     3         
      WTIA       8   WTFA       8   STRATUM    4   PSU        3         
                                                                        
      PLAPLYLM   3   PLAPLYUN   3   PSPEDEIS   3   PSPEDEM    3         
      PLAADL     3   LABATH     3   LADRESS    3   LAEAT      3         
      LABED      3   LATOILT    3   LAHOME     3   PLAIADL    3         
      PLAWKNOW   3   PLAWKLIM   3   PLAWALK    3   PLAREMEM   3         
      PLIMANY    3   LA1AR      3   LAHCC1     3   LAHCC2     3         
      LAHCC3     3   LAHCC4     3   LAHCC5     3   LAHCC6     3         
      LAHCC7     3   LAHCC8     3   LAHCC9     3   LAHCC10    3         
      LAHCC11    3   LAHCC12    3   LAHCC13    3   LAHCC90    3         
      LAHCC91    3   LCTIME1    3   LCUNIT1    3   LCDURA1    3         
      LCDURB1    3   LCCHRC1    3   LCTIME2    3   LCUNIT2    3         
      LCDURA2    3   LCDURB2    3   LCCHRC2    3   LCTIME3    3         
      LCUNIT3    3   LCDURA3    3   LCDURB3    3   LCCHRC3    3         
      LCTIME4    3   LCUNIT4    3   LCDURA4    3   LCDURB4    3         
      LCCHRC4    3   LCTIME5    3   LCUNIT5    3   LCDURA5    3         
      LCDURB5    3   LCCHRC5    3   LCTIME6    3   LCUNIT6    3         
      LCDURA6    3   LCDURB6    3   LCCHRC6    3   LCTIME7    3         
      LCUNIT7    3   LCDURA7    3   LCDURB7    3   LCCHRC7    3         
      LCTIME8    3   LCUNIT8    3   LCDURA8    3   LCDURB8    3         
      LCCHRC8    3   LCTIME9    3   LCUNIT9    3   LCDURA9    3         
      LCDURB9    3   LCCHRC9    3   LCTIME10   3   LCUNIT10   3         
      LCDURA10   3   LCDURB10   3   LCCHRC10   3   LCTIME11   3         
      LCUNIT11   3   LCDURA11   3   LCDURB11   3   LCCHRC11   3         
      LCTIME12   3   LCUNIT12   3   LCDURA12   3   LCDURB12   3         
      LCCHRC12   3   LCTIME13   3   LCUNIT13   3   LCDURA13   3         
      LCDURB13   3   LCCHRC13   3   LCTIME90   3   LCUNIT90   3         
      LCDURA90   3   LCDURB90   3   LCCHRC90   3   LCTIME91   3         
      LCUNIT91   3   LCDURA91   3   LCDURB91   3   LCCHRC91   3         
      LAHCA1     3   LAHCA2     3   LAHCA3     3   LAHCA4     3         
      LAHCA5     3   LAHCA6     3   LAHCA7     3   LAHCA8     3         
      LAHCA9     3   LAHCA10    3   LAHCA11    3   LAHCA12    3         
      LAHCA13    3   LAHCA14    3   LAHCA15    3   LAHCA16    3         
      LAHCA17    3   LAHCA18    3   LAHCA19    3   LAHCA20    3         
      LAHCA21    3   LAHCA22    3   LAHCA23    3   LAHCA24    3         
      LAHCA25    3   LAHCA26    3   LAHCA27    3   LAHCA28    3         
      LAHCA29    3   LAHCA30    3   LAHCA31    3   LAHCA32    3         
      LAHCA33    3   LAHCA34    3   LAHCA90    3   LAHCA91    3         
      LATIME1    3   LAUNIT1    3   LADURA1    3   LADURB1    3         
      LACHRC1    3   LATIME2    3   LAUNIT2    3   LADURA2    3         
      LADURB2    3   LACHRC2    3   LATIME3    3   LAUNIT3    3         
      LADURA3    3   LADURB3    3   LACHRC3    3   LATIME4    3         
      LAUNIT4    3   LADURA4    3   LADURB4    3   LACHRC4    3         
      LATIME5    3   LAUNIT5    3   LADURA5    3   LADURB5    3         
      LACHRC5    3   LATIME6    3   LAUNIT6    3   LADURA6    3         
      LADURB6    3   LACHRC6    3   LATIME7    3   LAUNIT7    3         
      LADURA7    3   LADURB7    3   LACHRC7    3   LATIME8    3         
      LAUNIT8    3   LADURA8    3   LADURB8    3   LACHRC8    3         
      LATIME9    3   LAUNIT9    3   LADURA9    3   LADURB9    3         
      LACHRC9    3   LATIME10   3   LAUNIT10   3   LADURA10   3         
      LADURB10   3   LACHRC10   3   LATIME11   3   LAUNIT11   3         
      LADURA11   3   LADURB11   3   LACHRC11   3   LATIME12   3         
      LAUNIT12   3   LADURA12   3   LADURB12   3   LACHRC12   3         
      LATIME13   3   LAUNIT13   3   LADURA13   3   LADURB13   3         
      LACHRC13   3   LATIME14   3   LAUNIT14   3   LADURA14   3         
      LADURB14   3   LACHRC14   3   LATIME15   3   LAUNIT15   3         
      LADURA15   3   LADURB15   3   LACHRC15   3   LATIME16   3         
      LAUNIT16   3   LADURA16   3   LADURB16   3   LACHRC16   3         
      LATIME17   3   LAUNIT17   3   LADURA17   3   LADURB17   3         
      LACHRC17   3   LATIME18   3   LAUNIT18   3   LADURA18   3         
      LADURB18   3   LACHRC18   3   LATIME19   3   LAUNIT19   3         
      LADURA19   3   LADURB19   3   LACHRC19   3   LATIME20   3         
      LAUNIT20   3   LADURA20   3   LADURB20   3   LACHRC20   3         
      LATIME21   3   LAUNIT21   3   LADURA21   3   LADURB21   3         
      LACHRC21   3   LATIME22   3   LAUNIT22   3   LADURA22   3         
      LADURB22   3   LACHRC22   3   LATIME23   3   LAUNIT23   3         
      LADURA23   3   LADURB23   3   LACHRC23   3   LATIME24   3         
      LAUNIT24   3   LADURA24   3   LADURB24   3   LACHRC24   3         
      LATIME25   3   LAUNIT25   3   LADURA25   3   LADURB25   3         
      LACHRC25   3   LATIME26   3   LAUNIT26   3   LADURA26   3         
      LADURB26   3   LACHRC26   3   LATIME27   3   LAUNIT27   3         
      LADURA27   3   LADURB27   3   LACHRC27   3   LATIME28   3         
      LAUNIT28   3   LADURA28   3   LADURB28   3   LACHRC28   3         
      LATIME29   3   LAUNIT29   3   LADURA29   3   LADURB29   3         
      LACHRC29   3   LATIME30   3   LAUNIT30   3   LADURA30   3         
      LADURB30   3   LACHRC30   3   LATIME31   3   LAUNIT31   3         
      LADURA31   3   LADURB31   3   LACHRC31   3   LATIME32   3         
      LAUNIT32   3   LADURA32   3   LADURB32   3   LACHRC32   3         
      LATIME33   3   LAUNIT33   3   LADURA33   3   LADURB33   3         
      LACHRC33   3   LATIME34   3   LAUNIT34   3   LADURA34   3         
      LADURB34   3   LACHRC34   3   LATIME90   3   LAUNIT90   3         
      LADURA90   3   LADURB90   3   LACHRC90   3   LATIME91   3         
      LAUNIT91   3   LADURA91   3   LADURB91   3   LACHRC91   3         
      LCONDRT    3   LACHRONR   3   PHSTAT     3                        
                                                                        
      PDMED12M   3   PNMED12M   3   PHOSPYR    3   HOSPNO     4         
      HPNITE     4   PHCHM2W    3   PHCHMN2W   3   PHCPH2WR   3         
      PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3   P10DVYR    3         
                                                                        
      HIKINDA    3   HIKINDB    3   HIKINDC    3   HIKINDD    3         
      HIKINDE    3   HIKINDF    3   HIKINDG    3   HIKINDH    3         
      HIKINDI    3   HIKINDJ    3   HIKINDK    3   HIKINDL    3         
      HIKINDM    3   HIKINDN    3   MEDICARE   3   MCPART     3         
      MCCHOICE   3   MCHMO      3   MCNAME     3   MCREF      3         
      MCPAYPRE   3   MEDICAID   3   MACHMD     3   MAPCMD     3         
      MAREF      3   SINGLE     3   SSTYPEA    3   SSTYPEB    3         
      SSTYPEC    3   SSTYPED    3   SSTYPEE    3   SSTYPEF    3         
      SSTYPEG    3   SSTYPEH    3   SSTYPEI    3   SSTYPEJ    3         
      SSTYPEK    3   SSTYPEL    3   PRIVATE    3   HITYPE1    3         
      WHONAM1    3   PLNWRK1    3   PLNPAY11   3   PLNPAY21   3         
      PLNPAY31   3   PLNPAY41   3   PLNPAY51   3   PLNPAY61   3         
      PLNPAY71   3   HICOSTR1   4   PLNMGD1    3   MGCHMD1    3         
      MGPRMD1    3   MGPYMD1    3   MGPREF1    3   HITYPE2    3         
      WHONAM2    3   PLNWRK2    3   PLNPAY12   3   PLNPAY22   3         
      PLNPAY32   3   PLNPAY42   3   PLNPAY52   3   PLNPAY62   3         
      PLNPAY72   3   HICOSTR2   4   PLNMGD2    3   MGCHMD2    3         
      MGPRMD2    3   MGPYMD2    3   MGPREF2    3   HITYPE3    3         
      WHONAM3    3   PLNWRK3    3   PLNPAY13   3   PLNPAY23   3         
      PLNPAY33   3   PLNPAY43   3   PLNPAY53   3   PLNPAY63   3         
      PLNPAY73   3   HICOSTR3   4   PLNMGD3    3   MGCHMD3    3         
      MGPRMD3    3   MGPYMD3    3   MGPREF3    3   HITYPE4    3         
      WHONAM4    3   PLNWRK4    3   PLNPAY14   3   PLNPAY24   3         
      PLNPAY34   3   PLNPAY44   3   PLNPAY54   3   PLNPAY64   3         
      PLNPAY74   3   HICOSTR4   4   PLNMGD4    3   MGCHMD4    3         
      MGPRMD4    3   MGPYMD4    3   MGPREF4    3   IHS        3         
      MILITARY   3   CHIP       3   OTHERPUB   3   OTHERGOV   3         
      NOTCOV     3   HILAST     3   HISTOP1    3   HISTOP2    3         
      HISTOP3    3   HISTOP4    3   HISTOP5    3   HISTOP6    3         
      HISTOP7    3   HISTOP8    3   HISTOP9    3   HISTOP10   3         
      HISTOP11   3   HISTOP12   3   HISTOP13   3   HISTOP14   3         
      HISTOP15   3   HINOTYR    3   HINOTMYR   3   HCSPFYR    3         
                                                                        
      REGIONBR   3   GEOBRTH    3   YRSINUS    3   CITIZENP   3         
      HEADST     3   HEADSTV1   3   EDUC       3   EDUC_R1    3         
      MILTRYDS   3   DOINGLW1   3   WHYNOWK1   3   WRKHRS     3         
      WRKFTALL   3   WRKLYR1    3   WRKMYR     3   MAJR_ACT   3         
      ERNYR_P    3   HIEMPOF    3                                       
                                                                        
      PSAL       3   PSEINC     3   PSSRR      3   PSSRRDB    3         
      PSSRRD     3   PPENS      3   POPENS     3   PSSI       3         
      PSSID      3   PTANF      3   POWBEN     3   PINTRSTR   3         
      PDIVD      3   PCHLDSP    3   PINCOT     3   INCGRP     3         
      AB_BL20K   3   RAT_CAT    3   HOUSEOWN   3   FGAH       3         
      PSSAPL     3   PSDAPL     3   TANFMYR    3   PFSTP      3         
      FSTPMYR    3   ELIGPWIC   3   PWIC       3   WIC_FLAG   3 ;       
                                                                        
   * INPUT ALL VARIABLES;                                               
                                                                        
   INPUT                                                                
      RECTYPE       1 -   2    SRVY_YR       3 -   6                    
      HHX      $    7 -  12    FMX      $   13 -  14                    
      PX       $   15 -  16    INTV_QRT     17 -  17                    
      SEX          18 -  18    AGE_P        19 -  20                    
      R_AGE1       21 -  21    R_AGE2       22 -  22                    
      DOB_M    $   23 -  24    DOB_Y_P  $   25 -  28                    
      ORIGIN_I     29 -  29    ORIGIMPT     30 -  30                    
      HISPAN_I     31 -  32    HISPIMPT     33 -  33                    
      RCDT1P_I     34 -  35    RC_SMP_I     36 -  37                    
      RACERP_I     38 -  39    RACEIMPT     40 -  40                    
      MRACRP_I     41 -  42    MRACBP_I     43 -  44                    
      RACREC_I     45 -  45    HISCOD_I     46 -  46                    
      ERIMPFLG     47 -  47    R_MARITL     48 -  48                    
      COHAB1       49 -  49    COHAB2       50 -  50                    
      LG_MSTAT     51 -  51    CDCMSTAT     52 -  52                    
      RRP          53 -  54    HH_REF   $   55 -  56                    
      HHREFLG  $   57 -  57    FRRP         58 -  59                    
      FM_REF   $   60 -  61    FMREFLG  $   62 -  62                    
      FM_RESP      63 -  64    FMRPFLG  $   65 -  65                    
      SIB_DEG      66 -  66    MOTHER   $   67 -  68                    
      MOM_DEG      69 -  69    FATHER   $   70 -  71                    
      DAD_DEG      72 -  72    GUARD    $   73 -  74                    
      PARENTS      75 -  75    MOM_ED       76 -  77                    
      DAD_ED       78 -  79    FM_SIZE      80 -  81                    
      FM_TYPE      82 -  82    FM_STRCP     83 -  84                    
      FM_STRP      85 -  86    NOWAF        87 -  87                    
      ASTATFLG     88 -  88    CSTATFLG     89 -  89                    
      IMMUNFLG     90 -  90    REGION       91 -  91                    
      WTIA         92 -  97 .1 WTFA         98 - 103                    
      STRATUM     104 - 106    PSU         107 - 107                    
                                                                        
      PLAPLYLM    108 - 108    PLAPLYUN    109 - 109                    
      PSPEDEIS    110 - 110    PSPEDEM     111 - 111                    
      PLAADL      112 - 112    LABATH      113 - 113                    
      LADRESS     114 - 114    LAEAT       115 - 115                    
      LABED       116 - 116    LATOILT     117 - 117                    
      LAHOME      118 - 118    PLAIADL     119 - 119                    
      PLAWKNOW    120 - 120    PLAWKLIM    121 - 121                    
      PLAWALK     122 - 122    PLAREMEM    123 - 123                    
      PLIMANY     124 - 124    LA1AR       125 - 125                    
      LAHCC1      126 - 126    LAHCC2      127 - 127                    
      LAHCC3      128 - 128    LAHCC4      129 - 129                    
      LAHCC5      130 - 130    LAHCC6      131 - 131                    
      LAHCC7      132 - 132    LAHCC8      133 - 133                    
      LAHCC9      134 - 134    LAHCC10     135 - 135                    
      LAHCC11     136 - 136    LAHCC12     137 - 137                    
      LAHCC13     138 - 138    LAHCC90     139 - 139                    
      LAHCC91     140 - 140    LCTIME1     141 - 142                    
      LCUNIT1     143 - 143    LCDURA1     144 - 145                    
      LCDURB1     146 - 146    LCCHRC1     147 - 147                    
      LCTIME2     148 - 149    LCUNIT2     150 - 150                    
      LCDURA2     151 - 152    LCDURB2     153 - 153                    
      LCCHRC2     154 - 154    LCTIME3     155 - 156                    
      LCUNIT3     157 - 157    LCDURA3     158 - 159                    
      LCDURB3     160 - 160    LCCHRC3     161 - 161                    
      LCTIME4     162 - 163    LCUNIT4     164 - 164                    
      LCDURA4     165 - 166    LCDURB4     167 - 167                    
      LCCHRC4     168 - 168    LCTIME5     169 - 170                    
      LCUNIT5     171 - 171    LCDURA5     172 - 173                    
      LCDURB5     174 - 174    LCCHRC5     175 - 175                    
      LCTIME6     176 - 177    LCUNIT6     178 - 178                    
      LCDURA6     179 - 180    LCDURB6     181 - 181                    
      LCCHRC6     182 - 182    LCTIME7     183 - 184                    
      LCUNIT7     185 - 185    LCDURA7     186 - 187                    
      LCDURB7     188 - 188    LCCHRC7     189 - 189                    
      LCTIME8     190 - 191    LCUNIT8     192 - 192                    
      LCDURA8     193 - 194    LCDURB8     195 - 195                    
      LCCHRC8     196 - 196    LCTIME9     197 - 198                    
      LCUNIT9     199 - 199    LCDURA9     200 - 201                    
      LCDURB9     202 - 202    LCCHRC9     203 - 203                    
      LCTIME10    204 - 205    LCUNIT10    206 - 206                    
      LCDURA10    207 - 208    LCDURB10    209 - 209                    
      LCCHRC10    210 - 210    LCTIME11    211 - 212                    
      LCUNIT11    213 - 213    LCDURA11    214 - 215                    
      LCDURB11    216 - 216    LCCHRC11    217 - 217                    
      LCTIME12    218 - 219    LCUNIT12    220 - 220                    
      LCDURA12    221 - 222    LCDURB12    223 - 223                    
      LCCHRC12    224 - 224    LCTIME13    225 - 226                    
      LCUNIT13    227 - 227    LCDURA13    228 - 229                    
      LCDURB13    230 - 230    LCCHRC13    231 - 231                    
      LCTIME90    232 - 233    LCUNIT90    234 - 234                    
      LCDURA90    235 - 236    LCDURB90    237 - 237                    
      LCCHRC90    238 - 238    LCTIME91    239 - 240                    
      LCUNIT91    241 - 241    LCDURA91    242 - 243                    
      LCDURB91    244 - 244    LCCHRC91    245 - 245                    
      LAHCA1      246 - 246    LAHCA2      247 - 247                    
      LAHCA3      248 - 248    LAHCA4      249 - 249                    
      LAHCA5      250 - 250    LAHCA6      251 - 251                    
      LAHCA7      252 - 252    LAHCA8      253 - 253                    
      LAHCA9      254 - 254    LAHCA10     255 - 255                    
      LAHCA11     256 - 256    LAHCA12     257 - 257                    
      LAHCA13     258 - 258    LAHCA14     259 - 259                    
      LAHCA15     260 - 260    LAHCA16     261 - 261                    
      LAHCA17     262 - 262    LAHCA18     263 - 263                    
      LAHCA19     264 - 264    LAHCA20     265 - 265                    
      LAHCA21     266 - 266    LAHCA22     267 - 267                    
      LAHCA23     268 - 268    LAHCA24     269 - 269                    
      LAHCA25     270 - 270    LAHCA26     271 - 271                    
      LAHCA27     272 - 272    LAHCA28     273 - 273                    
      LAHCA29     274 - 274    LAHCA30     275 - 275                    
      LAHCA31     276 - 276    LAHCA32     277 - 277                    
      LAHCA33     278 - 278    LAHCA34     279 - 279                    
      LAHCA90     280 - 280    LAHCA91     281 - 281                    
      LATIME1     282 - 283    LAUNIT1     284 - 284                    
      LADURA1     285 - 286    LADURB1     287 - 287                    
      LACHRC1     288 - 288    LATIME2     289 - 290                    
      LAUNIT2     291 - 291    LADURA2     292 - 293                    
      LADURB2     294 - 294    LACHRC2     295 - 295                    
      LATIME3     296 - 297    LAUNIT3     298 - 298                    
      LADURA3     299 - 300    LADURB3     301 - 301                    
      LACHRC3     302 - 302    LATIME4     303 - 304                    
      LAUNIT4     305 - 305    LADURA4     306 - 307                    
      LADURB4     308 - 308    LACHRC4     309 - 309                    
      LATIME5     310 - 311    LAUNIT5     312 - 312                    
      LADURA5     313 - 314    LADURB5     315 - 315                    
      LACHRC5     316 - 316    LATIME6     317 - 318                    
      LAUNIT6     319 - 319    LADURA6     320 - 321                    
      LADURB6     322 - 322    LACHRC6     323 - 323                    
      LATIME7     324 - 325    LAUNIT7     326 - 326                    
      LADURA7     327 - 328    LADURB7     329 - 329                    
      LACHRC7     330 - 330    LATIME8     331 - 332                    
      LAUNIT8     333 - 333    LADURA8     334 - 335                    
      LADURB8     336 - 336    LACHRC8     337 - 337                    
      LATIME9     338 - 339    LAUNIT9     340 - 340                    
      LADURA9     341 - 342    LADURB9     343 - 343                    
      LACHRC9     344 - 344    LATIME10    345 - 346                    
      LAUNIT10    347 - 347    LADURA10    348 - 349                    
      LADURB10    350 - 350    LACHRC10    351 - 351                    
      LATIME11    352 - 353    LAUNIT11    354 - 354                    
      LADURA11    355 - 356    LADURB11    357 - 357                    
      LACHRC11    358 - 358    LATIME12    359 - 360                    
      LAUNIT12    361 - 361    LADURA12    362 - 363                    
      LADURB12    364 - 364    LACHRC12    365 - 365                    
      LATIME13    366 - 367    LAUNIT13    368 - 368                    
      LADURA13    369 - 370    LADURB13    371 - 371                    
      LACHRC13    372 - 372    LATIME14    373 - 374                    
      LAUNIT14    375 - 375    LADURA14    376 - 377                    
      LADURB14    378 - 378    LACHRC14    379 - 379                    
      LATIME15    380 - 381    LAUNIT15    382 - 382                    
      LADURA15    383 - 384    LADURB15    385 - 385                    
      LACHRC15    386 - 386    LATIME16    387 - 388                    
      LAUNIT16    389 - 389    LADURA16    390 - 391                    
      LADURB16    392 - 392    LACHRC16    393 - 393                    
      LATIME17    394 - 395    LAUNIT17    396 - 396                    
      LADURA17    397 - 398    LADURB17    399 - 399                    
      LACHRC17    400 - 400    LATIME18    401 - 402                    
      LAUNIT18    403 - 403    LADURA18    404 - 405                    
      LADURB18    406 - 406    LACHRC18    407 - 407                    
      LATIME19    408 - 409    LAUNIT19    410 - 410                    
      LADURA19    411 - 412    LADURB19    413 - 413                    
      LACHRC19    414 - 414    LATIME20    415 - 416                    
      LAUNIT20    417 - 417    LADURA20    418 - 419                    
      LADURB20    420 - 420    LACHRC20    421 - 421                    
      LATIME21    422 - 423    LAUNIT21    424 - 424                    
      LADURA21    425 - 426    LADURB21    427 - 427                    
      LACHRC21    428 - 428    LATIME22    429 - 430                    
      LAUNIT22    431 - 431    LADURA22    432 - 433                    
      LADURB22    434 - 434    LACHRC22    435 - 435                    
      LATIME23    436 - 437    LAUNIT23    438 - 438                    
      LADURA23    439 - 440    LADURB23    441 - 441                    
      LACHRC23    442 - 442    LATIME24    443 - 444                    
      LAUNIT24    445 - 445    LADURA24    446 - 447                    
      LADURB24    448 - 448    LACHRC24    449 - 449                    
      LATIME25    450 - 451    LAUNIT25    452 - 452                    
      LADURA25    453 - 454    LADURB25    455 - 455                    
      LACHRC25    456 - 456    LATIME26    457 - 458                    
      LAUNIT26    459 - 459    LADURA26    460 - 461                    
      LADURB26    462 - 462    LACHRC26    463 - 463                    
      LATIME27    464 - 465    LAUNIT27    466 - 466                    
      LADURA27    467 - 468    LADURB27    469 - 469                    
      LACHRC27    470 - 470    LATIME28    471 - 472                    
      LAUNIT28    473 - 473    LADURA28    474 - 475                    
      LADURB28    476 - 476    LACHRC28    477 - 477                    
      LATIME29    478 - 479    LAUNIT29    480 - 480                    
      LADURA29    481 - 482    LADURB29    483 - 483                    
      LACHRC29    484 - 484    LATIME30    485 - 486                    
      LAUNIT30    487 - 487    LADURA30    488 - 489                    
      LADURB30    490 - 490    LACHRC30    491 - 491                    
      LATIME31    492 - 493    LAUNIT31    494 - 494                    
      LADURA31    495 - 496    LADURB31    497 - 497                    
      LACHRC31    498 - 498    LATIME32    499 - 500                    
      LAUNIT32    501 - 501    LADURA32    502 - 503                    
      LADURB32    504 - 504    LACHRC32    505 - 505                    
      LATIME33    506 - 507    LAUNIT33    508 - 508                    
      LADURA33    509 - 510    LADURB33    511 - 511                    
      LACHRC33    512 - 512    LATIME34    513 - 514                    
      LAUNIT34    515 - 515    LADURA34    516 - 517                    
      LADURB34    518 - 518    LACHRC34    519 - 519                    
      LATIME90    520 - 521    LAUNIT90    522 - 522                    
      LADURA90    523 - 524    LADURB90    525 - 525                    
      LACHRC90    526 - 526    LATIME91    527 - 528                    
      LAUNIT91    529 - 529    LADURA91    530 - 531                    
      LADURB91    532 - 532    LACHRC91    533 - 533                    
      LCONDRT     534 - 534    LACHRONR    535 - 535                    
      PHSTAT      536 - 536                                             
                                                                        
      PDMED12M    537 - 537    PNMED12M    538 - 538                    
      PHOSPYR     539 - 539    HOSPNO      540 - 542                    
      HPNITE      543 - 545    PHCHM2W     546 - 546                    
      PHCHMN2W    547 - 548    PHCPH2WR    549 - 549                    
      PHCPHN2W    550 - 551    PHCDV2W     552 - 552                    
      PHCDVN2W    553 - 554    P10DVYR     555 - 555                    
                                                                        
      HIKINDA     556 - 556    HIKINDB     557 - 557                    
      HIKINDC     558 - 558    HIKINDD     559 - 559                    
      HIKINDE     560 - 560    HIKINDF     561 - 561                    
      HIKINDG     562 - 562    HIKINDH     563 - 563                    
      HIKINDI     564 - 564    HIKINDJ     565 - 565                    
      HIKINDK     566 - 566    HIKINDL     567 - 567                    
      HIKINDM     568 - 568    HIKINDN     569 - 569                    
      MEDICARE    570 - 570    MCPART      571 - 571                    
      MCCHOICE    572 - 572    MCHMO       573 - 573                    
      MCNAME      574 - 575    MCREF       576 - 576                    
      MCPAYPRE    577 - 577    MEDICAID    578 - 578                    
      MACHMD      579 - 579    MAPCMD      580 - 580                    
      MAREF       581 - 581    SINGLE      582 - 582                    
      SSTYPEA     583 - 583    SSTYPEB     584 - 584                    
      SSTYPEC     585 - 585    SSTYPED     586 - 586                    
      SSTYPEE     587 - 587    SSTYPEF     588 - 588                    
      SSTYPEG     589 - 589    SSTYPEH     590 - 590                    
      SSTYPEI     591 - 591    SSTYPEJ     592 - 592                    
      SSTYPEK     593 - 593    SSTYPEL     594 - 594                    
      PRIVATE     595 - 595    HITYPE1     596 - 597                    
      WHONAM1     598 - 598    PLNWRK1     599 - 599                    
      PLNPAY11    600 - 600    PLNPAY21    601 - 601                    
      PLNPAY31    602 - 602    PLNPAY41    603 - 603                    
      PLNPAY51    604 - 604    PLNPAY61    605 - 605                    
      PLNPAY71    606 - 606    HICOSTR1    607 - 611                    
      PLNMGD1     612 - 612    MGCHMD1     613 - 613                    
      MGPRMD1     614 - 614    MGPYMD1     615 - 615                    
      MGPREF1     616 - 616    HITYPE2     617 - 618                    
      WHONAM2     619 - 619    PLNWRK2     620 - 620                    
      PLNPAY12    621 - 621    PLNPAY22    622 - 622                    
      PLNPAY32    623 - 623    PLNPAY42    624 - 624                    
      PLNPAY52    625 - 625    PLNPAY62    626 - 626                    
      PLNPAY72    627 - 627    HICOSTR2    628 - 632                    
      PLNMGD2     633 - 633    MGCHMD2     634 - 634                    
      MGPRMD2     635 - 635    MGPYMD2     636 - 636                    
      MGPREF2     637 - 637    HITYPE3     638 - 639                    
      WHONAM3     640 - 640    PLNWRK3     641 - 641                    
      PLNPAY13    642 - 642    PLNPAY23    643 - 643                    
      PLNPAY33    644 - 644    PLNPAY43    645 - 645                    
      PLNPAY53    646 - 646    PLNPAY63    647 - 647                    
      PLNPAY73    648 - 648    HICOSTR3    649 - 653                    
      PLNMGD3     654 - 654    MGCHMD3     655 - 655                    
      MGPRMD3     656 - 656    MGPYMD3     657 - 657                    
      MGPREF3     658 - 658    HITYPE4     659 - 660                    
      WHONAM4     661 - 661    PLNWRK4     662 - 662                    
      PLNPAY14    663 - 663    PLNPAY24    664 - 664                    
      PLNPAY34    665 - 665    PLNPAY44    666 - 666                    
      PLNPAY54    667 - 667    PLNPAY64    668 - 668                    
      PLNPAY74    669 - 669    HICOSTR4    670 - 674                    
      PLNMGD4     675 - 675    MGCHMD4     676 - 676                    
      MGPRMD4     677 - 677    MGPYMD4     678 - 678                    
      MGPREF4     679 - 679    IHS         680 - 680                    
      MILITARY    681 - 681    CHIP        682 - 682                    
      OTHERPUB    683 - 683    OTHERGOV    684 - 684                    
      NOTCOV      685 - 685    HILAST      686 - 686                    
      HISTOP1     687 - 687    HISTOP2     688 - 688                    
      HISTOP3     689 - 689    HISTOP4     690 - 690                    
      HISTOP5     691 - 691    HISTOP6     692 - 692                    
      HISTOP7     693 - 693    HISTOP8     694 - 694                    
      HISTOP9     695 - 695    HISTOP10    696 - 696                    
      HISTOP11    697 - 697    HISTOP12    698 - 698                    
      HISTOP13    699 - 699    HISTOP14    700 - 700                    
      HISTOP15    701 - 701    HINOTYR     702 - 702                    
      HINOTMYR    703 - 704    HCSPFYR     705 - 705                    
                                                                        
      REGIONBR    706 - 707    GEOBRTH     708 - 708                    
      YRSINUS     709 - 709    CITIZENP    710 - 710                    
      HEADST      711 - 711    HEADSTV1    712 - 712                    
      EDUC        713 - 714    EDUC_R1     715 - 716                    
      MILTRYDS    717 - 717    DOINGLW1    718 - 718                    
      WHYNOWK1    719 - 720    WRKHRS      721 - 722                    
      WRKFTALL    723 - 723    WRKLYR1     724 - 724                    
      WRKMYR      725 - 726    MAJR_ACT    727 - 727                    
      ERNYR_P     728 - 729    HIEMPOF     730 - 730                    
                                                                        
      PSAL        731 - 731    PSEINC      732 - 732                    
      PSSRR       733 - 733    PSSRRDB     734 - 734                    
      PSSRRD      735 - 735    PPENS       736 - 736                    
      POPENS      737 - 737    PSSI        738 - 738                    
      PSSID       739 - 739    PTANF       740 - 740                    
      POWBEN      741 - 741    PINTRSTR    742 - 742                    
      PDIVD       743 - 743    PCHLDSP     744 - 744                    
      PINCOT      745 - 745    INCGRP      746 - 747                    
      AB_BL20K    748 - 748    RAT_CAT     749 - 750                    
      HOUSEOWN    751 - 751    FGAH        752 - 752                    
      PSSAPL      753 - 753    PSDAPL      754 - 754                    
      TANFMYR     755 - 756    PFSTP       757 - 757                    
      FSTPMYR     758 - 759    ELIGPWIC    760 - 760                    
      PWIC        761 - 761    WIC_FLAG    762 - 762;                   
                                                                        
   * DEFINE VARIABLE LABELS;                                            
                                                                        
   LABEL                                                                
      RECTYPE  ="Record Type"                                           
      SRVY_YR  ="Survey Year"                                           
      HHX      ="Household Serial Number"                               
      FMX      ="Family Serial Number"                                  
      PX       ="Person Number"                                         
      INTV_QRT ="Interview Quarter"                                     
      SEX      ="Sex"                                                   
      AGE_P    ="Age"                                                   
      R_AGE1   ="Age Recode #1"                                         
      R_AGE2   ="Age Recode #2"                                         
      DOB_M    ="Month of Birth"                                        
      DOB_Y_P  ="Year of Birth"                                         
      ORIGIN_I ="Hispanic Ethnicity"                                    
      ORIGIMPT ="Hispanic Origin Imputation Flag"                       
      HISPAN_I ="Hispanic subgroup detail"                              
      HISPIMPT ="Type of Hispanic Origin Imputation Flag"               
      RCDT1P_I ="Race coded to single/multiple race group"              
      RC_SMP_I ="Summary for single/multiple race groups"               
      RACERP_I ="OMB groups w/multiple race"                            
      RACEIMPT ="Race Imputation Flag"                                  
      MRACRP_I ="Race coded to a single race group"                     
      MRACBP_I ="Race coded to a single race group"                     
      RACREC_I ="Race Recode"                                           
      HISCOD_I ="Combined race/ethnicity recode"                        
      ERIMPFLG ="Ethnicity/Race Imputation Flag"                        
      R_MARITL ="Marital status"                                        
      COHAB1   ="Cohabitor ever married?"                               
      COHAB2   ="Legal marital status/cohab. respondent"                
      LG_MSTAT ="Legal marital status"                                  
      CDCMSTAT ="CDC standard for legal marital status"                 
      RRP      ="Relationship to HH reference person"                   
      HH_REF   ="Person # of HH reference person"                       
      HHREFLG  ="HH Reference Person Flag"                              
      FRRP     ="Rel to family ref person"                              
      FM_REF   ="Person # of family reference person"                   
      FMREFLG  ="Family Reference Person Flag"                          
      FM_RESP  ="Person # of family respondent"                         
      FMRPFLG  ="Family Respondent Flag"                                
      SIB_DEG  ="Degree of sib rel to HH ref person"                    
      MOTHER   ="Mother's person number"                                
      MOM_DEG  ="Type of relationship with Mother"                      
      FATHER   ="Father's person number"                                
      DAD_DEG  ="Type of relationship with Father"                      
      GUARD    ="Person number of guardian"                             
      PARENTS  ="Parent(s) present in the family"                       
      MOM_ED   ="Education of Mother"                                   
      DAD_ED   ="Education of Father"                                   
      FM_SIZE  ="Number of persons in family"                           
      FM_TYPE  ="Family Type (on the person-level)"                     
      FM_STRCP ="Family Structure (at the person-level)"                
      FM_STRP  ="Family Structure (on the person-level)"                
      NOWAF    ="Armed Forces - active duty"                            
      ASTATFLG ="Sample Adult Flag"                                     
      CSTATFLG ="Sample Child Flag"                                     
      IMMUNFLG ="Child Immunization Flag"                               
      REGION   ="Region"                                                
      WTIA     ="Weight - Interim Annual"                               
      WTFA     ="Weight - Final Annual"                                 
      STRATUM  ="Stratum for variance estimation"                       
      PSU      ="PSU for variance estimation"                           
                                                                        
      PLAPLYLM ="Limited in kind/amount play"                           
      PLAPLYUN ="Is -- able to play AT ALL"                             
      PSPEDEIS ="Does -- receive Spec Ed or EIS"                        
      PSPEDEM  ="Rec services due to emot or behav prob"                
      PLAADL   ="Does -- need help w/ADL"                               
      LABATH   ="Need help with bath/shower"                            
      LADRESS  ="Need help dressing"                                    
      LAEAT    ="Need help eating"                                      
      LABED    ="Need help in/out of bed or chairs"                     
      LATOILT  ="Need help using the toilet"                            
      LAHOME   ="Need help getting around in home"                      
      PLAIADL  ="Need help with IADL"                                   
      PLAWKNOW ="Is -- unable to work due to health prob"               
      PLAWKLIM ="Limited in kind/amt of work"                           
      PLAWALK  ="Difficulty walking w/o equip"                          
      PLAREMEM ="Limited by dif remembering"                            
      PLIMANY  ="Is -- limited in ANY (other) WAY?"                     
      LA1AR    ="Any limitation - all persons, all conds"               
      LAHCC1   ="Vision problem"                                        
      LAHCC2   ="Hearing problem"                                       
      LAHCC3   ="Speech problem"                                        
      LAHCC4   ="Asthma/breathing problem"                              
      LAHCC5   ="Birth defect"                                          
      LAHCC6   ="Injury"                                                
      LAHCC7   ="Mental retardation"                                    
      LAHCC8   ="Other developmental problem"                           
      LAHCC9   ="Other emotional/behavioral problem"                    
      LAHCC10  ="Bone/joint/muscle problem"                             
      LAHCC11  ="Epilepsy/seizures"                                     
      LAHCC12  ="Learning disability"                                   
      LAHCC13  ="ADD/ADHD"                                              
      LAHCC90  ="Other impairment/problem (1)"                          
      LAHCC91  ="Other impairment/problem (2)"                          
      LCTIME1  ="Duration of vision prob: # of units"                   
      LCUNIT1  ="Duration of vision prob: Time unit"                    
      LCDURA1  ="Duration of vision prob (in years)"                    
      LCDURB1  ="Duration of vision prob recode 2"                      
      LCCHRC1  ="Vision problem condition status"                       
      LCTIME2  ="Duration of hearing prob: # of units"                  
      LCUNIT2  ="Duration of hearing prob: Time unit"                   
      LCDURA2  ="Duration of hearing prob (in years)"                   
      LCDURB2  ="Duration of hearing prob recode 2"                     
      LCCHRC2  ="Hearing problem condition status"                      
      LCTIME3  ="Duration of speech prob: # of units"                   
      LCUNIT3  ="Duration of speech prob: Time unit"                    
      LCDURA3  ="Duration of speech prob (in years)"                    
      LCDURB3  ="Duration of speech prob recode 2"                      
      LCCHRC3  ="Speech problem condition status"                       
      LCTIME4  ="Dur of asthma/breathing prob: # of units"              
      LCUNIT4  ="Dur of asthma/breathing prob: Time unit"               
      LCDURA4  ="Dur of asthma/breathing prob (in years)"               
      LCDURB4  ="Dur of asthma/breathing prob recode 2"                 
      LCCHRC4  ="Asthma/breathing prob condition status"                
      LCTIME5  ="Duration of birth defect: # of units"                  
      LCUNIT5  ="Duration of birth defect: Time unit"                   
      LCDURA5  ="Duration of birth defect (in years)"                   
      LCDURB5  ="Duration of birth defect recode 2"                     
      LCCHRC5  ="Birth defect condition status"                         
      LCTIME6  ="Duration of injury: # of units"                        
      LCUNIT6  ="Duration of injury: Time unit"                         
      LCDURA6  ="Duration of injury (in years)"                         
      LCDURB6  ="Duration of injury recode 2"                           
      LCCHRC6  ="Injury condition status"                               
      LCTIME7  ="Dur of mental retardation: # of units"                 
      LCUNIT7  ="Dur of mental retardation: Time unit"                  
      LCDURA7  ="Dur of mental retardation (in years)"                  
      LCDURB7  ="Duration of mental retardation recode 2"               
      LCCHRC7  ="Mental retardation condition status"                   
      LCTIME8  ="Duration of other dev prob: # of units"                
      LCUNIT8  ="Duration of other dev prob: Time unit"                 
      LCDURA8  ="Duration of other dev prob (in years)"                 
      LCDURB8  ="Duration of other dev prob recode 2"                   
      LCCHRC8  ="Other dev problem condition status"                    
      LCTIME9  ="Dur of otr emot/behav prob: # of units"                
      LCUNIT9  ="Dur of otr emot/behav prob: Time unit"                 
      LCDURA9  ="Dur of otr emot/behav prob (in years)"                 
      LCDURB9  ="Duration of otr emot/behav prob recode 2"              
      LCCHRC9  ="Otr emot/behav problem condition status"               
      LCTIME10 ="Dur of bone/joint/muscl prob: # of units"              
      LCUNIT10 ="Dur of bone/joint/muscl prob: Time unit"               
      LCDURA10 ="Dur of bone/joint/muscl prob (in years)"               
      LCDURB10 ="Dur of bone/joint/muscl prob recode 2"                 
      LCCHRC10 ="Bone/joint/muscl prob condition status"                
      LCTIME11 ="Dur of epilepsy/seizures: # of units"                  
      LCUNIT11 ="Duration of epilepsy/seizures: Time unit"              
      LCDURA11 ="Duration of epilepsy/seizures (in years)"              
      LCDURB11 ="Duration of epilepsy/seizures recode 2"                
      LCCHRC11 ="Epilepsy/seizures condition status"                    
      LCTIME12 ="Dur of learning disability: # of units"                
      LCUNIT12 ="Dur of learning disability: Time unit"                 
      LCDURA12 ="Dur of learning disability (in years)"                 
      LCDURB12 ="Duration of learning disability recode 2"              
      LCCHRC12 ="Learning disability condition status"                  
      LCTIME13 ="Duration of ADD/ADHD: # of units"                      
      LCUNIT13 ="Duration of ADD/ADHD: Time unit"                       
      LCDURA13 ="Duration of ADD/ADHD (in years)"                       
      LCDURB13 ="Duration of ADD/ADHD recode 2"                         
      LCCHRC13 ="ADD/ADHD condition status"                             
      LCTIME90 ="Dur of oth impair/prob (1): # of units"                
      LCUNIT90 ="Dur of oth impair/prob (1): Time unit"                 
      LCDURA90 ="Dur of oth impair/prob (1) (in years)"                 
      LCDURB90 ="Dur of oth impair/prob (1) recode 2"                   
      LCCHRC90 ="Other impair/prob (1) condition status"                
      LCTIME91 ="Dur of oth impair/prob (2): # of units"                
      LCUNIT91 ="Dur of oth impair/prob (2): Time unit"                 
      LCDURA91 ="Dur of oth impair/prob (2) (in years)"                 
      LCDURB91 ="Dur of oth impair/prob (2) recode 2"                   
      LCCHRC91 ="Other impair/prob (2) condition status"                
      LAHCA1   ="Vision problem"                                        
      LAHCA2   ="Hearing problem"                                       
      LAHCA3   ="Arthritis/rheumatism"                                  
      LAHCA4   ="Back/neck problem"                                     
      LAHCA5   ="Fracture/bone/joint injury"                            
      LAHCA6   ="Other injury"                                          
      LAHCA7   ="Heart problem"                                         
      LAHCA8   ="Stroke"                                                
      LAHCA9   ="Hypertension/high blood pressure"                      
      LAHCA10  ="Diabetes"                                              
      LAHCA11  ="Lung/breathing prob/asthma/emphysema"                  
      LAHCA12  ="Cancer"                                                
      LAHCA13  ="Birth defect"                                          
      LAHCA14  ="Mental retardation"                                    
      LAHCA15  ="Otr developmental prob/cerebral palsy"                 
      LAHCA16  ="Senility/dementia/alzheimers"                          
      LAHCA17  ="Depression/anxiety/emotional problem"                  
      LAHCA18  ="Weight problem/overweight/obesity"                     
      LAHCA19  ="Missing or amputated limb/finger/digit"                
      LAHCA20  ="Musculoskeletal/connective tissue prob"                
      LAHCA21  ="Circulation problem"                                   
      LAHCA22  ="Endocrine/nutritional/metabolic prob"                  
      LAHCA23  ="Nervous system/sensory organ condition"                
      LAHCA24  ="Digestive system problem"                              
      LAHCA25  ="Genitourinary system problem"                          
      LAHCA26  ="Skin/subcutaneous system problem"                      
      LAHCA27  ="Blood or blood-forming organ problem"                  
      LAHCA28  ="Benign tumor/cyst"                                     
      LAHCA29  ="Alcohol/drug/substance abuse problem"                  
      LAHCA30  ="Otr mental prob/ADD/bipolar/schizophreni"              
      LAHCA31  ="Surgical after-effects/medical treatment"              
      LAHCA32  ='"Old age"/elderly/aging-related problem'               
      LAHCA33  ="Fatigue/tiredness/weakness"                            
      LAHCA34  ="Pregnancy-related problem"                             
      LAHCA90  ="Other prob 1, not elsewhere classified"                
      LAHCA91  ="Other prob 2, not elsewhere classified"                
      LATIME1  ="Duration of vision prob: # of units"                   
      LAUNIT1  ="Duration of vision prob: Time unit"                    
      LADURA1  ="Duration of vision prob (in years)"                    
      LADURB1  ="Duration of vision prob recode 2"                      
      LACHRC1  ="Vision problem condition status"                       
      LATIME2  ="Duration of hearing prob: # of units"                  
      LAUNIT2  ="Duration of hearing prob: Time unit"                   
      LADURA2  ="Duration of hearing prob (in years)"                   
      LADURB2  ="Duration of hearing prob recode 2"                     
      LACHRC2  ="hearing problem condition status"                      
      LATIME3  ="Duration of arthritis/rheum: # of units"               
      LAUNIT3  ="Duration of arthritis/rheum: Time unit"                
      LADURA3  ="Duration of arthritis/rheum (in years)"                
      LADURB3  ="Duration of arthritis/rheum recode 2"                  
      LACHRC3  ="Arthritis/rheum condition status"                      
      LATIME4  ="Duration of back/neck prob: # of units"                
      LAUNIT4  ="Duration of back/neck prob: Time unit"                 
      LADURA4  ="Duration of back/neck prob (in years)"                 
      LADURB4  ="Duration of back/neck prob recode 2"                   
      LACHRC4  ="Back/neck problem condition status"                    
      LATIME5  ="Dur of fract/bone/joint inj: # of units"               
      LAUNIT5  ="Dur of fract/bone/joint inj: Time unit"                
      LADURA5  ="Dur of fract/bone/joint inj (in years)"                
      LADURB5  ="Dur of fract/bone/joint inj recode 2"                  
      LACHRC5  ="Fract/bone/joint inj condition status"                 
      LATIME6  ="Duration of other injury: # of units"                  
      LAUNIT6  ="Duration of other injury: Time unit"                   
      LADURA6  ="Duration of other injury (in years)"                   
      LADURB6  ="Duration of other injury recode 2"                     
      LACHRC6  ="Other injury condition status"                         
      LATIME7  ="Duration of heart prob: # of units"                    
      LAUNIT7  ="Duration of heart prob: Time unit"                     
      LADURA7  ="Duration of heart prob (in years)"                     
      LADURB7  ="Duration of heart prob recode 2"                       
      LACHRC7  ="Heart problem condition status"                        
      LATIME8  ="Duration of stroke: # of units"                        
      LAUNIT8  ="Duration of stroke: Time unit"                         
      LADURA8  ="Duration of stroke (in years)"                         
      LADURB8  ="Duration of stroke recode 2"                           
      LACHRC8  ="Stroke condition status"                               
      LATIME9  ="Duration of hypertension: # of units"                  
      LAUNIT9  ="Duration of hypertension: Time unit"                   
      LADURA9  ="Duration of hypertension (in years)"                   
      LADURB9  ="Duration of hypertension recode 2"                     
      LACHRC9  ="Hypertension condition status"                         
      LATIME10 ="Duration of diabetes: # of units"                      
      LAUNIT10 ="Duration of diabetes: Time unit"                       
      LADURA10 ="Duration of diabetes (in years)"                       
      LADURB10 ="Duration of diabetes recode 2"                         
      LACHRC10 ="Diabetes condition status"                             
      LATIME11 ="Duration of lung/breath prob: # of units"              
      LAUNIT11 ="Duration of lung/breath prob: Time unit"               
      LADURA11 ="Duration of lung/breath prob (in years)"               
      LADURB11 ="Duration of lung/breath prob recode 2"                 
      LACHRC11 ="Lung/breath prob condition status"                     
      LATIME12 ="Duration of cancer: # of units"                        
      LAUNIT12 ="Duration of cancer: Time unit"                         
      LADURA12 ="Duration of cancer (in years)"                         
      LADURB12 ="Duration of cancer recode 2"                           
      LACHRC12 ="Cancer condition status"                               
      LATIME13 ="Duration of birth defect: # of units"                  
      LAUNIT13 ="Duration of birth defect: Time unit"                   
      LADURA13 ="Duration of birth defect (in years)"                   
      LADURB13 ="Duration of birth defect recode 2"                     
      LACHRC13 ="Birth defect condition status"                         
      LATIME14 ="Dur of mental retardation: # of units"                 
      LAUNIT14 ="Dur of mental retardation: Time unit"                  
      LADURA14 ="Dur of mental retardation (in years)"                  
      LADURB14 ="Duration of mental retardation recode 2"               
      LACHRC14 ="Mental retardation condition status"                   
      LATIME15 ="Duration of otr dev prob: # of units"                  
      LAUNIT15 ="Duration of otr dev prob: Time unit"                   
      LADURA15 ="Duration of otr dev prob (in years)"                   
      LADURB15 ="Duration of otr dev prob recode 2"                     
      LACHRC15 ="Otr dev problem condition status"                      
      LATIME16 ="Duration of senility: # of units"                      
      LAUNIT16 ="Duration of senility: Time unit"                       
      LADURA16 ="Duration of senility (in years)"                       
      LADURB16 ="Duration of senility recode 2"                         
      LACHRC16 ="Senility condition status"                             
      LATIME17 ="Dur of dep/anx/emot prob: # of units"                  
      LAUNIT17 ="Duration of dep/anx/emot prob: Time unit"              
      LADURA17 ="Duration of dep/anx/emot prob (in years)"              
      LADURB17 ="Duration of dep/anx/emot prob recode 2"                
      LACHRC17 ="Dep/anx/emot problem condition status"                 
      LATIME18 ="Duration of weight prob: # of units"                   
      LAUNIT18 ="Duration of weight prob: Time unit"                    
      LADURA18 ="Duration of weight prob (in years)"                    
      LADURB18 ="Duration of weight prob recode 2"                      
      LACHRC18 ="Weight problem condition status"                       
      LATIME19 ="Dur of miss limb/amputation: # of units"               
      LAUNIT19 ="Dur of miss limb/amputation: Time unit"                
      LADURA19 ="Dur of miss limb/amputation (in years)"                
      LADURB19 ="Dur of miss limb/amputation recode 2"                  
      LACHRC19 ="Missing limb/amputation condition status"              
      LATIME20 ="Dur of musculoskeletal prob: # of units"               
      LAUNIT20 ="Dur of musculoskeletal prob: Time unit"                
      LADURA20 ="Dur of musculoskeletal prob: (in years)"               
      LADURB20 ="Dur of musculoskeletal prob recode 2"                  
      LACHRC20 ="Musculoskeletal problem condition status"              
      LATIME21 ="Duration of circulatory prob: # of units"              
      LAUNIT21 ="Duration of circulatory prob: Time unit"               
      LADURA21 ="Duration of circulatory prob (in years)"               
      LADURB21 ="Duration of circulatory prob recode 2"                 
      LACHRC21 ="Circulatory problem condition status"                  
      LATIME22 ="Duration of endocrine prob: # of units"                
      LAUNIT22 ="Duration of endocrine problem: Time unit"              
      LADURA22 ="Duration of endocrine problem (in years)"              
      LADURB22 ="Duration of endocrine problem recode 2"                
      LACHRC22 ="Endocrine problem condition status"                    
      LATIME23 ="Duration of nervous sys cond: # of units"              
      LAUNIT23 ="Duration of nervous sys cond: Time unit"               
      LADURA23 ="Duration of nervous sys cond (in years)"               
      LADURB23 ="Duration of nervous sys cond recode 2"                 
      LACHRC23 ="Nervous sys condition status"                          
      LATIME24 ="Dur of digestive prob: # of units"                     
      LAUNIT24 ="Dur of digestive prob: Time unit"                      
      LADURA24 ="Dur of digestive prob (in years)"                      
      LADURB24 ="Duration of digestive prob recode 2"                   
      LACHRC24 ="Digestive problem condition status"                    
      LATIME25 ="Dur of genitourinary prob: # of units"                 
      LAUNIT25 ="Dur of genitourinary prob: Time unit"                  
      LADURA25 ="Dur of genitourinary prob (in years)"                  
      LADURB25 ="Duration of genitourinary prob recode 2"               
      LACHRC25 ="Genitourinary prob condition status"                   
      LATIME26 ="Duration of skin problem: # of units"                  
      LAUNIT26 ="Duration of skin problem: Time unit"                   
      LADURA26 ="Duration of skin problem (in years)"                   
      LADURB26 ="Duration of skin problem recode 2"                     
      LACHRC26 ="Skin problem condition status"                         
      LATIME27 ="Duration of blood problem: # of units"                 
      LAUNIT27 ="Duration of blood problem: Time unit"                  
      LADURA27 ="Duration of blood problem (in years)"                  
      LADURB27 ="Blood problem recode 2"                                
      LACHRC27 ="Blood problem condition status"                        
      LATIME28 ="Duration of benign tumor: # of units"                  
      LAUNIT28 ="Duration of benign tumor: Time unit"                   
      LADURA28 ="Duration of benign tumor (in years)"                   
      LADURB28 ="Duration of benign tumor recode 2"                     
      LACHRC28 ="Benign tumor condition status"                         
      LATIME29 ="Dur of alcohol/drug prob: # of units"                  
      LAUNIT29 ="Duration of alcohol/drug prob: Time unit"              
      LADURA29 ="Duration of alcohol/drug prob (in years)"              
      LADURB29 ="Duration of alcohol/drug prob recode 2"                
      LACHRC29 ="Alcohol or drug prob condition status"                 
      LATIME30 ="Duration of oth mental prob: # of units"               
      LAUNIT30 ="Duration of oth mental prob: Time unit"                
      LADURA30 ="Duration of oth mental prob (in years)"                
      LADURB30 ="Duration of oth mental prob recode 2"                  
      LACHRC30 ="Oth mental prob condition status"                      
      LATIME31 ="Dur of surg after-effects: # of units"                 
      LAUNIT31 ="Dur of surg after-effects: Time unit"                  
      LADURA31 ="Dur of surg after-effects (in years)"                  
      LADURB31 ="Duration of surg after-effects recode 2"               
      LACHRC31 ="Surgical after-effects condition status"               
      LATIME32 ='Duration of "old age": # of units'                     
      LAUNIT32 ='Duration of "old age": Time unit'                      
      LADURA32 ='Duration of "old age" (in years)'                      
      LADURB32 ='Duration of "old age" recode 2'                        
      LACHRC32 ='"Old age" condition status'                            
      LATIME33 ="Duration of fatigue prob: # of units"                  
      LAUNIT33 ="Duration of fatigue prob: Time unit"                   
      LADURA33 ="Duration of fatigue prob (in years)"                   
      LADURB33 ="Duration of fatigue prob recode 2"                     
      LACHRC33 ="Fatigue problem condition status"                      
      LATIME34 ="Dur of preg-related prob: # of units"                  
      LAUNIT34 ="Duration of preg-related prob: Time unit"              
      LADURA34 ="Duration of preg-related prob (in years)"              
      LADURB34 ="Duration of preg-related prob recode 2"                
      LACHRC34 ="Pregnancy-related prob condition status"               
      LATIME90 ="Dur of oth N.E.C. prob (1): # of units"                
      LAUNIT90 ="Dur of oth N.E.C. prob (1): Time unit"                 
      LADURA90 ="Dur of oth N.E.C. prob (1) (in years)"                 
      LADURB90 ="Dur of oth N.E.C. prob (1) recode 2"                   
      LACHRC90 ="Other N.E.C. prob (1) condition status"                
      LATIME91 ="Dur of oth N.E.C. prob (2): # of units"                
      LAUNIT91 ="Dur of oth N.E.C. prob (2): Time unit"                 
      LADURA91 ="Dur of oth N.E.C. prob (2) (in years)"                 
      LADURB91 ="Dur of oth N.E.C. prob (2) recode 2"                   
      LACHRC91 ="Other N.E.C. prob (2) condition status"                
      LCONDRT  ="Chronic cond rec for person with LA"                   
      LACHRONR ="Lim of activ recode by chron cond status"              
      PHSTAT   ="Reported health status"                                
                                                                        
      PDMED12M ="Was med care delayed for - - (cost), 12m"              
      PNMED12M ="Did--need+NOT get med care (cost), 12m"                
      PHOSPYR  ="Was - - in a hospital OVERNIGHT, 12m"                  
      HOSPNO   ="Number of times in hosp overnight, 12m"                
      HPNITE   ="Number of nights in hospital, 12m"                     
      PHCHM2W  ="Did - - rec HOME care by hlth prof, 2 wk"              
      PHCHMN2W ="Number of HOME visits by hlth prof, 2wk"               
      PHCPH2WR ="Did--get adv/test results by phone, 2wk"               
      PHCPHN2W ="Number of PHONE calls to hlth prof, 2wk"               
      PHCDV2W  ="Did - - see hlth prof in office etc, 2wk"              
      PHCDVN2W ="Number of times VISITED hlth prof, 2wk"                
      P10DVYR  ="Did - - receive care 10+ times, 12m"                   
                                                                        
      HIKINDA  ="Private hlth ins from employer or work"                
      HIKINDB  ="Private hlth ins purchased directly"                   
      HIKINDC  ="Private health insurance through gov/com"              
      HIKINDD  ="Medicare"                                              
      HIKINDE  ="Medi-Gap"                                              
      HIKINDF  ="Medicaid"                                              
      HIKINDG  ="Children's Health Insurance Program"                   
      HIKINDH  ="Military hlth care/VA"                                 
      HIKINDI  ="TRICARE/CHAMPUS/CHAMP-VA"                              
      HIKINDJ  ="Indian Health Service"                                 
      HIKINDK  ="State-sponsored health plan"                           
      HIKINDL  ="Other government program"                              
      HIKINDM  ="Single service plan"                                   
      HIKINDN  ="No Health Insurance"                                   
      MEDICARE ="Medicare coverage recode"                              
      MCPART   ="Type of Medicare coverage"                             
      MCCHOICE ="Enrolled in Medicare Plus Choice"                      
      MCHMO    ="Is - - signed up with an HMO?"                         
      MCNAME   ="Type of Medicare HMO"                                  
      MCREF    ="Need a referral for special care"                      
      MCPAYPRE ="More comprehensive benefit plan"                       
      MEDICAID ="Medicaid coverage recode"                              
      MACHMD   ="Any doc, choose from list, doc assigned"               
      MAPCMD   ="Primary care physician for routine care"               
      MAREF    ="Need a referral for special care"                      
      SINGLE   ="Single service plan recode"                            
      SSTYPEA  ="Accidents"                                             
      SSTYPEB  ="AIDS care"                                             
      SSTYPEC  ="Cancer treatment"                                      
      SSTYPED  ="Catastrophic care"                                     
      SSTYPEE  ="Dental care"                                           
      SSTYPEF  ="Disability insurance"                                  
      SSTYPEG  ="Hospice care"                                          
      SSTYPEH  ="Hospitalization only"                                  
      SSTYPEI  ="Long-term care"                                        
      SSTYPEJ  ="Prescriptions"                                         
      SSTYPEK  ="Vision care"                                           
      SSTYPEL  ="Other"                                                 
      PRIVATE  ="Private health insurance coverage recode"              
      HITYPE1  ="Name of plan (Plan 1)"                                 
      WHONAM1  ="Plan in whose name (Plan 1)"                           
      PLNWRK1  ="Originally thrgh work or union (Plan 1)"               
      PLNPAY11 ="Paid for by self or family (Plan 1)"                   
      PLNPAY21 ="Paid for by employer or union (Plan 1)"                
      PLNPAY31 ="Paid by someone outside household Plan 1"              
      PLNPAY41 ="Paid for by Medicare (Plan 1)"                         
      PLNPAY51 ="Paid for by Medicaid (Plan 1)"                         
      PLNPAY61 ="Paid for by CHIP (Plan 1)"                             
      PLNPAY71 ="Paid for by government program (Plan 1)"               
      HICOSTR1 ="Out-of-pocket premium cost (Plan 1)"                   
      PLNMGD1  ="Type of plan (Plan 1)"                                 
      MGCHMD1  ="Doctor choice (Plan 1)"                                
      MGPRMD1  ="Preferred list (Plan 1)"                               
      MGPYMD1  ="Out of plan use (Plan 1)"                              
      MGPREF1  ="Private referral (plan 1)"                             
      HITYPE2  ="Name of plan (Plan 2)"                                 
      WHONAM2  ="Plan in whose name (Plan 2)"                           
      PLNWRK2  ="Originally thrgh work or union (Plan 2)"               
      PLNPAY12 ="Paid for by self or family (Plan 2)"                   
      PLNPAY22 ="Paid for by employer or union (Plan 2)"                
      PLNPAY32 ="Paid by someone outside household Plan 2"              
      PLNPAY42 ="Paid for by Medicare (Plan 2)"                         
      PLNPAY52 ="Paid for by Medicaid (Plan 2)"                         
      PLNPAY62 ="Paid for by CHIP (Plan 2)"                             
      PLNPAY72 ="Paid for by government program (Plan 2)"               
      HICOSTR2 ="Out-of-pocket premium cost (Plan 2)"                   
      PLNMGD2  ="Type of plan (Plan 2)"                                 
      MGCHMD2  ="Doctor choice (Plan 2)"                                
      MGPRMD2  ="Preferred list (Plan 2)"                               
      MGPYMD2  ="Out of plan use (Plan 2)"                              
      MGPREF2  ="Private referral (plan 2)"                             
      HITYPE3  ="Name of plan (Plan 3)"                                 
      WHONAM3  ="Plan in whose name (Plan 3)"                           
      PLNWRK3  ="Originally thrgh work or union (Plan 3)"               
      PLNPAY13 ="Paid for by self or family (Plan 3)"                   
      PLNPAY23 ="Paid for by employer or union (Plan 3)"                
      PLNPAY33 ="Paid by someone outside household Plan 3"              
      PLNPAY43 ="Paid for by Medicare (Plan 3)"                         
      PLNPAY53 ="Paid for by Medicaid (Plan 3)"                         
      PLNPAY63 ="Paid for by CHIP (Plan 3)"                             
      PLNPAY73 ="Paid for by government program (Plan 3)"               
      HICOSTR3 ="Out-of-pocket premium cost (Plan 3)"                   
      PLNMGD3  ="Type of plan (Plan 3)"                                 
      MGCHMD3  ="Doctor choice (Plan 3)"                                
      MGPRMD3  ="Preferred list (Plan 3)"                               
      MGPYMD3  ="Out of plan use (Plan 3)"                              
      MGPREF3  ="Private referral (plan 3)"                             
      HITYPE4  ="Name of plan (Plan 4)"                                 
      WHONAM4  ="Plan in whose name (Plan 4)"                           
      PLNWRK4  ="Originally thrgh work or union (Plan 4)"               
      PLNPAY14 ="Paid for by self or family (Plan 4)"                   
      PLNPAY24 ="Paid for by employer or union (Plan 4)"                
      PLNPAY34 ="Paid by someone outside household Plan 4"              
      PLNPAY44 ="Paid for by Medicare (Plan 4)"                         
      PLNPAY54 ="Paid for by Medicaid (Plan 4)"                         
      PLNPAY64 ="Paid for by CHIP (Plan 4)"                             
      PLNPAY74 ="Paid for by government program (Plan 4)"               
      HICOSTR4 ="Out-of-pocket premium cost (Plan 4)"                   
      PLNMGD4  ="Type of plan (Plan 4)"                                 
      MGCHMD4  ="Doctor choice (Plan 4)"                                
      MGPRMD4  ="Preferred list (Plan 4)"                               
      MGPYMD4  ="Out of plan use (Plan 4)"                              
      MGPREF4  ="Private referral (plan 4)"                             
      IHS      ="Indian Health Service Recode"                          
      MILITARY ="Military coverage recode"                              
      CHIP     ="Children's Hlth Ins Program Recode"                    
      OTHERPUB ="Other State-Sponsored Health Plan Recode"              
      OTHERGOV ="Other government programs Recode"                      
      NOTCOV   ="Cov stat as used in Health United States"              
      HILAST   ="How long since last had hlth coverage"                 
      HISTOP1  ="Lost job or changed employers"                         
      HISTOP2  ="Divorced/sep/death of spouse or parent"                
      HISTOP3  ="Ineligible because of age/left school"                 
      HISTOP4  ="Employer not offer/not eligible for cov"               
      HISTOP5  ="Cost is too high"                                      
      HISTOP6  ="Insurance company refused coverage"                    
      HISTOP7  ="Medicaid/Medi plan stop after pregnancy"               
      HISTOP8  ="Lost Medicaid new job/increase in income"              
      HISTOP9  ="Lost Medicaid (other)"                                 
      HISTOP10 ="Other"                                                 
      HISTOP11 ="Never had health insurance"                            
      HISTOP12 ="Moved from another county/state/country"               
      HISTOP13 ="Self-employed"                                         
      HISTOP14 ="No need for it/chooses not to have"                    
      HISTOP15 ="Got married"                                           
      HINOTYR  ="No hlth coverage during past 12 months"                
      HINOTMYR ="Months without coverage in past 12 month"              
      HCSPFYR  ="Amount family spent for medical care"                  
                                                                        
      REGIONBR ="Geographic region of birth recode"                     
      GEOBRTH  ="Geographic place of birth recode"                      
      YRSINUS  ="Years that -- has been in the U.S."                    
      CITIZENP ="Citizenship Status"                                    
      HEADST   ="Now attending Head Start?"                             
      HEADSTV1 ="Ever attended Head Start?"                             
      EDUC     ="Highest level of school completed"                     
      EDUC_R1  ="Education Recode"                                      
      MILTRYDS ="Ever honorably discharged (active duty)?"              
      DOINGLW1 ="What was -- doing last week?"                          
      WHYNOWK1 ="Main reason for not working last week"                 
      WRKHRS   ="Total hrs worked last week/usually"                    
      WRKFTALL ="Does -- usually work full time?"                       
      WRKLYR1  ="Did -- work for pay in last year?"                     
      WRKMYR   ="Months in {last yr} person had 1+ jobs"                
      MAJR_ACT ="Major activity in last week"                           
      ERNYR_P  ="{Person's} total earnings in 2001"                     
      HIEMPOF  ="Was health ins offered thru workplace?"                
                                                                        
      PSAL     ="Rec inc from wage/sal (last CY)"                       
      PSEINC   ="Rec inc from self-employ (last CY)"                    
      PSSRR    ="Rec inc from SS or RR (last CY)"                       
      PSSRRDB  ="Rec'd SS or RR a disability benefit"                   
      PSSRRD   ="Rec'd benefit due to disability"                       
      PPENS    ="Rec inc from otr disab pens (last CY)"                 
      POPENS   ="Rec inc from any otr pension (last CY)"                
      PSSI     ="Rec'd inc from SSI (last calendar year)"               
      PSSID    ="Rec'd SSI due to disability"                           
      PTANF    ="Rec'd inc from Welfare/TANF (last CY)"                 
      POWBEN   ="Rec'd otr govt assistance (last CY)"                   
      PINTRSTR ="Rec int fr sav/bank accts (last Cal Yr)"               
      PDIVD    ="Rec div from stocks/funds/etc. (last CY)"              
      PCHLDSP  ="Rec inc from child support (last CY)"                  
      PINCOT   ="Rec inc from any otr source (last CY)"                 
      INCGRP   ="Total Combined Family Income (Grouped)"                
      AB_BL20K ="Fam inc at/above vs. below $20,000"                    
      RAT_CAT  ="Ratio of fam inc to poverty threshold"                 
      HOUSEOWN ="Home Tenure Status"                                    
      FGAH     ="Paying lower rent due to govt prgm"                    
      PSSAPL   ="Ever applied for SSI"                                  
      PSDAPL   ="Ever applied for SSDI"                                 
      TANFMYR  ="Months rec Welfare/TANF (last CY)"                     
      PFSTP    ="Author to rec food stmps (last CY)"                    
      FSTPMYR  ="Months rec food stamps (last CY)"                      
      ELIGPWIC ="Anyone age-eligible for the WIC program?"              
      PWIC     ="Rec'd WIC benefits (last CY)"                          
      WIC_FLAG ="WIC recipient age-eligible"                            
   ;                                                                    
                                                                        
   * ASSOCIATE VARIABLES WITH FORMAT VALUES;                            
                                                                        
   FORMAT                                                               
      RECTYPE  PEP001X.    SRVY_YR  PEP002X.    FMX      $PEP004X.      
      PX       $PEP005X.   INTV_QRT PEP006X.    SEX      PEP007X.       
      AGE_P    PEP008X.    R_AGE1   PEP009X.    R_AGE2   PEP010X.       
      DOB_M    $PEP011X.   DOB_Y_P  $PEP012X.   ORIGIN_I PEP013X.       
      ORIGIMPT PEP014X.    HISPAN_I PEP015X.    HISPIMPT PEP016X.       
      RCDT1P_I PEP017X.    RC_SMP_I PEP018X.    RACERP_I PEP019X.       
      RACEIMPT PEP020X.    MRACRP_I PEP021X.    MRACBP_I PEP022X.       
      RACREC_I PEP023X.    HISCOD_I PEP024X.    ERIMPFLG PEP025X.       
      R_MARITL PEP026X.    COHAB1   PEP027X.    COHAB2   PEP028X.       
      LG_MSTAT PEP029X.    CDCMSTAT PEP030X.    RRP      PEP031X.       
      HH_REF   $PEP032X.   HHREFLG  $PEP033X.   FRRP     PEP034X.       
      FM_REF   $PEP032X.   FMREFLG  $PEP036X.   FM_RESP  PEP037X.       
      FMRPFLG  $PEP038X.   SIB_DEG  PEP039X.    MOTHER   $PEP040X.      
      MOM_DEG  PEP041X.    FATHER   $PEP042X.   DAD_DEG  PEP041X.       
      GUARD    $PEP044X.   PARENTS  PEP045X.    MOM_ED   PEP046X.       
      DAD_ED   PEP046X.    FM_SIZE  PEP048X.    FM_TYPE  PEP049X.       
      NOWAF    PEP052X.    ASTATFLG PEP053X.    CSTATFLG PEP054X.       
      IMMUNFLG PEP055X.    REGION   PEP056X.                            
                                                                        
      PLAPLYLM PEP027X.    PLAPLYUN PEP027X.    PSPEDEIS PEP027X.       
      PSPEDEM  PEP027X.    PLAADL   PEP027X.    LABATH   PEP027X.       
      LADRESS  PEP027X.    LAEAT    PEP027X.    LABED    PEP027X.       
      LATOILT  PEP027X.    LAHOME   PEP027X.    PLAIADL  PEP027X.       
      PLAWKNOW PEP027X.    PLAWKLIM PEP074X.    PLAWALK  PEP075X.       
      PLAREMEM PEP075X.    PLIMANY  PEP077X.    LA1AR    PEP078X.       
      LAHCC1   PEP079X.    LAHCC2   PEP079X.    LAHCC3   PEP079X.       
      LAHCC4   PEP079X.    LAHCC5   PEP079X.    LAHCC6   PEP079X.       
      LAHCC7   PEP079X.    LAHCC8   PEP079X.    LAHCC9   PEP079X.       
      LAHCC10  PEP079X.    LAHCC11  PEP079X.    LAHCC12  PEP079X.       
      LAHCC13  PEP079X.    LAHCC90  PEP079X.    LAHCC91  PEP079X.       
      LCTIME1  PEP094X.    LCUNIT1  PEP095X.    LCDURA1  PEP096X.       
      LCDURB1  PEP097X.    LCCHRC1  PEP098X.    LCTIME2  PEP094X.       
      LCUNIT2  PEP095X.    LCDURA2  PEP096X.    LCDURB2  PEP097X.       
      LCCHRC2  PEP098X.    LCTIME3  PEP094X.    LCUNIT3  PEP095X.       
      LCDURA3  PEP096X.    LCDURB3  PEP097X.    LCCHRC3  PEP098X.       
      LCTIME4  PEP094X.    LCUNIT4  PEP095X.    LCDURA4  PEP096X.       
      LCDURB4  PEP097X.    LCCHRC4  PEP098X.    LCTIME5  PEP094X.       
      LCUNIT5  PEP095X.    LCDURA5  PEP096X.    LCDURB5  PEP097X.       
      LCCHRC5  PEP098X.    LCTIME6  PEP094X.    LCUNIT6  PEP095X.       
      LCDURA6  PEP096X.    LCDURB6  PEP097X.    LCCHRC6  PEP098X.       
      LCTIME7  PEP094X.    LCUNIT7  PEP095X.    LCDURA7  PEP096X.       
      LCDURB7  PEP097X.    LCCHRC7  PEP098X.    LCTIME8  PEP094X.       
      LCUNIT8  PEP095X.    LCDURA8  PEP096X.    LCDURB8  PEP097X.       
      LCCHRC8  PEP098X.    LCTIME9  PEP094X.    LCUNIT9  PEP095X.       
      LCDURA9  PEP096X.    LCDURB9  PEP097X.    LCCHRC9  PEP098X.       
      LCTIME10 PEP094X.    LCUNIT10 PEP095X.    LCDURA10 PEP096X.       
      LCDURB10 PEP097X.    LCCHRC10 PEP098X.    LCTIME11 PEP094X.       
      LCUNIT11 PEP095X.    LCDURA11 PEP096X.    LCDURB11 PEP097X.       
      LCCHRC11 PEP098X.    LCTIME12 PEP094X.    LCUNIT12 PEP095X.       
      LCDURA12 PEP096X.    LCDURB12 PEP097X.    LCCHRC12 PEP098X.       
      LCTIME13 PEP094X.    LCUNIT13 PEP095X.    LCDURA13 PEP096X.       
      LCDURB13 PEP097X.    LCCHRC13 PEP098X.    LCTIME90 PEP094X.       
      LCUNIT90 PEP095X.    LCDURA90 PEP096X.    LCDURB90 PEP097X.       
      LCCHRC90 PEP098X.    LCTIME91 PEP094X.    LCUNIT91 PEP095X.       
      LCDURA91 PEP096X.    LCDURB91 PEP097X.    LCCHRC91 PEP098X.       
      LAHCA1   PEP079X.    LAHCA2   PEP079X.    LAHCA3   PEP079X.       
      LAHCA4   PEP079X.    LAHCA5   PEP079X.    LAHCA6   PEP079X.       
      LAHCA7   PEP079X.    LAHCA8   PEP079X.    LAHCA9   PEP079X.       
      LAHCA10  PEP079X.    LAHCA11  PEP079X.    LAHCA12  PEP079X.       
      LAHCA13  PEP079X.    LAHCA14  PEP079X.    LAHCA15  PEP079X.       
      LAHCA16  PEP079X.    LAHCA17  PEP079X.    LAHCA18  PEP079X.       
      LAHCA19  PEP079X.    LAHCA20  PEP079X.    LAHCA21  PEP079X.       
      LAHCA22  PEP079X.    LAHCA23  PEP079X.    LAHCA24  PEP079X.       
      LAHCA25  PEP079X.    LAHCA26  PEP079X.    LAHCA27  PEP079X.       
      LAHCA28  PEP079X.    LAHCA29  PEP079X.    LAHCA30  PEP079X.       
      LAHCA31  PEP079X.    LAHCA32  PEP079X.    LAHCA33  PEP079X.       
      LAHCA34  PEP079X.    LAHCA90  PEP079X.    LAHCA91  PEP079X.       
      LATIME1  PEP094X.    LAUNIT1  PEP095X.    LADURA1  PEP207X.       
      LADURB1  PEP208X.    LACHRC1  PEP098X.    LATIME2  PEP094X.       
      LAUNIT2  PEP095X.    LADURA2  PEP207X.    LADURB2  PEP208X.       
      LACHRC2  PEP098X.    LATIME3  PEP094X.    LAUNIT3  PEP095X.       
      LADURA3  PEP207X.    LADURB3  PEP208X.    LACHRC3  PEP098X.       
      LATIME4  PEP094X.    LAUNIT4  PEP095X.    LADURA4  PEP207X.       
      LADURB4  PEP208X.    LACHRC4  PEP098X.    LATIME5  PEP094X.       
      LAUNIT5  PEP095X.    LADURA5  PEP207X.    LADURB5  PEP208X.       
      LACHRC5  PEP098X.    LATIME6  PEP094X.    LAUNIT6  PEP095X.       
      LADURA6  PEP207X.    LADURB6  PEP208X.    LACHRC6  PEP098X.       
      LATIME7  PEP094X.    LAUNIT7  PEP095X.    LADURA7  PEP207X.       
      LADURB7  PEP208X.    LACHRC7  PEP098X.    LATIME8  PEP094X.       
      LAUNIT8  PEP095X.    LADURA8  PEP207X.    LADURB8  PEP208X.       
      LACHRC8  PEP098X.    LATIME9  PEP094X.    LAUNIT9  PEP095X.       
      LADURA9  PEP207X.    LADURB9  PEP208X.    LACHRC9  PEP098X.       
      LATIME10 PEP094X.    LAUNIT10 PEP095X.    LADURA10 PEP207X.       
      LADURB10 PEP208X.    LACHRC10 PEP098X.    LATIME11 PEP094X.       
      LAUNIT11 PEP095X.    LADURA11 PEP207X.    LADURB11 PEP208X.       
      LACHRC11 PEP098X.    LATIME12 PEP094X.    LAUNIT12 PEP095X.       
      LADURA12 PEP207X.    LADURB12 PEP208X.    LACHRC12 PEP098X.       
      LATIME13 PEP094X.    LAUNIT13 PEP095X.    LADURA13 PEP207X.       
      LADURB13 PEP208X.    LACHRC13 PEP098X.    LATIME14 PEP094X.       
      LAUNIT14 PEP095X.    LADURA14 PEP207X.    LADURB14 PEP208X.       
      LACHRC14 PEP098X.    LATIME15 PEP094X.    LAUNIT15 PEP095X.       
      LADURA15 PEP207X.    LADURB15 PEP208X.    LACHRC15 PEP098X.       
      LATIME16 PEP094X.    LAUNIT16 PEP095X.    LADURA16 PEP207X.       
      LADURB16 PEP208X.    LACHRC16 PEP098X.    LATIME17 PEP094X.       
      LAUNIT17 PEP095X.    LADURA17 PEP207X.    LADURB17 PEP208X.       
      LACHRC17 PEP098X.    LATIME18 PEP094X.    LAUNIT18 PEP095X.       
      LADURA18 PEP207X.    LADURB18 PEP208X.    LACHRC18 PEP098X.       
      LATIME19 PEP094X.    LAUNIT19 PEP095X.    LADURA19 PEP207X.       
      LADURB19 PEP208X.    LACHRC19 PEP098X.    LATIME20 PEP094X.       
      LAUNIT20 PEP095X.    LADURA20 PEP207X.    LADURB20 PEP208X.       
      LACHRC20 PEP098X.    LATIME21 PEP094X.    LAUNIT21 PEP095X.       
      LADURA21 PEP207X.    LADURB21 PEP208X.    LACHRC21 PEP098X.       
      LATIME22 PEP094X.    LAUNIT22 PEP095X.    LADURA22 PEP207X.       
      LADURB22 PEP208X.    LACHRC22 PEP098X.    LATIME23 PEP094X.       
      LAUNIT23 PEP095X.    LADURA23 PEP207X.    LADURB23 PEP208X.       
      LACHRC23 PEP098X.    LATIME24 PEP094X.    LAUNIT24 PEP095X.       
      LADURA24 PEP207X.    LADURB24 PEP208X.    LACHRC24 PEP098X.       
      LATIME25 PEP094X.    LAUNIT25 PEP095X.    LADURA25 PEP207X.       
      LADURB25 PEP208X.    LACHRC25 PEP098X.    LATIME26 PEP094X.       
      LAUNIT26 PEP095X.    LADURA26 PEP207X.    LADURB26 PEP208X.       
      LACHRC26 PEP098X.    LATIME27 PEP094X.    LAUNIT27 PEP095X.       
      LADURA27 PEP207X.    LADURB27 PEP208X.    LACHRC27 PEP098X.       
      LATIME28 PEP094X.    LAUNIT28 PEP095X.    LADURA28 PEP207X.       
      LADURB28 PEP208X.    LACHRC28 PEP098X.    LATIME29 PEP094X.       
      LAUNIT29 PEP095X.    LADURA29 PEP207X.    LADURB29 PEP208X.       
      LACHRC29 PEP098X.    LATIME30 PEP094X.    LAUNIT30 PEP095X.       
      LADURA30 PEP207X.    LADURB30 PEP208X.    LACHRC30 PEP098X.       
      LATIME31 PEP094X.    LAUNIT31 PEP095X.    LADURA31 PEP207X.       
      LADURB31 PEP208X.    LACHRC31 PEP098X.    LATIME32 PEP094X.       
      LAUNIT32 PEP095X.    LADURA32 PEP207X.    LADURB32 PEP208X.       
      LACHRC32 PEP098X.    LATIME33 PEP094X.    LAUNIT33 PEP095X.       
      LADURA33 PEP207X.    LADURB33 PEP208X.    LACHRC33 PEP098X.       
      LATIME34 PEP094X.    LAUNIT34 PEP095X.    LADURA34 PEP207X.       
      LADURB34 PEP208X.    LACHRC34 PEP098X.    LATIME90 PEP094X.       
      LAUNIT90 PEP095X.    LADURA90 PEP207X.    LADURB90 PEP208X.       
      LACHRC90 PEP098X.    LATIME91 PEP094X.    LAUNIT91 PEP095X.       
      LADURA91 PEP207X.    LADURB91 PEP208X.    LACHRC91 PEP098X.       
      LCONDRT  PEP385X.    LACHRONR PEP386X.    PHSTAT   PEP387X.       
                                                                        
      PDMED12M PEP075X.    PNMED12M PEP075X.    PHOSPYR  PEP075X.       
      HOSPNO   PEP391X.    HPNITE   PEP392X.    PHCHM2W  PEP075X.       
      PHCHMN2W PEP394X.    PHCPH2WR PEP075X.    PHCPHN2W PEP396X.       
      PHCDV2W  PEP075X.    PHCDVN2W PEP398X.    P10DVYR  PEP075X.       
                                                                        
      HIKINDA  PEP400X.    HIKINDB  PEP400X.    HIKINDC  PEP400X.       
      HIKINDD  PEP400X.    HIKINDE  PEP400X.    HIKINDF  PEP400X.       
      HIKINDG  PEP400X.    HIKINDH  PEP400X.    HIKINDI  PEP400X.       
      HIKINDJ  PEP400X.    HIKINDK  PEP400X.    HIKINDL  PEP400X.       
      HIKINDM  PEP400X.    HIKINDN  PEP400X.    MEDICARE PEP414X.       
      MCPART   PEP415X.    MCCHOICE PEP027X.    MCHMO    PEP027X.       
      MCNAME   PEP418X.    MCREF    PEP027X.    MCPAYPRE PEP027X.       
      MEDICAID PEP414X.    MACHMD   PEP422X.    MAPCMD   PEP027X.       
      MAREF    PEP027X.    SINGLE   PEP425X.    SSTYPEA  PEP426X.       
      SSTYPEB  PEP426X.    SSTYPEC  PEP426X.    SSTYPED  PEP426X.       
      SSTYPEE  PEP426X.    SSTYPEF  PEP426X.    SSTYPEG  PEP426X.       
      SSTYPEH  PEP426X.    SSTYPEI  PEP426X.    SSTYPEJ  PEP426X.       
      SSTYPEK  PEP426X.    SSTYPEL  PEP426X.    PRIVATE  PEP414X.       
      HITYPE1  PEP439X.    WHONAM1  PEP440X.    PLNWRK1  PEP441X.       
      PLNPAY11 PEP426X.    PLNPAY21 PEP426X.    PLNPAY31 PEP426X.       
      PLNPAY41 PEP426X.    PLNPAY51 PEP426X.    PLNPAY61 PEP426X.       
      PLNPAY71 PEP426X.    HICOSTR1 PEP449X.    PLNMGD1  PEP450X.       
      MGCHMD1  PEP451X.    MGPRMD1  PEP027X.    MGPYMD1  PEP027X.       
      MGPREF1  PEP027X.    HITYPE2  PEP439X.    WHONAM2  PEP440X.       
      PLNWRK2  PEP441X.    PLNPAY12 PEP426X.    PLNPAY22 PEP426X.       
      PLNPAY32 PEP426X.    PLNPAY42 PEP426X.    PLNPAY52 PEP426X.       
      PLNPAY62 PEP426X.    PLNPAY72 PEP426X.    HICOSTR2 PEP449X.       
      PLNMGD2  PEP450X.    MGCHMD2  PEP451X.    MGPRMD2  PEP027X.       
      MGPYMD2  PEP027X.    MGPREF2  PEP027X.    HITYPE3  PEP439X.       
      WHONAM3  PEP440X.    PLNWRK3  PEP441X.    PLNPAY13 PEP426X.       
      PLNPAY23 PEP426X.    PLNPAY33 PEP426X.    PLNPAY43 PEP426X.       
      PLNPAY53 PEP426X.    PLNPAY63 PEP426X.    PLNPAY73 PEP426X.       
      HICOSTR3 PEP449X.    PLNMGD3  PEP450X.    MGCHMD3  PEP451X.       
      MGPRMD3  PEP027X.    MGPYMD3  PEP027X.    MGPREF3  PEP027X.       
      HITYPE4  PEP439X.    WHONAM4  PEP440X.    PLNWRK4  PEP441X.       
      PLNPAY14 PEP426X.    PLNPAY24 PEP426X.    PLNPAY34 PEP426X.       
      PLNPAY44 PEP426X.    PLNPAY54 PEP426X.    PLNPAY64 PEP426X.       
      PLNPAY74 PEP426X.    HICOSTR4 PEP449X.    PLNMGD4  PEP450X.       
      MGCHMD4  PEP451X.    MGPRMD4  PEP027X.    MGPYMD4  PEP027X.       
      MGPREF4  PEP027X.    IHS      PEP075X.    MILITARY PEP504X.       
      CHIP     PEP075X.    OTHERPUB PEP075X.    OTHERGOV PEP075X.       
      NOTCOV   PEP508X.    HILAST   PEP509X.    HISTOP1  PEP426X.       
      HISTOP2  PEP426X.    HISTOP3  PEP426X.    HISTOP4  PEP426X.       
      HISTOP5  PEP426X.    HISTOP6  PEP426X.    HISTOP7  PEP426X.       
      HISTOP8  PEP426X.    HISTOP9  PEP426X.    HISTOP10 PEP426X.       
      HISTOP11 PEP426X.    HISTOP12 PEP426X.    HISTOP13 PEP426X.       
      HISTOP14 PEP426X.    HISTOP15 PEP426X.    HINOTYR  PEP027X.       
      HINOTMYR PEP526X.    HCSPFYR  PEP527X.                            
                                                                        
      REGIONBR PEP528X.    GEOBRTH  PEP529X.    YRSINUS  PEP530X.       
      CITIZENP PEP531X.    HEADST   PEP027X.    HEADSTV1 PEP027X.       
      EDUC     PEP534X.    EDUC_R1  PEP535X.    MILTRYDS PEP027X.       
      DOINGLW1 PEP537X.    WHYNOWK1 PEP538X.    WRKHRS   PEP539X.       
      WRKFTALL PEP027X.    WRKLYR1  PEP027X.    WRKMYR   PEP526X.       
      MAJR_ACT PEP543X.    ERNYR_P  PEP544X.    HIEMPOF  PEP027X.       
                                                                        
      PSAL     PEP027X.    PSEINC   PEP027X.    PSSRR    PEP075X.       
      PSSRRDB  PEP027X.    PSSRRD   PEP027X.    PPENS    PEP075X.       
      POPENS   PEP075X.    PSSI     PEP075X.    PSSID    PEP027X.       
      PTANF    PEP075X.    POWBEN   PEP075X.    PINTRSTR PEP075X.       
      PDIVD    PEP075X.    PCHLDSP  PEP075X.    PINCOT   PEP075X.       
      INCGRP   PEP561X.    AB_BL20K PEP562X.    RAT_CAT  PEP563X.       
      HOUSEOWN PEP564X.    FGAH     PEP027X.    PSSAPL   PEP075X.       
      PSDAPL   PEP075X.    TANFMYR  PEP568X.    PFSTP    PEP075X.       
      FSTPMYR  PEP568X.    ELIGPWIC PEP571X.    PWIC     PEP027X.       
      WIC_FLAG PEP573X.;                                                
                                                                        
PROC CONTENTS DATA=NHIS.PERSON_2002;                                       
   TITLE1 'CONTENTS OF THE 2002 NHIS PERSONSX FILE';                    
                                                                        
PROC FREQ DATA=NHIS.PERSON_2002;                                           
   TITLE1 'FREQUENCY REPORT FOR 2002 NHIS PERSONSX FILE';               
   TITLE2 '(WEIGHTED)';                                                 
   TABLES EDUC * SEX/LIST MISSING;                                      
   WEIGHT WTFA ;                                                        
                                                                        
PROC FREQ DATA=NHIS.PERSON_2002;                                           
   TITLE1 'FREQUENCY REPORT FOR 2002 NHIS PERSONSX FILE';               
   TITLE2 '(UNWEIGHTED)';                                               
   TABLES EDUC * SEX/LIST MISSING;                                      
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE           
        STATEMENT: FORMAT _ALL_;                                        
RUN;                                                                    
