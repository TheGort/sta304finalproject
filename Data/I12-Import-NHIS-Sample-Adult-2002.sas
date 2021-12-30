*********************************************************************   
 DECEMBER 17, 2003                                                      
                                                                        
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS                 
 FILE FROM THE 2002 NHIS PUBLIC USE SAMADULT.DAT ASCII FILE             
                                                                        
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN                
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                   
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                     
       DOCUMENTATION                                                    
                                                                        
 THIS IS STORED IN SAMADULT.SAS                                         
*********************************************************************;  
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;          
                                                                        
LIBNAME  NHIS     'C:\DATA\NHIS\';                                       
LIBNAME  LIBRARY  'C:\DATA\NHIS\2002';                                       
                                                                        
FILENAME ASCIIDAT 'C:\NHIS2002\04176-0004-Data.txt';                           
                                                                        
* DEFINE VARIABLE VALUES FOR REPORTS;                                   
                                                                        
PROC FORMAT LIBRARY=LIBRARY;                                            
  VALUE SAP001X                                                         
    30               = "Sample Adult"                                   
   ;                                                                    
  VALUE SAP002X                                                         
    2002             = "2002"                                           
   ;                                                                    
  VALUE $SAP004X                                                        
    "01" - "08"      = "Family number 1 thru 8"                         
   ;                                                                    
  VALUE $SAP005X                                                        
    "01" - "30"      = "Person number 1 thru 30"                        
   ;                                                                    
  VALUE SAP006X                                                         
    1                = "Quarter 1"                                      
    2                = "Quarter 2"                                      
    3                = "Quarter 3"                                      
    4                = "Quarter 4"                                      
   ;                                                                    
  VALUE SAP007X                                                         
    1                = "Male"                                           
    2                = "Female"                                         
   ;                                                                    
  VALUE SAP008X                                                         
    18 - 84          = "18-84 years"                                    
    85               = "85+ years"                                      
   ;                                                                    
  VALUE SAP009X                                                         
    1                = "Yes"                                            
    2                = "No"                                             
   ;                                                                    
  VALUE SAP010X                                                         
    1                = "Imputed 'refused' Hispanic Origin response"     
    2                = "Imputed 'not ascertained' Hispanic Origin"      
    3                = "Imputed 'does not know' Hispanic Origin"        
    4                = "Hispanic origin given by respondent/proxy"      
   ;                                                                    
  VALUE SAP011X                                                         
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
  VALUE SAP012X                                                         
    1                = "Imputed 'refused' Hispanic Origin type"         
    2                = "Imputed 'not ascertained' Hispanic Origin type" 
    3                = "Imputed 'does not know' Hispanic Origin type"   
    4                = "Hispanic Origin type given by respondent/proxy" 
   ;                                                                    
  VALUE SAP013X                                                         
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
  VALUE SAP014X                                                         
    01               = "White only"                                     
    02               = "Black/African American only"                    
    03               = "AIAN only*"                                     
    04               = "Asian only"                                     
    05               = "Other race only"                                
    06               = "Multiple detailed race only"                    
   ;                                                                    
  VALUE SAP015X                                                         
    01               = "White only"                                     
    02               = "Black/African American only"                    
    03               = "AIAN* only"                                     
    04               = "Asian only"                                     
    05               = "Other race only"                                
    06               = "Multiple race"                                  
   ;                                                                    
  VALUE SAP016X                                                         
    1                = "Imputed 'refused' race response"                
    2                = "Imputed 'not ascertained' race response"        
    3                = "Imputed 'does not know' race response"          
    4                = "Race given by respondent/proxy"                 
   ;                                                                    
  VALUE SAP017X                                                         
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
  VALUE SAP018X                                                         
    01               = "White"                                          
    02               = "Black/African American"                         
    03               = "Indian (American) (includes Eskimo, Aleut)"     
    06               = "Chinese"                                        
    07               = "Filipino"                                       
    12               = "Asian Indian"                                   
    16               = "Other race"                                     
    17               = "Multiple race"                                  
   ;                                                                    
  VALUE SAP019X                                                         
    1                = "White"                                          
    2                = "Black"                                          
    3                = "Other"                                          
   ;                                                                    
  VALUE SAP020X                                                         
    1                = "Hispanic"                                       
    2                = "Non-Hispanic White"                             
    3                = "Non-Hispanic Black"                             
    4                = "Non-Hispanic Other"                             
   ;                                                                    
  VALUE SAP021X                                                         
    1                = "Ethnicity/race imputed"                         
    2                = "Ethnicity/race given by respondent/proxy"       
   ;                                                                    
  VALUE SAP022X                                                         
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
  VALUE SAP023X                                                         
    1                = "$20,000 or more"                                
    2                = "Less than $20,000"                              
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP024X                                                         
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
  VALUE SAP025X                                                         
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
  VALUE SAP026X                                                         
    01 - 30          = "01-30 persons"                                  
   ;                                                                    
  VALUE SAP027X                                                         
    1                = "Northeast"                                      
    2                = "Midwest"                                        
    3                = "South"                                          
    4                = "West"                                           
   ;                                                                    
  VALUE SAP032X                                                         
    1                = "Proxy"                                          
    2                = "Not proxy"                                      
   ;                                                                    
                                                                        
  VALUE SAP033X                                                         
    1                = "Yes"                                            
    2                = "No"                                             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP034X                                                         
    1                = "Yes"                                            
    2                = "No"                                             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP060X                                                         
    000              = "None"                                           
    001 - 365        = "1-365 days"                                     
    996              = "Unable to do this activity"                     
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE SAP063X                                                         
    1                = "Yes"                                            
    2                = "No"                                             
    3                = "Was told no changes needed"                     
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE SAP088X                                                         
    1                = "Mentioned"                                      
    2                = "Not mentioned"                                  
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP089X                                                         
    01 - 84          = "1-84 Years"                                     
    85               = "85+ years"                                      
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't Know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP149X                                                         
    1                = "Yes"                                            
    2                = "No"                                             
    3                = "Borderline"                                     
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP151X                                                         
    00               = "Within past year"                               
    01 - 84          = "1-84 years"                                     
    85               = "85+ years"                                      
    96               = "1+ year(s) with diabetes and age is 85+"        
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't Know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP177X                                                         
    00 - 10          = "0-10"                                           
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE SAP199X                                                         
    1                = "Always"                                         
    2                = "Most of the time"                               
    3                = "Some of the time"                               
    4                = "None of the time"                               
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE SAP200X                                                         
    1                = "Good"                                           
    2                = "Little trouble"                                 
    3                = "Lot of trouble"                                 
    4                = "Deaf"                                           
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP201X                                                         
    01               = "At birth"                                       
    02               = "0 through 2 years of age"                       
    03               = "3 through 5 years of age"                       
    04               = "6 through 18 years of age"                      
    05               = "19 through 44 years of age"                     
    06               = "45 through 64 years of age"                     
    07               = "65 or more years of age"                        
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP202X                                                         
    01               = "Mother /w German measles during preg"           
    02               = "At birth for genetic reason"                    
    03               = "At birth - oth reason, not infectious dis"      
    04               = "Infectious dis like measles or meningitis"      
    05               = "An ear infection/multiple ear infections"       
    06               = "An ear injury"                                  
    07               = "Ear surgery"                                    
    08               = "Loud, brief noise: gunfire, blasts/explosions"  
    09               = "Oth noise: machine, aircraft, etc."             
    10               = "Getting older"                                  
    11               = "Some other cause"                               
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP215X                                                         
    0                = "Not at all difficult"                           
    1                = "Only a little difficult"                        
    2                = "Somewhat difficult"                             
    3                = "Very difficult"                                 
    4                = "Can't do at all"                                
    6                = "Do not do this activity"                        
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP222X                                                         
    1                = "Less than 1 month"                              
    2                = "01 to 12 months"                                
    3                = "13 to 24 months"                                
    4                = "More than two years"                            
    5                = "Never"                                          
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP226X                                                         
    1                = "ALL of the time"                                
    2                = "MOST of the time"                               
    3                = "SOME of the time"                               
    4                = "A LITTLE of the time"                           
    5                = "NONE of the time"                               
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP232X                                                         
    1                = "A lot"                                          
    2                = "Some"                                           
    3                = "A little"                                       
    4                = "Not at all"                                     
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
                                                                        
  VALUE SAP233X                                                         
    0                = "Had job last week"                              
    1                = "No job last week, had job past 12 m"            
    2                = "No job last week, no job past 12 m"             
    3                = "Never worked"                                   
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP234X                                                         
    000              = "None"                                           
    001 - 366        = "1-366 days"                                     
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP235X                                                         
    000              = "None"                                           
    001 - 366        = "1-366 days"                                     
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
   ;                                                                    
  VALUE SAP236X                                                         
    1                = "Better"                                         
    2                = "Worse"                                          
    3                = "About the same"                                 
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP238X                                                         
    0                = "Not at all difficult"                           
    1                = "Only a little difficult"                        
    2                = "Somewhat difficult"                             
    3                = "Very difficult"                                 
    4                = "Can't do at all"                                
    6                = "Do not do this activity"                        
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP250X                                                         
    1                = "Limited in any way"                             
    2                = "Not limited in any way"                         
    3                = "Unknown if limited"                             
   ;                                                                    
  VALUE SAP251X                                                         
    1                = "Mentioned"                                      
    2                = "Not mentioned"                                  
    6                = "No condition at all"                            
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP287X                                                         
    01 - 94          = "1-94"                                           
    95               = "95+"                                            
    96               = "Since birth"                                    
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP288X                                                         
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
  VALUE SAP289X                                                         
    00               = "Less than 1 year"                               
    01 - 84          = "01-84 years"                                    
    85               = "85+ years"                                      
    96               = "Unknown number of years"                        
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP290X                                                         
    1                = "Less than 3 months"                             
    2                = "3 - 5 months"                                   
    3                = "6 - 12 months"                                  
    4                = "More than 1 year"                               
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP291X                                                         
    1                = "Chronic"                                        
    2                = "Not chronic"                                    
    9                = "Unknown if chronic"                             
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP467X                                                         
    1                = "At least one chronic cond causes functl lim"    
    2                = "No chronic cond causes functl lim"              
    9                = "Unk if any chronic cond causes functl lim"      
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP468X                                                         
    0                = "Not limited in any way (incl unk if limited)"   
    1                = "Limited; caused by at least one chronic cond"   
    2                = "Limited; not caused by chronic cond"            
    3                = "Limited; unk if cond is chronic"                
   ;                                                                    
  VALUE SAP470X                                                         
    06 - 84          = "6-84 years"                                     
    85               = "85 years or older"                              
    96               = "Never smoked regularly"                         
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP471X                                                         
    1                = "Every day"                                      
    2                = "Some days"                                      
    3                = "Not at all"                                     
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP472X                                                         
    01 - 94          = "01-94"                                          
    95               = "95+"                                            
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP473X                                                         
    1                = "Days"                                           
    2                = "Weeks"                                          
    3                = "Months"                                         
    4                = "Years"                                          
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP474X                                                         
    00               = "Less than 1 year"                               
    01 - 69          = "1-69 years"                                     
    70               = "70+ years"                                      
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP476X                                                         
    01 - 94          = "1-94 cigarettes"                                
    95               = "95+ cigarettes"                                 
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't Know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP477X                                                         
    00               = "None"                                           
    01 - 30          = "1-30 days"                                      
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP480X                                                         
    1                = "Current"                                        
    2                = "Former"                                         
    3                = "Never"                                          
    4                = "Smoker, current status unknown"                 
    9                = "Unknown if ever smoked"                         
   ;                                                                    
  VALUE SAP481X                                                         
    1                = "Current every day smoker"                       
    2                = "Current some day smoker"                        
    3                = "Former smoker"                                  
    4                = "Never  smoker"                                  
    5                = "Smoker, current status unknown"                 
    9                = "Unknown if ever smoked"                         
   ;                                                                    
  VALUE SAP482X                                                         
    1                = "Current  every day smoker"                      
    2                = "Current some day smoker (1+ days past mo)"      
    3                = "Current some day smoker (0 days past mo)"       
    4                = "Current some day smoker (unknown days past mo)" 
    5                = "Former smoker"                                  
    6                = "Never smoker"                                   
    7                = "Smoker, current status unknown"                 
    9                = "Unknown if ever smoked"                         
   ;                                                                    
  VALUE SAP484X                                                         
    000              = "Never"                                          
    001 - 995        = "1-995 times per"                                
    996              = "Unable to do this type activity"                
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
   ;                                                                    
  VALUE SAP485X                                                         
    0                = "Never"                                          
    1                = "Day"                                            
    2                = "Week"                                           
    3                = "Month"                                          
    4                = "Year"                                           
    6                = "Unable to do this activity"                     
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP486X                                                         
    00               = "Less than once per week"                        
    01 - 28          = "1-28 times per week"                            
    95               = "Never"                                          
    96               = "Unable to do vig activity"                      
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
   ;                                                                    
  VALUE SAP487X                                                         
    001 - 720        = "1-720 (minutes/hours)"                          
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
    .                = "<Blank: Not in universe>"                       
   ;                                                                    
  VALUE SAP488X                                                         
    1                = "Minutes"                                        
    2                = "Hours"                                          
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in universe>"                       
   ;                                                                    
  VALUE SAP489X                                                         
    010 - 720        = "10-720 minutes"                                 
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP490X                                                         
    1                = "Less than 20 minutes"                           
    2                = "20 minutes or more"                             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in universe>"                       
   ;                                                                    
  VALUE SAP491X                                                         
    000              = "Never"                                          
    001 - 995        = "1-995 times"                                    
    996              = "Unable to do this type activity"                
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
   ;                                                                    
  VALUE SAP493X                                                         
    00               = "Less than once per week"                        
    01 - 28          = "1-28 times per week"                            
    95               = "Never"                                          
    96               = "Unable to do light or moderate activity"        
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
   ;                                                                    
  VALUE SAP500X                                                         
    00               = "Less than once per week"                        
    01 - 28          = "1-28 times per week"                            
    95               = "Never"                                          
    96               = "Unable to do strength activity"                 
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
   ;                                                                    
  VALUE SAP503X                                                         
    000              = "Never"                                          
    001 - 365        = "1-365 days per"                                 
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP504X                                                         
    0                = "Never/None"                                     
    1                = "Week"                                           
    2                = "Month"                                          
    3                = "Year"                                           
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP505X                                                         
    00               = "Less than once a month"                         
    01 - 31          = "1-31 days per month"                            
    95               = "Did not drink in past year"                     
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP506X                                                         
    00               = "Less than one day per week"                     
    01 - 07          = "1-7 days per week"                              
    95               = "Did not drink in past year"                     
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP507X                                                         
    000              = "Never/none"                                     
    001 - 365        = "1-365 days"                                     
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP508X                                                         
    01 - 94          = "1-94 drinks"                                    
    95               = "95+ drinks"                                     
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP509X                                                         
    000              = "Never/None"                                     
    001 - 365        = "1-365 days per"                                 
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP512X                                                         
    1                = "Lifetime abstainer [<12 drinks in lifetime]"    
    2                = "Former drinker [No drinks in past year]"        
    3                = "Current drinker [1+ drinks in past year]"       
    9                = "Drinking status unknown"                        
   ;                                                                    
  VALUE SAP513X                                                         
    1                = "Lifetime abstainer"                             
    2                = "Former infrequent"                              
    3                = "Former regular"                                 
    4                = "Current infrequent"                             
    5                = "Current light"                                  
    6                = "Current moderate"                               
    7                = "Current heavier"                                
    8                = "Current drinker, level unknown"                 
    9                = "Drinking status unknown"                        
   ;                                                                    
  VALUE SAP514X                                                         
    1                = "Metric height measurement volunteered"          
    2                = "Not reported in metric units"                   
   ;                                                                    
  VALUE SAP515X                                                         
    1                = "Metric weight measurement volunteered"          
    2                = "Not reported in metric units"                   
   ;                                                                    
  VALUE SAP516X                                                         
    59 - 76          = "59-76 inches"                                   
    96               = "Not available"                                  
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
   ;                                                                    
  VALUE SAP517X                                                         
    099 - 285        = "99-285 pounds"                                  
    996              = "Not available"                                  
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
   ;                                                                    
  VALUE SAP518X                                                         
    1                = "10% or more below desirable weight"             
    2                = "5-9% below desirable weight"                    
    3                = "4.9% (+/-) of desirable body weight"            
    4                = "5-9.9% above desirable body weight"             
    5                = "10-19.9% above desirable body weight"           
    6                = "20-29.9 % above desirable body weight"          
    7                = "30% + above desirable body weight"              
    9                = "Unknown"                                        
   ;                                                                    
  VALUE SAP519X                                                         
    00.01 - 99.94    = "00.01-99.94"                                    
    99.95            = "99.95+"                                         
    99.99            = "Unknown"                                        
   ;                                                                    
                                                                        
  VALUE SAP520X                                                         
    1                = "Yes"                                            
    2                = "There is NO place"                              
    3                = "There is MORE THAN ONE place"                   
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP521X                                                         
    1                = "Clinic or health center"                        
    2                = "Doctor's office or HMO"                         
    3                = "Hospital emergency room"                        
    4                = "Hospital outpatient department"                 
    5                = "Some other place"                               
    6                = "Doesn't go to one place most often"             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP523X                                                         
    0                = "Doesn't get preventive care anywhere"           
    1                = "Clinic or health center"                        
    2                = "Doctor's office or HMO"                         
    3                = "Hospital emergency room"                        
    4                = "Hospital outpatient department"                 
    5                = "Some other place"                               
    6                = "Doesn't go to one place most often"             
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP524X                                                         
    01               = "Same sorc sk care & rout care"                  
    02               = "Sorc sk care, no sorc rout care"                
    03               = "Sorc sk & rout care, no/unk same sorc"          
    04               = "Sorc sk care, unk sorc rout care *"             
    05               = "GE2 sorc sk care, 1 is sorc rout care"          
    06               = "GE2 sorc sk care, no sorc rout care"            
    07               = "GE2 sorc sk & rout care, no/unk if same"        
    08               = "GE2 sorc sk care, unk sorc rout care *"         
    09               = "No sorc sk care or rout care"                   
    10               = "No sorc sk care, has sorc rout care"            
    11               = "No sorc sk care, unk sorc rout care *"          
    12               = "Unk sorc sk care, no sorc rout care"            
    13               = "Unk sorc sk care, has sorc rout care"           
    14               = "Unk sorc sk care or sorc rout care *"           
    99               = "Unknown other"                                  
   ;                                                                    
  VALUE SAP536X                                                         
    0                = "Never"                                          
    1                = "6 Months or less"                               
    2                = "More than 6 mos, but not more than 1 yr ago"    
    3                = "More than 1 yr, but not more than 2 yrs ago"    
    4                = "More than 2 yrs, but not more than 5 yrs ago"   
    5                = "More than 5 years ago"                          
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP547X                                                         
    00               = "None"                                           
    01               = "1"                                              
    02               = "2-3"                                            
    03               = "4-5"                                            
    04               = "6-7"                                            
    05               = "8-9"                                            
    06               = "10-12"                                          
    07               = "13-15"                                          
    08               = "16 or more"                                     
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
   ;                                                                    
  VALUE SAP549X                                                         
    01 - 12          = "01-12 months"                                   
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP550X                                                         
    01               = "1"                                              
    02               = "2-3"                                            
    03               = "4-5"                                            
    04               = "6-7"                                            
    05               = "8-9"                                            
    06               = "10-12"                                          
    07               = "13-15"                                          
    08               = "16 or more"                                     
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP553X                                                         
    01 - 94          = "1-94 Times"                                     
    95               = "95+ Times"                                      
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP562X                                                         
    1                = "Received at least 3 doses"                      
    2                = "Received less than 3 doses"                     
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
                                                                        
  VALUE SAP563X                                                         
    1                = "Currently working"                              
    2                = "Retired"                                        
    3                = "Not currently working but has worked previously"
    4                = "Has never worked"                               
    9                = "Unknown"                                        
   ;                                                                    
  VALUE SAP573X                                                         
    1                = "Employee of a PRIVATE company for wages"        
    2                = "A FEDERAL government employee"                  
    3                = "A STATE government employee"                    
    4                = "A LOCAL government employee"                    
    5                = "Self-emp in OWN business/prof practice/farm"    
    6                = "Working WITHOUT PAY in fam business/farm"       
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "< Blank:  Not in universe>"                     
   ;                                                                    
  VALUE SAP577X                                                         
    01               = "1-9 employees"                                  
    02               = "10-24 employees"                                
    03               = "25-49 employees"                                
    04               = "50-99 employees"                                
    05               = "100-249 employees"                              
    06               = "250-499 employees"                              
    07               = "500-999 employees"                              
    08               = "1000 employees or more"                         
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP579X                                                         
    00               = "Less than 1 year"                               
    01 - 34          = "01-34 years"                                    
    35               = "35 or more years"                               
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP591X                                                         
    01               = "Unlikely have been exposed to HIV"              
    02               = "Afraid to find out if HIV positive"             
    03               = "Didn't want to think about HIV/HIV pos."        
    04               = "Worried name reported to Govt. if pos."         
    05               = "Didn't know where to get tested"                
    06               = "Don't like needles"                             
    07               = "Afraid of losing job if pos. for AIDS"          
    08               = "Some other reason"                              
    09               = "No particular reason"                           
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP592X                                                         
    01               = "January"                                        
    02               = "February"                                       
    03               = "March"                                          
    04               = "April"                                          
    05               = "May"                                            
    06               = "June"                                           
    07               = "July"                                           
    08               = "August"                                         
    09               = "September"                                      
    10               = "October"                                        
    11               = "November"                                       
    12               = "December"                                       
    96               = "Used time period format"                        
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP593X                                                         
    1985 - 2003      = "1985-2003"                                      
    9996             = "Used time period format"                        
    9997             = "Refused"                                        
    9998             = "Not ascertained"                                
    9999             = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP594X                                                         
    1                = "6 Months or less"                               
    2                = "More than 6 months but not more than 1 yr ago"  
    3                = "More than 1 yr, but not more than 2 yrs ago"    
    4                = "More than 2 yrs, but not more than 5 yrs ago"   
    5                = "More than 5 yrs ago"                            
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP595X                                                         
    000              = "None"                                           
    001 - 996        = "1-996 times"                                    
    997              = "Refused"                                        
    998              = "Not ascertained"                                
    999              = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP596X                                                         
    01               = "Someone suggested you should be tested"         
    02               = "Might have been exposed thru sex/drug use"      
    03               = "Might have been exposed thru work/at work"      
    04               = "Wanted to find out if infected or not"          
    05               = "Part of a routine medical check-up/surg proc"   
    06               = "You were sick or had a medical problem"         
    07               = "You were pregnant or delivered a baby"          
    08               = "For health or life insurance coverage"          
    09               = "Military induction or military service"         
    10               = "For Immigration"                                
    11               = "For marriage license or to get married"         
    12               = "Concerned could give HIV to someone"            
    13               = "Wanted medical care/new treatment if pos"       
    14               = "Some other reason"                              
    15               = "No particular reason"                           
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank: Not in Universe>"                       
   ;                                                                    
  VALUE SAP597X                                                         
    1                = "Doctor, nurse, or otr hlth care prof"           
    2                = "Sex partner"                                    
    3                = "Someone at health department"                   
    4                = "Family member or friend"                        
    5                = "Other"                                          
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP598X                                                         
    01               = "Doctor/HMO"                                     
    02               = "AIDS clinic/counseling/testing site"            
    03               = "Hospital/emergency room/outpatient clinic"      
    04               = "Other type of clinic"                           
    05               = "Public health department"                       
    06               = "At home"                                        
    07               = "Drug treatment facility"                        
    08               = "Military induction or military service site"    
    09               = "Immigration site"                               
    10               = "In a correctional facility (jail or prison)"    
    11               = "Other location"                                 
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP599X                                                         
    01               = "Family planning clinic"                         
    02               = "Prenatal clinic"                                
    03               = "Tuberculosis clinic"                            
    04               = "STD clinic"                                     
    05               = "Community health clinic"                        
    06               = "Clinic run by employer or ins co"               
    07               = "Other"                                          
    97               = "Refused"                                        
    98               = "Not ascertained"                                
    99               = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP600X                                                         
    1                = "Nurse or health worker"                         
    2                = "Self-sampling kit"                              
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP603X                                                         
    1                = "High/Already have HIV/AIDS"                     
    2                = "Medium"                                         
    3                = "Low"                                            
    4                = "None"                                           
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP604X                                                         
    1                = "Yes, at least one statement is true"            
    2                = "No, none of these statements are true"          
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
   ;                                                                    
  VALUE SAP607X                                                         
    1                = "Private doctor"                                 
    2                = "Family planning clinic"                         
    3                = "STD clinic"                                     
    4                = "Emergency room"                                 
    5                = "Health department"                              
    6                = "Some other place"                               
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP610X                                                         
    1                = "A lot"                                          
    2                = "Some"                                           
    3                = "A little"                                       
    4                = "Nothing"                                        
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP618X                                                         
    1                = "High"                                           
    2                = "Medium"                                         
    3                = "Low"                                            
    4                = "None"                                           
    5                = "Already have TB"                                
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in Universe>"                      
   ;                                                                    
  VALUE SAP623X                                                         
    1                = "Always"                                         
    2                = "Often"                                          
    3                = "Sometimes"                                      
    4                = "Rarely"                                         
    5                = "Never"                                          
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE SAP635X                                                         
    1                = "Always"                                         
    2                = "Often"                                          
    3                = "Sometimes"                                      
    4                = "Rarely"                                         
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE SAP636X                                                         
    1                = "Yes"                                            
    2                = "No"                                             
    3                = "Do not attend school/training for other reasons"
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
  VALUE SAP648X                                                         
    1                = "Yes"                                            
    2                = "No"                                             
    3                = "Do not work for other reasons"                  
    7                = "Refused"                                        
    8                = "Not ascertained"                                
    9                = "Don't know"                                     
    .                = "<Blank:  Not in universe>"                      
   ;                                                                    
                                                                        
DATA NHIS.SAMADULT_2002;                                                     
   * CREATE A SAS DATA SET;                                             
   INFILE ASCIIDAT PAD LRECL=895;                                       
                                                                        
   * DEFINE LENGTH OF ALL VARIABLES;                                    
                                                                        
   LENGTH                                                               
      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2         
      PX       $ 2   INTV_QRT   3   SEX        3   AGE_P      3         
      ORIGIN_I   3   ORIGIMPT   3   HISPAN_I   3   HISPIMPT   3         
      RCDT1P_I   3   RC_SMP_I   3   RACERP_I   3   RACEIMPT   3         
      MRACRP_I   3   MRACBP_I   3   RACREC_I   3   HISCOD_I   3         
      ERIMPFLG   3   EDUC       3   AB_BL20K   3   RAT_CAT    3         
      R_MARITL   3   FM_SIZE    3   REGION     3   WTIA_SA    8         
      WTFA_SA    8   STRATUM    4   PSU        3   PROXYSA    3         
                                                                        
      HYPEV      3   HYPDIFV    3   HYPYR      3   CHDEV      3         
      ANGEV      3   MIEV       3   HRTEV      3   STREV      3         
      EPHEV      3   CHDYR      3   ANGYR      3   MIYR       3         
      HRTYR      3   STRYR      3   EPHYR      3   HCHLEV     3         
      PCIRCEV    3   IRRHBEV    3   CONHFEV    3   HCHLYR     3         
      PCIRCYR    3   IRRHBYR    3   CONHFYR    3   AASMEV     3         
      AASSTILL   3   AASMYR     3   AASMERYR   3   AWZMSWK    4         
      AASMED     3   AASWMP     3   AAPENVLN   3   ULCEV      3         
      ULCYR      3   BOWLEV     3   BOWLYR     3   THYREV     3         
      URINPEV    3   ALLRFEV    3   ALLRMEV    3   THYRYR     3         
      URINPYR    3   ALLRFYR    3   ALLRMYR    3   MSEV       3         
      PARKEV     3   NEUROPEV   3   SEIZEV     3   INSOMYR    3         
      FATIGYR    3   PAINYR     3   ANXDEPYR   3   SPRAINYR   3         
      DENTLPYR   3   SKINPYR    3   CANEV      3   CNKIND1    3         
      CANAGE1    3   CNKIND2    3   CANAGE2    3   CNKIND3    3         
      CANAGE3    3   CNKIND4    3   CANAGE4    3   CNKIND5    3         
      CANAGE5    3   CNKIND6    3   CANAGE6    3   CNKIND7    3         
      CANAGE7    3   CNKIND8    3   CANAGE8    3   CNKIND9    3         
      CANAGE9    3   CNKIND10   3   CANAGE10   3   CNKIND11   3         
      CANAGE11   3   CNKIND12   3   CANAGE12   3   CNKIND13   3         
      CANAGE13   3   CNKIND14   3   CANAGE14   3   CNKIND15   3         
      CANAGE15   3   CNKIND16   3   CANAGE16   3   CNKIND17   3         
      CANAGE17   3   CNKIND18   3   CANAGE18   3   CNKIND19   3         
      CANAGE19   3   CNKIND20   3   CANAGE20   3   CNKIND21   3         
      CANAGE21   3   CNKIND22   3   CANAGE22   3   CNKIND23   3         
      CANAGE23   3   CNKIND24   3   CANAGE24   3   CNKIND25   3         
      CANAGE25   3   CNKIND26   3   CANAGE26   3   CNKIND27   3         
      CANAGE27   3   CNKIND28   3   CANAGE28   3   CNKIND29   3         
      CANAGE29   3   CNKIND30   3   CANAGE30   3   CNKIND31   3         
      DIBEV      3   DIBAGE     3   DIFAGE2    3   INSLN      3         
      DIBPILL    3   AHAYFYR    3   SINYR      3   CBRCHYR    3         
      KIDWKYR    3   LIVYR      3   JNTSYMP    3   JMTHP1     3         
      JMTHP2     3   JMTHP3     3   JMTHP4     3   JMTHP5     3         
      JMTHP6     3   JMTHP7     3   JMTHP8     3   JMTHP9     3         
      JMTHP10    3   JMTHP11    3   JMTHP12    3   JMTHP13    3         
      JMTHP14    3   JMTHP15    3   JMTHP16    3   JMTHP17    3         
      JNTPN      3   JNTCHR     3   JNTHP      3   ARTH1      3         
      ARTHWT     3   ARTHPH     3   ARTHCLS    3   ARTHLMT    3         
      ARTHWRK    3   PAINECK    3   PAINLB     3   PAINLEG    3         
      PAINFACE   3   AMIGR      3   ACOLD2W    3   AINTIL2W   3         
      PREGNOW    3   MENSYR     3   MENOYR     3   GYNYR      3         
      PROSTYR    3   HEARAID    3   HEARFREQ   3   AHEARST    3         
      HEARAGE    3   HEARCAUS   3   AVISION    3   ABLIND     3         
      DIBREV     3   CATAREV    3   GLAUCEV    3   MACDEV     3         
      DIBRYR     3   CATARYR    3   GLAUCYR    3   MACDYR     3         
      AVISREH    3   AVISDEV    3   AVDFNWS    3   AVDFCLS    3         
      AVDFNIT    3   AVDFDRV    3   AVDFPER    3   AVDFCRD    3         
      AVISWRIN   3   AVISEXAM   3   AVISACT    3   AVISPROT   3         
      LUPPRT     3   SAD        3   NERVOUS    3   RESTLESS   3         
      HOPELESS   3   EFFORT     3   WORTHLS    3   MHAMTMO    3         
                                                                        
      WRKLYR3    3   WKDAYR     4   BEDDAYR    4   AHSTATYR   3         
      SPECEQ     3   FLWALK     3   FLCLIMB    3   FLSTAND    3         
      FLSIT      3   FLSTOOP    3   FLREACH    3   FLGRASP    3         
      FLCARRY    3   FLPUSH     3   FLSHOP     3   FLSOCL     3         
      FLRELAX    3   FLA1AR     3   AFLHCA1    3   AFLHCA2    3         
      AFLHCA3    3   AFLHCA4    3   AFLHCA5    3   AFLHCA6    3         
      AFLHCA7    3   AFLHCA8    3   AFLHCA9    3   AFLHCA10   3         
      AFLHCA11   3   AFLHCA12   3   AFLHCA13   3   AFLHCA14   3         
      AFLHCA15   3   AFLHCA16   3   AFLHCA17   3   AFLHCA18   3         
      AFLHCA19   3   AFLHCA20   3   AFLHCA21   3   AFLHCA22   3         
      AFLHCA23   3   AFLHCA24   3   AFLHCA25   3   AFLHCA26   3         
      AFLHCA27   3   AFLHCA28   3   AFLHCA29   3   AFLHCA30   3         
      AFLHCA31   3   AFLHCA32   3   AFLHCA33   3   AFLHCA34   3         
      AFLHCA90   3   AFLHCA91   3   ALTIME1    3   ALUNIT1    3         
      ALDURA1    3   ALDURB1    3   ALCHRC1    3   ALTIME2    3         
      ALUNIT2    3   ALDURA2    3   ALDURB2    3   ALCHRC2    3         
      ALTIME3    3   ALUNIT3    3   ALDURA3    3   ALDURB3    3         
      ALCHRC3    3   ALTIME4    3   ALUNIT4    3   ALDURA4    3         
      ALDURB4    3   ALCHRC4    3   ALTIME5    3   ALUNIT5    3         
      ALDURA5    3   ALDURB5    3   ALCHRC5    3   ALTIME6    3         
      ALUNIT6    3   ALDURA6    3   ALDURB6    3   ALCHRC6    3         
      ALTIME7    3   ALUNIT7    3   ALDURA7    3   ALDURB7    3         
      ALCHRC7    3   ALTIME8    3   ALUNIT8    3   ALDURA8    3         
      ALDURB8    3   ALCHRC8    3   ALTIME9    3   ALUNIT9    3         
      ALDURA9    3   ALDURB9    3   ALCHRC9    3   ALTIME10   3         
      ALUNIT10   3   ALDURA10   3   ALDURB10   3   ALCHRC10   3         
      ALTIME11   3   ALUNIT11   3   ALDURA11   3   ALDURB11   3         
      ALCHRC11   3   ALTIME12   3   ALUNIT12   3   ALDURA12   3         
      ALDURB12   3   ALCHRC12   3   ALTIME13   3   ALUNIT13   3         
      ALDURA13   3   ALDURB13   3   ALCHRC13   3   ALTIME14   3         
      ALUNIT14   3   ALDURA14   3   ALDURB14   3   ALCHRC14   3         
      ALTIME15   3   ALUNIT15   3   ALDURA15   3   ALDURB15   3         
      ALCHRC15   3   ALTIME16   3   ALUNIT16   3   ALDURA16   3         
      ALDURB16   3   ALCHRC16   3   ALTIME17   3   ALUNIT17   3         
      ALDURA17   3   ALDURB17   3   ALCHRC17   3   ALTIME18   3         
      ALUNIT18   3   ALDURA18   3   ALDURB18   3   ALCHRC18   3         
      ALTIME19   3   ALUNIT19   3   ALDURA19   3   ALDURB19   3         
      ALCHRC19   3   ALTIME20   3   ALUNIT20   3   ALDURA20   3         
      ALDURB20   3   ALCHRC20   3   ALTIME21   3   ALUNIT21   3         
      ALDURA21   3   ALDURB21   3   ALCHRC21   3   ALTIME22   3         
      ALUNIT22   3   ALDURA22   3   ALDURB22   3   ALCHRC22   3         
      ALTIME23   3   ALUNIT23   3   ALDURA23   3   ALDURB23   3         
      ALCHRC23   3   ALTIME24   3   ALUNIT24   3   ALDURA24   3         
      ALDURB24   3   ALCHRC24   3   ALTIME25   3   ALUNIT25   3         
      ALDURA25   3   ALDURB25   3   ALCHRC25   3   ALTIME26   3         
      ALUNIT26   3   ALDURA26   3   ALDURB26   3   ALCHRC26   3         
      ALTIME27   3   ALUNIT27   3   ALDURA27   3   ALDURB27   3         
      ALCHRC27   3   ALTIME28   3   ALUNIT28   3   ALDURA28   3         
      ALDURB28   3   ALCHRC28   3   ALTIME29   3   ALUNIT29   3         
      ALDURA29   3   ALDURB29   3   ALCHRC29   3   ALTIME30   3         
      ALUNIT30   3   ALDURA30   3   ALDURB30   3   ALCHRC30   3         
      ALTIME31   3   ALUNIT31   3   ALDURA31   3   ALDURB31   3         
      ALCHRC31   3   ALTIME32   3   ALUNIT32   3   ALDURA32   3         
      ALDURB32   3   ALCHRC32   3   ALTIME33   3   ALUNIT33   3         
      ALDURA33   3   ALDURB33   3   ALCHRC33   3   ALTIME34   3         
      ALUNIT34   3   ALDURA34   3   ALDURB34   3   ALCHRC34   3         
      ALTIME90   3   ALUNIT90   3   ALDURA90   3   ALDURB90   3         
      ALCHRC90   3   ALTIME91   3   ALUNIT91   3   ALDURA91   3         
      ALDURB91   3   ALCHRC91   3   ALCNDRT    3   ALCHRONR   3         
                                                                        
      SMKEV      3   SMKREG     3   SMKNOW     3   SMKQTNO    3         
      SMKQTTP    3   SMKQTY     3   SMKQTD     3   CIGSDA1    3         
      CIGDAMO    3   CIGSDA2    3   CIGSDAY    3   SMKSTAT1   3         
      SMKSTAT2   3   SMKSTAT3   3   CIGQTYR    3   VIGNO      4         
      VIGTP      3   VIGFREQW   3   VIGLNGNO   4   VIGLNGTP   3         
      VIGMIN     4   VIGLONGD   3   MODNO      4   MODTP      3         
      MODFREQW   3   MODLNGNO   4   MODLNGTP   3   MODMIN     4         
      MODLONGD   3   STRNGNO    4   STRNGTP    3   STRFREQW   3         
      ALC1YR     3   ALCLIFE    3   ALC12MNO   4   ALC12MTP   3         
      ALC12MMO   3   ALC12MWK   3   ALC12MYR   4   ALCAMT     3         
      ALC5UPNO   4   ALC5UPTP   3   ALC5UPYR   4   ALCSTAT1   3         
      ALC7STAT   3   MET_FLG1   3   MET_FLG2   3   AHEIGHT    3         
      AWEIGHTP   4   DESIREWT   3   BMI        8                        
                                                                        
      AUSUALPL   3   APLKIND    3   AHCPLROU   3   AHCPLKND   3         
      SOURCELA   3   AHCCHGYR   3   AHCCHGHI   3   AHCDLYR1   3         
      AHCDLYR2   3   AHCDLYR3   3   AHCDLYR4   3   AHCDLYR5   3         
      AHCAFYR1   3   AHCAFYR2   3   AHCAFYR3   3   AHCAFYR4   3         
      ADNLONG2   3   AHCSYR1    3   AHCSYR2    3   AHCSYR3    3         
      AHCSYR4    3   AHCSYR5    3   AHCSYR6    3   AHCSYR7    3         
      AHCSYR8    3   AHCSYR9    3   AHCSYR10   3   AHERNOY2   3         
      AHCHYR     3   AHCHMOYR   3   AHCHNOY2   3   AHCNOYR2   3         
      ASRGYR     3   ASRGNOYR   3   AMDLONGR   3   SHTFLUYR   3         
      SHTPNUYR   3   APOX       3   APOX12MO   3   AHEP       3         
      AHEPLIV    3   SHTHEPB    3   SHEPDOS    3                        
                                                                        
      ALL_SA     3   EVERWRK    3   INDSTRY1   3   INDSTRY2   3         
      INDSTR1A   3   INDSTR2A   3   OCCUP1     3   OCCUP2     3         
      OCCUP1A    3   OCCUP2A    3   WRKCAT     3   WRKCATA    3         
      BUSINC1    3   BUSINC1A   3   LOCALL1    3   LOCALL1A   3         
      YRSWRK_P   3   YRSWRKPA   3   HOURPD     3   HOURPDA    3         
      PDSICK     3   PDSICKA    3   ONEJOB     3   HOME50     3         
      LEADPNT    3                                                      
                                                                        
      BLDGV      3   BLDG12M    3   HIVTST     3   WHYTST_R   3         
      TST12M_M   3   TST12M_Y   4   TIMETST    3   TSTTYR     4         
      REATST_C   3   REASWHOR   3   LASTST_C   3   CLNTYP_C   3         
      WHOADM     3   GIVNAM     3   EXTST12M   3   CHNSADSP   3         
      STMTRU     3   STD        3   STDDOC     3   STDWHER    3         
      TBHRD      3   TBKNOW     3   TB         3   TBSPRD1    3         
      TBSPRD2    3   TBSPRD3    3   TBSPRD4    3   TBSPRD5    3         
      TBSPRD6    3   TBCURED    3   TBCHANC    3   TBSHAME    3         
      HOMELESS   3                                                      
                                                                        
      DISUSEQ    3   DISAID     3   DISEQDIF   3   DISHOME    3         
      DIHM01     3   DIHM02     3   DIHM03     3   DIHM04     3         
      DIHM05     3   DIHM06     3   DIHM07     3   DIHM08     3         
      DIHM09     3   DIHM10     3   DISHMOFT   3   DISSCH     3         
      DISC01     3   DISC02     3   DISC03     3   DISC04     3         
      DISC05     3   DISC06     3   DISC07     3   DISC08     3         
      DISC09     3   DISC10     3   DISCHOFT   3   DISWRK     3         
      DIWK01     3   DIWK02     3   DIWK03     3   DIWK04     3         
      DIWK05     3   DIWK06     3   DIWK07     3   DIWK08     3         
      DIWK09     3   DIWK10     3   DISWKOFT   3   DISCA      3         
      DICA01     3   DICA02     3   DICA03     3   DICA04     3         
      DICA05     3   DICA06     3   DICA07     3   DICA08     3         
      DICA09     3   DICA10     3   DISCAOFT   3   DISHFAC    3         
      DISHFL01   3   DISHFL02   3   DISHFL03   3   DISHFL04   3         
      DISHFL05   3   DISHFL06   3   DISHFL07   3   DISHFUSE   3 ;       
                                                                        
   * INPUT ALL VARIABLES;                                               
                                                                        
   INPUT                                                                
      RECTYPE       1 -   2    SRVY_YR       3 -   6                    
      HHX      $    7 -  12    FMX      $   13 -  14                    
      PX       $   15 -  16    INTV_QRT     17 -  17                    
      SEX          18 -  18    AGE_P        19 -  20                    
      ORIGIN_I     21 -  21    ORIGIMPT     22 -  22                    
      HISPAN_I     23 -  24    HISPIMPT     25 -  25                    
      RCDT1P_I     26 -  27    RC_SMP_I     28 -  29                    
      RACERP_I     30 -  31    RACEIMPT     32 -  32                    
      MRACRP_I     33 -  34    MRACBP_I     35 -  36                    
      RACREC_I     37 -  37    HISCOD_I     38 -  38                    
      ERIMPFLG     39 -  39    EDUC         40 -  41                    
      AB_BL20K     42 -  42    RAT_CAT      43 -  44                    
      R_MARITL     45 -  45    FM_SIZE      46 -  47                    
      REGION       48 -  48    WTIA_SA      49 -  54 .1                 
      WTFA_SA      55 -  60    STRATUM      61 -  63                    
      PSU          64 -  64    PROXYSA      65 -  65                    
                                                                        
      HYPEV        66 -  66    HYPDIFV      67 -  67                    
      HYPYR        68 -  68    CHDEV        69 -  69                    
      ANGEV        70 -  70    MIEV         71 -  71                    
      HRTEV        72 -  72    STREV        73 -  73                    
      EPHEV        74 -  74    CHDYR        75 -  75                    
      ANGYR        76 -  76    MIYR         77 -  77                    
      HRTYR        78 -  78    STRYR        79 -  79                    
      EPHYR        80 -  80    HCHLEV       81 -  81                    
      PCIRCEV      82 -  82    IRRHBEV      83 -  83                    
      CONHFEV      84 -  84    HCHLYR       85 -  85                    
      PCIRCYR      86 -  86    IRRHBYR      87 -  87                    
      CONHFYR      88 -  88    AASMEV       89 -  89                    
      AASSTILL     90 -  90    AASMYR       91 -  91                    
      AASMERYR     92 -  92    AWZMSWK      93 -  95                    
      AASMED       96 -  96    AASWMP       97 -  97                    
      AAPENVLN     98 -  98    ULCEV        99 -  99                    
      ULCYR       100 - 100    BOWLEV      101 - 101                    
      BOWLYR      102 - 102    THYREV      103 - 103                    
      URINPEV     104 - 104    ALLRFEV     105 - 105                    
      ALLRMEV     106 - 106    THYRYR      107 - 107                    
      URINPYR     108 - 108    ALLRFYR     109 - 109                    
      ALLRMYR     110 - 110    MSEV        111 - 111                    
      PARKEV      112 - 112    NEUROPEV    113 - 113                    
      SEIZEV      114 - 114    INSOMYR     115 - 115                    
      FATIGYR     116 - 116    PAINYR      117 - 117                    
      ANXDEPYR    118 - 118    SPRAINYR    119 - 119                    
      DENTLPYR    120 - 120    SKINPYR     121 - 121                    
      CANEV       122 - 122    CNKIND1     123 - 123                    
      CANAGE1     124 - 125    CNKIND2     126 - 126                    
      CANAGE2     127 - 128    CNKIND3     129 - 129                    
      CANAGE3     130 - 131    CNKIND4     132 - 132                    
      CANAGE4     133 - 134    CNKIND5     135 - 135                    
      CANAGE5     136 - 137    CNKIND6     138 - 138                    
      CANAGE6     139 - 140    CNKIND7     141 - 141                    
      CANAGE7     142 - 143    CNKIND8     144 - 144                    
      CANAGE8     145 - 146    CNKIND9     147 - 147                    
      CANAGE9     148 - 149    CNKIND10    150 - 150                    
      CANAGE10    151 - 152    CNKIND11    153 - 153                    
      CANAGE11    154 - 155    CNKIND12    156 - 156                    
      CANAGE12    157 - 158    CNKIND13    159 - 159                    
      CANAGE13    160 - 161    CNKIND14    162 - 162                    
      CANAGE14    163 - 164    CNKIND15    165 - 165                    
      CANAGE15    166 - 167    CNKIND16    168 - 168                    
      CANAGE16    169 - 170    CNKIND17    171 - 171                    
      CANAGE17    172 - 173    CNKIND18    174 - 174                    
      CANAGE18    175 - 176    CNKIND19    177 - 177                    
      CANAGE19    178 - 179    CNKIND20    180 - 180                    
      CANAGE20    181 - 182    CNKIND21    183 - 183                    
      CANAGE21    184 - 185    CNKIND22    186 - 186                    
      CANAGE22    187 - 188    CNKIND23    189 - 189                    
      CANAGE23    190 - 191    CNKIND24    192 - 192                    
      CANAGE24    193 - 194    CNKIND25    195 - 195                    
      CANAGE25    196 - 197    CNKIND26    198 - 198                    
      CANAGE26    199 - 200    CNKIND27    201 - 201                    
      CANAGE27    202 - 203    CNKIND28    204 - 204                    
      CANAGE28    205 - 206    CNKIND29    207 - 207                    
      CANAGE29    208 - 209    CNKIND30    210 - 210                    
      CANAGE30    211 - 212    CNKIND31    213 - 213                    
      DIBEV       214 - 214    DIBAGE      215 - 216                    
      DIFAGE2     217 - 218    INSLN       219 - 219                    
      DIBPILL     220 - 220    AHAYFYR     221 - 221                    
      SINYR       222 - 222    CBRCHYR     223 - 223                    
      KIDWKYR     224 - 224    LIVYR       225 - 225                    
      JNTSYMP     226 - 226    JMTHP1      227 - 227                    
      JMTHP2      228 - 228    JMTHP3      229 - 229                    
      JMTHP4      230 - 230    JMTHP5      231 - 231                    
      JMTHP6      232 - 232    JMTHP7      233 - 233                    
      JMTHP8      234 - 234    JMTHP9      235 - 235                    
      JMTHP10     236 - 236    JMTHP11     237 - 237                    
      JMTHP12     238 - 238    JMTHP13     239 - 239                    
      JMTHP14     240 - 240    JMTHP15     241 - 241                    
      JMTHP16     242 - 242    JMTHP17     243 - 243                    
      JNTPN       244 - 245    JNTCHR      246 - 246                    
      JNTHP       247 - 247    ARTH1       248 - 248                    
      ARTHWT      249 - 249    ARTHPH      250 - 250                    
      ARTHCLS     251 - 251    ARTHLMT     252 - 252                    
      ARTHWRK     253 - 253    PAINECK     254 - 254                    
      PAINLB      255 - 255    PAINLEG     256 - 256                    
      PAINFACE    257 - 257    AMIGR       258 - 258                    
      ACOLD2W     259 - 259    AINTIL2W    260 - 260                    
      PREGNOW     261 - 261    MENSYR      262 - 262                    
      MENOYR      263 - 263    GYNYR       264 - 264                    
      PROSTYR     265 - 265    HEARAID     266 - 266                    
      HEARFREQ    267 - 267    AHEARST     268 - 268                    
      HEARAGE     269 - 270    HEARCAUS    271 - 272                    
      AVISION     273 - 273    ABLIND      274 - 274                    
      DIBREV      275 - 275    CATAREV     276 - 276                    
      GLAUCEV     277 - 277    MACDEV      278 - 278                    
      DIBRYR      279 - 279    CATARYR     280 - 280                    
      GLAUCYR     281 - 281    MACDYR      282 - 282                    
      AVISREH     283 - 283    AVISDEV     284 - 284                    
      AVDFNWS     285 - 285    AVDFCLS     286 - 286                    
      AVDFNIT     287 - 287    AVDFDRV     288 - 288                    
      AVDFPER     289 - 289    AVDFCRD     290 - 290                    
      AVISWRIN    291 - 291    AVISEXAM    292 - 292                    
      AVISACT     293 - 293    AVISPROT    294 - 294                    
      LUPPRT      295 - 295    SAD         296 - 296                    
      NERVOUS     297 - 297    RESTLESS    298 - 298                    
      HOPELESS    299 - 299    EFFORT      300 - 300                    
      WORTHLS     301 - 301    MHAMTMO     302 - 302                    
                                                                        
      WRKLYR3     303 - 303    WKDAYR      304 - 306                    
      BEDDAYR     307 - 309    AHSTATYR    310 - 310                    
      SPECEQ      311 - 311    FLWALK      312 - 312                    
      FLCLIMB     313 - 313    FLSTAND     314 - 314                    
      FLSIT       315 - 315    FLSTOOP     316 - 316                    
      FLREACH     317 - 317    FLGRASP     318 - 318                    
      FLCARRY     319 - 319    FLPUSH      320 - 320                    
      FLSHOP      321 - 321    FLSOCL      322 - 322                    
      FLRELAX     323 - 323    FLA1AR      324 - 324                    
      AFLHCA1     325 - 325    AFLHCA2     326 - 326                    
      AFLHCA3     327 - 327    AFLHCA4     328 - 328                    
      AFLHCA5     329 - 329    AFLHCA6     330 - 330                    
      AFLHCA7     331 - 331    AFLHCA8     332 - 332                    
      AFLHCA9     333 - 333    AFLHCA10    334 - 334                    
      AFLHCA11    335 - 335    AFLHCA12    336 - 336                    
      AFLHCA13    337 - 337    AFLHCA14    338 - 338                    
      AFLHCA15    339 - 339    AFLHCA16    340 - 340                    
      AFLHCA17    341 - 341    AFLHCA18    342 - 342                    
      AFLHCA19    343 - 343    AFLHCA20    344 - 344                    
      AFLHCA21    345 - 345    AFLHCA22    346 - 346                    
      AFLHCA23    347 - 347    AFLHCA24    348 - 348                    
      AFLHCA25    349 - 349    AFLHCA26    350 - 350                    
      AFLHCA27    351 - 351    AFLHCA28    352 - 352                    
      AFLHCA29    353 - 353    AFLHCA30    354 - 354                    
      AFLHCA31    355 - 355    AFLHCA32    356 - 356                    
      AFLHCA33    357 - 357    AFLHCA34    358 - 358                    
      AFLHCA90    359 - 359    AFLHCA91    360 - 360                    
      ALTIME1     361 - 362    ALUNIT1     363 - 363                    
      ALDURA1     364 - 365    ALDURB1     366 - 366                    
      ALCHRC1     367 - 367    ALTIME2     368 - 369                    
      ALUNIT2     370 - 370    ALDURA2     371 - 372                    
      ALDURB2     373 - 373    ALCHRC2     374 - 374                    
      ALTIME3     375 - 376    ALUNIT3     377 - 377                    
      ALDURA3     378 - 379    ALDURB3     380 - 380                    
      ALCHRC3     381 - 381    ALTIME4     382 - 383                    
      ALUNIT4     384 - 384    ALDURA4     385 - 386                    
      ALDURB4     387 - 387    ALCHRC4     388 - 388                    
      ALTIME5     389 - 390    ALUNIT5     391 - 391                    
      ALDURA5     392 - 393    ALDURB5     394 - 394                    
      ALCHRC5     395 - 395    ALTIME6     396 - 397                    
      ALUNIT6     398 - 398    ALDURA6     399 - 400                    
      ALDURB6     401 - 401    ALCHRC6     402 - 402                    
      ALTIME7     403 - 404    ALUNIT7     405 - 405                    
      ALDURA7     406 - 407    ALDURB7     408 - 408                    
      ALCHRC7     409 - 409    ALTIME8     410 - 411                    
      ALUNIT8     412 - 412    ALDURA8     413 - 414                    
      ALDURB8     415 - 415    ALCHRC8     416 - 416                    
      ALTIME9     417 - 418    ALUNIT9     419 - 419                    
      ALDURA9     420 - 421    ALDURB9     422 - 422                    
      ALCHRC9     423 - 423    ALTIME10    424 - 425                    
      ALUNIT10    426 - 426    ALDURA10    427 - 428                    
      ALDURB10    429 - 429    ALCHRC10    430 - 430                    
      ALTIME11    431 - 432    ALUNIT11    433 - 433                    
      ALDURA11    434 - 435    ALDURB11    436 - 436                    
      ALCHRC11    437 - 437    ALTIME12    438 - 439                    
      ALUNIT12    440 - 440    ALDURA12    441 - 442                    
      ALDURB12    443 - 443    ALCHRC12    444 - 444                    
      ALTIME13    445 - 446    ALUNIT13    447 - 447                    
      ALDURA13    448 - 449    ALDURB13    450 - 450                    
      ALCHRC13    451 - 451    ALTIME14    452 - 453                    
      ALUNIT14    454 - 454    ALDURA14    455 - 456                    
      ALDURB14    457 - 457    ALCHRC14    458 - 458                    
      ALTIME15    459 - 460    ALUNIT15    461 - 461                    
      ALDURA15    462 - 463    ALDURB15    464 - 464                    
      ALCHRC15    465 - 465    ALTIME16    466 - 467                    
      ALUNIT16    468 - 468    ALDURA16    469 - 470                    
      ALDURB16    471 - 471    ALCHRC16    472 - 472                    
      ALTIME17    473 - 474    ALUNIT17    475 - 475                    
      ALDURA17    476 - 477    ALDURB17    478 - 478                    
      ALCHRC17    479 - 479    ALTIME18    480 - 481                    
      ALUNIT18    482 - 482    ALDURA18    483 - 484                    
      ALDURB18    485 - 485    ALCHRC18    486 - 486                    
      ALTIME19    487 - 488    ALUNIT19    489 - 489                    
      ALDURA19    490 - 491    ALDURB19    492 - 492                    
      ALCHRC19    493 - 493    ALTIME20    494 - 495                    
      ALUNIT20    496 - 496    ALDURA20    497 - 498                    
      ALDURB20    499 - 499    ALCHRC20    500 - 500                    
      ALTIME21    501 - 502    ALUNIT21    503 - 503                    
      ALDURA21    504 - 505    ALDURB21    506 - 506                    
      ALCHRC21    507 - 507    ALTIME22    508 - 509                    
      ALUNIT22    510 - 510    ALDURA22    511 - 512                    
      ALDURB22    513 - 513    ALCHRC22    514 - 514                    
      ALTIME23    515 - 516    ALUNIT23    517 - 517                    
      ALDURA23    518 - 519    ALDURB23    520 - 520                    
      ALCHRC23    521 - 521    ALTIME24    522 - 523                    
      ALUNIT24    524 - 524    ALDURA24    525 - 526                    
      ALDURB24    527 - 527    ALCHRC24    528 - 528                    
      ALTIME25    529 - 530    ALUNIT25    531 - 531                    
      ALDURA25    532 - 533    ALDURB25    534 - 534                    
      ALCHRC25    535 - 535    ALTIME26    536 - 537                    
      ALUNIT26    538 - 538    ALDURA26    539 - 540                    
      ALDURB26    541 - 541    ALCHRC26    542 - 542                    
      ALTIME27    543 - 544    ALUNIT27    545 - 545                    
      ALDURA27    546 - 547    ALDURB27    548 - 548                    
      ALCHRC27    549 - 549    ALTIME28    550 - 551                    
      ALUNIT28    552 - 552    ALDURA28    553 - 554                    
      ALDURB28    555 - 555    ALCHRC28    556 - 556                    
      ALTIME29    557 - 558    ALUNIT29    559 - 559                    
      ALDURA29    560 - 561    ALDURB29    562 - 562                    
      ALCHRC29    563 - 563    ALTIME30    564 - 565                    
      ALUNIT30    566 - 566    ALDURA30    567 - 568                    
      ALDURB30    569 - 569    ALCHRC30    570 - 570                    
      ALTIME31    571 - 572    ALUNIT31    573 - 573                    
      ALDURA31    574 - 575    ALDURB31    576 - 576                    
      ALCHRC31    577 - 577    ALTIME32    578 - 579                    
      ALUNIT32    580 - 580    ALDURA32    581 - 582                    
      ALDURB32    583 - 583    ALCHRC32    584 - 584                    
      ALTIME33    585 - 586    ALUNIT33    587 - 587                    
      ALDURA33    588 - 589    ALDURB33    590 - 590                    
      ALCHRC33    591 - 591    ALTIME34    592 - 593                    
      ALUNIT34    594 - 594    ALDURA34    595 - 596                    
      ALDURB34    597 - 597    ALCHRC34    598 - 598                    
      ALTIME90    599 - 600    ALUNIT90    601 - 601                    
      ALDURA90    602 - 603    ALDURB90    604 - 604                    
      ALCHRC90    605 - 605    ALTIME91    606 - 607                    
      ALUNIT91    608 - 608    ALDURA91    609 - 610                    
      ALDURB91    611 - 611    ALCHRC91    612 - 612                    
      ALCNDRT     613 - 613    ALCHRONR    614 - 614                    
                                                                        
      SMKEV       615 - 615    SMKREG      616 - 617                    
      SMKNOW      618 - 618    SMKQTNO     619 - 620                    
      SMKQTTP     621 - 621    SMKQTY      622 - 623                    
      SMKQTD      624 - 624    CIGSDA1     625 - 626                    
      CIGDAMO     627 - 628    CIGSDA2     629 - 630                    
      CIGSDAY     631 - 632    SMKSTAT1    633 - 633                    
      SMKSTAT2    634 - 634    SMKSTAT3    635 - 635                    
      CIGQTYR     636 - 636    VIGNO       637 - 639                    
      VIGTP       640 - 640    VIGFREQW    641 - 642                    
      VIGLNGNO    643 - 645    VIGLNGTP    646 - 646                    
      VIGMIN      647 - 649    VIGLONGD    650 - 650                    
      MODNO       651 - 653    MODTP       654 - 654                    
      MODFREQW    655 - 656    MODLNGNO    657 - 659                    
      MODLNGTP    660 - 660    MODMIN      661 - 663                    
      MODLONGD    664 - 664    STRNGNO     665 - 667                    
      STRNGTP     668 - 668    STRFREQW    669 - 670                    
      ALC1YR      671 - 671    ALCLIFE     672 - 672                    
      ALC12MNO    673 - 675    ALC12MTP    676 - 676                    
      ALC12MMO    677 - 678    ALC12MWK    679 - 680                    
      ALC12MYR    681 - 683    ALCAMT      684 - 685                    
      ALC5UPNO    686 - 688    ALC5UPTP    689 - 689                    
      ALC5UPYR    690 - 692    ALCSTAT1    693 - 693                    
      ALC7STAT    694 - 694    MET_FLG1    695 - 695                    
      MET_FLG2    696 - 696    AHEIGHT     697 - 698                    
      AWEIGHTP    699 - 701    DESIREWT    702 - 702                    
      BMI         703 - 706 .2                                          
                                                                        
      AUSUALPL    707 - 707    APLKIND     708 - 708                    
      AHCPLROU    709 - 709    AHCPLKND    710 - 710                    
      SOURCELA    711 - 712    AHCCHGYR    713 - 713                    
      AHCCHGHI    714 - 714    AHCDLYR1    715 - 715                    
      AHCDLYR2    716 - 716    AHCDLYR3    717 - 717                    
      AHCDLYR4    718 - 718    AHCDLYR5    719 - 719                    
      AHCAFYR1    720 - 720    AHCAFYR2    721 - 721                    
      AHCAFYR3    722 - 722    AHCAFYR4    723 - 723                    
      ADNLONG2    724 - 724    AHCSYR1     725 - 725                    
      AHCSYR2     726 - 726    AHCSYR3     727 - 727                    
      AHCSYR4     728 - 728    AHCSYR5     729 - 729                    
      AHCSYR6     730 - 730    AHCSYR7     731 - 731                    
      AHCSYR8     732 - 732    AHCSYR9     733 - 733                    
      AHCSYR10    734 - 734    AHERNOY2    735 - 736                    
      AHCHYR      737 - 737    AHCHMOYR    738 - 739                    
      AHCHNOY2    740 - 741    AHCNOYR2    742 - 743                    
      ASRGYR      744 - 744    ASRGNOYR    745 - 746                    
      AMDLONGR    747 - 747    SHTFLUYR    748 - 748                    
      SHTPNUYR    749 - 749    APOX        750 - 750                    
      APOX12MO    751 - 751    AHEP        752 - 752                    
      AHEPLIV     753 - 753    SHTHEPB     754 - 754                    
      SHEPDOS     755 - 755                                             
                                                                        
      ALL_SA      756 - 756    EVERWRK     757 - 757                    
      INDSTRY1    758 - 759    INDSTRY2    760 - 761                    
      INDSTR1A    762 - 763    INDSTR2A    764 - 765                    
      OCCUP1      766 - 767    OCCUP2      768 - 769                    
      OCCUP1A     770 - 771    OCCUP2A     772 - 773                    
      WRKCAT      774 - 774    WRKCATA     775 - 775                    
      BUSINC1     776 - 776    BUSINC1A    777 - 777                    
      LOCALL1     778 - 779    LOCALL1A    780 - 781                    
      YRSWRK_P    782 - 783    YRSWRKPA    784 - 785                    
      HOURPD      786 - 786    HOURPDA     787 - 787                    
      PDSICK      788 - 788    PDSICKA     789 - 789                    
      ONEJOB      790 - 790    HOME50      791 - 791                    
      LEADPNT     792 - 792                                             
                                                                        
      BLDGV       793 - 793    BLDG12M     794 - 794                    
      HIVTST      795 - 795    WHYTST_R    796 - 797                    
      TST12M_M    798 - 799    TST12M_Y    800 - 803                    
      TIMETST     804 - 804    TSTTYR      805 - 807                    
      REATST_C    808 - 809    REASWHOR    810 - 810                    
      LASTST_C    811 - 812    CLNTYP_C    813 - 814                    
      WHOADM      815 - 815    GIVNAM      816 - 816                    
      EXTST12M    817 - 817    CHNSADSP    818 - 818                    
      STMTRU      819 - 819    STD         820 - 820                    
      STDDOC      821 - 821    STDWHER     822 - 822                    
      TBHRD       823 - 823    TBKNOW      824 - 824                    
      TB          825 - 825    TBSPRD1     826 - 826                    
      TBSPRD2     827 - 827    TBSPRD3     828 - 828                    
      TBSPRD4     829 - 829    TBSPRD5     830 - 830                    
      TBSPRD6     831 - 831    TBCURED     832 - 832                    
      TBCHANC     833 - 833    TBSHAME     834 - 834                    
      HOMELESS    835 - 835                                             
                                                                        
      DISUSEQ     836 - 836    DISAID      837 - 837                    
      DISEQDIF    838 - 838    DISHOME     839 - 839                    
      DIHM01      840 - 840    DIHM02      841 - 841                    
      DIHM03      842 - 842    DIHM04      843 - 843                    
      DIHM05      844 - 844    DIHM06      845 - 845                    
      DIHM07      846 - 846    DIHM08      847 - 847                    
      DIHM09      848 - 848    DIHM10      849 - 849                    
      DISHMOFT    850 - 850    DISSCH      851 - 851                    
      DISC01      852 - 852    DISC02      853 - 853                    
      DISC03      854 - 854    DISC04      855 - 855                    
      DISC05      856 - 856    DISC06      857 - 857                    
      DISC07      858 - 858    DISC08      859 - 859                    
      DISC09      860 - 860    DISC10      861 - 861                    
      DISCHOFT    862 - 862    DISWRK      863 - 863                    
      DIWK01      864 - 864    DIWK02      865 - 865                    
      DIWK03      866 - 866    DIWK04      867 - 867                    
      DIWK05      868 - 868    DIWK06      869 - 869                    
      DIWK07      870 - 870    DIWK08      871 - 871                    
      DIWK09      872 - 872    DIWK10      873 - 873                    
      DISWKOFT    874 - 874    DISCA       875 - 875                    
      DICA01      876 - 876    DICA02      877 - 877                    
      DICA03      878 - 878    DICA04      879 - 879                    
      DICA05      880 - 880    DICA06      881 - 881                    
      DICA07      882 - 882    DICA08      883 - 883                    
      DICA09      884 - 884    DICA10      885 - 885                    
      DISCAOFT    886 - 886    DISHFAC     887 - 887                    
      DISHFL01    888 - 888    DISHFL02    889 - 889                    
      DISHFL03    890 - 890    DISHFL04    891 - 891                    
      DISHFL05    892 - 892    DISHFL06    893 - 893                    
      DISHFL07    894 - 894    DISHFUSE    895 - 895;                   
                                                                        
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
      ORIGIN_I ="Hispanic Ethnicity"                                    
      ORIGIMPT ="Hispanic Origin Imputation Flag"                       
      HISPAN_I ="Hispanic subgroup detail"                              
      HISPIMPT ="Type of Hispanic Origin Imputation Flag"               
      RCDT1P_I ="Race coded to single/multiple race group"              
      RC_SMP_I ="Race summary detail for single/multiple"               
      RACERP_I ="OMB groups w/multiple race"                            
      RACEIMPT ="Race Imputation Flag"                                  
      MRACRP_I ="Race coded to a single race group"                     
      MRACBP_I ="Race coded to a single race group"                     
      RACREC_I ="Race Recode"                                           
      HISCOD_I ="Combined race/ethnicity recode"                        
      ERIMPFLG ="Ethnicity/Race Imputation Flag"                        
      EDUC     ="Highest level of school completed"                     
      AB_BL20K ="Fam inc at/above vs. below $20,000"                    
      RAT_CAT  ="Ratio of fam inc to poverty threshold"                 
      R_MARITL ="Marital status"                                        
      FM_SIZE  ="Number of persons in family"                           
      REGION   ="Region"                                                
      WTIA_SA  ="Weight - Interim Annual"                               
      WTFA_SA  ="Weight - Final Annual"                                 
      STRATUM  ="Stratum for variance estimation"                       
      PSU      ="PSU for variance estimation"                           
      PROXYSA  ="Response status is ......"                             
                                                                        
      HYPEV    ="Ever been told you had hypertension"                   
      HYPDIFV  ="Ever told had hypertension on 2+ visits"               
      HYPYR    ="Had hypertension, past 12 months"                      
      CHDEV    ="Ever told you had coronary heart disease"              
      ANGEV    ="Ever been told you had angina pectoris"                
      MIEV     ="Ever been told you had a heart attack"                 
      HRTEV    ="Ever told you had a heart cond/disease"                
      STREV    ="Ever been told you had a stroke"                       
      EPHEV    ="Ever been told you had emphysema"                      
      CHDYR    ="Had coronary heart disease, past 12 mths"              
      ANGYR    ="Had angina pectoris, past 12 months"                   
      MIYR     ="Had a heart attack, past 12 months"                    
      HRTYR    ="Had a heart cond/disease, past 12 months"              
      STRYR    ="Had a stroke, past 12 months"                          
      EPHYR    ="Had emphysema, past 12 months"                         
      HCHLEV   ="Ever told you had high cholesterol"                    
      PCIRCEV  ="Ever told you had poor circulation"                    
      IRRHBEV  ="Ever told you had irregular heartbeats"                
      CONHFEV  ="Ever told you had heart failure"                       
      HCHLYR   ="Had high cholesterol, past 12 months"                  
      PCIRCYR  ="Had poor circulation, past 12 months"                  
      IRRHBYR  ="Had irregular heartbeats, past 12 months"              
      CONHFYR  ="Had heart failure, past 12 months"                     
      AASMEV   ="Ever been told you had asthma"                         
      AASSTILL ="Still have asthma"                                     
      AASMYR   ="Had an asthma episode/attack, past 12 m"               
      AASMERYR ="Had visit to ER due to asthma, past 12 m"              
      AWZMSWK  ="# days missed due to asthma, past 12 mo."              
      AASMED   ="Ever taken preventive asthma meds"                     
      AASWMP   ="Given an asthma management plan"                       
      AAPENVLN ="Ever advised to change environment"                    
      ULCEV    ="Ever been told you had an ulcer"                       
      ULCYR    ="Had an ulcer in past 12 months"                        
      BOWLEV   ="Ever been told you had irritable bowel"                
      BOWLYR   ="Had irritable bowel, past 12 months"                   
      THYREV   ="Ever been told you had a thyroid prob"                 
      URINPEV  ="Ever been told you had urinary prob"                   
      ALLRFEV  ="Ever told you had food/odor allergies"                 
      ALLRMEV  ="Ever told you had medication allergies"                
      THYRYR   ="Had thyroid problems, past 12 months"                  
      URINPYR  ="Had urinary problems, past 12 months"                  
      ALLRFYR  ="Had food/odor allergies, past 12 months"               
      ALLRMYR  ="Had medication allergies, past 12 months"              
      MSEV     ="Ever told you had Multiple sclerosis"                  
      PARKEV   ="Ever told you had Parkinson's disease"                 
      NEUROPEV ="Ever told you had Neuropathy"                          
      SEIZEV   ="Ever told you had Seizures"                            
      INSOMYR  ="Had insomnia, past 12 months"                          
      FATIGYR  ="Had excessive sleepiness, past 12 months"              
      PAINYR   ="Had recurring pain, past 12 months"                    
      ANXDEPYR ="Frequently depressed, past 12 months"                  
      SPRAINYR ="Had severe sprains, past 12 months"                    
      DENTLPYR ="Had dental pain, past 12 months"                       
      SKINPYR  ="Had skin problems, past 12 months"                     
      CANEV    ="Ever told by a doctor you had cancer"                  
      CNKIND1  ="What kind of cancer...bladder"                         
      CANAGE1  ="Age first diagnosed w/bladder cancer"                  
      CNKIND2  ="What kind of cancer...blood"                           
      CANAGE2  ="Age first diagnosed w/cancer of blood"                 
      CNKIND3  ="What kind of cancer...bone"                            
      CANAGE3  ="Age first diagnosed w/bone cancer"                     
      CNKIND4  ="What kind of cancer...brain"                           
      CANAGE4  ="Age first diagnosed w/ brain cancer"                   
      CNKIND5  ="What kind of cancer...breast"                          
      CANAGE5  ="Age first diagnosed w/breast cancer"                   
      CNKIND6  ="What kind of cancer...cervix"                          
      CANAGE6  ="Age first diagnosed w/cervical cancer"                 
      CNKIND7  ="What kind of cancer...colon"                           
      CANAGE7  ="Age first diagnosed w/colon cancer"                    
      CNKIND8  ="What kind of cancer...esophagus"                       
      CANAGE8  ="Age first diagnosed w/esophageal cancer"               
      CNKIND9  ="What kind of cancer...gallbladder"                     
      CANAGE9  ="Age first diagnosed w/gallbladder cancer"              
      CNKIND10 ="What kind of cancer...kidney"                          
      CANAGE10 ="Age first diagnosed w/kidney cancer"                   
      CNKIND11 ="What kind of cancer...larynx-windpipe"                 
      CANAGE11 ="Age first diag w/cancer: larynx-windpipe"              
      CNKIND12 ="What kind of cancer...leukemia"                        
      CANAGE12 ="Age first diagnosed w/leukemia"                        
      CNKIND13 ="What kind of cancer...liver"                           
      CANAGE13 ="Age first diagnosed w/liver cancer"                    
      CNKIND14 ="What kind of cancer...lung"                            
      CANAGE14 ="Age first diagnosed w/lung cancer"                     
      CNKIND15 ="What kind of cancer...lymphoma"                        
      CANAGE15 ="Age first diagnosed w/lymphoma"                        
      CNKIND16 ="What kind of cancer...melanoma"                        
      CANAGE16 ="Age first diagnosed w/melanoma"                        
      CNKIND17 ="What kind of cancer...mouth/tongue/lip"                
      CANAGE17 ="Age first diag w/mouth/tongue/lip cancer"              
      CNKIND18 ="What kind of cancer...ovarian"                         
      CANAGE18 ="Age first diagnosed w/ovarian cancer"                  
      CNKIND19 ="What kind of cancer...pancreatic"                      
      CANAGE19 ="Age first diagnosed w/pancreatic cancer"               
      CNKIND20 ="What kind of cancer...prostate"                        
      CANAGE20 ="Age first diagnosed w/prostate cancer"                 
      CNKIND21 ="What kind of cancer...rectum"                          
      CANAGE21 ="Age first diagnosed w/cancer of rectum"                
      CNKIND22 ="What kind of cancer..skin (non-melanoma)"              
      CANAGE22 ="Age first diag:skin cancer, non-melanoma"              
      CNKIND23 ="What kind of cancer...skin (DK kind)"                  
      CANAGE23 ="Age first diag w/skin cancer, DK kind"                 
      CNKIND24 ="Type of cancer..soft tissue (muscle)"                  
      CANAGE24 ="Age first diagnosed w/soft tissue cancer"              
      CNKIND25 ="What kind of cancer...stomach"                         
      CANAGE25 ="Age first diagnosed w/stomach cancer"                  
      CNKIND26 ="What kind of cancer ... testicular"                    
      CANAGE26 ="Age first diagnosed w/testicular cancer"               
      CNKIND27 ="What kind of cancer...throat-pharynx"                  
      CANAGE27 ="Age first diag w/throat-pharynx cancer"                
      CNKIND28 ="What kind of cancer...thyroid"                         
      CANAGE28 ="Age first diagnosed w/thyroid cancer"                  
      CNKIND29 ="What kind of cancer...uterine"                         
      CANAGE29 ="Age first diagnosed w/uterine cancer"                  
      CNKIND30 ="What kind of cancer...other"                           
      CANAGE30 ="Age first diagnosed w/other cancer"                    
      CNKIND31 ="What kind of cancer...more than 3 kinds"               
      DIBEV    ="Ever been told that you have diabetes"                 
      DIBAGE   ="Age first diagnosed w/diabetes"                        
      DIFAGE2  ="Years since first diagnosed w/diabetes"                
      INSLN    ="NOW taking insulin"                                    
      DIBPILL  ="NOW taking diabetic pills"                             
      AHAYFYR  ="Told that you had hay fever, past 12 m"                
      SINYR    ="Told that you had sinusitis, past 12 m"                
      CBRCHYR  ="Told you had chronic bronchitis, 12 m"                 
      KIDWKYR  ="Told you had weak/failing kidneys, 12 m"               
      LIVYR    ="Told you had liver condition, past 12 m"               
      JNTSYMP  ="Had pain/aching at joints, past 30 d"                  
      JMTHP1   ="Which joint affected...shoulder-right"                 
      JMTHP2   ="Which joint affected...shoulder-left"                  
      JMTHP3   ="Which joint affected...elbow-right"                    
      JMTHP4   ="Which joint affected...elbow-left"                     
      JMTHP5   ="Which joint affected...hip-right"                      
      JMTHP6   ="Which joint affected...hip-left"                       
      JMTHP7   ="Which joint affected...wrist-right"                    
      JMTHP8   ="Which joint affected...wrist-left"                     
      JMTHP9   ="Which joint affected...knee-right"                     
      JMTHP10  ="Which joint affected...knee-left"                      
      JMTHP11  ="Which joint affected...ankle-right"                    
      JMTHP12  ="Which joint affected...ankle-left"                     
      JMTHP13  ="Which joint affected...toes-right"                     
      JMTHP14  ="Which joint affected...toes-left"                      
      JMTHP15  ="Which jnt affected..fingers/thumb-right"               
      JMTHP16  ="Which jnt affected..fingers/thumb-left"                
      JMTHP17  ="Which joint affected...other, not listed"              
      JNTPN    ="Rate your joint pain, past 30 days"                    
      JNTCHR   ="Joint symp began 3+ months ago"                        
      JNTHP    ="Ever seen a dr. for joint symptoms"                    
      ARTH1    ="Ever told you had arthritis, gout, lupus"              
      ARTHWT   ="Ever told to lose weight to help arth"                 
      ARTHPH   ="Ever told to exercise to help arthritis"               
      ARTHCLS  ="Ever taken a class to help arthritis"                  
      ARTHLMT  ="Limited in activities due to arthritis"                
      ARTHWRK  ="Limited in work due to arthritis"                      
      PAINECK  ="Had neck pain, past 3 months"                          
      PAINLB   ="Had low back pain, past 3 months"                      
      PAINLEG  ="Pain spread down leg/below knees"                      
      PAINFACE ="Had pain in jaw/front of ear, past 3 m"                
      AMIGR    ="Had severe headache/migraine, past 3 m"                
      ACOLD2W  ="Had a head/chest cold past 2 weeks"                    
      AINTIL2W ="Had stomach prob w/vomit/diarrhea, 2 w"                
      PREGNOW  ="Currently pregnant"                                    
      MENSYR   ="Had menstrual prob, past 12 months"                    
      MENOYR   ="Had menopausal prob, past 12 months"                   
      GYNYR    ="Had gynecologic prob, past 12 months"                  
      PROSTYR  ="Had prostate prob, past 12 months"                     
      HEARAID  ="Had ever worn a hearing aid"                           
      HEARFREQ ="How often do you wear hearing aid"                     
      AHEARST  ="Description of hearing w/o hearing aid"                
      HEARAGE  ="Age of hearing loss"                                   
      HEARCAUS ="Cause of hearing loss*"                                
      AVISION  ="Trouble seeing even w/glasses/lenses"                  
      ABLIND   ="Blind or unable to see at all"                         
      DIBREV   ="Ever told you had diabetic retinopathy"                
      CATAREV  ="Ever told you had cataracts"                           
      GLAUCEV  ="Ever told you had Glaucoma"                            
      MACDEV   ="Ever told you had Macular degeneration"                
      DIBRYR   ="Had diabetic retinopathy, past 12 months"              
      CATARYR  ="Had cataracts, past 12 months"                         
      GLAUCYR  ="Had glaucoma, past 12 months"                          
      MACDYR   ="Had macular degeneration, past 12 months"              
      AVISREH  ="Use any vision rehab services"                         
      AVISDEV  ="Use any adaptive devices"                              
      AVDFNWS  ="How difficult to read due to eyesight"                 
      AVDFCLS  ="How diff seeing up close b/c of eyesight"              
      AVDFNIT  ="How diff to step down at night b/c sight"              
      AVDFDRV  ="How diff daytime driving b/c sight"                    
      AVDFPER  ="How diff noticing objects b/c of sight"                
      AVDFCRD  ="How diff to find shelved obj b/c of sigh"              
      AVISWRIN ="Ever had eye injury at work"                           
      AVISEXAM ="Last eye exam w/ pupils dilated"                       
      AVISACT  ="Engage in acts that can cause eye injury"              
      AVISPROT ="How often do you wear eye protection"                  
      LUPPRT   ="Lost all upper & lower natural teeth"                  
      SAD      ="So sad nothing cheers you up, past 30 d"               
      NERVOUS  ="How often felt nervous, past 30 days"                  
      RESTLESS ="How often restless/fidgety, past 30 days"              
      HOPELESS ="How often felt hopeless, past 30 days"                 
      EFFORT   ="Felt everything was an effort, past 30 d"              
      WORTHLS  ="How often felt worthless, past 30 days"                
      MHAMTMO  ="Feelings interfered w/life, past 30 days"              
                                                                        
      WRKLYR3  ="Work status: last week, past 12 m"                     
      WKDAYR   ="Number of work loss days, past 12 months"              
      BEDDAYR  ="Number of bed days, past 12 months"                    
      AHSTATYR ="Hlth better/worse/same, comp w/12m ago"                
      SPECEQ   ="Have hlth prob that requires spec equip"               
      FLWALK   ="How dif walk 1/4 mile w/o spec equip"                  
      FLCLIMB  ="How dif walk up 10 steps w/o spec equip"               
      FLSTAND  ="How dif stand for 2 hrs w/o spec equip"                
      FLSIT    ="How dif sit for 2 hrs w/o spec equip"                  
      FLSTOOP  ="How dif stoop/bend/kneel w/o spec equip"               
      FLREACH  ="How dif reach over head w/o spec equip"                
      FLGRASP  ="How dif grasp objects w/o spec equip"                  
      FLCARRY  ="How dif lift/carry 10 lbs w/o spec equip"              
      FLPUSH   ="How dif push large object w/o spec equip"              
      FLSHOP   ="How dif go out to events w/o spec equip"               
      FLSOCL   ="How dif social activities w/o spec equip"              
      FLRELAX  ="How dif do acts to relax w/o spec equip"               
      FLA1AR   ="Any functional limitation, all conds"                  
      AFLHCA1  ="Vision problem"                                        
      AFLHCA2  ="Hearing problem"                                       
      AFLHCA3  ="Arthritis/rheumatism"                                  
      AFLHCA4  ="Back/neck problem"                                     
      AFLHCA5  ="Fracture/bone/joint injury"                            
      AFLHCA6  ="Other injury"                                          
      AFLHCA7  ="Heart problem"                                         
      AFLHCA8  ="Stroke problem"                                        
      AFLHCA9  ="Hypertension/high blood pressure"                      
      AFLHCA10 ="Diabetes"                                              
      AFLHCA11 ="Lung/breathing prob/asthma/emphysema"                  
      AFLHCA12 ="Cancer"                                                
      AFLHCA13 ="Birth defect"                                          
      AFLHCA14 ="Mental retardation"                                    
      AFLHCA15 ="Otr developmental prob/cerebral palsy"                 
      AFLHCA16 ="Senility/dementia/alzheimers"                          
      AFLHCA17 ="Depression/anxiety/emotional problem"                  
      AFLHCA18 ="Weight problem/overweight/obesity"                     
      AFLHCA19 ="Missing or amputated limb/finger/digit"                
      AFLHCA20 ="Musculoskeletal/connective tissue prob"                
      AFLHCA21 ="Circulation problem"                                   
      AFLHCA22 ="Endocrine/nutritional/metabolic prob"                  
      AFLHCA23 ="Nervous system/sensory organ condition"                
      AFLHCA24 ="Digestive system problem"                              
      AFLHCA25 ="Genitourinary system problem"                          
      AFLHCA26 ="Skin/subcutaneous system problem"                      
      AFLHCA27 ="Blood or blood-forming organ problem"                  
      AFLHCA28 ="Benign tumor/cyst"                                     
      AFLHCA29 ="Alcohol/drug/substance abuse problem"                  
      AFLHCA30 ="Otr mental prob/ADD/bipolar/schizophreni"              
      AFLHCA31 ="Surgical after-effects/medical treatment"              
      AFLHCA32 ='"Old age"/elderly/aging-related problem'               
      AFLHCA33 ="Fatigue/tiredness/weakness"                            
      AFLHCA34 ="Pregnancy-related problem"                             
      AFLHCA90 ="Other prob 1, not elsewhere classified"                
      AFLHCA91 ="Other prob 2, not elsewhere classified"                
      ALTIME1  ="Duration of vision prob: # of units"                   
      ALUNIT1  ="Duration of vision prob: Time unit"                    
      ALDURA1  ="Duration of vision prob (in years)"                    
      ALDURB1  ="Duration of vision prob recode 2"                      
      ALCHRC1  ="Vision problem condition status"                       
      ALTIME2  ="Duration of hearing prob: # of units"                  
      ALUNIT2  ="Duration of hearing prob: Time unit"                   
      ALDURA2  ="Duration of hearing prob (in years)"                   
      ALDURB2  ="Duration of hearing prob recode 2"                     
      ALCHRC2  ="hearing problem condition status"                      
      ALTIME3  ="Duration of arthritis/rheum: # of units"               
      ALUNIT3  ="Duration of arthritis/rheum: Time unit"                
      ALDURA3  ="Duration of arthritis/rheum (in years)"                
      ALDURB3  ="Duration of arthritis/rheum recode 2"                  
      ALCHRC3  ="Arthritis/rheum condition status"                      
      ALTIME4  ="Duration of back/neck prob: # of units"                
      ALUNIT4  ="Duration of back/neck prob: Time unit"                 
      ALDURA4  ="Duration of back/neck prob (in years)"                 
      ALDURB4  ="Duration of back/neck prob recode 2"                   
      ALCHRC4  ="Back/neck problem condition status"                    
      ALTIME5  ="Dur of fract/bone/joint inj: # of units"               
      ALUNIT5  ="Dur of fract/bone/joint inj: Time unit"                
      ALDURA5  ="Dur of fract/bone/joint inj (in years)"                
      ALDURB5  ="Dur of fract/bone/joint inj recode 2"                  
      ALCHRC5  ="Fract/bone/joint inj condition status"                 
      ALTIME6  ="Duration of other injury: # of units"                  
      ALUNIT6  ="Duration of other injury: Time unit"                   
      ALDURA6  ="Duration of other injury (in years)"                   
      ALDURB6  ="Duration of other injury recode 2"                     
      ALCHRC6  ="Other injury condition status"                         
      ALTIME7  ="Duration of heart prob: # of units"                    
      ALUNIT7  ="Duration of heart prob: Time unit"                     
      ALDURA7  ="Duration of heart prob (in years)"                     
      ALDURB7  ="Duration of heart prob recode 2"                       
      ALCHRC7  ="Heart problem condition status"                        
      ALTIME8  ="Duration of stroke: # of units"                        
      ALUNIT8  ="Duration of stroke: Time unit"                         
      ALDURA8  ="Duration of stroke (in years)"                         
      ALDURB8  ="Duration of stroke recode 2"                           
      ALCHRC8  ="Stroke condition status"                               
      ALTIME9  ="Duration of hypertension: # of units"                  
      ALUNIT9  ="Duration of hypertension: Time unit"                   
      ALDURA9  ="Duration of hypertension (in years)"                   
      ALDURB9  ="Duration of hypertension recode 2"                     
      ALCHRC9  ="Hypertension condition status"                         
      ALTIME10 ="Duration of diabetes: # of units"                      
      ALUNIT10 ="Duration of diabetes: Time unit"                       
      ALDURA10 ="Duration of diabetes (in years)"                       
      ALDURB10 ="Duration of diabetes recode 2"                         
      ALCHRC10 ="Diabetes condition status"                             
      ALTIME11 ="Duration of lung/breath prob: # of units"              
      ALUNIT11 ="Duration of lung/breath prob: Time unit"               
      ALDURA11 ="Duration of lung/breath prob (in years)"               
      ALDURB11 ="Duration of lung/breath prob recode 2"                 
      ALCHRC11 ="Lung/breath prob condition status"                     
      ALTIME12 ="Duration of cancer: # of units"                        
      ALUNIT12 ="Duration of cancer: Time unit"                         
      ALDURA12 ="Duration of cancer (in years)"                         
      ALDURB12 ="Duration of cancer recode 2"                           
      ALCHRC12 ="Cancer condition status"                               
      ALTIME13 ="Duration of birth defect: # of units"                  
      ALUNIT13 ="Duration of birth defect: Time unit"                   
      ALDURA13 ="Duration of birth defect (in years)"                   
      ALDURB13 ="Duration of birth defect recode 2"                     
      ALCHRC13 ="Birth defect condition status"                         
      ALTIME14 ="Dur of mental retardation: # of units"                 
      ALUNIT14 ="Dur of mental retardation: Time unit"                  
      ALDURA14 ="Dur of mental retardation (in years)"                  
      ALDURB14 ="Duration of mental retardation recode 2"               
      ALCHRC14 ="Mental retardation condition status"                   
      ALTIME15 ="Duration of otr dev prob: # of units"                  
      ALUNIT15 ="Duration of otr dev prob: Time unit"                   
      ALDURA15 ="Duration of otr dev prob (in years)"                   
      ALDURB15 ="Duration of otr dev prob recode 2"                     
      ALCHRC15 ="Otr dev problem condition status"                      
      ALTIME16 ="Duration of senility: # of units"                      
      ALUNIT16 ="Duration of senility: Time unit"                       
      ALDURA16 ="Duration of senility (in years)"                       
      ALDURB16 ="Duration of senility recode 2"                         
      ALCHRC16 ="Senility condition status"                             
      ALTIME17 ="Dur of dep/anx/emot prob: # of units"                  
      ALUNIT17 ="Duration of dep/anx/emot prob: Time unit"              
      ALDURA17 ="Duration of dep/anx/emot prob (in years)"              
      ALDURB17 ="Duration of dep/anx/emot prob recode 2"                
      ALCHRC17 ="Dep/anx/emot problem condition status"                 
      ALTIME18 ="Duration of weight prob: # of units"                   
      ALUNIT18 ="Duration of weight prob: Time unit"                    
      ALDURA18 ="Duration of weight prob (in years)"                    
      ALDURB18 ="Duration of weight prob recode 2"                      
      ALCHRC18 ="Weight problem condition status"                       
      ALTIME19 ="Dur of miss limb/amputation: # of units"               
      ALUNIT19 ="Dur of miss limb/amputation: Time unit"                
      ALDURA19 ="Dur of miss limb/amputation (in years)"                
      ALDURB19 ="Dur of miss limb/amputation recode 2"                  
      ALCHRC19 ="Missing limb/amputation condition status"              
      ALTIME20 ="Dur of musculoskeletal prob: # of units"               
      ALUNIT20 ="Dur of musculoskeletal prob: Time unit"                
      ALDURA20 ="Dur of musculoskeletal prob: (in years)"               
      ALDURB20 ="Dur of musculoskeletal prob recode 2"                  
      ALCHRC20 ="Musculoskeletal problem condition status"              
      ALTIME21 ="Duration of circulatory prob: # of units"              
      ALUNIT21 ="Duration of circulatory prob: Time unit"               
      ALDURA21 ="Duration of circulatory prob (in years)"               
      ALDURB21 ="Duration of circulatory prob recode 2"                 
      ALCHRC21 ="Circulatory problem condition status"                  
      ALTIME22 ="Duration of endocrine prob: # of units"                
      ALUNIT22 ="Duration of endocrine problem: Time unit"              
      ALDURA22 ="Duration of endocrine problem (in years)"              
      ALDURB22 ="Duration of endocrine problem recode 2"                
      ALCHRC22 ="Endocrine problem condition status"                    
      ALTIME23 ="Duration of nervous sys cond: # of units"              
      ALUNIT23 ="Duration of nervous sys cond: Time unit"               
      ALDURA23 ="Duration of nervous sys cond (in years)"               
      ALDURB23 ="Duration of nervous sys cond recode 2"                 
      ALCHRC23 ="Nervous sys condition status"                          
      ALTIME24 ="Duration of digestive prob: # of units"                
      ALUNIT24 ="Duration of digestive prob: Time unit"                 
      ALDURA24 ="Duration of digestive prob (in years)"                 
      ALDURB24 ="Duration of digestive problem recode 2"                
      ALCHRC24 ="Digestive problem condition status"                    
      ALTIME25 ="Dur of genitourinary prob: # of units"                 
      ALUNIT25 ="Dur of genitourinary prob: Time unit"                  
      ALDURA25 ="Dur of genitourinary prob (in years)"                  
      ALDURB25 ="Duration of genitourinary prob recode 2"               
      ALCHRC25 ="Genitourinary prob condition status"                   
      ALTIME26 ="Duration of skin problem: # of units"                  
      ALUNIT26 ="Duration of skin problem: Time unit"                   
      ALDURA26 ="Duration of skin problem (in years)"                   
      ALDURB26 ="Duration of skin problem recode 2"                     
      ALCHRC26 ="Skin problem condition status"                         
      ALTIME27 ="Duration of blood problem: # of units"                 
      ALUNIT27 ="Duration of blood problem: Time unit"                  
      ALDURA27 ="Duration of blood problem (in years)"                  
      ALDURB27 ="Duration of blood problem recode 2"                    
      ALCHRC27 ="Blood problem condition status"                        
      ALTIME28 ="Duration of benign tumor: # of units"                  
      ALUNIT28 ="Duration of benign tumor: Time unit"                   
      ALDURA28 ="Duration of benign tumor (in years)"                   
      ALDURB28 ="Duration of benign tumor recode 2"                     
      ALCHRC28 ="Benign tumor condition status"                         
      ALTIME29 ="Dur of alcohol/drug prob: # of units"                  
      ALUNIT29 ="Duration of alcohol/drug prob: Time unit"              
      ALDURA29 ="Duration of alcohol/drug prob (in years)"              
      ALDURB29 ="Duration of alcohol/drug prob recode 2"                
      ALCHRC29 ="Alcohol or drug prob condition status"                 
      ALTIME30 ="Duration of oth mental prob: # of units"               
      ALUNIT30 ="Duration of oth mental prob: Time unit"                
      ALDURA30 ="Duration of oth mental prob (in years)"                
      ALDURB30 ="Duration of oth mental prob recode 2"                  
      ALCHRC30 ="Oth mental prob condition status"                      
      ALTIME31 ="Dur of surg after-effects: # of units"                 
      ALUNIT31 ="Dur of surg after-effects: Time unit"                  
      ALDURA31 ="Dur of surg after-effects (in years)"                  
      ALDURB31 ="Duration of surg after-effects recode 2"               
      ALCHRC31 ="Surgical after-effects condition status"               
      ALTIME32 ='Duration of "old age": # of units'                     
      ALUNIT32 ='Duration of "old age": Time unit'                      
      ALDURA32 ='Duration of "old age" (in years)'                      
      ALDURB32 ='Duration of "old age" recode 2'                        
      ALCHRC32 ='"Old age" condition status'                            
      ALTIME33 ="Duration of fatigue prob: # of units"                  
      ALUNIT33 ="Duration of fatigue prob: Time unit"                   
      ALDURA33 ="Duration of fatigue prob (in years)"                   
      ALDURB33 ="Duration of fatigue prob recode 2"                     
      ALCHRC33 ="Fatigue problem condition status"                      
      ALTIME34 ="Dur of preg-related prob: # of units"                  
      ALUNIT34 ="Duration of preg-related prob: Time unit"              
      ALDURA34 ="Duration of preg-related prob (in years)"              
      ALDURB34 ="Duration of preg-related prob recode 2"                
      ALCHRC34 ="Pregnancy-related prob condition status"               
      ALTIME90 ="Dur of oth N.E.C. prob (1): # of units"                
      ALUNIT90 ="Dur of oth N.E.C. prob (1): Time unit"                 
      ALDURA90 ="Dur of oth N.E.C. prob (1) (in years)"                 
      ALDURB90 ="Dur of oth N.E.C. prob (1) recode 2"                   
      ALCHRC90 ="Other N.E.C. prob (1) condition status"                
      ALTIME91 ="Dur of oth N.E.C. prob (2): # of units"                
      ALUNIT91 ="Dur of oth N.E.C. prob (2): Time unit"                 
      ALDURA91 ="Dur of oth N.E.C. prob (2) (in years)"                 
      ALDURB91 ="Dur of oth N.E.C. prob (2) recode 2"                   
      ALCHRC91 ="Other N.E.C. prob (2) condition status"                
      ALCNDRT  ="Chronic cond rec for ind w/functl lim"                 
      ALCHRONR ="Overall functl lim recode by cond status"              
                                                                        
      SMKEV    ="Ever smoked 100 cigarettes"                            
      SMKREG   ="Age first smoked fairly regularly"                     
      SMKNOW   ="Smoke freq: every day/some days/not at a"              
      SMKQTNO  ="Time since quit smoking: # of units"                   
      SMKQTTP  ="Time since quit smoking: Time unit"                    
      SMKQTY   ="Time since quit smoking (in years)"                    
      SMKQTD   ="Quit smoking since {month, 1 year ago}"                
      CIGSDA1  ="Number cigs per day (daily smokers)"                   
      CIGDAMO  ="Number days smoked in past 30 days"                    
      CIGSDA2  ="Number cigs in a day (some day smokers)"               
      CIGSDAY  ="Number cigs a day (all smokers)"                       
      SMKSTAT1 ="Smoking Status: Recode 1"                              
      SMKSTAT2 ="Smoking Status: Recode 2"                              
      SMKSTAT3 ="Smoking Status: Recode 3"                              
      CIGQTYR  ="Tried quit smoking 1+ days, past 12 m"                 
      VIGNO    ="Freq vigorous activity: # of units"                    
      VIGTP    ="Freq vigorous activity: Time units"                    
      VIGFREQW ="Freq vigorous activity (times per wk)"                 
      VIGLNGNO ="Duration vig activity: # of units"                     
      VIGLNGTP ="Duration vigorous activity: Time unit"                 
      VIGMIN   ="Duration vigorous activity (in minutes)"               
      VIGLONGD ="Dur of vigorous activity: <20 or 20+ min"              
      MODNO    ="Freq light/mod activity: # of units"                   
      MODTP    ="Freq light/mod activity: Time units"                   
      MODFREQW ="Freq light/mod activity (times per wk)"                
      MODLNGNO ="Duration light/mod activity: # of units"               
      MODLNGTP ="Duration light/mod activity: Time unit"                
      MODMIN   ="Duration light/mod activity (in minutes)"              
      MODLONGD ="Dur of lite/mod activity: <20 or 20+ min"              
      STRNGNO  ="Freq strengthening activity: # of units"               
      STRNGTP  ="Freq strengthening activity: Time unit"                
      STRFREQW ="Freq strength activity (times per wk)"                 
      ALC1YR   ="Ever had 12+ drinks in any one year"                   
      ALCLIFE  ="Had 12+ drinks in ENTIRE LIFE"                         
      ALC12MNO ="Freq drank alcohol past year: # of units"              
      ALC12MTP ="Freq drank alcohol past year: Time unit"               
      ALC12MMO ="Freq drank alcohol: Days per month"                    
      ALC12MWK ="Freq drank alcohol: Days per week"                     
      ALC12MYR ="Freq drank alcohol: Days in past year"                 
      ALCAMT   ="Average # drinks on days drank"                        
      ALC5UPNO ="Days had 5+ drinks, past year: # of days"              
      ALC5UPTP ="Days had 5+ drinks past year: Time unit"               
      ALC5UPYR ="Number of days had 5+ drinks past year"                
      ALCSTAT1 ="Alcohol Drinking Status: Recode"                       
      ALC7STAT ="Current alcohol drinking status: Recode"               
      MET_FLG1 ="Flag: Metric units reported for height"                
      MET_FLG2 ="Flag: Metric units reported for weight"                
      AHEIGHT  ="Total height in inches"                                
      AWEIGHTP ="Weight w/o shoes (pounds)"                             
      DESIREWT ="Desirable Body Weight"                                 
      BMI      ="Body Mass Index (BMI)"                                 
                                                                        
      AUSUALPL ="Place USUALLY go when sick"                            
      APLKIND  ="Place to go when sick (most often)"                    
      AHCPLROU ="USUALLY go there for routine/prev care"                
      AHCPLKND ="Place usually go for routine prev care"                
      SOURCELA ="Source of medical care recode"                         
      AHCCHGYR ="Change health care place, past 12 mo"                  
      AHCCHGHI ="Change due to hlth insurance"                          
      AHCDLYR1 ="Couldn't get through on phone, past 12 m"              
      AHCDLYR2 ="Couldn't get appt soon enough, past 12 m"              
      AHCDLYR3 ="Wait too long in dr's office, past 12 mo"              
      AHCDLYR4 ="Not open when you could go, past 12 mo"                
      AHCDLYR5 ="No transportation, past 12 mo"                         
      AHCAFYR1 ="Can't afford presc medicine, past 12 mo"               
      AHCAFYR2 ="Can't afford mental care/counsel, 12 mo"               
      AHCAFYR3 ="Can't afford dental care, past 12 mo"                  
      AHCAFYR4 ="Can't afford eyeglasses, past 12 mo"                   
      ADNLONG2 ="Time since last saw a dentist"                         
      AHCSYR1  ="Seen/talk to mental hlth prof, past 12 m"              
      AHCSYR2  ="Seen/talk to eye doctor, past 12 mo"                   
      AHCSYR3  ="Seen/talk to foot doctor, past 12 mo"                  
      AHCSYR4  ="Seen/talk to a chiropractor, past 12 mo"               
      AHCSYR5  ="Seen/talk to therapist (PT/OT) past 12 m"              
      AHCSYR6  ="Seen/talk to a NP/PA/midwife, past 12 mo"              
      AHCSYR7  ="Seen/talk to OB/GYN, past 12 mo"                       
      AHCSYR8  ="Seen/talk to a med specialist, past 12 m"              
      AHCSYR9  ="Seen/talk to a general doctor, past 12 m"              
      AHCSYR10 ="Does that Dr treat both kids and adults"               
      AHERNOY2 ="# times in ER/ED, past 12 mo"                          
      AHCHYR   ="Get home care from hlth prof, past 12 mo"              
      AHCHMOYR ="How many months of home care, past 12 mo"              
      AHCHNOY2 ="Total number of home visits"                           
      AHCNOYR2 ="Total number of office visits, past 12 m"              
      ASRGYR   ="Had surgery in the past 12 mo"                         
      ASRGNOYR ="Total # of surgeries in the past 12 mo"                
      AMDLONGR ="Time since last saw/talked to hlth prof"               
      SHTFLUYR ="Had flu shot past 12 mo"                               
      SHTPNUYR ="Ever had pneumonia shot"                               
      APOX     ="Ever had chickenpox"                                   
      APOX12MO ="Had chickenpox, past 12 mo"                            
      AHEP     ="Ever had hepatitis"                                    
      AHEPLIV  ="Ever lived w/ someone w/ hepatitis"                    
      SHTHEPB  ="Ever received hepatitis B vaccine"                     
      SHEPDOS  ="# doses of hepatitis B vaccine received"               
                                                                        
      ALL_SA   ="Employment status"                                     
      EVERWRK  ="Ever worked"                                           
      INDSTRY1 ="Detailed industry classification"                      
      INDSTRY2 ="Simple industry classification"                        
      INDSTR1A ="Detailed industry classification"                      
      INDSTR2A ="Simple industry classification"                        
      OCCUP1   ="Detailed occupation classification"                    
      OCCUP2   ="Simple occupation classification"                      
      OCCUP1A  ="Detailed occupation classification"                    
      OCCUP2A  ="Simple occupation classification"                      
      WRKCAT   ="Class of worker"                                       
      WRKCATA  ="Class of worker"                                       
      BUSINC1  ="Current job an incorporated business"                  
      BUSINC1A ="Current/last/longest-held job inc bus"                 
      LOCALL1  ="Number of employees at work"                           
      LOCALL1A ="Number of employees at work"                           
      YRSWRK_P ="Years on the job"                                      
      YRSWRKPA ="Years on the job"                                      
      HOURPD   ="Paid by the hour at current job"                       
      HOURPDA  ="Paid by hr at current/most recent job"                 
      PDSICK   ="Paid sick leave at current job"                        
      PDSICKA  ="Paid sick leave current/most recent job"               
      ONEJOB   ="Have more than one job"                                
      HOME50   ="Home built before 1950?"                               
      LEADPNT  ="Paint tested for lead"                                 
                                                                        
      BLDGV    ="Donated blood since March 1985"                        
      BLDG12M  ="Donated blood past 12 m"                               
      HIVTST   ="Ever been tested for HIV?"                             
      WHYTST_R ="Reason why you have not been tested?"                  
      TST12M_M ="Month of last test for HIV"                            
      TST12M_Y ="Year of last test for HIV"                             
      TIMETST  ="Was it:"                                               
      TSTTYR   ="# times tested for HIV, past 12m"                      
      REATST_C ="Main reason for last HIV test"                         
      REASWHOR ="Who suggested you should be tested"                    
      LASTST_C ="Location of last HIV test"                             
      CLNTYP_C ="Type of clinic for last HIV test"                      
      WHOADM   ="Who administered the test?"                            
      GIVNAM   ="Gave your first and last names?"                       
      EXTST12M ="HIV test in the next 12 m"                             
      CHNSADSP ="Chances of getting AIDS virus"                         
      STMTRU   ="Are any of these statements true"                      
      STD      ="Had an STD otr than HIV/AIDS, past 5 yrs"              
      STDDOC   ="Saw a doctor or health professional"                   
      STDWHER  ="Place where checked"                                   
      TBHRD    ="Ever heard of tuberculosis"                            
      TBKNOW   ="Ever personally known anyone who had TB"               
      TB       ="How much do you know about TB?"                        
      TBSPRD1  ="Breathing air around person sick with TB"              
      TBSPRD2  ="Sharing eating/drinking utensils"                      
      TBSPRD3  ="Thru semen/vaginal secretions (sex)"                   
      TBSPRD4  ="From smoking"                                          
      TBSPRD5  ="From mosquito or other insect bites"                   
      TBSPRD6  ="Other"                                                 
      TBCURED  ="Can TB be cured?"                                      
      TBCHANC  ="Chances of getting TB"                                 
      TBSHAME  ="Ashamed if you/family diagnosed with TB"               
      HOMELESS ="Spent 24+ hrs living in st., shltr, jail"              
                                                                        
      DISUSEQ  ="NOW use spec equip or assistive devices?"              
      DISAID   ="Know of any spec equip/assistive devices"              
      DISEQDIF ="Have diff w/o spec equip/assist dev?"                  
      DISHOME  ="Barriers limit home act or hh resp?"                   
      DIHM01   ="Building design"                                       
      DIHM02   ="Lighting"                                              
      DIHM03   ="Sound"                                                 
      DIHM04   ="HH/Workplace equip hard to use"                        
      DIHM05   ="Crowds"                                                
      DIHM06   ="Sidewalks and curbs"                                   
      DIHM07   ="Transportation"                                        
      DIHM08   ="Attitudes of other people"                             
      DIHM09   ="Policies"                                              
      DIHM10   ="Other barriers"                                        
      DISHMOFT ="How often things limit/prevent home act?"              
      DISSCH   ="Barriers NOW limit/prevent school"                     
      DISC01   ="Building design"                                       
      DISC02   ="Lighting"                                              
      DISC03   ="Sound"                                                 
      DISC04   ="HH/Workplace equip hard to use"                        
      DISC05   ="Crowds"                                                
      DISC06   ="Sidewalks and curbs"                                   
      DISC07   ="Transportation"                                        
      DISC08   ="Attitudes of other people"                             
      DISC09   ="Policies"                                              
      DISC10   ="Other barriers"                                        
      DISCHOFT ="How often things limit/prevent training?"              
      DISWRK   ="Barriers NOW limit you from working?"                  
      DIWK01   ="Building design"                                       
      DIWK02   ="Lighting"                                              
      DIWK03   ="Sound"                                                 
      DIWK04   ="HH/Workplace equip hard to use"                        
      DIWK05   ="Crowds"                                                
      DIWK06   ="Sidewalks and curbs"                                   
      DIWK07   ="Transportation"                                        
      DIWK08   ="Attitudes of other people"                             
      DIWK09   ="Policies"                                              
      DIWK10   ="Other barriers"                                        
      DISWKOFT ="How often things limit/prevent working?"               
      DISCA    ="Barriers NOW limit/prevent comm act"                   
      DICA01   ="Building design"                                       
      DICA02   ="Lighting"                                              
      DICA03   ="Sound"                                                 
      DICA04   ="HH/Workplace equip hard to use"                        
      DICA05   ="Crowds"                                                
      DICA06   ="Sidewalks and curbs"                                   
      DICA07   ="Transportation"                                        
      DICA08   ="Attitudes of other people"                             
      DICA09   ="Policies"                                              
      DICA10   ="Other barriers"                                        
      DISCAOFT ="How often things limit/prevent comm act?"              
      DISHFAC  ="Access to hlth club/fitness facility"                  
      DISHFL01 ="None; no reason given"                                 
      DISHFL02 ="Cost too high for budget"                              
      DISHFL03 ="Lack of transportation"                                
      DISHFL04 ="Access into/within the building"                       
      DISHFL05 ="Lack of exercise equip that meets needs"               
      DISHFL06 ="No instructor to demonstrate equip"                    
      DISHFL07 ="Other"                                                 
      DISHFUSE ="Used health club 10+ times"                            
   ;                                                                    
                                                                        
   * ASSOCIATE VARIABLES WITH FORMAT VALUES;                            
                                                                        
   FORMAT                                                               
      RECTYPE  SAP001X.    SRVY_YR  SAP002X.    FMX      $SAP004X.      
      PX       $SAP005X.   INTV_QRT SAP006X.    SEX      SAP007X.       
      AGE_P    SAP008X.    ORIGIN_I SAP009X.    ORIGIMPT SAP010X.       
      HISPAN_I SAP011X.    HISPIMPT SAP012X.    RCDT1P_I SAP013X.       
      RC_SMP_I SAP014X.    RACERP_I SAP015X.    RACEIMPT SAP016X.       
      MRACRP_I SAP017X.    MRACBP_I SAP018X.    RACREC_I SAP019X.       
      HISCOD_I SAP020X.    ERIMPFLG SAP021X.    EDUC     SAP022X.       
      AB_BL20K SAP023X.    RAT_CAT  SAP024X.    R_MARITL SAP025X.       
      FM_SIZE  SAP026X.    REGION   SAP027X.    PROXYSA  SAP032X.       
                                                                        
      HYPEV    SAP033X.    HYPDIFV  SAP034X.    HYPYR    SAP034X.       
      CHDEV    SAP033X.    ANGEV    SAP033X.    MIEV     SAP033X.       
      HRTEV    SAP033X.    STREV    SAP033X.    EPHEV    SAP033X.       
      CHDYR    SAP034X.    ANGYR    SAP034X.    MIYR     SAP034X.       
      HRTYR    SAP034X.    STRYR    SAP034X.    EPHYR    SAP034X.       
      HCHLEV   SAP033X.    PCIRCEV  SAP033X.    IRRHBEV  SAP033X.       
      CONHFEV  SAP033X.    HCHLYR   SAP034X.    PCIRCYR  SAP034X.       
      IRRHBYR  SAP034X.    CONHFYR  SAP034X.    AASMEV   SAP033X.       
      AASSTILL SAP034X.    AASMYR   SAP034X.    AASMERYR SAP034X.       
      AWZMSWK  SAP060X.    AASMED   SAP034X.    AASWMP   SAP034X.       
      AAPENVLN SAP063X.    ULCEV    SAP033X.    ULCYR    SAP034X.       
      BOWLEV   SAP033X.    BOWLYR   SAP034X.    THYREV   SAP033X.       
      URINPEV  SAP033X.    ALLRFEV  SAP033X.    ALLRMEV  SAP033X.       
      THYRYR   SAP034X.    URINPYR  SAP034X.    ALLRFYR  SAP034X.       
      ALLRMYR  SAP034X.    MSEV     SAP033X.    PARKEV   SAP033X.       
      NEUROPEV SAP033X.    SEIZEV   SAP033X.    INSOMYR  SAP033X.       
      FATIGYR  SAP033X.    PAINYR   SAP033X.    ANXDEPYR SAP033X.       
      SPRAINYR SAP033X.    DENTLPYR SAP033X.    SKINPYR  SAP033X.       
      CANEV    SAP033X.    CNKIND1  SAP088X.    CANAGE1  SAP089X.       
      CNKIND2  SAP088X.    CANAGE2  SAP089X.    CNKIND3  SAP088X.       
      CANAGE3  SAP089X.    CNKIND4  SAP088X.    CANAGE4  SAP089X.       
      CNKIND5  SAP088X.    CANAGE5  SAP089X.    CNKIND6  SAP088X.       
      CANAGE6  SAP089X.    CNKIND7  SAP088X.    CANAGE7  SAP089X.       
      CNKIND8  SAP088X.    CANAGE8  SAP089X.    CNKIND9  SAP088X.       
      CANAGE9  SAP089X.    CNKIND10 SAP088X.    CANAGE10 SAP089X.       
      CNKIND11 SAP088X.    CANAGE11 SAP089X.    CNKIND12 SAP088X.       
      CANAGE12 SAP089X.    CNKIND13 SAP088X.    CANAGE13 SAP089X.       
      CNKIND14 SAP088X.    CANAGE14 SAP089X.    CNKIND15 SAP088X.       
      CANAGE15 SAP089X.    CNKIND16 SAP088X.    CANAGE16 SAP089X.       
      CNKIND17 SAP088X.    CANAGE17 SAP089X.    CNKIND18 SAP088X.       
      CANAGE18 SAP089X.    CNKIND19 SAP088X.    CANAGE19 SAP089X.       
      CNKIND20 SAP088X.    CANAGE20 SAP089X.    CNKIND21 SAP088X.       
      CANAGE21 SAP089X.    CNKIND22 SAP088X.    CANAGE22 SAP089X.       
      CNKIND23 SAP088X.    CANAGE23 SAP089X.    CNKIND24 SAP088X.       
      CANAGE24 SAP089X.    CNKIND25 SAP088X.    CANAGE25 SAP089X.       
      CNKIND26 SAP088X.    CANAGE26 SAP089X.    CNKIND27 SAP088X.       
      CANAGE27 SAP089X.    CNKIND28 SAP088X.    CANAGE28 SAP089X.       
      CNKIND29 SAP088X.    CANAGE29 SAP089X.    CNKIND30 SAP088X.       
      CANAGE30 SAP089X.    CNKIND31 SAP088X.    DIBEV    SAP149X.       
      DIBAGE   SAP089X.    DIFAGE2  SAP151X.    INSLN    SAP034X.       
      DIBPILL  SAP034X.    AHAYFYR  SAP033X.    SINYR    SAP033X.       
      CBRCHYR  SAP033X.    KIDWKYR  SAP033X.    LIVYR    SAP033X.       
      JNTSYMP  SAP033X.    JMTHP1   SAP088X.    JMTHP2   SAP088X.       
      JMTHP3   SAP088X.    JMTHP4   SAP088X.    JMTHP5   SAP088X.       
      JMTHP6   SAP088X.    JMTHP7   SAP088X.    JMTHP8   SAP088X.       
      JMTHP9   SAP088X.    JMTHP10  SAP088X.    JMTHP11  SAP088X.       
      JMTHP12  SAP088X.    JMTHP13  SAP088X.    JMTHP14  SAP088X.       
      JMTHP15  SAP088X.    JMTHP16  SAP088X.    JMTHP17  SAP088X.       
      JNTPN    SAP177X.    JNTCHR   SAP034X.    JNTHP    SAP034X.       
      ARTH1    SAP033X.    ARTHWT   SAP034X.    ARTHPH   SAP034X.       
      ARTHCLS  SAP034X.    ARTHLMT  SAP034X.    ARTHWRK  SAP034X.       
      PAINECK  SAP033X.    PAINLB   SAP033X.    PAINLEG  SAP034X.       
      PAINFACE SAP033X.    AMIGR    SAP033X.    ACOLD2W  SAP033X.       
      AINTIL2W SAP033X.    PREGNOW  SAP034X.    MENSYR   SAP034X.       
      MENOYR   SAP034X.    GYNYR    SAP034X.    PROSTYR  SAP034X.       
      HEARAID  SAP033X.    HEARFREQ SAP199X.    AHEARST  SAP200X.       
      HEARAGE  SAP201X.    HEARCAUS SAP202X.    AVISION  SAP033X.       
      ABLIND   SAP034X.    DIBREV   SAP033X.    CATAREV  SAP033X.       
      GLAUCEV  SAP033X.    MACDEV   SAP033X.    DIBRYR   SAP034X.       
      CATARYR  SAP034X.    GLAUCYR  SAP034X.    MACDYR   SAP034X.       
      AVISREH  SAP034X.    AVISDEV  SAP034X.    AVDFNWS  SAP215X.       
      AVDFCLS  SAP215X.    AVDFNIT  SAP215X.    AVDFDRV  SAP215X.       
      AVDFPER  SAP215X.    AVDFCRD  SAP215X.    AVISWRIN SAP034X.       
      AVISEXAM SAP222X.    AVISACT  SAP033X.    AVISPROT SAP199X.       
      LUPPRT   SAP033X.    SAD      SAP226X.    NERVOUS  SAP226X.       
      RESTLESS SAP226X.    HOPELESS SAP226X.    EFFORT   SAP226X.       
      WORTHLS  SAP226X.    MHAMTMO  SAP232X.                            
                                                                        
      WRKLYR3  SAP233X.    WKDAYR   SAP234X.    BEDDAYR  SAP235X.       
      AHSTATYR SAP236X.    SPECEQ   SAP033X.    FLWALK   SAP238X.       
      FLCLIMB  SAP238X.    FLSTAND  SAP238X.    FLSIT    SAP238X.       
      FLSTOOP  SAP238X.    FLREACH  SAP238X.    FLGRASP  SAP238X.       
      FLCARRY  SAP238X.    FLPUSH   SAP238X.    FLSHOP   SAP238X.       
      FLSOCL   SAP238X.    FLRELAX  SAP238X.    FLA1AR   SAP250X.       
      AFLHCA1  SAP251X.    AFLHCA2  SAP251X.    AFLHCA3  SAP251X.       
      AFLHCA4  SAP251X.    AFLHCA5  SAP251X.    AFLHCA6  SAP251X.       
      AFLHCA7  SAP251X.    AFLHCA8  SAP251X.    AFLHCA9  SAP251X.       
      AFLHCA10 SAP251X.    AFLHCA11 SAP251X.    AFLHCA12 SAP251X.       
      AFLHCA13 SAP251X.    AFLHCA14 SAP251X.    AFLHCA15 SAP251X.       
      AFLHCA16 SAP251X.    AFLHCA17 SAP251X.    AFLHCA18 SAP251X.       
      AFLHCA19 SAP088X.    AFLHCA20 SAP088X.    AFLHCA21 SAP088X.       
      AFLHCA22 SAP088X.    AFLHCA23 SAP088X.    AFLHCA24 SAP088X.       
      AFLHCA25 SAP088X.    AFLHCA26 SAP088X.    AFLHCA27 SAP088X.       
      AFLHCA28 SAP088X.    AFLHCA29 SAP088X.    AFLHCA30 SAP088X.       
      AFLHCA31 SAP088X.    AFLHCA32 SAP088X.    AFLHCA33 SAP088X.       
      AFLHCA34 SAP088X.    AFLHCA90 SAP088X.    AFLHCA91 SAP088X.       
      ALTIME1  SAP287X.    ALUNIT1  SAP288X.    ALDURA1  SAP289X.       
      ALDURB1  SAP290X.    ALCHRC1  SAP291X.    ALTIME2  SAP287X.       
      ALUNIT2  SAP288X.    ALDURA2  SAP289X.    ALDURB2  SAP290X.       
      ALCHRC2  SAP291X.    ALTIME3  SAP287X.    ALUNIT3  SAP288X.       
      ALDURA3  SAP289X.    ALDURB3  SAP290X.    ALCHRC3  SAP291X.       
      ALTIME4  SAP287X.    ALUNIT4  SAP288X.    ALDURA4  SAP289X.       
      ALDURB4  SAP290X.    ALCHRC4  SAP291X.    ALTIME5  SAP287X.       
      ALUNIT5  SAP288X.    ALDURA5  SAP289X.    ALDURB5  SAP290X.       
      ALCHRC5  SAP291X.    ALTIME6  SAP287X.    ALUNIT6  SAP288X.       
      ALDURA6  SAP289X.    ALDURB6  SAP290X.    ALCHRC6  SAP291X.       
      ALTIME7  SAP287X.    ALUNIT7  SAP288X.    ALDURA7  SAP289X.       
      ALDURB7  SAP290X.    ALCHRC7  SAP291X.    ALTIME8  SAP287X.       
      ALUNIT8  SAP288X.    ALDURA8  SAP289X.    ALDURB8  SAP290X.       
      ALCHRC8  SAP291X.    ALTIME9  SAP287X.    ALUNIT9  SAP288X.       
      ALDURA9  SAP289X.    ALDURB9  SAP290X.    ALCHRC9  SAP291X.       
      ALTIME10 SAP287X.    ALUNIT10 SAP288X.    ALDURA10 SAP289X.       
      ALDURB10 SAP290X.    ALCHRC10 SAP291X.    ALTIME11 SAP287X.       
      ALUNIT11 SAP288X.    ALDURA11 SAP289X.    ALDURB11 SAP290X.       
      ALCHRC11 SAP291X.    ALTIME12 SAP287X.    ALUNIT12 SAP288X.       
      ALDURA12 SAP289X.    ALDURB12 SAP290X.    ALCHRC12 SAP291X.       
      ALTIME13 SAP287X.    ALUNIT13 SAP288X.    ALDURA13 SAP289X.       
      ALDURB13 SAP290X.    ALCHRC13 SAP291X.    ALTIME14 SAP287X.       
      ALUNIT14 SAP288X.    ALDURA14 SAP289X.    ALDURB14 SAP290X.       
      ALCHRC14 SAP291X.    ALTIME15 SAP287X.    ALUNIT15 SAP288X.       
      ALDURA15 SAP289X.    ALDURB15 SAP290X.    ALCHRC15 SAP291X.       
      ALTIME16 SAP287X.    ALUNIT16 SAP288X.    ALDURA16 SAP289X.       
      ALDURB16 SAP290X.    ALCHRC16 SAP291X.    ALTIME17 SAP287X.       
      ALUNIT17 SAP288X.    ALDURA17 SAP289X.    ALDURB17 SAP290X.       
      ALCHRC17 SAP291X.    ALTIME18 SAP287X.    ALUNIT18 SAP288X.       
      ALDURA18 SAP289X.    ALDURB18 SAP290X.    ALCHRC18 SAP291X.       
      ALTIME19 SAP287X.    ALUNIT19 SAP288X.    ALDURA19 SAP289X.       
      ALDURB19 SAP290X.    ALCHRC19 SAP291X.    ALTIME20 SAP287X.       
      ALUNIT20 SAP288X.    ALDURA20 SAP289X.    ALDURB20 SAP290X.       
      ALCHRC20 SAP291X.    ALTIME21 SAP287X.    ALUNIT21 SAP288X.       
      ALDURA21 SAP289X.    ALDURB21 SAP290X.    ALCHRC21 SAP291X.       
      ALTIME22 SAP287X.    ALUNIT22 SAP288X.    ALDURA22 SAP289X.       
      ALDURB22 SAP290X.    ALCHRC22 SAP291X.    ALTIME23 SAP287X.       
      ALUNIT23 SAP288X.    ALDURA23 SAP289X.    ALDURB23 SAP290X.       
      ALCHRC23 SAP291X.    ALTIME24 SAP287X.    ALUNIT24 SAP288X.       
      ALDURA24 SAP289X.    ALDURB24 SAP290X.    ALCHRC24 SAP291X.       
      ALTIME25 SAP287X.    ALUNIT25 SAP288X.    ALDURA25 SAP289X.       
      ALDURB25 SAP290X.    ALCHRC25 SAP291X.    ALTIME26 SAP287X.       
      ALUNIT26 SAP288X.    ALDURA26 SAP289X.    ALDURB26 SAP290X.       
      ALCHRC26 SAP291X.    ALTIME27 SAP287X.    ALUNIT27 SAP288X.       
      ALDURA27 SAP289X.    ALDURB27 SAP290X.    ALCHRC27 SAP291X.       
      ALTIME28 SAP287X.    ALUNIT28 SAP288X.    ALDURA28 SAP289X.       
      ALDURB28 SAP290X.    ALCHRC28 SAP291X.    ALTIME29 SAP287X.       
      ALUNIT29 SAP288X.    ALDURA29 SAP289X.    ALDURB29 SAP290X.       
      ALCHRC29 SAP291X.    ALTIME30 SAP287X.    ALUNIT30 SAP288X.       
      ALDURA30 SAP289X.    ALDURB30 SAP290X.    ALCHRC30 SAP291X.       
      ALTIME31 SAP287X.    ALUNIT31 SAP288X.    ALDURA31 SAP289X.       
      ALDURB31 SAP290X.    ALCHRC31 SAP291X.    ALTIME32 SAP287X.       
      ALUNIT32 SAP288X.    ALDURA32 SAP289X.    ALDURB32 SAP290X.       
      ALCHRC32 SAP291X.    ALTIME33 SAP287X.    ALUNIT33 SAP288X.       
      ALDURA33 SAP289X.    ALDURB33 SAP290X.    ALCHRC33 SAP291X.       
      ALTIME34 SAP287X.    ALUNIT34 SAP288X.    ALDURA34 SAP289X.       
      ALDURB34 SAP290X.    ALCHRC34 SAP291X.    ALTIME90 SAP287X.       
      ALUNIT90 SAP288X.    ALDURA90 SAP289X.    ALDURB90 SAP290X.       
      ALCHRC90 SAP291X.    ALTIME91 SAP287X.    ALUNIT91 SAP288X.       
      ALDURA91 SAP289X.    ALDURB91 SAP290X.    ALCHRC91 SAP291X.       
      ALCNDRT  SAP467X.    ALCHRONR SAP468X.                            
                                                                        
      SMKEV    SAP033X.    SMKREG   SAP470X.    SMKNOW   SAP471X.       
      SMKQTNO  SAP472X.    SMKQTTP  SAP473X.    SMKQTY   SAP474X.       
      SMKQTD   SAP034X.    CIGSDA1  SAP476X.    CIGDAMO  SAP477X.       
      CIGSDA2  SAP476X.    CIGSDAY  SAP476X.    SMKSTAT1 SAP480X.       
      SMKSTAT2 SAP481X.    SMKSTAT3 SAP482X.    CIGQTYR  SAP034X.       
      VIGNO    SAP484X.    VIGTP    SAP485X.    VIGFREQW SAP486X.       
      VIGLNGNO SAP487X.    VIGLNGTP SAP488X.    VIGMIN   SAP489X.       
      VIGLONGD SAP490X.    MODNO    SAP491X.    MODTP    SAP485X.       
      MODFREQW SAP493X.    MODLNGNO SAP487X.    MODLNGTP SAP488X.       
      MODMIN   SAP489X.    MODLONGD SAP490X.    STRNGNO  SAP484X.       
      STRNGTP  SAP485X.    STRFREQW SAP500X.    ALC1YR   SAP033X.       
      ALCLIFE  SAP034X.    ALC12MNO SAP503X.    ALC12MTP SAP504X.       
      ALC12MMO SAP505X.    ALC12MWK SAP506X.    ALC12MYR SAP507X.       
      ALCAMT   SAP508X.    ALC5UPNO SAP509X.    ALC5UPTP SAP504X.       
      ALC5UPYR SAP507X.    ALCSTAT1 SAP512X.    ALC7STAT SAP513X.       
      MET_FLG1 SAP514X.    MET_FLG2 SAP515X.    AHEIGHT  SAP516X.       
      AWEIGHTP SAP517X.    DESIREWT SAP518X.    BMI      SAP519X.       
                                                                        
      AUSUALPL SAP520X.    APLKIND  SAP521X.    AHCPLROU SAP034X.       
      AHCPLKND SAP523X.    SOURCELA SAP524X.    AHCCHGYR SAP034X.       
      AHCCHGHI SAP034X.    AHCDLYR1 SAP033X.    AHCDLYR2 SAP033X.       
      AHCDLYR3 SAP033X.    AHCDLYR4 SAP033X.    AHCDLYR5 SAP033X.       
      AHCAFYR1 SAP033X.    AHCAFYR2 SAP033X.    AHCAFYR3 SAP033X.       
      AHCAFYR4 SAP033X.    ADNLONG2 SAP536X.    AHCSYR1  SAP033X.       
      AHCSYR2  SAP033X.    AHCSYR3  SAP033X.    AHCSYR4  SAP033X.       
      AHCSYR5  SAP033X.    AHCSYR6  SAP033X.    AHCSYR7  SAP034X.       
      AHCSYR8  SAP033X.    AHCSYR9  SAP033X.    AHCSYR10 SAP034X.       
      AHERNOY2 SAP547X.    AHCHYR   SAP033X.    AHCHMOYR SAP549X.       
      AHCHNOY2 SAP550X.    AHCNOYR2 SAP547X.    ASRGYR   SAP033X.       
      ASRGNOYR SAP553X.    AMDLONGR SAP536X.    SHTFLUYR SAP033X.       
      SHTPNUYR SAP033X.    APOX     SAP033X.    APOX12MO SAP034X.       
      AHEP     SAP033X.    AHEPLIV  SAP034X.    SHTHEPB  SAP033X.       
      SHEPDOS  SAP562X.                                                 
                                                                        
      ALL_SA   SAP563X.    EVERWRK  SAP034X.    WRKCAT   SAP573X.       
      WRKCATA  SAP573X.    BUSINC1  SAP034X.    BUSINC1A SAP034X.       
      LOCALL1  SAP577X.    LOCALL1A SAP577X.    YRSWRK_P SAP579X.       
      YRSWRKPA SAP579X.    HOURPD   SAP034X.    HOURPDA  SAP034X.       
      PDSICK   SAP034X.    PDSICKA  SAP034X.    ONEJOB   SAP034X.       
      HOME50   SAP033X.    LEADPNT  SAP034X.                            
                                                                        
      BLDGV    SAP033X.    BLDG12M  SAP034X.    HIVTST   SAP033X.       
      WHYTST_R SAP591X.    TST12M_M SAP592X.    TST12M_Y SAP593X.       
      TIMETST  SAP594X.    TSTTYR   SAP595X.    REATST_C SAP596X.       
      REASWHOR SAP597X.    LASTST_C SAP598X.    CLNTYP_C SAP599X.       
      WHOADM   SAP600X.    GIVNAM   SAP034X.    EXTST12M SAP033X.       
      CHNSADSP SAP603X.    STMTRU   SAP604X.    STD      SAP034X.       
      STDDOC   SAP034X.    STDWHER  SAP607X.    TBHRD    SAP033X.       
      TBKNOW   SAP034X.    TB       SAP610X.    TBSPRD1  SAP088X.       
      TBSPRD2  SAP088X.    TBSPRD3  SAP088X.    TBSPRD4  SAP088X.       
      TBSPRD5  SAP088X.    TBSPRD6  SAP088X.    TBCURED  SAP034X.       
      TBCHANC  SAP618X.    TBSHAME  SAP034X.    HOMELESS SAP033X.       
                                                                        
      DISUSEQ  SAP033X.    DISAID   SAP033X.    DISEQDIF SAP623X.       
      DISHOME  SAP033X.    DIHM01   SAP088X.    DIHM02   SAP088X.       
      DIHM03   SAP088X.    DIHM04   SAP088X.    DIHM05   SAP088X.       
      DIHM06   SAP088X.    DIHM07   SAP088X.    DIHM08   SAP088X.       
      DIHM09   SAP088X.    DIHM10   SAP088X.    DISHMOFT SAP635X.       
      DISSCH   SAP636X.    DISC01   SAP088X.    DISC02   SAP088X.       
      DISC03   SAP088X.    DISC04   SAP088X.    DISC05   SAP088X.       
      DISC06   SAP088X.    DISC07   SAP088X.    DISC08   SAP088X.       
      DISC09   SAP088X.    DISC10   SAP088X.    DISCHOFT SAP635X.       
      DISWRK   SAP648X.    DIWK01   SAP088X.    DIWK02   SAP088X.       
      DIWK03   SAP088X.    DIWK04   SAP088X.    DIWK05   SAP088X.       
      DIWK06   SAP088X.    DIWK07   SAP088X.    DIWK08   SAP088X.       
      DIWK09   SAP088X.    DIWK10   SAP088X.    DISWKOFT SAP635X.       
      DISCA    SAP034X.    DICA01   SAP088X.    DICA02   SAP088X.       
      DICA03   SAP088X.    DICA04   SAP088X.    DICA05   SAP088X.       
      DICA06   SAP088X.    DICA07   SAP088X.    DICA08   SAP088X.       
      DICA09   SAP088X.    DICA10   SAP088X.    DISCAOFT SAP635X.       
      DISHFAC  SAP033X.    DISHFL01 SAP088X.    DISHFL02 SAP088X.       
      DISHFL03 SAP088X.    DISHFL04 SAP088X.    DISHFL05 SAP088X.       
      DISHFL06 SAP088X.    DISHFL07 SAP088X.    DISHFUSE SAP034X.;      
                                                                        
PROC CONTENTS DATA=NHIS.SAMADULT_2002;                                       
   TITLE1 'CONTENTS OF THE 2002 NHIS SAMADULT FILE';                    
                                                                        
PROC FREQ DATA=NHIS.SAMADULT_2002;                                           
   TITLE1 'FREQUENCY REPORT FOR 2002 NHIS SAMADULT FILE';               
   TITLE2 '(WEIGHTED)';                                                 
   TABLES EDUC * SEX/LIST MISSING;                                      
   WEIGHT WTFA_SA ;                                                     
                                                                        
PROC FREQ DATA=NHIS.SAMADULT_2002;                                           
   TITLE1 'FREQUENCY REPORT FOR 2002 NHIS SAMADULT FILE';               
   TITLE2 '(UNWEIGHTED)';                                               
   TABLES EDUC * SEX/LIST MISSING;                                      
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE           
        STATEMENT: FORMAT _ALL_;                                        
RUN;                                                                    
