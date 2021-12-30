                                                                              
 *--------------------------------------------------------------------------* 
 |              SAS DATA DEFINITION STATEMENTS FOR ICPSR 3381              |  
 |                 NATIONAL HEALTH INTERVIEW SURVEY, 2000                  |  
 |                                                                         |  
 | NOTE: THESE STATEMENTS HAVE BEEN PROVIDED BY NCHS.                      |  
 |        Users should modify these data definition statements to suit     |  
 |        their specific needs.                                            |  
 |                                                                         |  
 |        Users may need to modify the LIBNAME statements.                 |  
 *-------------------------------------------------------------------------*. 
*********************************************************************         
 FEBRUARY 28, 2002  3:14 PM                                                   
                                                                              
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS                       
 FILE FROM THE 2000 NHIS PUBLIC USE SAMADULT.DAT ASCII FILE                   
                                                                              
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN                      
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                         
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                           
       DOCUMENTATION                                                          
                                                                              
 THIS IS STORED IN SAMADULT.SAS                                               
*********************************************************************;        
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;                
                                                                              
LIBNAME  NHIS     'C:\DATA\NHIS\';                                             
LIBNAME  LIBRARY  'C:\DATA\NHIS\2000';                                             
                                                                              
FILENAME ASCIIDAT 'C:\DATA\NHIS\2000\da3381.sadult.sas';                                 
                                                                              
* DEFINE VARIABLE VALUES FOR REPORTS;                                         
                                                                              
PROC FORMAT LIBRARY=LIBRARY;                                                  
  VALUE SAP001X                                                               
    30               = "Sample Adult"                                         
   ;                                                                          
  VALUE SAP002X                                                               
    2000             = "2000"                                                 
   ;                                                                          
  VALUE $SAP004X                                                              
    "01" - "30"      = "Family number 1 thru 30"                              
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
  VALUE SAP028X                                                               
    1                = "5,000,000 or more"                                    
    2                = "2,500,000 - 4,999,999"                                
    3                = "1,000,000 - 2,499,999"                                
    4                = "500,000 - 999,999"                                    
    5                = "250,000 - 499,999"                                    
    6                = "Under 250,000"                                        
    7                = "Non-MSA"                                              
   ;                                                                          
  VALUE SAP033X                                                               
    1                = "Dummy record"                                         
    0                = "Not a dummy record"                                   
   ;                                                                          
                                                                              
  VALUE SAP034X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP035X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP048X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP049X                                                               
    01 - 84          = "1-84 Years"                                           
    85               = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP109X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Borderline"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP111X                                                               
    00               = "Within past year"                                     
    01 - 84          = "1-84 years"                                           
    85               = "85+ years"                                            
    96               = "1+ year(s) with diabetes and age is 85+"              
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP122X                                                               
    01 - 52          = "1-52 Units"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP123X                                                               
    1                = "Week(s)"                                              
    2                = "Month(s)"                                             
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP124X                                                               
    00               = "Less than 1 month"                                    
    01 - 12          = "1-12 months"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP151X                                                               
    1                = "Good"                                                 
    2                = "Little trouble"                                       
    3                = "Lot of trouble"                                       
    4                = "Deaf"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP155X                                                               
    1                = "ALL of the time"                                      
    2                = "MOST of the time"                                     
    3                = "SOME of the time"                                     
    4                = "A LITTLE of the time"                                 
    5                = "NONE of the time"                                     
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP161X                                                               
    1                = "A lot"                                                
    2                = "Some"                                                 
    3                = "A little"                                             
    4                = "Not at all"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
                                                                              
  VALUE SAP162X                                                               
    0                = "Had job last week"                                    
    1                = "No job last week, had job past 12 m"                  
    2                = "No job last week, no job past 12 m"                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP163X                                                               
    000              = "None"                                                 
    001 - 366        = "1-366 days"                                           
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP164X                                                               
    000              = "None"                                                 
    001 - 366        = "1-366 days"                                           
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP165X                                                               
    1                = "Better"                                               
    2                = "Worse"                                                
    3                = "About the same"                                       
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP167X                                                               
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
  VALUE SAP179X                                                               
    1                = "Limited in any way"                                   
    2                = "Not limited in any way"                               
    3                = "Unknown if limited"                                   
   ;                                                                          
  VALUE SAP180X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    6                = "No condition at all"                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP181X                                                               
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused *"                                            
    98               = "Not ascertained"                                      
    99               = "Don't know *"                                         
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP182X                                                               
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
  VALUE SAP183X                                                               
    00               = "Less than 1 year"                                     
    01 - 84          = "01-84 years"                                          
    85 - 96          = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP184X                                                               
    01               = "Less than 3 months"                                   
    02               = "3 - 5 months"                                         
    03               = "6 - 12 months"                                        
    04               = "More than 1 year"                                     
    10               = "Unknown number of days"                               
    11               = "Unknown number of weeks"                              
    12               = "Unknown number of months"                             
    13               = "Unknown number of years"                              
    99               = "Unknown time with cond/impairment"                    
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP241X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP336X                                                               
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    96               = "Since birth **"                                       
    97               = "Refused *"                                            
    98               = "Not ascertained"                                      
    99               = "Don't know *"                                         
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP337X                                                               
    1                = "Day(s)"                                               
    2                = "Week(s)"                                              
    3                = "Month(s)"                                             
    4                = "Year(s)"                                              
    6                = "Since birth *"                                        
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP360X                                                               
    1                = "Chronic"                                              
    2                = "Not chronic"                                          
    9                = "Unknown if chronic"                                   
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP396X                                                               
    1                = "At least one chronic cond causes functl lim"          
    2                = "No chronic condition causes functl lim"               
    9                = "Unknown if any chronic cond causes functl lim"        
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP397X                                                               
    0                = "Not limited in any way (incl unk if limited)"         
    1                = "Limited; caused by at least one chronic cond"         
    2                = "Limited; not caused by chronic cond"                  
    3                = "Limited; unk if cond causing LA is chronic"           
   ;                                                                          
  VALUE SAP399X                                                               
    06 - 84          = "6-84 years"                                           
    85               = "85 years or older"                                    
    96               = "Never smoked regularly"                               
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP400X                                                               
    1                = "Every day"                                            
    2                = "Some days"                                            
    3                = "Not at all"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP401X                                                               
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP402X                                                               
    1                = "Days"                                                 
    2                = "Weeks"                                                
    3                = "Months"                                               
    4                = "Years"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP403X                                                               
    00               = "Less than 1 year"                                     
    01 - 69          = "1-69 years"                                           
    70               = "70+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP405X                                                               
    01 - 94          = "1-94 cigarettes"                                      
    95               = "95+ cigarettes"                                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP406X                                                               
    00               = "None"                                                 
    01 - 30          = "1-30 days"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP409X                                                               
    1                = "Current"                                              
    2                = "Former"                                               
    3                = "Never"                                                
    4                = "Smoker, current status unknown"                       
    9                = "Unknown if ever smoked"                               
   ;                                                                          
  VALUE SAP410X                                                               
    1                = "Current every day smoker"                             
    2                = "Current some day smoker"                              
    3                = "Former smoker"                                        
    4                = "Never  smoker"                                        
    5                = "Smoker, current status unknown"                       
    9                = "Unknown if ever smoked"                               
   ;                                                                          
  VALUE SAP411X                                                               
    1                = "Current  every day smoker"                            
    2                = "Current some day smoker (1+ days past mo)"            
    3                = "Current some day smoker (0 days past mo)"             
    4                = "Current some day smoker (unknown days past mo)"       
    5                = "Former smoker"                                        
    6                = "Never smoker"                                         
    7                = "Smoker, current status unknown"                       
    9                = "Unknown if ever smoked"                               
   ;                                                                          
  VALUE SAP413X                                                               
    000              = "Never"                                                
    001 - 995        = "1-995 times per"                                      
    996              = "Unable to do this type activity"                      
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP414X                                                               
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
  VALUE SAP415X                                                               
    00               = "Less than once per week"                              
    01 - 28          = "1-28 times per week"                                  
    95               = "Never"                                                
    96               = "Unable to do vig activity"                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP416X                                                               
    001 - 720        = "1-720 (minutes/hours)"                                
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP417X                                                               
    1                = "Minutes"                                              
    2                = "Hours"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP418X                                                               
    010 - 720        = "10-720 minutes"                                       
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP419X                                                               
    1                = "Less than 20 minutes"                                 
    2                = "20 minutes or more"                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP420X                                                               
    000              = "Never"                                                
    001 - 995        = "1-995 times"                                          
    996              = "Unable to do this type activity"                      
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP422X                                                               
    00               = "Less than once per week"                              
    01 - 28          = "1-28 times per week"                                  
    95               = "Never"                                                
    96               = "Unable to do moderate activity"                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP429X                                                               
    00               = "Less than once per week"                              
    01 - 28          = "1-28 times per week"                                  
    95               = "Never"                                                
    96               = "Unable to do strength activity"                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP432X                                                               
    000              = "Never"                                                
    001 - 365        = "1-365 days per"                                       
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP433X                                                               
    0                = "Never/None"                                           
    1                = "Week"                                                 
    2                = "Month"                                                
    3                = "Year"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP434X                                                               
    00               = "Less than once a month"                               
    01 - 31          = "1-31 days per month"                                  
    95               = "Did not drink in past year"                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP435X                                                               
    00               = "Less than one day per week"                           
    01 - 07          = "1-7 days per week"                                    
    95               = "Did not drink in past year"                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP436X                                                               
    000              = "Never/none"                                           
    001 - 365        = "1-365 days"                                           
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP437X                                                               
    01 - 94          = "1-94 drinks"                                          
    95               = "95+ drinks"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP438X                                                               
    000              = "Never/None"                                           
    001 - 365        = "1-365 days per"                                       
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP441X                                                               
    1                = "Lifetime abstainer [<12 drinks in lifetime]"          
    2                = "Former drinker [No drinks in past year]"              
    3                = "Current drinker [1+ drinks in past year]"             
    9                = "Drinking status unknown"                              
   ;                                                                          
  VALUE SAP442X                                                               
    1                = "Metric height measurement volunteered"                
    2                = "Not reported in metric units"                         
   ;                                                                          
  VALUE SAP443X                                                               
    1                = "Metric weight measurement volunteered"                
    2                = "Not reported in metric units"                         
   ;                                                                          
  VALUE SAP444X                                                               
    59 - 76          = "59-76 inches"                                         
    96               = "Not available"                                        
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP445X                                                               
    099 - 285        = "99-285 pounds"                                        
    996              = "Not available"                                        
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP446X                                                               
    1                = "10% or more below desirable weight"                   
    2                = "5-9% below desirable weight"                          
    3                = "4.9% (+/-) of desirable body weight"                  
    4                = "5-9.9% above desirable body weight"                   
    5                = "10-19.9% above desirable body weight"                 
    6                = "20-29.9 % above desirable body weight"                
    7                = "30% + above desirable body weight"                    
    9                = "Unknown"                                              
   ;                                                                          
  VALUE SAP447X                                                               
    00.01 - 99.94    = "00.01-99.94"                                          
    99.95            = "99.95+"                                               
    99.99            = "Unknown"                                              
   ;                                                                          
                                                                              
  VALUE SAP448X                                                               
    1                = "Yes"                                                  
    2                = "There is NO place"                                    
    3                = "There is MORE THAN ONE place"                         
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP449X                                                               
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
  VALUE SAP451X                                                               
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
  VALUE SAP452X                                                               
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
  VALUE SAP454X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    7                = "Refused"                                              
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP464X                                                               
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
  VALUE SAP475X                                                               
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
  VALUE SAP477X                                                               
    01 - 12          = "01-12 months"                                         
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP478X                                                               
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
  VALUE SAP481X                                                               
    01 - 94          = "1-94 Times"                                           
    95               = "95+ Times"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP490X                                                               
    1                = "Received at least 3 doses"                            
    2                = "Received less than 3 doses"                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP495X                                                               
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
  VALUE SAP496X                                                               
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
  VALUE SAP498X                                                               
    00               = "Less than 1 year"                                     
    01 - 34          = "01-34 years"                                          
    35               = "35 or more years"                                     
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP499X                                                               
    1                = "One year or less"                                     
    2                = "More than one year"                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP503X                                                               
    1                = "Employee only"                                        
    2                = "Self-employed only"                                   
    3                = "Both"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP508X                                                               
    01               = "Unlikely have been exposed to HIV"                    
    02               = "Afraid to find out if HIV positive"                   
    03               = "Didn't want to think about HIV/HIV pos."              
    04               = "Worried name reported to Govt. if pos."               
    05               = "Didn't know where to get tested"                      
    06               = "Some other reason"                                    
    07               = "No particular reason"                                 
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP509X                                                               
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
  VALUE SAP510X                                                               
    1985 - 2001      = "1985-2001"                                            
    9996             = "Used time period format"                              
    9997             = "Refused"                                              
    9998             = "Not ascertained"                                      
    9999             = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP511X                                                               
    1                = "6 Months or less"                                     
    2                = "More than 6 months but not more than 1 year ago"      
    3                = "More than 1 year, but not more than 2 years ago"      
    4                = "More than 2 years, but not more than 5 yrs ago"       
    5                = "More than 5 years ago"                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP512X                                                               
    01               = "Someone suggested you should be tested"               
    02               = "Might have been exposed thru sex/drug use"            
    03               = "Wanted to find out if infected or not"                
    04               = "Concerned could give HIV to someone"                  
    05               = "Wanted medical care/new treatment if pos"             
    06               = "You were pregnant"                                    
    07               = "It was part of a routine medical check-up"            
    08               = "It was required"                                      
    10               = "No particular reason"                                 
    11               = "Insurance"                                            
    12               = "Military"                                             
    13               = "Medical procedures/hospitalization"                   
    14               = "Illness or had a medical problem"                     
    15               = "Work/employment"                                      
    16               = "Immigration"                                          
    17               = "Marriage"                                             
    18               = "Exposed at work"                                      
    97               = "Refused"                                              
    98               = "Not ascertained (incl. 'some other reason'*)"         
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP513X                                                               
    1                = "Doctor"                                               
    2                = "Sex partner"                                          
    3                = "Someone at health department"                         
    4                = "Someone else"                                         
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP514X                                                               
    01               = "Insurance"                                            
    02               = "Military"                                             
    03               = "Jail"                                                 
    04               = "Hospitalization"                                      
    05               = "Employment"                                           
    06               = "Immigration"                                          
    07               = "Other"                                                
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP515X                                                               
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
  VALUE SAP516X                                                               
    01               = "Family planning"                                      
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
  VALUE SAP517X                                                               
    1                = "Nurse or health worker"                               
    2                = "Self-sampling kit"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP520X                                                               
    1                = "High/Already have AIDS/AIDS virus"                    
    2                = "Medium"                                               
    3                = "Low"                                                  
    4                = "None"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP521X                                                               
    1                = "Yes, at least one statement is true"                  
    2                = "No, none of these statements are true"                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP524X                                                               
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
  VALUE SAP527X                                                               
    1                = "A lot"                                                
    2                = "Some"                                                 
    3                = "A little"                                             
    4                = "Nothing"                                              
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP535X                                                               
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
                                                                              
  VALUE SAP538X                                                               
    1                = "Only Spanish"                                         
    2                = "Mostly Spanish"                                       
    3                = "Spanish and English about the same"                   
    4                = "Mostly English"                                       
    5                = "Only English"                                         
    6                = "Other Language"                                       
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE SAP540X                                                               
    1                = "Only Spanish"                                         
    2                = "Spanish better than English"                          
    3                = "Spanish and English about the same"                   
    4                = "English better than Spanish"                          
    5                = "Only English"                                         
    6                = "Don't read"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE SAP541X                                                               
    1                = "Only Spanish"                                         
    2                = "More Spanish than English"                            
    3                = "Spanish and English about the same"                   
    4                = "More English than Spanish"                            
    5                = "Only English"                                         
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
                                                                              
  VALUE SAP546X                                                               
    00               = "Never"                                                
    01 - 94          = "1-94 times"                                           
    95               = "95+ times"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP547X                                                               
    0                = "Never"                                                
    1                = "Days"                                                 
    2                = "Weeks"                                                
    3                = "Months"                                               
    4                = "Years"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP548X                                                               
    0000             = "Never"                                                
    0001 - 9995      = "1-9995 times"                                         
    9996             = "9996+ times"                                          
    9997             = "Refused"                                              
    9998             = "Not ascertained"                                      
    9999             = "Don't know"                                           
   ;                                                                          
  VALUE SAP549X                                                               
    000              = "Never or less than once per week"                     
    001 - 665        = "1-665 times"                                          
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP554X                                                               
    1                = "Whole milk"                                           
    2                = "2% fat"                                               
    3                = "1% fat"                                               
    4                = "1/2% milk"                                            
    5                = "Non-fat or skim milk"                                 
    6                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP613X                                                               
    01 - 12          = "1-12 months"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP614X                                                               
    01 - 30          = "1-30 days"                                            
    96               = "Other"                                                
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP615X                                                               
    1                = "Days per week"                                        
    2                = "Days per month"                                       
    6                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not Ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP616X                                                               
    00               = "Less than once a month"                               
    01 - 30          = "1-30 days per month"                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP617X                                                               
    00               = "Less than one day per week"                           
    01 - 07          = "1-7 days per week"                                    
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP674X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Did not see a doctor in the PAST 12 MONTHS"           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
                                                                              
  VALUE SAP675X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Unable to walk or bike"                               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP676X                                                               
    1                = "SIT during MOST of the day"                           
    2                = "STAND during MOST of the day"                         
    3                = "WALK AROUND MOST of the day"                          
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
   ;                                                                          
  VALUE SAP677X                                                               
    1                = "NOT lift or carry things very often"                  
    2                = "LIFT or carry LIGHT loads"                            
    3                = "LIFT or carry MODERATE loads"                         
    4                = "LIFT or carry HEAVY loads"                            
    5                = "Unable to lift or carry loads"                        
    6                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
   ;                                                                          
  VALUE SAP678X                                                               
    00               = "None"                                                 
    01 - 24          = "1-24 hours"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
   ;                                                                          
  VALUE SAP694X                                                               
    001 - 994        = "1-994 times"                                          
    995              = "995+ times"                                           
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP713X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Doctor doesn't ask - knows I smoke/use tobacco"       
    4                = "Doctor doesn't ask - knows I don't use tobacco"       
    5                = "Did not see doctor in past 12 months"                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP724X                                                               
    00               = "None"                                                 
    01 - 30          = "1-30 days"                                            
    97               = "Refused"                                              
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP731X                                                               
    00               = "Less than 1 day per week/Rarely/None"                 
    01 - 07          = "1-7 days per week"                                    
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP732X                                                               
    1                = "Work mainly indoors"                                  
    2                = "Work mainly outdoors"                                 
    3                = "Travel to different buildings/sites"                  
    4                = "In a motor vehicle"                                   
    5                = "Some other area"                                      
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP735X                                                               
    1                = "Not allowed in ANY indoor public areas"               
    2                = "Allowed in SOME indoor public areas"                  
    3                = "Allowed in ALL indoor public areas"                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP736X                                                               
    1                = "Not allowed in ANY work areas"                        
    2                = "Allowed in SOME work areas"                           
    3                = "Allowed in ALL work areas"                            
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP737X                                                               
    1                = "Not allowed in ANY indoor public places"              
    2                = "Allowed in SOME indoor public places"                 
    3                = "Allowed in ALL indoor public places"                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP738X                                                               
    1                = "Agree"                                                
    2                = "Disagree"                                             
    3                = "Have no opinion"                                      
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
                                                                              
  VALUE SAP740X                                                               
    01               = "Get a severe sunburn with blisters"                   
    02               = "Have severe sunburn for few days w/peeling"           
    03               = "Burn mildly with some or no tanning"                  
    04               = "Turn darker without sunburn"                          
    05               = "Say that nothing would happen"                        
    06               = "Do not go out in the sun"                             
    07               = "Other"                                                
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
   ;                                                                          
  VALUE SAP741X                                                               
    01               = "Get very dark and deeply tanned"                      
    02               = "Moderately tanned"                                    
    03               = "Mildly tanned"                                        
    04               = "Only freckled or no suntan at all"                    
    05               = "Repeated sunburns"                                    
    06               = "Don't go out in the sun"                              
    07               = "Other"                                                
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
   ;                                                                          
  VALUE SAP742X                                                               
    1                = "Always"                                               
    2                = "Most of the time"                                     
    3                = "Sometimes"                                            
    4                = "Rarely"                                               
    5                = "Never"                                                
    6                = "Don't go out in sun"                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
   ;                                                                          
  VALUE SAP746X                                                               
    01 - 50          = "SPF 1-50"                                             
    96               = "More than one, Different ones, Other"                 
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP747X                                                               
    000              = "None"                                                 
    001 - 365        = "1-365 times"                                          
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE $SAP749X                                                              
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
    "96"             = "Time period format"                                   
    "97"             = "Refused"                                              
    "98"             = "Not ascertained"                                      
    "99"             = "Don't Know"                                           
    " "              = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP750X                                                               
    1950 - 2000      = "1950-2000"                                            
    9996             = "Time period format"                                   
    9997             = "Refused"                                              
    9998             = "Not ascertained"                                      
    9999             = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP751X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP752X                                                               
    1                = "Days ago"                                             
    2                = "Weeks ago"                                            
    3                = "Months ago"                                           
    4                = "Years ago"                                            
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP753X                                                               
    1                = "A year ago or less"                                   
    2                = "More than 1 year but not more than 2 years"           
    3                = "More than 2 years but not more than 3 years"          
    4                = "More than 3 years but not more than 5 years"          
    5                = "Over 5 years ago"                                     
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP754X                                                               
    000 - 011        = "00-11 months"                                         
    012              = "12 months"                                            
    013 - 023        = "13-23 months"                                         
    024              = "24 months"                                            
    025 - 035        = "25-35 months"                                         
    036              = "36 months"                                            
    037 - 059        = "37-59 months"                                         
    060              = "60 months"                                            
    061 - 600        = "61-600 months"                                        
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP756X                                                               
    1                = "Part of a routine physical exam/screening test"       
    2                = "Because of a specific skin problem"                   
    3                = "Followup to a previous skin problem"                  
    4                = "Family history"                                       
    5                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP757X                                                               
    00               = "Haven't started"                                      
    08 - 60          = "8-60 years"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP759X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Duration not determined (times/week)"                 
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP760X                                                               
    3                = "Months"                                               
    4                = "Years"                                                
    6                = "Duration not determined (times/week)"                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP762X                                                               
    01 - 16          = "1-16 Live births"                                     
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP763X                                                               
    08 - 60          = "8-60 years"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP764X                                                               
    1890 - 2000      = "1890-2000"                                            
    9997             = "Refused"                                              
    9998             = "Not ascertained"                                      
    9999             = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP766X                                                               
    00               = "None"                                                 
    01 - 12          = "1-12 Times"                                           
    13               = "13+ Times"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP774X                                                               
    1                = "Part of a routine physical or pregnancy exam"         
    2                = "Because of a specific gynecological problem"          
    3                = "Followup to a previous gynecological exam"            
    4                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP778X                                                               
    01               = "No reason/never thought about it"                     
    02               = "Didn't need/know I needed this type of test"          
    03               = "Doctor didn't order it/didn't say I needed it"        
    04               = "Haven't had any problems"                             
    05               = "Put it off/didn't get around to it"                   
    06               = "Too expensive/no insurance/cost"                      
    07               = "Too painful, unpleasant, or embarrassing"             
    08               = "Had hysterectomy"                                     
    09               = "Don't have doctor"                                    
    10               = "Other"                                                
    97               = "Refused"                                              
    98               = "Not Ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP779X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "No doctor visits in last 12 months"                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP789X                                                               
    1                = "Under 30 years"                                       
    2                = "30 to 39"                                             
    3                = "40 to 49 years"                                       
    4                = "50 to 59 years"                                       
    5                = "60 years or older"                                    
    7                = "Refused"                                              
    8                = "Not Ascertained"                                      
    9                = "DK"                                                   
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP790X                                                               
    00               = "None"                                                 
    01 - 12          = "1-12"                                                 
    13               = "13+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP798X                                                               
    1                = "Mammogram van"                                        
    2                = "Independent X-ray or radiology center"                
    3                = "Clinic/health center, not in a hospital"              
    4                = "Private doctor's office"                              
    5                = "Hospital"                                             
    6                = "Other place"                                          
    7                = "Refused"                                              
    8                = "Not Ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP799X                                                               
    1                = "I paid NONE of the cost"                              
    2                = "I paid PART of the cost"                              
    3                = "I paid ALL of the cost"                               
    7                = "Refused"                                              
    8                = "Not Ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP806X                                                               
    1                = "Part of a routine physical exam/screening test"       
    2                = "Because of a specific breast problem"                 
    3                = "Followup to prev. identified breast problem"          
    4                = "Baseline or initial mammogram"                        
    5                = "Family history"                                       
    6                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP816X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Lump removed was cancerous"                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP817X                                                               
    01 - 20          = "1-20 Operations"                                      
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP818X                                                               
    01               = "No reason/never thought about it"                     
    02               = "Didn't need/know I needed this type of test"          
    03               = "Doctor didn't order it/didn't say I needed it"        
    04               = "Haven't had any problems"                             
    05               = "Put it off/didn't get around to it"                   
    06               = "Too expensive/no insurance/cost"                      
    07               = "Too painful, unpleasant, or embarrassing"             
    08               = "I'm too young"                                        
    09               = "Don't have doctor"                                    
    10               = "Other reason"                                         
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP819X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "No doctor visit in past year"                         
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP830X                                                               
    000 - 011        = "00-11 months"                                         
    012              = "12 months"                                            
    013 - 023        = "13-023 months"                                        
    024              = "24 months"                                            
    025 - 035        = "25-35 months"                                         
    036              = "36 months"                                            
    037 - 059        = "37-59 months"                                         
    060              = "60 months"                                            
    061 - 600        = "61-600 months"                                        
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP834X                                                               
    01               = "Under 40 years"                                       
    02               = "40 - 44"                                              
    03               = "45 - 49"                                              
    04               = "50 - 54"                                              
    05               = "55 - 59"                                              
    06               = "60 - 64"                                              
    07               = "65 - 69"                                              
    08               = "70 years or older"                                    
    97               = "Refused"                                              
    98               = "Not Ascertained"                                      
    99               = "DK"                                                   
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP835X                                                               
    00               = "None"                                                 
    01 - 10          = "1-10 times"                                           
    11               = "11+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP843X                                                               
    1                = "Part of a routine physical exam/screening test"       
    2                = "Because of a specific problem"                        
    3                = "Followup test for an earlier exam"                    
    4                = "Family history"                                       
    5                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP844X                                                               
    1                = "I did"                                                
    2                = "My doctor"                                            
    3                = "Someone else"                                         
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP854X                                                               
    00               = "None"                                                 
    01 - 20          = "1-20 times"                                           
    21               = "21+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP859X                                                               
    1                = "A year ago or less"                                   
    2                = "More than 1 year but not more than 2 years"           
    3                = "More than 2 years but not more than 3 years"          
    4                = "More than 3 years but not more than 5 years"          
    5                = "More than 5 years but not more that 10 years"         
    6                = "More than 10 years ago"                               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP860X                                                               
    000 - 011        = "00-11 months"                                         
    012              = "12 months"                                            
    013 - 023        = "13-23 months"                                         
    024              = "24 months"                                            
    025 - 035        = "25-35 months"                                         
    036              = "36 months"                                            
    037 - 059        = "37-59 months"                                         
    060              = "60 months"                                            
    061 - 119        = "61-119 months"                                        
    120              = "120 months"                                           
    121 - 600        = "121-600 months"                                       
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP861X                                                               
    1                = "A year ago or less"                                   
    2                = "More than 1 year but not more than 2 years"           
    3                = "More than 2 years but not more than 3 years"          
    4                = "More than 3 years but not more than 5 years"          
    5                = "More than 5 years but not more than 10 years"         
    6                = "Over 10 years ago"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP862X                                                               
    1                = "Sigmoidoscopy"                                        
    2                = "Colonoscopy"                                          
    3                = "Proctoscopy"                                          
    4                = "Something else"                                       
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP863X                                                               
    1                = "Part of a routine physical exam/screening test"       
    2                = "Because of a specific problem"                        
    3                = "Followup test of an earlier test/exam"                
    4                = "Family history"                                       
    5                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP864X                                                               
    01               = "No reason/never thought about it"                     
    02               = "Didn't need/know I needed this type of test"          
    03               = "Doctor didn't order it/didn't say I needed it"        
    04               = "Haven't had any problems"                             
    05               = "Put it off/didn't get around to it"                   
    06               = "Too expensive/no insurance/cost"                      
    07               = "Too painful, unpleasant, or embarrassing"             
    08               = "Had another type of colorectal exam"                  
    09               = "Don't have doctor"                                    
    10               = "Other"                                                
    97               = "Refused"                                              
    98               = "Not Ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP865X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "No doctor visit in past 12 months"                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP867X                                                               
    00               = "None"                                                 
    01 - 06          = "1-6 times"                                            
    07               = "7+"                                                   
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP875X                                                               
    1                = "Part of a routine physical exam/screening test"       
    2                = "Because of a specific problem"                        
    3                = "Followup test of an earlier test/screening exam"      
    4                = "Family history"                                       
    5                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP884X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Did not go to doctor in past 12 months"               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP897X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Male, not applicable"                                 
    7                = "Refused"                                              
    8                = "Not Ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP901X                                                               
    0                = "No  test specified"                                   
    1 - 4            = "1-4 tests reported"                                   
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP903X                                                               
    1950 - 2001      = "1950-2001"                                            
    9996             = "Used time period format"                              
    9997             = "Refused"                                              
    9998             = "Not ascertained"                                      
    9999             = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP904X                                                               
    01 - 95          = "1-95"                                                 
    96               = "96+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP908X                                                               
    01               = "Surgeon"                                              
    02               = "Gastroenterologist"                                   
    03               = "Gynecologist"                                         
    04               = "Dermatologist"                                        
    05               = "Medical Geneticist"                                   
    06               = "Internal medicine or family practice physician"       
    07               = "Genetic counselor"                                    
    08               = "Oncologist"                                           
    09               = "Pediatrician"                                         
    10               = "Some other doctor"                                    
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know kind of doctor"                            
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP911X                                                               
    1                = "By telephone"                                         
    2                = "In person"                                            
    3                = "By mail"                                              
    7                = "Refused"                                              
    8                = "Not Ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP912X                                                               
    1                = "Very confident"                                       
    2                = "Somewhat confident"                                   
    3                = "Not very confident"                                   
    4                = "Not confident at all"                                 
    7                = "Refused"                                              
    8                = "Not Ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP914X                                                               
    1                = "Before or on the day you took the test"               
    2                = "After the day you took the test"                      
    3                = "Both before and after you took the test"              
    7                = "Refused"                                              
    8                = "Not Ascertained"                                      
    9                = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP916X                                                               
    1                = "Low"                                                  
    2                = "Medium"                                               
    3                = "High"                                                 
    7                = "Refused"                                              
    8                = "Not Ascertained"                                      
    9                = "Don't Know"                                           
   ;                                                                          
                                                                              
  VALUE SAP918X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Adopted or don't know biological father"              
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP919X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP982X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Adopted or don't know biological mother"              
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP046K                                                               
    00               = "None"                                                 
    01 - 20          = "1-20 brothers"                                        
    21               = "21+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP047K                                                               
    00               = "None"                                                 
    01 - 20          = "1-20 brothers"                                        
    21               = "21+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP049K                                                               
    01 - 20          = "1-20 brothers"                                        
    21               = "21+ brothers"                                         
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP050K                                                               
    00               = "None"                                                 
    01 - 20          = "1-20 brothers"                                        
    21               = "21+ brothers"                                         
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP142K                                                               
    00               = "None"                                                 
    01 - 20          = "1-20 sisters"                                         
    21               = "21+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP143K                                                               
    00               = "None"                                                 
    01 - 20          = "1-20 sisters"                                         
    21               = "21+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP145K                                                               
    01 - 20          = "1-20 sisters"                                         
    21               = "21+ sisters"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP146K                                                               
    00               = "None"                                                 
    01 - 20          = "1-20 sisters"                                         
    21               = "21+ sisters"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP238K                                                               
    00               = "None"                                                 
    01 - 20          = "1-20 biological sons"                                 
    21               = "21+ biological sons"                                  
    96               = "No biological children"                               
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP239K                                                               
    00               = "None"                                                 
    01 - 20          = "1-20 sons"                                            
    21               = "21+ sons"                                             
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP241K                                                               
    01 - 20          = "1-20 sons"                                            
    21               = "21+ sons"                                             
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP334K                                                               
    00               = "No daughters"                                         
    01 - 20          = "1-20 biological daughters"                            
    21               = "21+ biological daughters"                             
    96               = "No biological children"                               
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP335K                                                               
    00               = "None"                                                 
    01 - 20          = "1-20 daughters"                                       
    21               = "21+ daughters"                                        
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP337K                                                               
    01 - 20          = "1-20 daughters"                                       
    21               = "21+ daughters"                                        
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
                                                                              
DATA NHIS.SAMADULT_2000;                                                           
   * CREATE A SAS DATA SET;                                                   
   INFILE ASCIIDAT PAD LRECL=2147;                                            
                                                                              
   * DEFINE LENGTH OF ALL VARIABLES;                                          
                                                                              
   LENGTH                                                                     
      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2               
      PX       $ 2   INTV_QRT   3   SEX        3   AGE_P      3               
      ORIGIN_I   3   ORIGIMPT   3   HISPAN_I   3   HISPIMPT   3               
      RCDT1P_I   3   RC_SMP_I   3   RACERP_I   3   RACEIMPT   3               
      MRACRP_I   3   MRACBP_I   3   RACREC_I   3   HISCOD_I   3               
      ERIMPFLG   3   EDUC       3   AB_BL20K   3   RAT_CAT    3               
      R_MARITL   3   FM_SIZE    3   REGION     3   MSASIZEP   3               
      WTIA_SA    8   WTFA_SA    8   STRATUM    4   PSU        3               
      DUMMY_CA   3                                                            
                                                                              
      HYPEV      3   HYPDIFV    3   CHDEV      3   ANGEV      3               
      MIEV       3   HRTEV      3   STREV      3   EPHEV      3               
      AASMEV     3   AASMYR     3   AASMERYR   3   ULCEV      3               
      ULCYR      3   CANEV      3   CNKIND1    3   CANAGE1    3               
      CNKIND2    3   CANAGE2    3   CNKIND3    3   CANAGE3    3               
      CNKIND4    3   CANAGE4    3   CNKIND5    3   CANAGE5    3               
      CNKIND6    3   CANAGE6    3   CNKIND7    3   CANAGE7    3               
      CNKIND8    3   CANAGE8    3   CNKIND9    3   CANAGE9    3               
      CNKIND10   3   CANAGE10   3   CNKIND11   3   CANAGE11   3               
      CNKIND12   3   CANAGE12   3   CNKIND13   3   CANAGE13   3               
      CNKIND14   3   CANAGE14   3   CNKIND15   3   CANAGE15   3               
      CNKIND16   3   CANAGE16   3   CNKIND17   3   CANAGE17   3               
      CNKIND18   3   CANAGE18   3   CNKIND19   3   CANAGE19   3               
      CNKIND20   3   CANAGE20   3   CNKIND21   3   CANAGE21   3               
      CNKIND22   3   CANAGE22   3   CNKIND23   3   CANAGE23   3               
      CNKIND24   3   CANAGE24   3   CNKIND25   3   CANAGE25   3               
      CNKIND26   3   CANAGE26   3   CNKIND27   3   CANAGE27   3               
      CNKIND28   3   CANAGE28   3   CNKIND29   3   CANAGE29   3               
      CNKIND30   3   CANAGE30   3   CNKIND31   3   DIBEV      3               
      DIBAGE     3   DIFAGE2    3   INSLN      3   DIBPILL    3               
      AHAYFYR    3   SINYR      3   CBRCHYR    3   KIDWKYR    3               
      LIVYR      3   JNTYR      3   JNTMO      3   JNTIJ      3               
      JNTIJLN    3   JNTIJLT    3   JNTIJLM    3   JNTYR1     3               
      JNTYR2     3   JNTYR3     3   JNTYR4     3   JNTYR5     3               
      JNTYR6     3   JNTYR7     3   JNTYR8     3   JNTYR9     3               
      JNTYR10    3   JNTYR11    3   JNTYR12    3   JNTYR13    3               
      JNTYR14    3   JNTYR15    3   JNTYR16    3   JNTYR17    3               
      PAINECK    3   PAINLB     3   PAINLEG    3   PAINFACE   3               
      AMIGR      3   ACOLD2W    3   AINTIL2W   3   PREGNOW    3               
      HEARAID    3   AHEARST    3   AVISION    3   ABLIND     3               
      LUPPRT     3   SAD        3   NERVOUS    3   RESTLESS   3               
      HOPELESS   3   EFFORT     3   WORTHLS    3   MHAMTMO    3               
                                                                              
      WRKLYR2    3   WKDAYR     4   BEDDAYR    4   AHSTATYR   3               
      SPECEQ     3   FLWALK     3   FLCLIMB    3   FLSTAND    3               
      FLSIT      3   FLSTOOP    3   FLREACH    3   FLGRASP    3               
      FLCARRY    3   FLPUSH     3   FLSHOP     3   FLSOCL     3               
      FLRELAX    3   FLA1AR     3   AFLHCA1    3   ALHCLN1    3               
      ALHCLT1    3   ALHCLY1    3   ALANTR1    3   AFLHCA2    3               
      ALHCLN2    3   ALHCLT2    3   ALHCLY2    3   ALANTR2    3               
      AFLHCA3    3   ALHCLN3    3   ALHCLT3    3   ALHCLY3    3               
      ALANTR3    3   AFLHCA4    3   ALHCLN4    3   ALHCLT4    3               
      ALHCLY4    3   ALANTR4    3   AFLHCA5    3   ALHCLN5    3               
      ALHCLT5    3   ALHCLY5    3   ALANTR5    3   AFLHCA6    3               
      ALHCLN6    3   ALHCLT6    3   ALHCLY6    3   ALANTR6    3               
      AFLHCA7    3   ALHCLN7    3   ALHCLT7    3   ALHCLY7    3               
      ALANTR7    3   AFLHCA8    3   ALHCLN8    3   ALHCLT8    3               
      ALHCLY8    3   ALANTR8    3   AFLHCA9    3   ALHCLN9    3               
      ALHCLT9    3   ALHCLY9    3   ALANTR9    3   AFLHCA10   3               
      ALHCLN10   3   ALHCLT10   3   ALHCLY10   3   ALANTR10   3               
      AFLHCA11   3   ALHCLN11   3   ALHCLT11   3   ALHCLY11   3               
      ALANTR11   3   AFLHCA12   3   ALHCLN12   3   ALHCLT12   3               
      ALHCLY12   3   ALANTR12   3   AFLHCA13   3   ALHCLN13   3               
      ALHCLT13   3   ALHCLY13   3   ALANTR13   3   AFLHCA14   3               
      ALHCLN14   3   ALHCLT14   3   ALHCLY14   3   ALANTR14   3               
      AFLHCA15   3   ALHCLN15   3   ALHCLT15   3   ALHCLY15   3               
      ALANTR15   3   AFLHCA16   3   ALHCLN16   3   ALHCLT16   3               
      ALHCLY16   3   ALANTR16   3   AFLHCA17   3   ALHCLN17   3               
      ALHCLT17   3   ALHCLY17   3   ALANTR17   3   AFLHCA18   3               
      ALHCLN18   3   ALHCLT18   3   ALHCLY18   3   ALANTR18   3               
      AFLHCA19   3   ALHCLN19   3   ALHCLT19   3   ALHCLY19   3               
      ALANTR19   3   AFLHCA20   3   ALHCLN20   3   ALHCLT20   3               
      ALHCLY20   3   ALANTR20   3   AFLHCA21   3   ALHCLN21   3               
      ALHCLT21   3   ALHCLY21   3   ALANTR21   3   AFLHCA22   3               
      ALHCLN22   3   ALHCLT22   3   ALHCLY22   3   ALANTR22   3               
      AFLHCA23   3   ALHCLN23   3   ALHCLT23   3   ALHCLY23   3               
      ALANTR23   3   AFLHCA24   3   ALHCLN24   3   ALHCLT24   3               
      ALHCLY24   3   ALANTR24   3   AFLHCA25   3   ALHCLN25   3               
      ALHCLT25   3   ALHCLY25   3   ALANTR25   3   AFLHCA26   3               
      ALHCLN26   3   ALHCLT26   3   ALHCLY26   3   ALANTR26   3               
      AFLHCA27   3   ALHCLN27   3   ALHCLT27   3   ALHCLY27   3               
      ALANTR27   3   AFLHCA28   3   ALHCLN28   3   ALHCLT28   3               
      ALHCLY28   3   ALANTR28   3   AFLHCA29   3   ALHCLN29   3               
      ALHCLT29   3   ALHCLY29   3   ALANTR29   3   AFLHCA30   3               
      ALHCLN30   3   ALHCLT30   3   ALHCLY30   3   ALANTR30   3               
      AFLHCA31   3   ALHCLN31   3   ALHCLT31   3   ALHCLY31   3               
      ALANTR31   3   AFLHCA32   3   ALHCLN32   3   ALHCLT32   3               
      ALHCLY32   3   ALANTR32   3   AFLHCA33   3   ALHCLN33   3               
      ALHCLT33   3   ALHCLY33   3   ALANTR33   3   AFLHCA34   3               
      ALHCLN34   3   ALHCLT34   3   ALHCLY34   3   ALANTR34   3               
      AFLHCA90   3   ALHCLN90   3   ALHCLT90   3   ALHCLY90   3               
      ALANTR90   3   AFLHCA91   3   ALHCLN91   3   ALHCLT91   3               
      ALHCLY91   3   ALANTR91   3   ALCNDR1    3   ALCNDR2    3               
      ALCNDR3    3   ALCNDR4    3   ALCNDR5    3   ALCNDR6    3               
      ALCNDR7    3   ALCNDR8    3   ALCNDR9    3   ALCNDR10   3               
      ALCNDR11   3   ALCNDR12   3   ALCNDR13   3   ALCNDR14   3               
      ALCNDR15   3   ALCNDR16   3   ALCNDR17   3   ALCNDR18   3               
      ALCNDR19   3   ALCNDR20   3   ALCNDR21   3   ALCNDR22   3               
      ALCNDR23   3   ALCNDR24   3   ALCNDR25   3   ALCNDR26   3               
      ALCNDR27   3   ALCNDR28   3   ALCNDR29   3   ALCNDR30   3               
      ALCNDR31   3   ALCNDR32   3   ALCNDR33   3   ALCNDR34   3               
      ALCNDR90   3   ALCNDR91   3   ALCNDRT    3   ALCHRONR   3               
                                                                              
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
      MET_FLG1   3   MET_FLG2   3   AHEIGHT    3   AWEIGHTP   4               
      DESIREWT   3   BMI        8                                             
                                                                              
      AUSUALPL   3   APLKIND    3   AHCPLROU   3   AHCPLKND   3               
      SOURCELA   3   AHCCHGYR   3   AHCCHGHI   3   AHCDLYR1   3               
      AHCDLYR2   3   AHCDLYR3   3   AHCDLYR4   3   AHCDLYR5   3               
      AHCAFYR1   3   AHCAFYR2   3   AHCAFYR3   3   AHCAFYR4   3               
      ADNLONGR   3   AHCSYR1    3   AHCSYR2    3   AHCSYR3    3               
      AHCSYR4    3   AHCSYR5    3   AHCSYR6    3   AHCSYR7    3               
      AHCSYR8    3   AHCSYR9    3   AHCSYR10   3   AHERNOY2   3               
      AHCHYR     3   AHCHMOYR   3   AHCHNOY2   3   AHCNOYR2   3               
      ASRGYR     3   ASRGNOYR   3   AMDLONGR   3   SHTFLUYR   3               
      SHTPNUYR   3   APOX       3   APOX12MO   3   AHEP       3               
      AHEPLIV    3   SHTHEPB    3   SHEPDOS    3                              
                                                                              
      INDSTRY1   3   INDSTRY2   3   OCCUP1     3   OCCUP2     3               
      WRKCAT     3   LOCALLNO   3   LOCPRTNO   3   YRSWRK_P   3               
      WRKLONGD   3   HOURPD     3   PDSICK     3   ONEJOB     3               
      WRKCATOT   3   BUSINC     3                                             
                                                                              
      BLDGV      3   BLDG12M    3   HIVTST     3   WHYTST_C   3               
      TST12M_M   3   TST12M_Y   4   TIMETST    3   REATST_R   3               
      REASWHO    3   WHYREQ_C   3   LASTST_C   3   CLNTYP_C   3               
      WHOADM     3   GIVNAM     3   EXTST12M   3   CHNSADSP   3               
      STMTRU     3   STD        3   STDDOC     3   STDWHER    3               
      TBHRD      3   TBKNOW     3   TB         3   TBSPRD1    3               
      TBSPRD2    3   TBSPRD3    3   TBSPRD4    3   TBSPRD5    3               
      TBSPRD6    3   TBCURED    3   TBCHANC    3   HOMELESS   3               
      TBSHAME    3                                                            
                                                                              
      SPSPEAK    3   SPCHILD    3   SPREAD     3   SP1_HOME   3               
      SP1_FRND   3   SP2_THNK   3   SP2_TV     3   SP2_RDIO   3               
                                                                              
      COLDCNO    3   COLDCTP    3   COLDCY     4   COLDCW     4               
      MILKNO     3   MILKTP     3   MILKY      4   MILKW      4               
      MILKKND    3   BACONNO    3   BACONTP    3   BACONY     4               
      BACONW     4   HTDOGNO    3   HTDOGTP    3   HTDOGY     4               
      HTDOGW     4   BREADNO    3   BREADTP    3   BREADY     4               
      BREADW     4   JUICENO    3   JUICETP    3   JUICEY     4               
      JUICEW     4   FRUITNO    3   FRUITTP    3   FRUITY     4               
      FRUITW     4   DRESSNO    3   DRESSTP    3   DRESSY     4               
      DRESSW     4   SALADNO    3   SALADTP    3   SALADY     4               
      SALADW     4   FRIESNO    3   FRIESTP    3   FRIESY     4               
      FRIESW     4   POTATNO    3   POTATTP    3   POTATY     4               
      POTATW     4   BEANSNO    3   BEANSTP    3   BEANSY     4               
      BEANSW     4   OVEGNO     3   OVEGTP     3   OVEGY      4               
      OVEGW      4   PASTANO    3   PASTATP    3   PASTAY     4               
      PASTAW     4   PNUTNO     3   PNUTTP     3   PNUTY      4               
      PNUTW      4   CHIPSNO    3   CHIPSTP    3   CHIPSY     4               
      CHIPSW     4   VITANY     3   VITMUL     3   VITMULM    3               
      VITMULD1   3   VITMULD2   3   VITMULDM   3   VITMULDW   3               
      VITA       3   VITAM      3   VITADNO    3   VITADTP    3               
      VITADM     3   VITADW     3   VITC       3   VITCM      3               
      VITCDNO    3   VITCDTP    3   VITCDM     3   VITCDW     3               
      VITE       3   VITEM      3   VITEDNO    3   VITEDTP    3               
      VITEDM     3   VITEDW     3   CALC       3   CALCM      3               
      CALCDNO    3   CALCDTP    3   CALCDM     3   CALCDW     3               
      HERBSUPP   3   HERB_ALO   3   HERB_AST   3   HERB_BIL   3               
      HERB_CAS   3   HERB_CAT   3   HERB_CAY   3   HERB_CRA   3               
      HERB_DON   3   HERB_ECH   3   HERB_EVE   3   HERB_FEV   3               
      HERB_GAR   3   HERB_GIG   3   HERB_GIK   3   HERB_GIA   3               
      HERB_GIS   3   HERB_GOL   3   HERB_GRA   3   HERB_KAV   3               
      HERB_LEC   3   HERB_MEL   3   HERB_MIL   3   HERB_SAW   3               
      HERB_JOH   3   HERB_VAL   3   HERB_OTH   3   HERBM      3               
      HERBDNO    3   HERBDTP    3   HERBDM     3   HERBDW     3               
      MDTALK     3                                                            
                                                                              
      WALK       3   MOVE1      3   LIFT       3   SITWDAY    3               
      SITWEND    3   MDEXER     3                                             
                                                                              
      FSSWITC    3   FSQSTOP    3   FSQDECR    3   FSQBOOK    3               
      FSQCOUN    3   FSQCLIN    3   FSQPATC    3   FSQGUM     3               
      FSQSPRY    3   FSQINHA    3   FSQZYB     3   FSQSWIT    3               
      FSQOTH     3   FSQUITN    4   CSSWITC    3   CSQEV      3               
      CSQ12      4   CSQSTOP    3   CSQDECR    3   CSQBOOK    3               
      CSQCOUN    3   CSQCLIN    3   CSQPATC    3   CSQGUM     3               
      CSQSPRY    3   CSQINHA    3   CSQZYB     3   CSQSWIT    3               
      CSQOTH     3   QWANT      3   CSQ6M      3   CSQ30D     3               
      MDTOB1     3   MDTOB2     3   EVPIPE     3   EVCIGAR    3               
      EVBIDI     3   EVSNUFF    3   EVCHEW     3   PIPE50     3               
      PIPEED     3   CIGAR50    3   CIGARED    3   CIG30D     3               
      BIDI20     3   BIDIED     3   SNUFF20    3   SNUFFED    3               
      CHEW20     3   CHEWED     3   SMHOME     3   AREAWRK    3               
      SMAREA     3   SMPOL      3   SMPOLP     3   SMPOLW     3               
      NOSMOK     3   SMHARM     3   INCR150    3                              
                                                                              
      SUN1HR     3   SUNTAN     3   SUN1_SHA   3   SUN1_HAT   3               
      SUN2_LGS   3   SUN2_SCR   3   SPF        3   NBURN      4               
      SKNX       3   RSKX1_MT $ 2   RSKX1_YR   4   RSKX1_NO   3               
      RSKX1_TP   3   RSKX2      3   RSKX_MO2   4   RSKX3      3               
      SKNXREAS   3   MENSTAGE   3   BCEVUSE    3   BC_NO      3               
      BC_TP      3   BIRTHEV    3   BIRTHNUM   3   BIRTHAGE   3               
      BIRTHAG2   4   PAPHAD     3   PAP6YR_P   3   RPAP1_MT $ 2               
      RPAP1_YR   4   RPAP1_NO   3   RPAP1_TP   3   RPAP2CA    3               
      RPAP_MO2   4   RPAP3      3   PAPREAS    3   PAPABN     3               
      PAPADDE    3   PAPTRT     3   PAPNOT     3   MDRECPAP   3               
      HYST       3   RHYST1_M $ 2   RHYST1_Y   4   RHYST1_N   3               
      RHYST1_T   3   RHYST2     3   RHYS_MO2   4   RHYST3     3               
      MAMHAD     3   MAMAGE     3   MAM6YR_P   3   RMAM1_MT $ 2               
      RMAM1_YR   4   RMAM1_NO   3   RMAM1_TP   3   RMAM2CA    3               
      RMAM_MO2   4   RMAM3      3   MAMWHER    3   MAMPAY     3               
      MAMP_PRI   3   MAMP_CAR   3   MAMP_AID   3   MAMP_FRE   3               
      MAMP_OTH   3   MAMLOCST   3   MAMREAS    3   MAMABN     3               
      MAMT_NON   3   MAMT_OTH   3   MAMT_ULT   3   MAMT_CBE   3               
      MAMT_BIO   3   MAMT_TUM   3   MAMT_BRE   3   MAMCAN     3               
      LUMPEV     3   LUMPNUM    3   MAMNOT     3   MDRECMAM   3               
      MED_HRT    3   MED_TAMX   3   MED_RALX   3   MED_BC     3               
      CBEHAD     3   RCBE1_MT $ 2   RCBE1_YR   4   RCBE1_NO   3               
      RCBE1_TP   3   RCBE2      3   RCBE_MO2   4   RCBE3      3               
      PSAHRD     3   PSAHAD     3   PSAAGE1    3   PSA5YR_P   3               
      RPSA1_MT $ 2   RPSA1_YR   4   RPSA1_NO   3   RPSA1_TP   3               
      RPSA2      3   RPSA_MO2   4   RPSA3      3   PSAREAS    3               
      PSASUGG    3   PSADISC    3   PSAABN     3   PSAT_NON   3               
      PSAT_OTH   3   PSAT_BIO   3   PSAT_ULT   3   PSAT_MRI   3               
      PSACAN     3   CREHAD     3   CRE10Y_P   3   RCRE1_MT $ 2               
      RCRE1_YR   4   RCRE1_NO   3   RCRE1_TP   3   RCRE2      3               
      RCRE_MO2   4   RCRE3      3   CRENAM     3   CREREAS    3               
      CRENOT     3   CREREC     3   HFOBHAD    3   HFOB3Y_P   3               
      RHFOB1_M $ 2   RHFOB1_Y   4   RHFOB1_N   3   RHFOB1_T   3               
      RHFOB2     3   RHFO_MO2   4   RHFOB3     3   HFOBREAS   3               
      HFOBABN    3   HFOB_NON   3   HFOB_OTH   3   HFOB_SIG   3               
      HFOB_COL   3   HFOB_BAR   3   HFOB_SUR   3   HFOBNOT    3               
      MDHFOB     3   FOBHAD     3   RFOB1_MT $ 2   RFOB1_YR   4               
      RFOB1_NO   3   RFOB1_TP   3   RFOB2      3   RFOB_MO2   4               
      RFOB3      3                                                            
                                                                              
      GTHEARD    3   GTPOSS     3   GTADVISE   3   GTGRISK    3               
      GT_BRE     3   GT_OVA     3   GT_COL     3   GT_OTH     3               
      GTCOUNT    3   GTRSK_MT   3   GTRSK_YR   4   GTRSKBNO   3               
      GTRSKBTP   3   GTCONSNT   3   GTRSRCH    3   GTDOCT     3               
      GTCONF     3   GTRESULT   3   GTRESHOW   3   GTACCURA   3               
      GTCOUNC    3   GTCWHEN    3   GTINSURE   3   GTCRISK    3               
      GTFRISK    3                                                            
                                                                              
      FHFCAN     3   FHFTYP1    3   FHFAGE1    3   FHFTYP2    3               
      FHFAGE2    3   FHFTYP3    3   FHFAGE3    3   FHFTYP4    3               
      FHFAGE4    3   FHFTYP5    3   FHFAGE5    3   FHFTYP6    3               
      FHFAGE6    3   FHFTYP7    3   FHFAGE7    3   FHFTYP8    3               
      FHFAGE8    3   FHFTYP9    3   FHFAGE9    3   FHFTYP10   3               
      FHFAGE10   3   FHFTYP11   3   FHFAGE11   3   FHFTYP12   3               
      FHFAGE12   3   FHFTYP13   3   FHFAGE13   3   FHFTYP14   3               
      FHFAGE14   3   FHFTYP15   3   FHFAGE15   3   FHFTYP16   3               
      FHFAGE16   3   FHFTYP17   3   FHFAGE17   3   FHFTYP18   3               
      FHFAGE18   3   FHFTYP19   3   FHFAGE19   3   FHFTYP20   3               
      FHFAGE20   3   FHFTYP21   3   FHFAGE21   3   FHFTYP22   3               
      FHFAGE22   3   FHFTYP23   3   FHFAGE23   3   FHFTYP24   3               
      FHFAGE24   3   FHFTYP25   3   FHFAGE25   3   FHFTYP26   3               
      FHFAGE26   3   FHFTYP27   3   FHFAGE27   3   FHFTYP28   3               
      FHFAGE28   3   FHFTYP29   3   FHFAGE29   3   FHFTYP30   3               
      FHFAGE30   3   FHFTYP31   3   FHFAGE31   3   FHFTYP32   3               
      FHMCAN     3   FHMTYP1    3   FHMAGE1    3   FHMTYP2    3               
      FHMAGE2    3   FHMTYP3    3   FHMAGE3    3   FHMTYP4    3               
      FHMAGE4    3   FHMTYP5    3   FHMAGE5    3   FHMTYP6    3               
      FHMAGE6    3   FHMTYP7    3   FHMAGE7    3   FHMTYP8    3               
      FHMAGE8    3   FHMTYP9    3   FHMAGE9    3   FHMTYP10   3               
      FHMAGE10   3   FHMTYP11   3   FHMAGE11   3   FHMTYP12   3               
      FHMAGE12   3   FHMTYP13   3   FHMAGE13   3   FHMTYP14   3               
      FHMAGE14   3   FHMTYP15   3   FHMAGE15   3   FHMTYP16   3               
      FHMAGE16   3   FHMTYP17   3   FHMAGE17   3   FHMTYP18   3               
      FHMAGE18   3   FHMTYP19   3   FHMAGE19   3   FHMTYP20   3               
      FHMAGE20   3   FHMTYP21   3   FHMAGE21   3   FHMTYP22   3               
      FHMAGE22   3   FHMTYP23   3   FHMAGE23   3   FHMTYP24   3               
      FHMAGE24   3   FHMTYP25   3   FHMAGE25   3   FHMTYP26   3               
      FHMAGE26   3   FHMTYP27   3   FHMAGE27   3   FHMTYP28   3               
      FHMAGE28   3   FHMTYP29   3   FHMAGE29   3   FHMTYP30   3               
      FHMAGE30   3   FHMTYP31   3   FHMAGE31   3   FHMTYP32   3               
      FHBNUM     3   FHBCAN     3   FHBTYP1    3   FHBMAN1    3               
      FHBAGE1    3   FHBTYP2    3   FHBMAN2    3   FHBAGE2    3               
      FHBTYP3    3   FHBMAN3    3   FHBAGE3    3   FHBTYP4    3               
      FHBMAN4    3   FHBAGE4    3   FHBTYP5    3   FHBMAN5    3               
      FHBAGE5    3   FHBTYP6    3   FHBMAN6    3   FHBAGE6    3               
      FHBTYP7    3   FHBMAN7    3   FHBAGE7    3   FHBTYP8    3               
      FHBMAN8    3   FHBAGE8    3   FHBTYP9    3   FHBMAN9    3               
      FHBAGE9    3   FHBTYP10   3   FHBMAN10   3   FHBAGE10   3               
      FHBTYP11   3   FHBMAN11   3   FHBAGE11   3   FHBTYP12   3               
      FHBMAN12   3   FHBAGE12   3   FHBTYP13   3   FHBMAN13   3               
      FHBAGE13   3   FHBTYP14   3   FHBMAN14   3   FHBAGE14   3               
      FHBTYP15   3   FHBMAN15   3   FHBAGE15   3   FHBTYP16   3               
      FHBMAN16   3   FHBAGE16   3   FHBTYP17   3   FHBMAN17   3               
      FHBAGE17   3   FHBTYP18   3   FHBMAN18   3   FHBAGE18   3               
      FHBTYP19   3   FHBMAN19   3   FHBAGE19   3   FHBTYP20   3               
      FHBMAN20   3   FHBAGE20   3   FHBTYP21   3   FHBMAN21   3               
      FHBAGE21   3   FHBTYP22   3   FHBMAN22   3   FHBAGE22   3               
      FHBTYP23   3   FHBMAN23   3   FHBAGE23   3   FHBTYP24   3               
      FHBMAN24   3   FHBAGE24   3   FHBTYP25   3   FHBMAN25   3               
      FHBAGE25   3   FHBTYP26   3   FHBMAN26   3   FHBAGE26   3               
      FHBTYP27   3   FHBMAN27   3   FHBAGE27   3   FHBTYP28   3               
      FHBMAN28   3   FHBAGE28   3   FHBTYP29   3   FHBMAN29   3               
      FHBAGE29   3   FHBTYP30   3   FHBMAN30   3   FHBAGE30   3               
      FHBTYP31   3   FHBMAN31   3   FHBAGE31   3   FHBTYP32   3               
      FHSNUM     3   FHSCAN     3   FHSTYP1    3   FHSMAN1    3               
      FHSAGE1    3   FHSTYP2    3   FHSMAN2    3   FHSAGE2    3               
      FHSTYP3    3   FHSMAN3    3   FHSAGE3    3   FHSTYP4    3               
      FHSMAN4    3   FHSAGE4    3   FHSTYP5    3   FHSMAN5    3               
      FHSAGE5    3   FHSTYP6    3   FHSMAN6    3   FHSAGE6    3               
      FHSTYP7    3   FHSMAN7    3   FHSAGE7    3   FHSTYP8    3               
      FHSMAN8    3   FHSAGE8    3   FHSTYP9    3   FHSMAN9    3               
      FHSAGE9    3   FHSTYP10   3   FHSMAN10   3   FHSAGE10   3               
      FHSTYP11   3   FHSMAN11   3   FHSAGE11   3   FHSTYP12   3               
      FHSMAN12   3   FHSAGE12   3   FHSTYP13   3   FHSMAN13   3               
      FHSAGE13   3   FHSTYP14   3   FHSMAN14   3   FHSAGE14   3               
      FHSTYP15   3   FHSMAN15   3   FHSAGE15   3   FHSTYP16   3               
      FHSMAN16   3   FHSAGE16   3   FHSTYP17   3   FHSMAN17   3               
      FHSAGE17   3   FHSTYP18   3   FHSMAN18   3   FHSAGE18   3               
      FHSTYP19   3   FHSMAN19   3   FHSAGE19   3   FHSTYP20   3               
      FHSMAN20   3   FHSAGE20   3   FHSTYP21   3   FHSMAN21   3               
      FHSAGE21   3   FHSTYP22   3   FHSMAN22   3   FHSAGE22   3               
      FHSTYP23   3   FHSMAN23   3   FHSAGE23   3   FHSTYP24   3               
      FHSMAN24   3   FHSAGE24   3   FHSTYP25   3   FHSMAN25   3               
      FHSAGE25   3   FHSTYP26   3   FHSMAN26   3   FHSAGE26   3               
      FHSTYP27   3   FHSMAN27   3   FHSAGE27   3   FHSTYP28   3               
      FHSMAN28   3   FHSAGE28   3   FHSTYP29   3   FHSMAN29   3               
      FHSAGE29   3   FHSTYP30   3   FHSMAN30   3   FHSAGE30   3               
      FHSTYP31   3   FHSMAN31   3   FHSAGE31   3   FHSTYP32   3               
      FHNNUM     3   FHNCAN     3   FHNTYP1    3   FHNMAN1    3               
      FHNAGE1    3   FHNTYP2    3   FHNMAN2    3   FHNAGE2    3               
      FHNTYP3    3   FHNMAN3    3   FHNAGE3    3   FHNTYP4    3               
      FHNMAN4    3   FHNAGE4    3   FHNTYP5    3   FHNMAN5    3               
      FHNAGE5    3   FHNTYP6    3   FHNMAN6    3   FHNAGE6    3               
      FHNTYP7    3   FHNMAN7    3   FHNAGE7    3   FHNTYP8    3               
      FHNMAN8    3   FHNAGE8    3   FHNTYP9    3   FHNMAN9    3               
      FHNAGE9    3   FHNTYP10   3   FHNMAN10   3   FHNAGE10   3               
      FHNTYP11   3   FHNMAN11   3   FHNAGE11   3   FHNTYP12   3               
      FHNMAN12   3   FHNAGE12   3   FHNTYP13   3   FHNMAN13   3               
      FHNAGE13   3   FHNTYP14   3   FHNMAN14   3   FHNAGE14   3               
      FHNTYP15   3   FHNMAN15   3   FHNAGE15   3   FHNTYP16   3               
      FHNMAN16   3   FHNAGE16   3   FHNTYP17   3   FHNMAN17   3               
      FHNAGE17   3   FHNTYP18   3   FHNMAN18   3   FHNAGE18   3               
      FHNTYP19   3   FHNMAN19   3   FHNAGE19   3   FHNTYP20   3               
      FHNMAN20   3   FHNAGE20   3   FHNTYP21   3   FHNMAN21   3               
      FHNAGE21   3   FHNTYP22   3   FHNMAN22   3   FHNAGE22   3               
      FHNTYP23   3   FHNMAN23   3   FHNAGE23   3   FHNTYP24   3               
      FHNMAN24   3   FHNAGE24   3   FHNTYP25   3   FHNMAN25   3               
      FHNAGE25   3   FHNTYP26   3   FHNMAN26   3   FHNAGE26   3               
      FHNTYP27   3   FHNMAN27   3   FHNAGE27   3   FHNTYP28   3               
      FHNMAN28   3   FHNAGE28   3   FHNTYP29   3   FHNMAN29   3               
      FHNAGE29   3   FHNTYP30   3   FHNMAN30   3   FHNAGE30   3               
      FHNTYP31   3   FHNMAN31   3   FHNAGE31   3   FHNTYP32   3               
      FHDNUM     3   FHDCAN     3   FHDTYP1    3   FHDMAN1    3               
      FHDAGE1    3   FHDTYP2    3   FHDMAN2    3   FHDAGE2    3               
      FHDTYP3    3   FHDMAN3    3   FHDAGE3    3   FHDTYP4    3               
      FHDMAN4    3   FHDAGE4    3   FHDTYP5    3   FHDMAN5    3               
      FHDAGE5    3   FHDTYP6    3   FHDMAN6    3   FHDAGE6    3               
      FHDTYP7    3   FHDMAN7    3   FHDAGE7    3   FHDTYP8    3               
      FHDMAN8    3   FHDAGE8    3   FHDTYP9    3   FHDMAN9    3               
      FHDAGE9    3   FHDTYP10   3   FHDMAN10   3   FHDAGE10   3               
      FHDTYP11   3   FHDMAN11   3   FHDAGE11   3   FHDTYP12   3               
      FHDMAN12   3   FHDAGE12   3   FHDTYP13   3   FHDMAN13   3               
      FHDAGE13   3   FHDTYP14   3   FHDMAN14   3   FHDAGE14   3               
      FHDTYP15   3   FHDMAN15   3   FHDAGE15   3   FHDTYP16   3               
      FHDMAN16   3   FHDAGE16   3   FHDTYP17   3   FHDMAN17   3               
      FHDAGE17   3   FHDTYP18   3   FHDMAN18   3   FHDAGE18   3               
      FHDTYP19   3   FHDMAN19   3   FHDAGE19   3   FHDTYP20   3               
      FHDMAN20   3   FHDAGE20   3   FHDTYP21   3   FHDMAN21   3               
      FHDAGE21   3   FHDTYP22   3   FHDMAN22   3   FHDAGE22   3               
      FHDTYP23   3   FHDMAN23   3   FHDAGE23   3   FHDTYP24   3               
      FHDMAN24   3   FHDAGE24   3   FHDTYP25   3   FHDMAN25   3               
      FHDAGE25   3   FHDTYP26   3   FHDMAN26   3   FHDAGE26   3               
      FHDTYP27   3   FHDMAN27   3   FHDAGE27   3   FHDTYP28   3               
      FHDMAN28   3   FHDAGE28   3   FHDTYP29   3   FHDMAN29   3               
      FHDAGE29   3   FHDTYP30   3   FHDMAN30   3   FHDAGE30   3               
      FHDTYP31   3   FHDMAN31   3   FHDAGE31   3   FHDTYP32   3 ;             
                                                                              
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
      REGION       48 -  48    MSASIZEP     49 -  49                          
      WTIA_SA      50 -  55 .1 WTFA_SA      56 -  61                          
      STRATUM      62 -  64    PSU          65 -  65                          
      DUMMY_CA     66 -  66                                                   
                                                                              
      HYPEV        67 -  67    HYPDIFV      68 -  68                          
      CHDEV        69 -  69    ANGEV        70 -  70                          
      MIEV         71 -  71    HRTEV        72 -  72                          
      STREV        73 -  73    EPHEV        74 -  74                          
      AASMEV       75 -  75    AASMYR       76 -  76                          
      AASMERYR     77 -  77    ULCEV        78 -  78                          
      ULCYR        79 -  79    CANEV        80 -  80                          
      CNKIND1      81 -  81    CANAGE1      82 -  83                          
      CNKIND2      84 -  84    CANAGE2      85 -  86                          
      CNKIND3      87 -  87    CANAGE3      88 -  89                          
      CNKIND4      90 -  90    CANAGE4      91 -  92                          
      CNKIND5      93 -  93    CANAGE5      94 -  95                          
      CNKIND6      96 -  96    CANAGE6      97 -  98                          
      CNKIND7      99 -  99    CANAGE7     100 - 101                          
      CNKIND8     102 - 102    CANAGE8     103 - 104                          
      CNKIND9     105 - 105    CANAGE9     106 - 107                          
      CNKIND10    108 - 108    CANAGE10    109 - 110                          
      CNKIND11    111 - 111    CANAGE11    112 - 113                          
      CNKIND12    114 - 114    CANAGE12    115 - 116                          
      CNKIND13    117 - 117    CANAGE13    118 - 119                          
      CNKIND14    120 - 120    CANAGE14    121 - 122                          
      CNKIND15    123 - 123    CANAGE15    124 - 125                          
      CNKIND16    126 - 126    CANAGE16    127 - 128                          
      CNKIND17    129 - 129    CANAGE17    130 - 131                          
      CNKIND18    132 - 132    CANAGE18    133 - 134                          
      CNKIND19    135 - 135    CANAGE19    136 - 137                          
      CNKIND20    138 - 138    CANAGE20    139 - 140                          
      CNKIND21    141 - 141    CANAGE21    142 - 143                          
      CNKIND22    144 - 144    CANAGE22    145 - 146                          
      CNKIND23    147 - 147    CANAGE23    148 - 149                          
      CNKIND24    150 - 150    CANAGE24    151 - 152                          
      CNKIND25    153 - 153    CANAGE25    154 - 155                          
      CNKIND26    156 - 156    CANAGE26    157 - 158                          
      CNKIND27    159 - 159    CANAGE27    160 - 161                          
      CNKIND28    162 - 162    CANAGE28    163 - 164                          
      CNKIND29    165 - 165    CANAGE29    166 - 167                          
      CNKIND30    168 - 168    CANAGE30    169 - 170                          
      CNKIND31    171 - 171    DIBEV       172 - 172                          
      DIBAGE      173 - 174    DIFAGE2     175 - 176                          
      INSLN       177 - 177    DIBPILL     178 - 178                          
      AHAYFYR     179 - 179    SINYR       180 - 180                          
      CBRCHYR     181 - 181    KIDWKYR     182 - 182                          
      LIVYR       183 - 183    JNTYR       184 - 184                          
      JNTMO       185 - 185    JNTIJ       186 - 186                          
      JNTIJLN     187 - 188    JNTIJLT     189 - 189                          
      JNTIJLM     190 - 191    JNTYR1      192 - 192                          
      JNTYR2      193 - 193    JNTYR3      194 - 194                          
      JNTYR4      195 - 195    JNTYR5      196 - 196                          
      JNTYR6      197 - 197    JNTYR7      198 - 198                          
      JNTYR8      199 - 199    JNTYR9      200 - 200                          
      JNTYR10     201 - 201    JNTYR11     202 - 202                          
      JNTYR12     203 - 203    JNTYR13     204 - 204                          
      JNTYR14     205 - 205    JNTYR15     206 - 206                          
      JNTYR16     207 - 207    JNTYR17     208 - 208                          
      PAINECK     209 - 209    PAINLB      210 - 210                          
      PAINLEG     211 - 211    PAINFACE    212 - 212                          
      AMIGR       213 - 213    ACOLD2W     214 - 214                          
      AINTIL2W    215 - 215    PREGNOW     216 - 216                          
      HEARAID     217 - 217    AHEARST     218 - 218                          
      AVISION     219 - 219    ABLIND      220 - 220                          
      LUPPRT      221 - 221    SAD         222 - 222                          
      NERVOUS     223 - 223    RESTLESS    224 - 224                          
      HOPELESS    225 - 225    EFFORT      226 - 226                          
      WORTHLS     227 - 227    MHAMTMO     228 - 228                          
                                                                              
      WRKLYR2     229 - 229    WKDAYR      230 - 232                          
      BEDDAYR     233 - 235    AHSTATYR    236 - 236                          
      SPECEQ      237 - 237    FLWALK      238 - 238                          
      FLCLIMB     239 - 239    FLSTAND     240 - 240                          
      FLSIT       241 - 241    FLSTOOP     242 - 242                          
      FLREACH     243 - 243    FLGRASP     244 - 244                          
      FLCARRY     245 - 245    FLPUSH      246 - 246                          
      FLSHOP      247 - 247    FLSOCL      248 - 248                          
      FLRELAX     249 - 249    FLA1AR      250 - 250                          
      AFLHCA1     251 - 251    ALHCLN1     252 - 253                          
      ALHCLT1     254 - 254    ALHCLY1     255 - 256                          
      ALANTR1     257 - 258    AFLHCA2     259 - 259                          
      ALHCLN2     260 - 261    ALHCLT2     262 - 262                          
      ALHCLY2     263 - 264    ALANTR2     265 - 266                          
      AFLHCA3     267 - 267    ALHCLN3     268 - 269                          
      ALHCLT3     270 - 270    ALHCLY3     271 - 272                          
      ALANTR3     273 - 274    AFLHCA4     275 - 275                          
      ALHCLN4     276 - 277    ALHCLT4     278 - 278                          
      ALHCLY4     279 - 280    ALANTR4     281 - 282                          
      AFLHCA5     283 - 283    ALHCLN5     284 - 285                          
      ALHCLT5     286 - 286    ALHCLY5     287 - 288                          
      ALANTR5     289 - 290    AFLHCA6     291 - 291                          
      ALHCLN6     292 - 293    ALHCLT6     294 - 294                          
      ALHCLY6     295 - 296    ALANTR6     297 - 298                          
      AFLHCA7     299 - 299    ALHCLN7     300 - 301                          
      ALHCLT7     302 - 302    ALHCLY7     303 - 304                          
      ALANTR7     305 - 306    AFLHCA8     307 - 307                          
      ALHCLN8     308 - 309    ALHCLT8     310 - 310                          
      ALHCLY8     311 - 312    ALANTR8     313 - 314                          
      AFLHCA9     315 - 315    ALHCLN9     316 - 317                          
      ALHCLT9     318 - 318    ALHCLY9     319 - 320                          
      ALANTR9     321 - 322    AFLHCA10    323 - 323                          
      ALHCLN10    324 - 325    ALHCLT10    326 - 326                          
      ALHCLY10    327 - 328    ALANTR10    329 - 330                          
      AFLHCA11    331 - 331    ALHCLN11    332 - 333                          
      ALHCLT11    334 - 334    ALHCLY11    335 - 336                          
      ALANTR11    337 - 338    AFLHCA12    339 - 339                          
      ALHCLN12    340 - 341    ALHCLT12    342 - 342                          
      ALHCLY12    343 - 344    ALANTR12    345 - 346                          
      AFLHCA13    347 - 347    ALHCLN13    348 - 349                          
      ALHCLT13    350 - 350    ALHCLY13    351 - 352                          
      ALANTR13    353 - 354    AFLHCA14    355 - 355                          
      ALHCLN14    356 - 357    ALHCLT14    358 - 358                          
      ALHCLY14    359 - 360    ALANTR14    361 - 362                          
      AFLHCA15    363 - 363    ALHCLN15    364 - 365                          
      ALHCLT15    366 - 366    ALHCLY15    367 - 368                          
      ALANTR15    369 - 370    AFLHCA16    371 - 371                          
      ALHCLN16    372 - 373    ALHCLT16    374 - 374                          
      ALHCLY16    375 - 376    ALANTR16    377 - 378                          
      AFLHCA17    379 - 379    ALHCLN17    380 - 381                          
      ALHCLT17    382 - 382    ALHCLY17    383 - 384                          
      ALANTR17    385 - 386    AFLHCA18    387 - 387                          
      ALHCLN18    388 - 389    ALHCLT18    390 - 390                          
      ALHCLY18    391 - 392    ALANTR18    393 - 394                          
      AFLHCA19    395 - 395    ALHCLN19    396 - 397                          
      ALHCLT19    398 - 398    ALHCLY19    399 - 400                          
      ALANTR19    401 - 402    AFLHCA20    403 - 403                          
      ALHCLN20    404 - 405    ALHCLT20    406 - 406                          
      ALHCLY20    407 - 408    ALANTR20    409 - 410                          
      AFLHCA21    411 - 411    ALHCLN21    412 - 413                          
      ALHCLT21    414 - 414    ALHCLY21    415 - 416                          
      ALANTR21    417 - 418    AFLHCA22    419 - 419                          
      ALHCLN22    420 - 421    ALHCLT22    422 - 422                          
      ALHCLY22    423 - 424    ALANTR22    425 - 426                          
      AFLHCA23    427 - 427    ALHCLN23    428 - 429                          
      ALHCLT23    430 - 430    ALHCLY23    431 - 432                          
      ALANTR23    433 - 434    AFLHCA24    435 - 435                          
      ALHCLN24    436 - 437    ALHCLT24    438 - 438                          
      ALHCLY24    439 - 440    ALANTR24    441 - 442                          
      AFLHCA25    443 - 443    ALHCLN25    444 - 445                          
      ALHCLT25    446 - 446    ALHCLY25    447 - 448                          
      ALANTR25    449 - 450    AFLHCA26    451 - 451                          
      ALHCLN26    452 - 453    ALHCLT26    454 - 454                          
      ALHCLY26    455 - 456    ALANTR26    457 - 458                          
      AFLHCA27    459 - 459    ALHCLN27    460 - 461                          
      ALHCLT27    462 - 462    ALHCLY27    463 - 464                          
      ALANTR27    465 - 466    AFLHCA28    467 - 467                          
      ALHCLN28    468 - 469    ALHCLT28    470 - 470                          
      ALHCLY28    471 - 472    ALANTR28    473 - 474                          
      AFLHCA29    475 - 475    ALHCLN29    476 - 477                          
      ALHCLT29    478 - 478    ALHCLY29    479 - 480                          
      ALANTR29    481 - 482    AFLHCA30    483 - 483                          
      ALHCLN30    484 - 485    ALHCLT30    486 - 486                          
      ALHCLY30    487 - 488    ALANTR30    489 - 490                          
      AFLHCA31    491 - 491    ALHCLN31    492 - 493                          
      ALHCLT31    494 - 494    ALHCLY31    495 - 496                          
      ALANTR31    497 - 498    AFLHCA32    499 - 499                          
      ALHCLN32    500 - 501    ALHCLT32    502 - 502                          
      ALHCLY32    503 - 504    ALANTR32    505 - 506                          
      AFLHCA33    507 - 507    ALHCLN33    508 - 509                          
      ALHCLT33    510 - 510    ALHCLY33    511 - 512                          
      ALANTR33    513 - 514    AFLHCA34    515 - 515                          
      ALHCLN34    516 - 517    ALHCLT34    518 - 518                          
      ALHCLY34    519 - 520    ALANTR34    521 - 522                          
      AFLHCA90    523 - 523    ALHCLN90    524 - 525                          
      ALHCLT90    526 - 526    ALHCLY90    527 - 528                          
      ALANTR90    529 - 530    AFLHCA91    531 - 531                          
      ALHCLN91    532 - 533    ALHCLT91    534 - 534                          
      ALHCLY91    535 - 536    ALANTR91    537 - 538                          
      ALCNDR1     539 - 539    ALCNDR2     540 - 540                          
      ALCNDR3     541 - 541    ALCNDR4     542 - 542                          
      ALCNDR5     543 - 543    ALCNDR6     544 - 544                          
      ALCNDR7     545 - 545    ALCNDR8     546 - 546                          
      ALCNDR9     547 - 547    ALCNDR10    548 - 548                          
      ALCNDR11    549 - 549    ALCNDR12    550 - 550                          
      ALCNDR13    551 - 551    ALCNDR14    552 - 552                          
      ALCNDR15    553 - 553    ALCNDR16    554 - 554                          
      ALCNDR17    555 - 555    ALCNDR18    556 - 556                          
      ALCNDR19    557 - 557    ALCNDR20    558 - 558                          
      ALCNDR21    559 - 559    ALCNDR22    560 - 560                          
      ALCNDR23    561 - 561    ALCNDR24    562 - 562                          
      ALCNDR25    563 - 563    ALCNDR26    564 - 564                          
      ALCNDR27    565 - 565    ALCNDR28    566 - 566                          
      ALCNDR29    567 - 567    ALCNDR30    568 - 568                          
      ALCNDR31    569 - 569    ALCNDR32    570 - 570                          
      ALCNDR33    571 - 571    ALCNDR34    572 - 572                          
      ALCNDR90    573 - 573    ALCNDR91    574 - 574                          
      ALCNDRT     575 - 575    ALCHRONR    576 - 576                          
                                                                              
      SMKEV       577 - 577    SMKREG      578 - 579                          
      SMKNOW      580 - 580    SMKQTNO     581 - 582                          
      SMKQTTP     583 - 583    SMKQTY      584 - 585                          
      SMKQTD      586 - 586    CIGSDA1     587 - 588                          
      CIGDAMO     589 - 590    CIGSDA2     591 - 592                          
      CIGSDAY     593 - 594    SMKSTAT1    595 - 595                          
      SMKSTAT2    596 - 596    SMKSTAT3    597 - 597                          
      CIGQTYR     598 - 598    VIGNO       599 - 601                          
      VIGTP       602 - 602    VIGFREQW    603 - 604                          
      VIGLNGNO    605 - 607    VIGLNGTP    608 - 608                          
      VIGMIN      609 - 611    VIGLONGD    612 - 612                          
      MODNO       613 - 615    MODTP       616 - 616                          
      MODFREQW    617 - 618    MODLNGNO    619 - 621                          
      MODLNGTP    622 - 622    MODMIN      623 - 625                          
      MODLONGD    626 - 626    STRNGNO     627 - 629                          
      STRNGTP     630 - 630    STRFREQW    631 - 632                          
      ALC1YR      633 - 633    ALCLIFE     634 - 634                          
      ALC12MNO    635 - 637    ALC12MTP    638 - 638                          
      ALC12MMO    639 - 640    ALC12MWK    641 - 642                          
      ALC12MYR    643 - 645    ALCAMT      646 - 647                          
      ALC5UPNO    648 - 650    ALC5UPTP    651 - 651                          
      ALC5UPYR    652 - 654    ALCSTAT1    655 - 655                          
      MET_FLG1    656 - 656    MET_FLG2    657 - 657                          
      AHEIGHT     658 - 659    AWEIGHTP    660 - 662                          
      DESIREWT    663 - 663    BMI         664 - 667 .2                       
                                                                              
      AUSUALPL    668 - 668    APLKIND     669 - 669                          
      AHCPLROU    670 - 670    AHCPLKND    671 - 671                          
      SOURCELA    672 - 673    AHCCHGYR    674 - 674                          
      AHCCHGHI    675 - 675    AHCDLYR1    676 - 676                          
      AHCDLYR2    677 - 677    AHCDLYR3    678 - 678                          
      AHCDLYR4    679 - 679    AHCDLYR5    680 - 680                          
      AHCAFYR1    681 - 681    AHCAFYR2    682 - 682                          
      AHCAFYR3    683 - 683    AHCAFYR4    684 - 684                          
      ADNLONGR    685 - 685    AHCSYR1     686 - 686                          
      AHCSYR2     687 - 687    AHCSYR3     688 - 688                          
      AHCSYR4     689 - 689    AHCSYR5     690 - 690                          
      AHCSYR6     691 - 691    AHCSYR7     692 - 692                          
      AHCSYR8     693 - 693    AHCSYR9     694 - 694                          
      AHCSYR10    695 - 695    AHERNOY2    696 - 697                          
      AHCHYR      698 - 698    AHCHMOYR    699 - 700                          
      AHCHNOY2    701 - 702    AHCNOYR2    703 - 704                          
      ASRGYR      705 - 705    ASRGNOYR    706 - 707                          
      AMDLONGR    708 - 708    SHTFLUYR    709 - 709                          
      SHTPNUYR    710 - 710    APOX        711 - 711                          
      APOX12MO    712 - 712    AHEP        713 - 713                          
      AHEPLIV     714 - 714    SHTHEPB     715 - 715                          
      SHEPDOS     716 - 716                                                   
                                                                              
      INDSTRY1    717 - 718    INDSTRY2    719 - 720                          
      OCCUP1      721 - 722    OCCUP2      723 - 724                          
      WRKCAT      725 - 725    LOCALLNO    726 - 727                          
      LOCPRTNO    728 - 729    YRSWRK_P    730 - 731                          
      WRKLONGD    732 - 732    HOURPD      733 - 733                          
      PDSICK      734 - 734    ONEJOB      735 - 735                          
      WRKCATOT    736 - 736    BUSINC      737 - 737                          
                                                                              
      BLDGV       738 - 738    BLDG12M     739 - 739                          
      HIVTST      740 - 740    WHYTST_C    741 - 742                          
      TST12M_M    743 - 744    TST12M_Y    745 - 748                          
      TIMETST     749 - 749    REATST_R    750 - 751                          
      REASWHO     752 - 752    WHYREQ_C    753 - 754                          
      LASTST_C    755 - 756    CLNTYP_C    757 - 758                          
      WHOADM      759 - 759    GIVNAM      760 - 760                          
      EXTST12M    761 - 761    CHNSADSP    762 - 762                          
      STMTRU      763 - 763    STD         764 - 764                          
      STDDOC      765 - 765    STDWHER     766 - 766                          
      TBHRD       767 - 767    TBKNOW      768 - 768                          
      TB          769 - 769    TBSPRD1     770 - 770                          
      TBSPRD2     771 - 771    TBSPRD3     772 - 772                          
      TBSPRD4     773 - 773    TBSPRD5     774 - 774                          
      TBSPRD6     775 - 775    TBCURED     776 - 776                          
      TBCHANC     777 - 777    HOMELESS    778 - 778                          
      TBSHAME     779 - 779                                                   
                                                                              
      SPSPEAK     780 - 780    SPCHILD     781 - 781                          
      SPREAD      782 - 782    SP1_HOME    783 - 783                          
      SP1_FRND    784 - 784    SP2_THNK    785 - 785                          
      SP2_TV      786 - 786    SP2_RDIO    787 - 787                          
                                                                              
      COLDCNO     788 - 789    COLDCTP     790 - 790                          
      COLDCY      791 - 794    COLDCW      795 - 797                          
      MILKNO      798 - 799    MILKTP      800 - 800                          
      MILKY       801 - 804    MILKW       805 - 807                          
      MILKKND     808 - 808    BACONNO     809 - 810                          
      BACONTP     811 - 811    BACONY      812 - 815                          
      BACONW      816 - 818    HTDOGNO     819 - 820                          
      HTDOGTP     821 - 821    HTDOGY      822 - 825                          
      HTDOGW      826 - 828    BREADNO     829 - 830                          
      BREADTP     831 - 831    BREADY      832 - 835                          
      BREADW      836 - 838    JUICENO     839 - 840                          
      JUICETP     841 - 841    JUICEY      842 - 845                          
      JUICEW      846 - 848    FRUITNO     849 - 850                          
      FRUITTP     851 - 851    FRUITY      852 - 855                          
      FRUITW      856 - 858    DRESSNO     859 - 860                          
      DRESSTP     861 - 861    DRESSY      862 - 865                          
      DRESSW      866 - 868    SALADNO     869 - 870                          
      SALADTP     871 - 871    SALADY      872 - 875                          
      SALADW      876 - 878    FRIESNO     879 - 880                          
      FRIESTP     881 - 881    FRIESY      882 - 885                          
      FRIESW      886 - 888    POTATNO     889 - 890                          
      POTATTP     891 - 891    POTATY      892 - 895                          
      POTATW      896 - 898    BEANSNO     899 - 900                          
      BEANSTP     901 - 901    BEANSY      902 - 905                          
      BEANSW      906 - 908    OVEGNO      909 - 910                          
      OVEGTP      911 - 911    OVEGY       912 - 915                          
      OVEGW       916 - 918    PASTANO     919 - 920                          
      PASTATP     921 - 921    PASTAY      922 - 925                          
      PASTAW      926 - 928    PNUTNO      929 - 930                          
      PNUTTP      931 - 931    PNUTY       932 - 935                          
      PNUTW       936 - 938    CHIPSNO     939 - 940                          
      CHIPSTP     941 - 941    CHIPSY      942 - 945                          
      CHIPSW      946 - 948    VITANY      949 - 949                          
      VITMUL      950 - 950    VITMULM     951 - 952                          
      VITMULD1    953 - 954    VITMULD2    955 - 955                          
      VITMULDM    956 - 957    VITMULDW    958 - 959                          
      VITA        960 - 960    VITAM       961 - 962                          
      VITADNO     963 - 964    VITADTP     965 - 965                          
      VITADM      966 - 967    VITADW      968 - 969                          
      VITC        970 - 970    VITCM       971 - 972                          
      VITCDNO     973 - 974    VITCDTP     975 - 975                          
      VITCDM      976 - 977    VITCDW      978 - 979                          
      VITE        980 - 980    VITEM       981 - 982                          
      VITEDNO     983 - 984    VITEDTP     985 - 985                          
      VITEDM      986 - 987    VITEDW      988 - 989                          
      CALC        990 - 990    CALCM       991 - 992                          
      CALCDNO     993 - 994    CALCDTP     995 - 995                          
      CALCDM      996 - 997    CALCDW      998 - 999                          
      HERBSUPP   1000 -1000    HERB_ALO   1001 -1001                          
      HERB_AST   1002 -1002    HERB_BIL   1003 -1003                          
      HERB_CAS   1004 -1004    HERB_CAT   1005 -1005                          
      HERB_CAY   1006 -1006    HERB_CRA   1007 -1007                          
      HERB_DON   1008 -1008    HERB_ECH   1009 -1009                          
      HERB_EVE   1010 -1010    HERB_FEV   1011 -1011                          
      HERB_GAR   1012 -1012    HERB_GIG   1013 -1013                          
      HERB_GIK   1014 -1014    HERB_GIA   1015 -1015                          
      HERB_GIS   1016 -1016    HERB_GOL   1017 -1017                          
      HERB_GRA   1018 -1018    HERB_KAV   1019 -1019                          
      HERB_LEC   1020 -1020    HERB_MEL   1021 -1021                          
      HERB_MIL   1022 -1022    HERB_SAW   1023 -1023                          
      HERB_JOH   1024 -1024    HERB_VAL   1025 -1025                          
      HERB_OTH   1026 -1026    HERBM      1027 -1028                          
      HERBDNO    1029 -1030    HERBDTP    1031 -1031                          
      HERBDM     1032 -1033    HERBDW     1034 -1035                          
      MDTALK     1036 -1036                                                   
                                                                              
      WALK       1037 -1037    MOVE1      1038 -1038                          
      LIFT       1039 -1039    SITWDAY    1040 -1041                          
      SITWEND    1042 -1043    MDEXER     1044 -1044                          
                                                                              
      FSSWITC    1045 -1045    FSQSTOP    1046 -1046                          
      FSQDECR    1047 -1047    FSQBOOK    1048 -1048                          
      FSQCOUN    1049 -1049    FSQCLIN    1050 -1050                          
      FSQPATC    1051 -1051    FSQGUM     1052 -1052                          
      FSQSPRY    1053 -1053    FSQINHA    1054 -1054                          
      FSQZYB     1055 -1055    FSQSWIT    1056 -1056                          
      FSQOTH     1057 -1057    FSQUITN    1058 -1060                          
      CSSWITC    1061 -1061    CSQEV      1062 -1062                          
      CSQ12      1063 -1065    CSQSTOP    1066 -1066                          
      CSQDECR    1067 -1067    CSQBOOK    1068 -1068                          
      CSQCOUN    1069 -1069    CSQCLIN    1070 -1070                          
      CSQPATC    1071 -1071    CSQGUM     1072 -1072                          
      CSQSPRY    1073 -1073    CSQINHA    1074 -1074                          
      CSQZYB     1075 -1075    CSQSWIT    1076 -1076                          
      CSQOTH     1077 -1077    QWANT      1078 -1078                          
      CSQ6M      1079 -1079    CSQ30D     1080 -1080                          
      MDTOB1     1081 -1081    MDTOB2     1082 -1082                          
      EVPIPE     1083 -1083    EVCIGAR    1084 -1084                          
      EVBIDI     1085 -1085    EVSNUFF    1086 -1086                          
      EVCHEW     1087 -1087    PIPE50     1088 -1088                          
      PIPEED     1089 -1089    CIGAR50    1090 -1090                          
      CIGARED    1091 -1091    CIG30D     1092 -1093                          
      BIDI20     1094 -1094    BIDIED     1095 -1095                          
      SNUFF20    1096 -1096    SNUFFED    1097 -1097                          
      CHEW20     1098 -1098    CHEWED     1099 -1099                          
      SMHOME     1100 -1101    AREAWRK    1102 -1102                          
      SMAREA     1103 -1103    SMPOL      1104 -1104                          
      SMPOLP     1105 -1105    SMPOLW     1106 -1106                          
      NOSMOK     1107 -1107    SMHARM     1108 -1108                          
      INCR150    1109 -1109                                                   
                                                                              
      SUN1HR     1110 -1111    SUNTAN     1112 -1113                          
      SUN1_SHA   1114 -1114    SUN1_HAT   1115 -1115                          
      SUN2_LGS   1116 -1116    SUN2_SCR   1117 -1117                          
      SPF        1118 -1119    NBURN      1120 -1122                          
      SKNX       1123 -1123    RSKX1_MT $ 1124 -1125                          
      RSKX1_YR   1126 -1129    RSKX1_NO   1130 -1131                          
      RSKX1_TP   1132 -1132    RSKX2      1133 -1133                          
      RSKX_MO2   1134 -1136    RSKX3      1137 -1137                          
      SKNXREAS   1138 -1138    MENSTAGE   1139 -1140                          
      BCEVUSE    1141 -1141    BC_NO      1142 -1143                          
      BC_TP      1144 -1144    BIRTHEV    1145 -1145                          
      BIRTHNUM   1146 -1147    BIRTHAGE   1148 -1149                          
      BIRTHAG2   1150 -1153    PAPHAD     1154 -1154                          
      PAP6YR_P   1155 -1156    RPAP1_MT $ 1157 -1158                          
      RPAP1_YR   1159 -1162    RPAP1_NO   1163 -1164                          
      RPAP1_TP   1165 -1165    RPAP2CA    1166 -1166                          
      RPAP_MO2   1167 -1169    RPAP3      1170 -1170                          
      PAPREAS    1171 -1171    PAPABN     1172 -1172                          
      PAPADDE    1173 -1173    PAPTRT     1174 -1174                          
      PAPNOT     1175 -1176    MDRECPAP   1177 -1177                          
      HYST       1178 -1178    RHYST1_M $ 1179 -1180                          
      RHYST1_Y   1181 -1184    RHYST1_N   1185 -1186                          
      RHYST1_T   1187 -1187    RHYST2     1188 -1188                          
      RHYS_MO2   1189 -1191    RHYST3     1192 -1192                          
      MAMHAD     1193 -1193    MAMAGE     1194 -1194                          
      MAM6YR_P   1195 -1196    RMAM1_MT $ 1197 -1198                          
      RMAM1_YR   1199 -1202    RMAM1_NO   1203 -1204                          
      RMAM1_TP   1205 -1205    RMAM2CA    1206 -1206                          
      RMAM_MO2   1207 -1209    RMAM3      1210 -1210                          
      MAMWHER    1211 -1211    MAMPAY     1212 -1212                          
      MAMP_PRI   1213 -1213    MAMP_CAR   1214 -1214                          
      MAMP_AID   1215 -1215    MAMP_FRE   1216 -1216                          
      MAMP_OTH   1217 -1217    MAMLOCST   1218 -1218                          
      MAMREAS    1219 -1219    MAMABN     1220 -1220                          
      MAMT_NON   1221 -1221    MAMT_OTH   1222 -1222                          
      MAMT_ULT   1223 -1223    MAMT_CBE   1224 -1224                          
      MAMT_BIO   1225 -1225    MAMT_TUM   1226 -1226                          
      MAMT_BRE   1227 -1227    MAMCAN     1228 -1228                          
      LUMPEV     1229 -1229    LUMPNUM    1230 -1231                          
      MAMNOT     1232 -1233    MDRECMAM   1234 -1234                          
      MED_HRT    1235 -1235    MED_TAMX   1236 -1236                          
      MED_RALX   1237 -1237    MED_BC     1238 -1238                          
      CBEHAD     1239 -1239    RCBE1_MT $ 1240 -1241                          
      RCBE1_YR   1242 -1245    RCBE1_NO   1246 -1247                          
      RCBE1_TP   1248 -1248    RCBE2      1249 -1249                          
      RCBE_MO2   1250 -1252    RCBE3      1253 -1253                          
      PSAHRD     1254 -1254    PSAHAD     1255 -1255                          
      PSAAGE1    1256 -1257    PSA5YR_P   1258 -1259                          
      RPSA1_MT $ 1260 -1261    RPSA1_YR   1262 -1265                          
      RPSA1_NO   1266 -1267    RPSA1_TP   1268 -1268                          
      RPSA2      1269 -1269    RPSA_MO2   1270 -1272                          
      RPSA3      1273 -1273    PSAREAS    1274 -1274                          
      PSASUGG    1275 -1275    PSADISC    1276 -1276                          
      PSAABN     1277 -1277    PSAT_NON   1278 -1278                          
      PSAT_OTH   1279 -1279    PSAT_BIO   1280 -1280                          
      PSAT_ULT   1281 -1281    PSAT_MRI   1282 -1282                          
      PSACAN     1283 -1283    CREHAD     1284 -1284                          
      CRE10Y_P   1285 -1286    RCRE1_MT $ 1287 -1288                          
      RCRE1_YR   1289 -1292    RCRE1_NO   1293 -1294                          
      RCRE1_TP   1295 -1295    RCRE2      1296 -1296                          
      RCRE_MO2   1297 -1299    RCRE3      1300 -1300                          
      CRENAM     1301 -1301    CREREAS    1302 -1302                          
      CRENOT     1303 -1304    CREREC     1305 -1305                          
      HFOBHAD    1306 -1306    HFOB3Y_P   1307 -1308                          
      RHFOB1_M $ 1309 -1310    RHFOB1_Y   1311 -1314                          
      RHFOB1_N   1315 -1316    RHFOB1_T   1317 -1317                          
      RHFOB2     1318 -1318    RHFO_MO2   1319 -1321                          
      RHFOB3     1322 -1322    HFOBREAS   1323 -1323                          
      HFOBABN    1324 -1324    HFOB_NON   1325 -1325                          
      HFOB_OTH   1326 -1326    HFOB_SIG   1327 -1327                          
      HFOB_COL   1328 -1328    HFOB_BAR   1329 -1329                          
      HFOB_SUR   1330 -1330    HFOBNOT    1331 -1332                          
      MDHFOB     1333 -1333    FOBHAD     1334 -1334                          
      RFOB1_MT $ 1335 -1336    RFOB1_YR   1337 -1340                          
      RFOB1_NO   1341 -1342    RFOB1_TP   1343 -1343                          
      RFOB2      1344 -1344    RFOB_MO2   1345 -1347                          
      RFOB3      1348 -1348                                                   
                                                                              
      GTHEARD    1349 -1349    GTPOSS     1350 -1350                          
      GTADVISE   1351 -1351    GTGRISK    1352 -1352                          
      GT_BRE     1353 -1353    GT_OVA     1354 -1354                          
      GT_COL     1355 -1355    GT_OTH     1356 -1356                          
      GTCOUNT    1357 -1357    GTRSK_MT   1358 -1359                          
      GTRSK_YR   1360 -1363    GTRSKBNO   1364 -1365                          
      GTRSKBTP   1366 -1366    GTCONSNT   1367 -1367                          
      GTRSRCH    1368 -1368    GTDOCT     1369 -1370                          
      GTCONF     1371 -1371    GTRESULT   1372 -1372                          
      GTRESHOW   1373 -1373    GTACCURA   1374 -1374                          
      GTCOUNC    1375 -1375    GTCWHEN    1376 -1376                          
      GTINSURE   1377 -1377    GTCRISK    1378 -1378                          
      GTFRISK    1379 -1379                                                   
                                                                              
      FHFCAN     1380 -1380    FHFTYP1    1381 -1381                          
      FHFAGE1    1382 -1382    FHFTYP2    1383 -1383                          
      FHFAGE2    1384 -1384    FHFTYP3    1385 -1385                          
      FHFAGE3    1386 -1386    FHFTYP4    1387 -1387                          
      FHFAGE4    1388 -1388    FHFTYP5    1389 -1389                          
      FHFAGE5    1390 -1390    FHFTYP6    1391 -1391                          
      FHFAGE6    1392 -1392    FHFTYP7    1393 -1393                          
      FHFAGE7    1394 -1394    FHFTYP8    1395 -1395                          
      FHFAGE8    1396 -1396    FHFTYP9    1397 -1397                          
      FHFAGE9    1398 -1398    FHFTYP10   1399 -1399                          
      FHFAGE10   1400 -1400    FHFTYP11   1401 -1401                          
      FHFAGE11   1402 -1402    FHFTYP12   1403 -1403                          
      FHFAGE12   1404 -1404    FHFTYP13   1405 -1405                          
      FHFAGE13   1406 -1406    FHFTYP14   1407 -1407                          
      FHFAGE14   1408 -1408    FHFTYP15   1409 -1409                          
      FHFAGE15   1410 -1410    FHFTYP16   1411 -1411                          
      FHFAGE16   1412 -1412    FHFTYP17   1413 -1413                          
      FHFAGE17   1414 -1414    FHFTYP18   1415 -1415                          
      FHFAGE18   1416 -1416    FHFTYP19   1417 -1417                          
      FHFAGE19   1418 -1418    FHFTYP20   1419 -1419                          
      FHFAGE20   1420 -1420    FHFTYP21   1421 -1421                          
      FHFAGE21   1422 -1422    FHFTYP22   1423 -1423                          
      FHFAGE22   1424 -1424    FHFTYP23   1425 -1425                          
      FHFAGE23   1426 -1426    FHFTYP24   1427 -1427                          
      FHFAGE24   1428 -1428    FHFTYP25   1429 -1429                          
      FHFAGE25   1430 -1430    FHFTYP26   1431 -1431                          
      FHFAGE26   1432 -1432    FHFTYP27   1433 -1433                          
      FHFAGE27   1434 -1434    FHFTYP28   1435 -1435                          
      FHFAGE28   1436 -1436    FHFTYP29   1437 -1437                          
      FHFAGE29   1438 -1438    FHFTYP30   1439 -1439                          
      FHFAGE30   1440 -1440    FHFTYP31   1441 -1441                          
      FHFAGE31   1442 -1442    FHFTYP32   1443 -1443                          
      FHMCAN     1444 -1444    FHMTYP1    1445 -1445                          
      FHMAGE1    1446 -1446    FHMTYP2    1447 -1447                          
      FHMAGE2    1448 -1448    FHMTYP3    1449 -1449                          
      FHMAGE3    1450 -1450    FHMTYP4    1451 -1451                          
      FHMAGE4    1452 -1452    FHMTYP5    1453 -1453                          
      FHMAGE5    1454 -1454    FHMTYP6    1455 -1455                          
      FHMAGE6    1456 -1456    FHMTYP7    1457 -1457                          
      FHMAGE7    1458 -1458    FHMTYP8    1459 -1459                          
      FHMAGE8    1460 -1460    FHMTYP9    1461 -1461                          
      FHMAGE9    1462 -1462    FHMTYP10   1463 -1463                          
      FHMAGE10   1464 -1464    FHMTYP11   1465 -1465                          
      FHMAGE11   1466 -1466    FHMTYP12   1467 -1467                          
      FHMAGE12   1468 -1468    FHMTYP13   1469 -1469                          
      FHMAGE13   1470 -1470    FHMTYP14   1471 -1471                          
      FHMAGE14   1472 -1472    FHMTYP15   1473 -1473                          
      FHMAGE15   1474 -1474    FHMTYP16   1475 -1475                          
      FHMAGE16   1476 -1476    FHMTYP17   1477 -1477                          
      FHMAGE17   1478 -1478    FHMTYP18   1479 -1479                          
      FHMAGE18   1480 -1480    FHMTYP19   1481 -1481                          
      FHMAGE19   1482 -1482    FHMTYP20   1483 -1483                          
      FHMAGE20   1484 -1484    FHMTYP21   1485 -1485                          
      FHMAGE21   1486 -1486    FHMTYP22   1487 -1487                          
      FHMAGE22   1488 -1488    FHMTYP23   1489 -1489                          
      FHMAGE23   1490 -1490    FHMTYP24   1491 -1491                          
      FHMAGE24   1492 -1492    FHMTYP25   1493 -1493                          
      FHMAGE25   1494 -1494    FHMTYP26   1495 -1495                          
      FHMAGE26   1496 -1496    FHMTYP27   1497 -1497                          
      FHMAGE27   1498 -1498    FHMTYP28   1499 -1499                          
      FHMAGE28   1500 -1500    FHMTYP29   1501 -1501                          
      FHMAGE29   1502 -1502    FHMTYP30   1503 -1503                          
      FHMAGE30   1504 -1504    FHMTYP31   1505 -1505                          
      FHMAGE31   1506 -1506    FHMTYP32   1507 -1507                          
      FHBNUM     1508 -1509    FHBCAN     1510 -1511                          
      FHBTYP1    1512 -1512    FHBMAN1    1513 -1514                          
      FHBAGE1    1515 -1516    FHBTYP2    1517 -1517                          
      FHBMAN2    1518 -1519    FHBAGE2    1520 -1521                          
      FHBTYP3    1522 -1522    FHBMAN3    1523 -1524                          
      FHBAGE3    1525 -1526    FHBTYP4    1527 -1527                          
      FHBMAN4    1528 -1529    FHBAGE4    1530 -1531                          
      FHBTYP5    1532 -1532    FHBMAN5    1533 -1534                          
      FHBAGE5    1535 -1536    FHBTYP6    1537 -1537                          
      FHBMAN6    1538 -1539    FHBAGE6    1540 -1541                          
      FHBTYP7    1542 -1542    FHBMAN7    1543 -1544                          
      FHBAGE7    1545 -1546    FHBTYP8    1547 -1547                          
      FHBMAN8    1548 -1549    FHBAGE8    1550 -1551                          
      FHBTYP9    1552 -1552    FHBMAN9    1553 -1554                          
      FHBAGE9    1555 -1556    FHBTYP10   1557 -1557                          
      FHBMAN10   1558 -1559    FHBAGE10   1560 -1561                          
      FHBTYP11   1562 -1562    FHBMAN11   1563 -1564                          
      FHBAGE11   1565 -1566    FHBTYP12   1567 -1567                          
      FHBMAN12   1568 -1569    FHBAGE12   1570 -1571                          
      FHBTYP13   1572 -1572    FHBMAN13   1573 -1574                          
      FHBAGE13   1575 -1576    FHBTYP14   1577 -1577                          
      FHBMAN14   1578 -1579    FHBAGE14   1580 -1581                          
      FHBTYP15   1582 -1582    FHBMAN15   1583 -1584                          
      FHBAGE15   1585 -1586    FHBTYP16   1587 -1587                          
      FHBMAN16   1588 -1589    FHBAGE16   1590 -1591                          
      FHBTYP17   1592 -1592    FHBMAN17   1593 -1594                          
      FHBAGE17   1595 -1596    FHBTYP18   1597 -1597                          
      FHBMAN18   1598 -1599    FHBAGE18   1600 -1601                          
      FHBTYP19   1602 -1602    FHBMAN19   1603 -1604                          
      FHBAGE19   1605 -1606    FHBTYP20   1607 -1607                          
      FHBMAN20   1608 -1609    FHBAGE20   1610 -1611                          
      FHBTYP21   1612 -1612    FHBMAN21   1613 -1614                          
      FHBAGE21   1615 -1616    FHBTYP22   1617 -1617                          
      FHBMAN22   1618 -1619    FHBAGE22   1620 -1621                          
      FHBTYP23   1622 -1622    FHBMAN23   1623 -1624                          
      FHBAGE23   1625 -1626    FHBTYP24   1627 -1627                          
      FHBMAN24   1628 -1629    FHBAGE24   1630 -1631                          
      FHBTYP25   1632 -1632    FHBMAN25   1633 -1634                          
      FHBAGE25   1635 -1636    FHBTYP26   1637 -1637                          
      FHBMAN26   1638 -1639    FHBAGE26   1640 -1641                          
      FHBTYP27   1642 -1642    FHBMAN27   1643 -1644                          
      FHBAGE27   1645 -1646    FHBTYP28   1647 -1647                          
      FHBMAN28   1648 -1649    FHBAGE28   1650 -1651                          
      FHBTYP29   1652 -1652    FHBMAN29   1653 -1654                          
      FHBAGE29   1655 -1656    FHBTYP30   1657 -1657                          
      FHBMAN30   1658 -1659    FHBAGE30   1660 -1661                          
      FHBTYP31   1662 -1662    FHBMAN31   1663 -1664                          
      FHBAGE31   1665 -1666    FHBTYP32   1667 -1667                          
      FHSNUM     1668 -1669    FHSCAN     1670 -1671                          
      FHSTYP1    1672 -1672    FHSMAN1    1673 -1674                          
      FHSAGE1    1675 -1676    FHSTYP2    1677 -1677                          
      FHSMAN2    1678 -1679    FHSAGE2    1680 -1681                          
      FHSTYP3    1682 -1682    FHSMAN3    1683 -1684                          
      FHSAGE3    1685 -1686    FHSTYP4    1687 -1687                          
      FHSMAN4    1688 -1689    FHSAGE4    1690 -1691                          
      FHSTYP5    1692 -1692    FHSMAN5    1693 -1694                          
      FHSAGE5    1695 -1696    FHSTYP6    1697 -1697                          
      FHSMAN6    1698 -1699    FHSAGE6    1700 -1701                          
      FHSTYP7    1702 -1702    FHSMAN7    1703 -1704                          
      FHSAGE7    1705 -1706    FHSTYP8    1707 -1707                          
      FHSMAN8    1708 -1709    FHSAGE8    1710 -1711                          
      FHSTYP9    1712 -1712    FHSMAN9    1713 -1714                          
      FHSAGE9    1715 -1716    FHSTYP10   1717 -1717                          
      FHSMAN10   1718 -1719    FHSAGE10   1720 -1721                          
      FHSTYP11   1722 -1722    FHSMAN11   1723 -1724                          
      FHSAGE11   1725 -1726    FHSTYP12   1727 -1727                          
      FHSMAN12   1728 -1729    FHSAGE12   1730 -1731                          
      FHSTYP13   1732 -1732    FHSMAN13   1733 -1734                          
      FHSAGE13   1735 -1736    FHSTYP14   1737 -1737                          
      FHSMAN14   1738 -1739    FHSAGE14   1740 -1741                          
      FHSTYP15   1742 -1742    FHSMAN15   1743 -1744                          
      FHSAGE15   1745 -1746    FHSTYP16   1747 -1747                          
      FHSMAN16   1748 -1749    FHSAGE16   1750 -1751                          
      FHSTYP17   1752 -1752    FHSMAN17   1753 -1754                          
      FHSAGE17   1755 -1756    FHSTYP18   1757 -1757                          
      FHSMAN18   1758 -1759    FHSAGE18   1760 -1761                          
      FHSTYP19   1762 -1762    FHSMAN19   1763 -1764                          
      FHSAGE19   1765 -1766    FHSTYP20   1767 -1767                          
      FHSMAN20   1768 -1769    FHSAGE20   1770 -1771                          
      FHSTYP21   1772 -1772    FHSMAN21   1773 -1774                          
      FHSAGE21   1775 -1776    FHSTYP22   1777 -1777                          
      FHSMAN22   1778 -1779    FHSAGE22   1780 -1781                          
      FHSTYP23   1782 -1782    FHSMAN23   1783 -1784                          
      FHSAGE23   1785 -1786    FHSTYP24   1787 -1787                          
      FHSMAN24   1788 -1789    FHSAGE24   1790 -1791                          
      FHSTYP25   1792 -1792    FHSMAN25   1793 -1794                          
      FHSAGE25   1795 -1796    FHSTYP26   1797 -1797                          
      FHSMAN26   1798 -1799    FHSAGE26   1800 -1801                          
      FHSTYP27   1802 -1802    FHSMAN27   1803 -1804                          
      FHSAGE27   1805 -1806    FHSTYP28   1807 -1807                          
      FHSMAN28   1808 -1809    FHSAGE28   1810 -1811                          
      FHSTYP29   1812 -1812    FHSMAN29   1813 -1814                          
      FHSAGE29   1815 -1816    FHSTYP30   1817 -1817                          
      FHSMAN30   1818 -1819    FHSAGE30   1820 -1821                          
      FHSTYP31   1822 -1822    FHSMAN31   1823 -1824                          
      FHSAGE31   1825 -1826    FHSTYP32   1827 -1827                          
      FHNNUM     1828 -1829    FHNCAN     1830 -1831                          
      FHNTYP1    1832 -1832    FHNMAN1    1833 -1834                          
      FHNAGE1    1835 -1836    FHNTYP2    1837 -1837                          
      FHNMAN2    1838 -1839    FHNAGE2    1840 -1841                          
      FHNTYP3    1842 -1842    FHNMAN3    1843 -1844                          
      FHNAGE3    1845 -1846    FHNTYP4    1847 -1847                          
      FHNMAN4    1848 -1849    FHNAGE4    1850 -1851                          
      FHNTYP5    1852 -1852    FHNMAN5    1853 -1854                          
      FHNAGE5    1855 -1856    FHNTYP6    1857 -1857                          
      FHNMAN6    1858 -1859    FHNAGE6    1860 -1861                          
      FHNTYP7    1862 -1862    FHNMAN7    1863 -1864                          
      FHNAGE7    1865 -1866    FHNTYP8    1867 -1867                          
      FHNMAN8    1868 -1869    FHNAGE8    1870 -1871                          
      FHNTYP9    1872 -1872    FHNMAN9    1873 -1874                          
      FHNAGE9    1875 -1876    FHNTYP10   1877 -1877                          
      FHNMAN10   1878 -1879    FHNAGE10   1880 -1881                          
      FHNTYP11   1882 -1882    FHNMAN11   1883 -1884                          
      FHNAGE11   1885 -1886    FHNTYP12   1887 -1887                          
      FHNMAN12   1888 -1889    FHNAGE12   1890 -1891                          
      FHNTYP13   1892 -1892    FHNMAN13   1893 -1894                          
      FHNAGE13   1895 -1896    FHNTYP14   1897 -1897                          
      FHNMAN14   1898 -1899    FHNAGE14   1900 -1901                          
      FHNTYP15   1902 -1902    FHNMAN15   1903 -1904                          
      FHNAGE15   1905 -1906    FHNTYP16   1907 -1907                          
      FHNMAN16   1908 -1909    FHNAGE16   1910 -1911                          
      FHNTYP17   1912 -1912    FHNMAN17   1913 -1914                          
      FHNAGE17   1915 -1916    FHNTYP18   1917 -1917                          
      FHNMAN18   1918 -1919    FHNAGE18   1920 -1921                          
      FHNTYP19   1922 -1922    FHNMAN19   1923 -1924                          
      FHNAGE19   1925 -1926    FHNTYP20   1927 -1927                          
      FHNMAN20   1928 -1929    FHNAGE20   1930 -1931                          
      FHNTYP21   1932 -1932    FHNMAN21   1933 -1934                          
      FHNAGE21   1935 -1936    FHNTYP22   1937 -1937                          
      FHNMAN22   1938 -1939    FHNAGE22   1940 -1941                          
      FHNTYP23   1942 -1942    FHNMAN23   1943 -1944                          
      FHNAGE23   1945 -1946    FHNTYP24   1947 -1947                          
      FHNMAN24   1948 -1949    FHNAGE24   1950 -1951                          
      FHNTYP25   1952 -1952    FHNMAN25   1953 -1954                          
      FHNAGE25   1955 -1956    FHNTYP26   1957 -1957                          
      FHNMAN26   1958 -1959    FHNAGE26   1960 -1961                          
      FHNTYP27   1962 -1962    FHNMAN27   1963 -1964                          
      FHNAGE27   1965 -1966    FHNTYP28   1967 -1967                          
      FHNMAN28   1968 -1969    FHNAGE28   1970 -1971                          
      FHNTYP29   1972 -1972    FHNMAN29   1973 -1974                          
      FHNAGE29   1975 -1976    FHNTYP30   1977 -1977                          
      FHNMAN30   1978 -1979    FHNAGE30   1980 -1981                          
      FHNTYP31   1982 -1982    FHNMAN31   1983 -1984                          
      FHNAGE31   1985 -1986    FHNTYP32   1987 -1987                          
      FHDNUM     1988 -1989    FHDCAN     1990 -1991                          
      FHDTYP1    1992 -1992    FHDMAN1    1993 -1994                          
      FHDAGE1    1995 -1996    FHDTYP2    1997 -1997                          
      FHDMAN2    1998 -1999    FHDAGE2    2000 -2001                          
      FHDTYP3    2002 -2002    FHDMAN3    2003 -2004                          
      FHDAGE3    2005 -2006    FHDTYP4    2007 -2007                          
      FHDMAN4    2008 -2009    FHDAGE4    2010 -2011                          
      FHDTYP5    2012 -2012    FHDMAN5    2013 -2014                          
      FHDAGE5    2015 -2016    FHDTYP6    2017 -2017                          
      FHDMAN6    2018 -2019    FHDAGE6    2020 -2021                          
      FHDTYP7    2022 -2022    FHDMAN7    2023 -2024                          
      FHDAGE7    2025 -2026    FHDTYP8    2027 -2027                          
      FHDMAN8    2028 -2029    FHDAGE8    2030 -2031                          
      FHDTYP9    2032 -2032    FHDMAN9    2033 -2034                          
      FHDAGE9    2035 -2036    FHDTYP10   2037 -2037                          
      FHDMAN10   2038 -2039    FHDAGE10   2040 -2041                          
      FHDTYP11   2042 -2042    FHDMAN11   2043 -2044                          
      FHDAGE11   2045 -2046    FHDTYP12   2047 -2047                          
      FHDMAN12   2048 -2049    FHDAGE12   2050 -2051                          
      FHDTYP13   2052 -2052    FHDMAN13   2053 -2054                          
      FHDAGE13   2055 -2056    FHDTYP14   2057 -2057                          
      FHDMAN14   2058 -2059    FHDAGE14   2060 -2061                          
      FHDTYP15   2062 -2062    FHDMAN15   2063 -2064                          
      FHDAGE15   2065 -2066    FHDTYP16   2067 -2067                          
      FHDMAN16   2068 -2069    FHDAGE16   2070 -2071                          
      FHDTYP17   2072 -2072    FHDMAN17   2073 -2074                          
      FHDAGE17   2075 -2076    FHDTYP18   2077 -2077                          
      FHDMAN18   2078 -2079    FHDAGE18   2080 -2081                          
      FHDTYP19   2082 -2082    FHDMAN19   2083 -2084                          
      FHDAGE19   2085 -2086    FHDTYP20   2087 -2087                          
      FHDMAN20   2088 -2089    FHDAGE20   2090 -2091                          
      FHDTYP21   2092 -2092    FHDMAN21   2093 -2094                          
      FHDAGE21   2095 -2096    FHDTYP22   2097 -2097                          
      FHDMAN22   2098 -2099    FHDAGE22   2100 -2101                          
      FHDTYP23   2102 -2102    FHDMAN23   2103 -2104                          
      FHDAGE23   2105 -2106    FHDTYP24   2107 -2107                          
      FHDMAN24   2108 -2109    FHDAGE24   2110 -2111                          
      FHDTYP25   2112 -2112    FHDMAN25   2113 -2114                          
      FHDAGE25   2115 -2116    FHDTYP26   2117 -2117                          
      FHDMAN26   2118 -2119    FHDAGE26   2120 -2121                          
      FHDTYP27   2122 -2122    FHDMAN27   2123 -2124                          
      FHDAGE27   2125 -2126    FHDTYP28   2127 -2127                          
      FHDMAN28   2128 -2129    FHDAGE28   2130 -2131                          
      FHDTYP29   2132 -2132    FHDMAN29   2133 -2134                          
      FHDAGE29   2135 -2136    FHDTYP30   2137 -2137                          
      FHDMAN30   2138 -2139    FHDAGE30   2140 -2141                          
      FHDTYP31   2142 -2142    FHDMAN31   2143 -2144                          
      FHDAGE31   2145 -2146    FHDTYP32   2147 -2147;                         
                                                                              
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
      MSASIZEP ="Geographic Distribution - MSA size"                          
      WTIA_SA  ="Weight - Interim Annual"                                     
      WTFA_SA  ="Weight - Final Annual"                                       
      STRATUM  ="Stratum for variance estimation"                             
      PSU      ="PSU for variance estimation"                                 
      DUMMY_CA ="Dummy Record Flag for Cancer Adult"                          
                                                                              
      HYPEV    ="Ever been told you had hypertension"                         
      HYPDIFV  ="Ever told had hypertension on 2+ visits"                     
      CHDEV    ="Ever told you had coronary heart disease"                    
      ANGEV    ="Ever been told you had angina pectoris"                      
      MIEV     ="Ever been told you had a heart attack"                       
      HRTEV    ="Ever told you had a heart cond/disease"                      
      STREV    ="Ever been told you had a stroke"                             
      EPHEV    ="Ever been told you had emphysema"                            
      AASMEV   ="Ever been told you had asthma"                               
      AASMYR   ="Had an asthma episode/attack, past 12 m"                     
      AASMERYR ="Had visit to ER due to asthma, past 12 m"                    
      ULCEV    ="Ever been told you had an ulcer"                             
      ULCYR    ="Had an ulcer in past 12 months"                              
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
      DIBEV    ="Ever been told you had diabetes"                             
      DIBAGE   ="Age first diagnosed w/diabetes"                              
      DIFAGE2  ="Years since first diagnosed w/diabetes"                      
      INSLN    ="Are you NOW taking insulin"                                  
      DIBPILL  ="Are you now taking diabetic pills"                           
      AHAYFYR  ="Told that you had hayfever, past 12 m"                       
      SINYR    ="Told that you had sinusitis, past 12 m"                      
      CBRCHYR  ="Told you had chronic bronchitis, 12 m"                       
      KIDWKYR  ="Told you had weak/failing kidneys, 12 m"                     
      LIVYR    ="Told you had liver condition, past 12 m"                     
      JNTYR    ="Had pain/aching at joints, past 12 m"                        
      JNTMO    ="Joint symptoms present most days for 1 m"                    
      JNTIJ    ="Joint symptoms began because of injury"                      
      JNTIJLN  ="Duration of joint symptoms: # of units"                      
      JNTIJLT  ="Duration of joint symptoms: Time units"                      
      JNTIJLM  ="Duration of joint symptoms: (months)"                        
      JNTYR1   ="Which joint affected...shoulder-right"                       
      JNTYR2   ="Which joint affected...shoulder-left"                        
      JNTYR3   ="Which joint affected...elbow-right"                          
      JNTYR4   ="Which joint affected...elbow-left"                           
      JNTYR5   ="Which joint affected...hip-right"                            
      JNTYR6   ="Which joint affected...hip-left"                             
      JNTYR7   ="Which joint affected...wrist-right"                          
      JNTYR8   ="Which joint affected...wrist-left"                           
      JNTYR9   ="Which joint affected...knee-right"                           
      JNTYR10  ="Which joint affected...knee-left"                            
      JNTYR11  ="Which joint affected...ankle-right"                          
      JNTYR12  ="Which joint affected...ankle-left"                           
      JNTYR13  ="Which joint affected...toes-right"                           
      JNTYR14  ="Which joint affected...toes-left"                            
      JNTYR15  ="Which jnt affected..fingers/thumb-right"                     
      JNTYR16  ="Which jnt affected..fingers/thumb-left"                      
      JNTYR17  ="Which joint affected...other, not listed"                    
      PAINECK  ="Had neck pain, past 3 months"                                
      PAINLB   ="Had low back pain, past 3 months"                            
      PAINLEG  ="Pain spread down leg/below knees"                            
      PAINFACE ="Had pain in jaw/front of ear, past 3 m"                      
      AMIGR    ="Had severe headache/migraine, past 3 m"                      
      ACOLD2W  ="Had a head/chest cold past 2 weeks"                          
      AINTIL2W ="Had stomach prob w/vomit/diarrhea, 2 w"                      
      PREGNOW  ="Are you currently pregnant"                                  
      HEARAID  ="Had ever worn a hearing aid"                                 
      AHEARST  ="Description of hearing w/o hearing aid"                      
      AVISION  ="Trouble seeing even w/glasses/lenses"                        
      ABLIND   ="Are you blind or unable to see at all"                       
      LUPPRT   ="Lost all upper & lower natural teeth"                        
      SAD      ="How often felt sad, past 30 days"                            
      NERVOUS  ="How often felt nervous, past 30 days"                        
      RESTLESS ="How often restless/fidgety, past 30 days"                    
      HOPELESS ="How often felt hopeless, past 30 days"                       
      EFFORT   ="Felt everything was an effort, past 30 d"                    
      WORTHLS  ="How often felt worthless, past 30 days"                      
      MHAMTMO  ="Feelings interfered w/life, past 30 days"                    
                                                                              
      WRKLYR2  ="Work status: last week, past 12 m"                           
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
      AFLHCA1  ="Vision prob causes diff w/activity"                          
      ALHCLN1  ="Duration of vision prob: # of units"                         
      ALHCLT1  ="Duration of vision prob: Time unit"                          
      ALHCLY1  ="Duration of vision prob (in years)"                          
      ALANTR1  ="Duration of vision prob recode 2"                            
      AFLHCA2  ="Hearing prob causes dif w/activity"                          
      ALHCLN2  ="Dur of hearing prob: # of units"                             
      ALHCLT2  ="Dur of hearing prob: Time units"                             
      ALHCLY2  ="Dur of hearing prob (in years)"                              
      ALANTR2  ="Duration of hearing prob recode 2"                           
      AFLHCA3  ="Arthritis/rheumatism causes dif w/act"                       
      ALHCLN3  ="Duration of arthritis prob: # of units"                      
      ALHCLT3  ="Duration of arthritis prob: Time unit"                       
      ALHCLY3  ="Duration of arthritis prob (in years)"                       
      ALANTR3  ="Duration of arthritis prob recode 2"                         
      AFLHCA4  ="Back/neck prob causes dif w/activity"                        
      ALHCLN4  ="Duration of back/neck prob: # of units"                      
      ALHCLT4  ="Duration of back/neck prob: Time units"                      
      ALHCLY4  ="Duration of back/neck prob (in years)"                       
      ALANTR4  ="Duration of back/neck prob recode 2"                         
      AFLHCA5  ="Fract/bone/joint inj causes dif w/act"                       
      ALHCLN5  ="Dur frac/bone/joint inj: # of units"                         
      ALHCLT5  ="Duration fract/bone/joint inj: Time unit"                    
      ALHCLY5  ="Duration fract/bone/joint inj (in years)"                    
      ALANTR5  ="Duration fract/bone/joint inj recode 2"                      
      AFLHCA6  ="Other injury causes dif w/activity"                          
      ALHCLN6  ="Duration of other injury: # of units"                        
      ALHCLT6  ="Duration of other injury: Time units"                        
      ALHCLY6  ="Duration of other injury (in years)"                         
      ALANTR6  ="Duration of other injury recode 2"                           
      AFLHCA7  ="Heart prob causes dif w/activity"                            
      ALHCLN7  ="Duration of heart prob: # of units"                          
      ALHCLT7  ="Duration of heart prob: Time units"                          
      ALHCLY7  ="Duration of heart prob (in years)"                           
      ALANTR7  ="Duration of heart prob recode 2"                             
      AFLHCA8  ="Stroke causes dif w/activity"                                
      ALHCLN8  ="Duration of stroke: # of units"                              
      ALHCLT8  ="Duration of stroke: Time unit"                               
      ALHCLY8  ="Duration of stroke (in years)"                               
      ALANTR8  ="Duration of stroke recode 2"                                 
      AFLHCA9  ="Hypertension causes dif w/activity"                          
      ALHCLN9  ="Duration of hypertension: # of units"                        
      ALHCLT9  ="Duration of hypertension: Time units"                        
      ALHCLY9  ="Duration of hypertension (in years)"                         
      ALANTR9  ="Duration of hypertension recode 2"                           
      AFLHCA10 ="Diabetes causes dif w/activity"                              
      ALHCLN10 ="Duration of diabetes: # of units"                            
      ALHCLT10 ="Duration of diabetes: Time units"                            
      ALHCLY10 ="Duration of diabetes (in years)"                             
      ALANTR10 ="Duration of diabetes recode 2"                               
      AFLHCA11 ="Lung/breathing prob causes dif w/act"                        
      ALHCLN11 ="Duration of lung prob: # of units"                           
      ALHCLT11 ="Duration of lung prob: Time units"                           
      ALHCLY11 ="Duration lung prob (in years)"                               
      ALANTR11 ="Duration of lung prob recode 2"                              
      AFLHCA12 ="Cancer causes dif w/activity"                                
      ALHCLN12 ="Duration of cancer: # of units"                              
      ALHCLT12 ="Duration of cancer: Time unit"                               
      ALHCLY12 ="Duration of cancer (in years)"                               
      ALANTR12 ="Duration of cancer recode 2"                                 
      AFLHCA13 ="Birth defect causes dif w/activity"                          
      ALHCLN13 ="Duration of birth defect: # of units"                        
      ALHCLT13 ="Duration of birth defect: Time unit"                         
      ALHCLY13 ="Duration of birth defect (in years)"                         
      ALANTR13 ="Duration of birth defect recode 2"                           
      AFLHCA14 ="Mental retardation causes dif w/activity"                    
      ALHCLN14 ="Duration mental retardation: # of units"                     
      ALHCLT14 ="Duration mental retardation: Time unit"                      
      ALHCLY14 ="Duration mental retardation (in years)"                      
      ALANTR14 ="Duration of mental retardation recode 2"                     
      AFLHCA15 ="Other devel prob causes dif w/activity"                      
      ALHCLN15 ="Duration other devel prob: # of units"                       
      ALHCLT15 ="Duration other devel prob: Time units"                       
      ALHCLY15 ="Duration other devel prob (in years)"                        
      ALANTR15 ="Duration other devel prob recode 2"                          
      AFLHCA16 ="Senility causes dif w/activity"                              
      ALHCLN16 ="Duration of senility: # of units"                            
      ALHCLT16 ="Duration of senility: Time units"                            
      ALHCLY16 ="Duration of senility (in years)"                             
      ALANTR16 ="Duration of senility recode 2"                               
      AFLHCA17 ="Dep/anx/emot prob causes dif w/activity"                     
      ALHCLN17 ="Duration dep/anx/emot prob: # of units"                      
      ALHCLT17 ="Duration dep/anx/emot prob: Time units"                      
      ALHCLY17 ="Duration dep/anx/emot prob (in years)"                       
      ALANTR17 ="Duration dep/anx/emot prob recode 2"                         
      AFLHCA18 ="Weight prob causes dif w/activity"                           
      ALHCLN18 ="Duration of weight prob: # of units"                         
      ALHCLT18 ="Duration of weight prob: Time units"                         
      ALHCLY18 ="Duration of weight prob (in years)"                          
      ALANTR18 ="Duration of weight prob recode 2"                            
      AFLHCA19 ="Missing limb/finger causes dif w/act"                        
      ALHCLN19 ="Duration missing limb/finger: # of units"                    
      ALHCLT19 ="Duration missing limb/finger: Time units"                    
      ALHCLY19 ="Duration missing limb/finger (in years)"                     
      ALANTR19 ="Duration missing limb/finger recode 2"                       
      AFLHCA20 ="Musculoskel prob causes dif w/activity"                      
      ALHCLN20 ="Duration musculoskel prob: # of units"                       
      ALHCLT20 ="Duration musculoskel prob: Time units"                       
      ALHCLY20 ="Duration musculoskel prob (in years)"                        
      ALANTR20 ="Duration  musculoskel prob recode 2"                         
      AFLHCA21 ="Circulatory prob causes dif w/activity"                      
      ALHCLN21 ="Duration of circulatory prob: # of units"                    
      ALHCLT21 ="Duration of circulatory prob: Time units"                    
      ALHCLY21 ="Duration of circulatory prob (in years)"                     
      ALANTR21 ="Duration of circulatory prob recode 2"                       
      AFLHCA22 ="Endocrine prob causes dif w/activity"                        
      ALHCLN22 ="Duration of endocrine prob: # of units"                      
      ALHCLT22 ="Duration of endocrine prob: Time units"                      
      ALHCLY22 ="Duration of endocrine prob (in years)"                       
      ALANTR22 ="Duration of endocrine prob recode 2"                         
      AFLHCA23 ="Nervous sys prob causes dif w/activity"                      
      ALHCLN23 ="Duration of nervous sys prob: # of units"                    
      ALHCLT23 ="Duration of nervous sys prob: Time unit"                     
      ALHCLY23 ="Duration of nervous sys prob (in years)"                     
      ALANTR23 ="Duration of nervous system prob recode 2"                    
      AFLHCA24 ="Digestive prob causes dif w/activity"                        
      ALHCLN24 ="Duration of digestive prob: # of units"                      
      ALHCLT24 ="Duration of digestive prob: Time unit"                       
      ALHCLY24 ="Duration of digestive prob (in years)"                       
      ALANTR24 ="Duration of digestive prob recode 2"                         
      AFLHCA25 ="Genitourinary prob causes dif w/activity"                    
      ALHCLN25 ="Duration genitourinary prob: # of units"                     
      ALHCLT25 ="Duration genitourinary prob: Time unit"                      
      ALHCLY25 ="Duration genitourinary prob (in years)"                      
      ALANTR25 ="Duration of genitourinary prob recode 2"                     
      AFLHCA26 ="Skin prob causes dif w/activity"                             
      ALHCLN26 ="Duration of skin prob: # of units"                           
      ALHCLT26 ="Duration of skin prob: Time unit"                            
      ALHCLY26 ="Duration of skin prob (in years)"                            
      ALANTR26 ="Duration of skin prob recode 2"                              
      AFLHCA27 ="Blood prob causes dif w/activity"                            
      ALHCLN27 ="Duration of blood prob: # of units"                          
      ALHCLT27 ="Duration of blood prob: Time unit"                           
      ALHCLY27 ="Duration of blood prob (in years)"                           
      ALANTR27 ="Duration of blood prob recode 2"                             
      AFLHCA28 ="Benign tumor causes dif w/activity"                          
      ALHCLN28 ="Duration of benign tumor: # of units"                        
      ALHCLT28 ="Duration of benign tumor: Time unit"                         
      ALHCLY28 ="Duration of benign tumor (in years)"                         
      ALANTR28 ="Duration of benign tumor recode 2"                           
      AFLHCA29 ="Alcohol or drug prob causes dif w/act"                       
      ALHCLN29 ="Duration alcohol/drug prob: # of units"                      
      ALHCLT29 ="Duration alcohol/drug prob: Time unit"                       
      ALHCLY29 ="Duration alcohol/drug prob (in years)"                       
      ALANTR29 ="Duration alcohol/drug prob recode 2"                         
      AFLHCA30 ="Other mental prob causes dif w/activity"                     
      ALHCLN30 ="Duration other mental prob: # of units"                      
      ALHCLT30 ="Duration other mental prob: Time unit"                       
      ALHCLY30 ="Duration other mental prob (in years)"                       
      ALANTR30 ="Duration other mental prob recode 2"                         
      AFLHCA31 ="Surgical after-effects cause dif w/act"                      
      ALHCLN31 ="Dur surgical after-effects: # of units"                      
      ALHCLT31 ="Dur surgical after-effects: Time unit"                       
      ALHCLY31 ="Dur surgical after-effects (in years)"                       
      ALANTR31 ="Duration surgical after-effects recode 2"                    
      AFLHCA32 ='"Old age" causes dif w/activity'                             
      ALHCLN32 ='Duration of "old age": # of units'                           
      ALHCLT32 ='Duration of "old age": Time unit'                            
      ALHCLY32 ='Duration of "old age" (in years)'                            
      ALANTR32 ='Duration of "old age" recode 2'                              
      AFLHCA33 ="Fatigue prob causes dif w/activity"                          
      ALHCLN33 ="Duration of fatigue: # of units"                             
      ALHCLT33 ="Duration of fatigue: Time unit"                              
      ALHCLY33 ="Duration of fatigue (in years)"                              
      ALANTR33 ="Duration of fatigue recode 2"                                
      AFLHCA34 ="Pregnancy-related prob causes dif w/act"                     
      ALHCLN34 ="Dur pregnancy prob: # of units"                              
      ALHCLT34 ="Dur pregnancy prob: Time unit"                               
      ALHCLY34 ="Dur pregnancy prob (in years)"                               
      ALANTR34 ="Dur pregnancy prob recode 2"                                 
      AFLHCA90 ="Other N.E.C. prob (1) causes dif w/act"                      
      ALHCLN90 ="Duration otr N.E.C. prob (1): # of units"                    
      ALHCLT90 ="Duration otr N.E.C. prob (1): Time units"                    
      ALHCLY90 ="Duration otr N.E.C. prob (1) (in years)"                     
      ALANTR90 ="Duration otr N.E.C. prob (1) recode 2"                       
      AFLHCA91 ="Other N.E.C. prob (2) causes dif w/act"                      
      ALHCLN91 ="Duration otr N.E.C. prob (2): # of units"                    
      ALHCLT91 ="Duration otr N.E.C. prob (2): Time units"                    
      ALHCLY91 ="Duration otr N.E.C. prob (2) (in years)"                     
      ALANTR91 ="Duration otr N.E.C. prob(2) recode 2"                        
      ALCNDR1  ="Vision prob condition status"                                
      ALCNDR2  ="Hearing prob condition status"                               
      ALCNDR3  ="Arthritis/rheum condition status"                            
      ALCNDR4  ="Back/neck prob condition status"                             
      ALCNDR5  ="Fract/bone/joint injury cond status"                         
      ALCNDR6  ="Other injury condition status"                               
      ALCNDR7  ="Heart problem condition status"                              
      ALCNDR8  ="Stroke condition status"                                     
      ALCNDR9  ="Hypertension condition status"                               
      ALCNDR10 ="Diabetes condition status"                                   
      ALCNDR11 ="Lung/breath problem condition status"                        
      ALCNDR12 ="Cancer condition status"                                     
      ALCNDR13 ="Birth defect condition status"                               
      ALCNDR14 ="Mental retardation cond status"                              
      ALCNDR15 ="Other developmental prob cond status"                        
      ALCNDR16 ="Senility cond status"                                        
      ALCNDR17 ="Dep/anx/emot prob cond status"                               
      ALCNDR18 ="Weight prob cond status"                                     
      ALCNDR19 ="Amputee condition status"                                    
      ALCNDR20 ="Musculoskel prob cond status"                                
      ALCNDR21 ="Circulatory cond status"                                     
      ALCNDR22 ="Endocrine cond status"                                       
      ALCNDR23 ="Nervous sys cond status"                                     
      ALCNDR24 ="Digestive prob cond status"                                  
      ALCNDR25 ="Genitourinary problem cond status"                           
      ALCNDR26 ="Skin prob condition status"                                  
      ALCNDR27 ="Blood prob condition status"                                 
      ALCNDR28 ="Benign tumor cond status"                                    
      ALCNDR29 ="Alcohol or drug prob cond status"                            
      ALCNDR30 ="Other mental problem cond status"                            
      ALCNDR31 ="Surgical after-effects cond status"                          
      ALCNDR32 ='"Old age" condition status'                                  
      ALCNDR33 ="Fatigue condition status"                                    
      ALCNDR34 ="Pregnancy condition status"                                  
      ALCNDR90 ="Other impair/prob(1) cond stat"                              
      ALCNDR91 ="Other impair/prob(2) cond stat"                              
      ALCNDRT  ="Chronic cond recode"                                         
      ALCHRONR ="Overall functl lim recode by cond status"                    
                                                                              
      SMKEV    ="Ever smoked 100 cigarettes"                                  
      SMKREG   ="Age first smoked fairly regularly"                           
      SMKNOW   ="Smoke freq: everyday/somedays/not at all"                    
      SMKQTNO  ="Time since quit smoking: # of units"                         
      SMKQTTP  ="Time since quit smoking: Time unit"                          
      SMKQTY   ="Time since quit smoking (in years)"                          
      SMKQTD   ="Quit smoking since {month, 1 year ago}"                      
      CIGSDA1  ="Number cigs per day (daily smokers)"                         
      CIGDAMO  ="Number days smoked in past 30 days"                          
      CIGSDA2  ="Number cigs per day (some day smokers)"                      
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
      MODNO    ="Freq moderate activity: # of units"                          
      MODTP    ="Freq moderate activity: Time units"                          
      MODFREQW ="Freq moderate activity (times per wk)"                       
      MODLNGNO ="Duration mod activity: # of units"                           
      MODLNGTP ="Duration mod activity: Time unit"                            
      MODMIN   ="Duration mod activity (in minutes)"                          
      MODLONGD ="Dur of moderate activity: <20 or 20+ min"                    
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
      ADNLONGR ="Time since last saw/talked to dentist"                       
      AHCSYR1  ="Seen/talk to mental hlth prof, past 12 m"                    
      AHCSYR2  ="Seen/talk to eye doctor, past 12 mo"                         
      AHCSYR3  ="Seen/talk to foot doctor, past 12 mo"                        
      AHCSYR4  ="Seen/talk to a chiropractor, past 12 mo"                     
      AHCSYR5  ="Seen/talk to therapist (PT, OT), past 12"                    
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
      SHTPNUYR ="Ever had pneumonia vaccination"                              
      APOX     ="Ever had chickenpox"                                         
      APOX12MO ="Had chickenpox, past 12 m"                                   
      AHEP     ="Ever had hepatitis"                                          
      AHEPLIV  ="Ever lived w/ someone w/ hepatitis"                          
      SHTHEPB  ="Ever had hepatitis B vaccine"                                
      SHEPDOS  ="# doses of hepatitis B vaccine received"                     
                                                                              
      INDSTRY1 ="Detailed industry classification"                            
      INDSTRY2 ="Simple industry classification"                              
      OCCUP1   ="Detailed occupation classification"                          
      OCCUP2   ="Simple occupation classification"                            
      WRKCAT   ="Class of worker"                                             
      LOCALLNO ="Number of employees at work"                                 
      LOCPRTNO ="Number of employees at work"                                 
      YRSWRK_P ="Years on the job"                                            
      WRKLONGD ="Duration at this job"                                        
      HOURPD   ="Paid by the hour"                                            
      PDSICK   ="Paid sick leave"                                             
      ONEJOB   ="Have more than one job"                                      
      WRKCATOT ="Type of employment at second job"                            
      BUSINC   ="Second job incorporated business"                            
                                                                              
      BLDGV    ="Donated blood since March 1985"                              
      BLDG12M  ="Donated blood past 12 m"                                     
      HIVTST   ="Ever been tested for HIV?"                                   
      WHYTST_C ="Reason why you have not been tested?"                        
      TST12M_M ="Month of last test for HIV"                                  
      TST12M_Y ="Year of last test for HIV"                                   
      TIMETST  ="Was it:"                                                     
      REATST_R ="Main reason for last HIV test"                               
      REASWHO  ="Who suggested you should be tested"                          
      WHYREQ_C ="Why was last HIV test required"                              
      LASTST_C ="Location of last HIV test"                                   
      CLNTYP_C ="Type of clinic for last HIV test"                            
      WHOADM   ="Who administered the test?"                                  
      GIVNAM   ="Gave your first and last names?"                             
      EXTST12M ="HIV test in the next 12 m"                                   
      CHNSADSP ="Chances of getting AIDS virus"                               
      STMTRU   ="Are any of these statements true"                            
      STD      ="Had an STD other than HIV/AIDS, past 5 y"                    
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
      HOMELESS ="Spent 24+ hrs living in st., shltr, jail"                    
      TBSHAME  ="Ashamed if you/family diagnosed with TB"                     
                                                                              
      SPSPEAK  ="Language you SPEAK"                                          
      SPCHILD  ="Language used as a CHILD"                                    
      SPREAD   ="Language you READ better"                                    
      SP1_HOME ="Language spoken at HOME"                                     
      SP1_FRND ="Language spoken with FRIENDS"                                
      SP2_THNK ="Language in which you think"                                 
      SP2_TV   ="Language of T.V. programs you watch"                         
      SP2_RDIO ="Language of radio programs you listen to"                    
                                                                              
      COLDCNO  ="Freq eating cold cereal: # of units"                         
      COLDCTP  ="Freq eating cold cereal: time unit"                          
      COLDCY   ="Freq eating cold cereal (in years)"                          
      COLDCW   ="Freq eating cold cereal (in weeks)"                          
      MILKNO   ="Freq using milk: # of units"                                 
      MILKTP   ="Freq using milk: time unit"                                  
      MILKY    ="Freq using milk (in years)"                                  
      MILKW    ="Freq using milk (in weeks)"                                  
      MILKKND  ="Kind of milk"                                                
      BACONNO  ="Freq eating bacon/sausage: # of units"                       
      BACONTP  ="Freq eating bacon/sausage: time unit"                        
      BACONY   ="Freq eating bacon/sausage (in years)"                        
      BACONW   ="Freq eating bacon/sausage (in weeks)"                        
      HTDOGNO  ="Freq eating hotdogs: # of units"                             
      HTDOGTP  ="Freq eating hotdogs: time unit"                              
      HTDOGY   ="Freq eating hotdogs (in years)"                              
      HTDOGW   ="Freq eating hotdogs (in weeks)"                              
      BREADNO  ="Freq eating whol grain bread: # of units"                    
      BREADTP  ="Freq eating whole grain bread: time unit"                    
      BREADY   ="Freq eating whole grain bread (in years)"                    
      BREADW   ="Freq eating whole grain bread (in weeks)"                    
      JUICENO  ="Freq drinking fruit juice: # of units"                       
      JUICETP  ="Freq drinking fruit juice: time unit"                        
      JUICEY   ="Freq drinking fruit juice (in years)"                        
      JUICEW   ="Freq drinking fruit juice (in weeks)"                        
      FRUITNO  ="Freq eating fruit: # of units"                               
      FRUITTP  ="Freq eating fruit: time unit"                                
      FRUITY   ="Freq eating fruit (in years)"                                
      FRUITW   ="Freq eating fruit (in weeks)"                                
      DRESSNO  ="Freq using dressing/mayo: # of units"                        
      DRESSTP  ="Freq using dressing/mayo: time unit"                         
      DRESSY   ="Freq using dressing/mayo (in years)"                         
      DRESSW   ="Freq using dressing/mayo (in weeks)"                         
      SALADNO  ="Freq eating salad: # of units"                               
      SALADTP  ="Freq eating salad: time unit"                                
      SALADY   ="Freq eating salad (in years)"                                
      SALADW   ="Freq eating salad (in weeks)"                                
      FRIESNO  ="Freq eating fried potatoes: # of units"                      
      FRIESTP  ="Freq eating fried potatoes: time unit"                       
      FRIESY   ="Freq eating fried potatoes (in years)"                       
      FRIESW   ="Freq eating fried potatoes (in weeks)"                       
      POTATNO  ="Freq eating other potatoes: # of units"                      
      POTATTP  ="Freq eating other potatoes: time unit"                       
      POTATY   ="Freq eating other potatoes (in years)"                       
      POTATW   ="Freq eating other potatoes (in weeks)"                       
      BEANSNO  ="Freq eating beans: # of units"                               
      BEANSTP  ="Freq eating beans: time unit"                                
      BEANSY   ="Freq eating beans (in years)"                                
      BEANSW   ="Freq eating beans (in weeks)"                                
      OVEGNO   ="Freq eating other vegetables: # of units"                    
      OVEGTP   ="Freq eating other vegetables: time unit"                     
      OVEGY    ="Freq eating other vegetables (in years)"                     
      OVEGW    ="Freq eating other vegetables (in weeks)"                     
      PASTANO  ="Freq eating pasta: # of units"                               
      PASTATP  ="Freq eating pasta: time unit"                                
      PASTAY   ="Freq eating pasta (in years)"                                
      PASTAW   ="Freq eating pasta (in weeks)"                                
      PNUTNO   ="Freq eating nuts: # of units"                                
      PNUTTP   ="Freq eating nuts: time unit"                                 
      PNUTY    ="Freq eating nuts (in years)"                                 
      PNUTW    ="Freq eating nuts (in weeks)"                                 
      CHIPSNO  ="Freq eating chips: # of units"                               
      CHIPSTP  ="Freq eating chips: time unit"                                
      CHIPSY   ="Freq eating chips (in years)"                                
      CHIPSW   ="Freq eating chips (in weeks)"                                
      VITANY   ="Vitamin/mineral supplmnts-past 12 m"                         
      VITMUL   ="Take any multi-vitamins in past 12 m"                        
      VITMULM  ="Number of months took multi-vitamins"                        
      VITMULD1 ="Freq taking multi-vitamins: # of units"                      
      VITMULD2 ="Freq taking multi-vitamins: time unit"                       
      VITMULDM ="Freq taking multi-vitamins (in months)"                      
      VITMULDW ="Freq taking multi-vitamins (in weeks)"                       
      VITA     ="Take vitamin A during past 12 months"                        
      VITAM    ="Number of months took vitamin A"                             
      VITADNO  ="Freq taking Vitamin A: # of units"                           
      VITADTP  ="Freq taking Vitamin A: time unit"                            
      VITADM   ="Freq taking Vitamin A (in months)"                           
      VITADW   ="Freq taking Vitamin A (in weeks)"                            
      VITC     ="Take vitamin C during past 12 months"                        
      VITCM    ="Number of months took vitamin C"                             
      VITCDNO  ="Freq taking Vitamin C: # of units"                           
      VITCDTP  ="Freq taking Vitamin C: time unit"                            
      VITCDM   ="Freq taking Vitamin C (in months)"                           
      VITCDW   ="Freq taking Vitamin C (in weeks)"                            
      VITE     ="Take vitamin E during past 12 months"                        
      VITEM    ="Number of months took vitamin E"                             
      VITEDNO  ="Freq taking Vitamin E: # of units"                           
      VITEDTP  ="Freq taking Vitamin E: time unit"                            
      VITEDM   ="Freq taking Vitamin E (in months)"                           
      VITEDW   ="Freq taking Vitamin E (in weeks)"                            
      CALC     ="Take calcium during past 12 months"                          
      CALCM    ="Number of months took calcium"                               
      CALCDNO  ="Freq taking calcium: # of units"                             
      CALCDTP  ="Freq taking calcium: time unit"                              
      CALCDM   ="Freq taking calcium (in months)"                             
      CALCDW   ="Freq taking calcium (in weeks)"                              
      HERBSUPP ="Take herbal supplements during past 12 m"                    
      HERB_ALO ="Aloe"                                                        
      HERB_AST ="Astragalus"                                                  
      HERB_BIL ="Bilberry"                                                    
      HERB_CAS ="Cascara Sagrada"                                             
      HERB_CAT ="Cat's Claw"                                                  
      HERB_CAY ="Cayenne"                                                     
      HERB_CRA ="Cranberry"                                                   
      HERB_DON ="Dong Quai"                                                   
      HERB_ECH ="Echinacea"                                                   
      HERB_EVE ="Evening primrose oil"                                        
      HERB_FEV ="Feverfew"                                                    
      HERB_GAR ="Garlic pills"                                                
      HERB_GIG ="Ginger pills"                                                
      HERB_GIK ="Ginkgo (biloba)"                                             
      HERB_GIA ="Ginseng (Amer, Asian)"                                       
      HERB_GIS ="Ginseng (Siberian)"                                          
      HERB_GOL ="Goldenseal"                                                  
      HERB_GRA ="Grapeseed extract"                                           
      HERB_KAV ="Kava Kava"                                                   
      HERB_LEC ="Lecithin"                                                    
      HERB_MEL ="Melatonin"                                                   
      HERB_MIL ="Milk Thistle"                                                
      HERB_SAW ="Saw Palmetto"                                                
      HERB_JOH ="St. John's Wort"                                             
      HERB_VAL ="Valerian"                                                    
      HERB_OTH ="Another herbal supplement"                                   
      HERBM    ="Number of months took herbal supplmnts"                      
      HERBDNO  ="Freq herbal supplements: # of units"                         
      HERBDTP  ="Freq herbal supplements: time unit"                          
      HERBDM   ="Freq herbal supplements (in months)"                         
      HERBDW   ="Freq herbal supplements (in weeks)"                          
      MDTALK   ="Talked about diet with doctor"                               
                                                                              
      WALK     ="Usually walk/bike to work/school/errands"                    
      MOVE1    ="Daily activities, moving around"                             
      LIFT     ="Daily activities, lifting or carrying"                       
      SITWDAY  ="Weekday hours sitting outside of work"                       
      SITWEND  ="Weekend hours sitting outside of work"                       
      MDEXER   ="MD recommend exercise/physical activity"                     
                                                                              
      FSSWITC  ="Switch to lower tar/nicotine cigarette"                      
      FSQSTOP  ="Stopped all at once"                                         
      FSQDECR  ="Gradually decreased # cigs smoked"                           
      FSQBOOK  ="Instructions in pamphlet/book"                               
      FSQCOUN  ="One-on-one counseling"                                       
      FSQCLIN  ="Stop-smoking clinic/program"                                 
      FSQPATC  ="Nicotine patch"                                              
      FSQGUM   ="Nicotine containing gum"                                     
      FSQSPRY  ="Nicotine nasal spray"                                        
      FSQINHA  ="Nicotine inhaler"                                            
      FSQZYB   ="Zyban/Buproprion/Wellbutrin med"                             
      FSQSWIT  ="Switched to chewing tobacco/snuff"                           
      FSQOTH   ="Any other method"                                            
      FSQUITN  ="Times quit smoking in whole life"                            
      CSSWITC  ="Switch to lower tar/nicotine cigarette"                      
      CSQEV    ="Stopped smoking one day or longer"                           
      CSQ12    ="Times stopped smoking 1 day or longer"                       
      CSQSTOP  ="Stopped all at once"                                         
      CSQDECR  ="Gradually decreased # cigs smoked"                           
      CSQBOOK  ="Instructions in pamphlet/book"                               
      CSQCOUN  ="One-on-one counseling"                                       
      CSQCLIN  ="Stop-smoking clinic/program"                                 
      CSQPATC  ="Nicotine patch"                                              
      CSQGUM   ="Nicotine containing gum"                                     
      CSQSPRY  ="Nicotine nasal spray"                                        
      CSQINHA  ="Nicotine inhaler"                                            
      CSQZYB   ="Zyban/Buproprion/Wellbutrin med"                             
      CSQSWIT  ="Switched to chewing tobacco/snuff"                           
      CSQOTH   ="Any other method"                                            
      QWANT    ="Like to quit smoking"                                        
      CSQ6M    ="Considering quitting smoking - 6 mos"                        
      CSQ30D   ="Planning to quit smoking - 30 days"                          
      MDTOB1   ="Doctor asked if smoke/use tobacco"                           
      MDTOB2   ="Doc advised quit smoking/using tobacco"                      
      EVPIPE   ="Ever smoked a pipe"                                          
      EVCIGAR  ="Ever smoked a cigar"                                         
      EVBIDI   ="Ever smoked a bidi"                                          
      EVSNUFF  ="Ever used snuff"                                             
      EVCHEW   ="Ever used chewing tobacco"                                   
      PIPE50   ="Smoked a pipe at least 50 times"                             
      PIPEED   ="Pipe freq: everyday/somedays/not at all"                     
      CIGAR50  ="Smoked at least 50 cigars"                                   
      CIGARED  ="Cigar freq: everyday/somedays/not at all"                    
      CIG30D   ="Times smoked cigar in past 30 days"                          
      BIDI20   ="Smoked bidis at least 20 times"                              
      BIDIED   ="Bidi freq: everyday/somedays/not at all"                     
      SNUFF20  ="Used snuff at least 20 times"                                
      SNUFFED  ="Snuff freq: everyday/somedays/not at all"                    
      CHEW20   ="Used chewing tobacco at least 20 times"                      
      CHEWED   ="Chew freq: everyday/somedays/not at all"                     
      SMHOME   ="Times smoked inside home"                                    
      AREAWRK  ="Type of work area"                                           
      SMAREA   ="Anyone smoked in your work area"                             
      SMPOL    ="Employer policy that restricts smoking"                      
      SMPOLP   ="Employer's smoking policy - public areas"                    
      SMPOLW   ="Employer's smoking policy - work areas"                      
      NOSMOK   ="Smoking indoor public places - opinion"                      
      SMHARM   ="Other people's cig smoke harmful"                            
      INCR150  ="Increase cigarettes $1.50 per pack"                          
                                                                              
      SUN1HR   ="In sun 1 hour, effect on skin"                               
      SUNTAN   ="In sun a long time, effect on skin"                          
      SUN1_SHA ="Stay in shade on sunny day"                                  
      SUN1_HAT ="Wear wide-brimmed hat on sunny day"                          
      SUN2_LGS ="Wear long sleeved shirt on sunny day"                        
      SUN2_SCR ="Use sunscreen on sunny day"                                  
      SPF      ="SPF number of sunscreen used most often"                     
      NBURN    ="Number of times sunburned in past year"                      
      SKNX     ="Ever had skin cancer exam"                                   
      RSKX1_MT ="Month of most recent skin exam"                              
      RSKX1_YR ="Year of most recent skin exam"                               
      RSKX1_NO ="Time ago date of skin exam: # of units"                      
      RSKX1_TP ="Time ago date of skin exam: Time unit"                       
      RSKX2    ="Most recent skin exam, time categories"                      
      RSKX_MO2 ="Months since last skin exam"                                 
      RSKX3    ="Most recent skin exam, time categories"                      
      SKNXREAS ="Reason for most recent skin exam"                            
      MENSTAGE ="Age at first menstrual period"                               
      BCEVUSE  ="Ever used birth control pills"                               
      BC_NO    ="Length used birth control: # of units"                       
      BC_TP    ="Length used birth control: time unit"                        
      BIRTHEV  ="Ever gave birth to live born infant"                         
      BIRTHNUM ="Total number of births"                                      
      BIRTHAGE ="Age at first child born"                                     
      BIRTHAG2 ="Year first child born"                                       
      PAPHAD   ="Ever had Pap smear test"                                     
      PAP6YR_P ="Number of Pap smears, last 6 yrs"                            
      RPAP1_MT ="Month of most recent Pap smear"                              
      RPAP1_YR ="Year of most recent Pap smear"                               
      RPAP1_NO ="Time ago date of pap smear: # of units"                      
      RPAP1_TP ="Time ago date of pap smear: Time unit"                       
      RPAP2CA  ="Most recent Pap smear, time categories"                      
      RPAP_MO2 ="Months since last pap smear exam"                            
      RPAP3    ="Most recent pap smear, time categories"                      
      PAPREAS  ="Reason for most recent Pap smear"                            
      PAPABN   ="Ever had abnormal Pap smear results"                         
      PAPADDE  ="Abnormal Pap, additional tests"                              
      PAPTRT   ="Abnormal Pap, treatment or surgery"                          
      PAPNOT   ="Reason why no Pap smear"                                     
      MDRECPAP ="MD recommended Pap smear in past year"                       
      HYST     ="Ever had a hysterectomy"                                     
      RHYST1_M ="Month of hysterectomy"                                       
      RHYST1_Y ="Year of hysterectomy"                                        
      RHYST1_N ="Time ago date hysterectomy: # of units"                      
      RHYST1_T ="Time ago date hysterectomy: time unit"                       
      RHYST2   ="Date of hysterectomy, time categories"                       
      RHYS_MO2 ="Months since hysterectomy"                                   
      RHYST3   ="Hysterectomy, time categories"                               
      MAMHAD   ="Ever had mammogram"                                          
      MAMAGE   ="Age at first mammogram, age categories"                      
      MAM6YR_P ="Number of mammograms, last 6 yrs"                            
      RMAM1_MT ="Month of most recent mammogram"                              
      RMAM1_YR ="Year of most recent mammogram"                               
      RMAM1_NO ="Time ago date of mammogram: # of units"                      
      RMAM1_TP ="Time ago date of mammogram: time unit"                       
      RMAM2CA  ="Most recent mammogram, time categories"                      
      RMAM_MO2 ="Months since last mammogram"                                 
      RMAM3    ="Most recent mammogram, time categories"                      
      MAMWHER  ="Where most recent mammogram done"                            
      MAMPAY   ="Portion of cost you paid for mammogram"                      
      MAMP_PRI ="Priv hlth ins"                                               
      MAMP_CAR ="Medicare"                                                    
      MAMP_AID ="Medicaid"                                                    
      MAMP_FRE ="Free clinic"                                                 
      MAMP_OTH ="Other payment source"                                        
      MAMLOCST ="Mammogram provided by low-cost program"                      
      MAMREAS  ="Reason for most recent mammogram"                            
      MAMABN   ="Ever had abnormal mammogram results"                         
      MAMT_NON ="No additional tests/surgery"                                 
      MAMT_OTH ="Another mammogram"                                           
      MAMT_ULT ="Ultrasound"                                                  
      MAMT_CBE ="Clinical breast exam"                                        
      MAMT_BIO ="Needle biopsy"                                               
      MAMT_TUM ="Tumor, lump removed/lumpectomy"                              
      MAMT_BRE ="Breast removed/masectomy"                                    
      MAMCAN   ="Additional results indicated cancer"                         
      LUMPEV   ="Had non-cancerous breast lump removed"                       
      LUMPNUM  ="Total number of lumpectomies"                                
      MAMNOT   ="Reason why no mammogram"                                     
      MDRECMAM ="MD recommended mammogram in past yr"                         
      MED_HRT  ="Currently taking HRT"                                        
      MED_TAMX ="Currently taking Tamoxifen"                                  
      MED_RALX ="Currently taking Raloxifen"                                  
      MED_BC   ="Taking birth control pills/implants/shot"                    
      CBEHAD   ="Ever had a breast exam"                                      
      RCBE1_MT ="Month of most recent breast exam"                            
      RCBE1_YR ="Year of most recent breast exam"                             
      RCBE1_NO ="Time ago date of breast exam: # of units"                    
      RCBE1_TP ="Time ago date of breast exam: # of units"                    
      RCBE2    ="Most recent breast exam, time categories"                    
      RCBE_MO2 ="Months since last clinical breast exam"                      
      RCBE3    ="Most recent breast exam, time categories"                    
      PSAHRD   ="Ever heard of PSA test"                                      
      PSAHAD   ="Ever had PSA test"                                           
      PSAAGE1  ="Age category at first PSA test"                              
      PSA5YR_P ="Number of PSA tests, last 5 yrs"                             
      RPSA1_MT ="Month of most recent PSA test"                               
      RPSA1_YR ="Year of most recent PSA test"                                
      RPSA1_NO ="Time ago date of PSA test: # of units"                       
      RPSA1_TP ="Time ago date of PSA test: time unit"                        
      RPSA2    ="Most recent PSA test, time categories"                       
      RPSA_MO2 ="Months since last PSA test"                                  
      RPSA3    ="Most recent PSA test, time categories"                       
      PSAREAS  ="Reason for most recent PSA test"                             
      PSASUGG  ="Who first suggested PSA test"                                
      PSADISC  ="Did doctor discuss test"                                     
      PSAABN   ="Ever had abnormal PSA results"                               
      PSAT_NON ="No additional tests/surgery"                                 
      PSAT_OTH ="Another PSA"                                                 
      PSAT_BIO ="Biopsy"                                                      
      PSAT_ULT ="Ultrasound"                                                  
      PSAT_MRI ="MRI"                                                         
      PSACAN   ="Did PSA test indicate cancer"                                
      CREHAD   ="Ever had colorectal screening exam"                          
      CRE10Y_P ="Number of colorectal exams, last 10 yrs"                     
      RCRE1_MT ="Month of most recent colorectal exam"                        
      RCRE1_YR ="Year of most recent colorectal exam"                         
      RCRE1_NO ="Time ago date of exam: # of units"                           
      RCRE1_TP ="Time ago date of exam: time unit"                            
      RCRE2    ="Most recent colorectal exam, time cat."                      
      RCRE_MO2 ="Months since last colorectal exam"                           
      RCRE3    ="Most recent colorectal exam, time cat."                      
      CRENAM   ="Type of recent colorectal exam"                              
      CREREAS  ="Reason for most recent colorectal exam"                      
      CRENOT   ="Reas no recent sigmoidoscopy/colonoscopy"                    
      CREREC   ="Dr recommended sigmoidoscopy/colonoscopy"                    
      HFOBHAD  ="Had blood stool test using home test kit"                    
      HFOB3Y_P ="# home blood stool tests, last 3 yrs"                        
      RHFOB1_M ="Month of home blood stool test"                              
      RHFOB1_Y ="Year of home blood stool test"                               
      RHFOB1_N ="Time ago date of exam: # of units"                           
      RHFOB1_T ="Time ago date of exam: time unit"                            
      RHFOB2   ="Home blood stool test, time categories"                      
      RHFO_MO2 ="Months since last home blood stool test"                     
      RHFOB3   ="Home blood stool test, time categories"                      
      HFOBREAS ="Reas for recent home blood stool test"                       
      HFOBABN  ="Had abnorm home blood stool test results"                    
      HFOB_NON ="No additional tests/surgery"                                 
      HFOB_OTH ="Another Fecal Occult Blood test"                             
      HFOB_SIG ="Sigmoidoscopy"                                               
      HFOB_COL ="Colonoscopy"                                                 
      HFOB_BAR ="Barium enema"                                                
      HFOB_SUR ="Surgery"                                                     
      HFOBNOT  ="Reason no home blood stool test past yr"                     
      MDHFOB   ="MD recomm home blood stool test past yr"                     
      FOBHAD   ="Ever had blood stool test"                                   
      RFOB1_MT ="Month of office blood stool test"                            
      RFOB1_YR ="Month of office blood stool test"                            
      RFOB1_NO ="Time ago date of exam: # of units"                           
      RFOB1_TP ="Time ago date of exam: time unit"                            
      RFOB2    ="Office blood stool test, time categories"                    
      RFOB_MO2 ="Months since office blood stool test"                        
      RFOB3    ="Office blood stool test, time categories"                    
                                                                              
      GTHEARD  ="Heard of genetic testing for cancer risk"                    
      GTPOSS   ="Discussed genetic test with MD"                              
      GTADVISE ="Advised to have genetic test for cancer"                     
      GTGRISK  ="Had genetic test for cancer risk"                            
      GT_BRE   ="Had genetic test for breast cancer risk"                     
      GT_OVA   ="Had genetic test for ovarian cancer risk"                    
      GT_COL   ="Genetic test - colon/rectal cancer risk"                     
      GT_OTH   ="Genetic test - other type of cancer risk"                    
      GTCOUNT  ="Number of genetic tests reported"                            
      GTRSK_MT ="Month of last genetic test"                                  
      GTRSK_YR ="Year of last genetic test"                                   
      GTRSKBNO ="Test done: # of units"                                       
      GTRSKBTP ="Test Done: Time unit"                                        
      GTCONSNT ="Signed consent form for genetic test"                        
      GTRSRCH  ="Genetic test for research study"                             
      GTDOCT   ="Type of doctor who ordered genetic test"                     
      GTCONF   ="Test results remain confidential"                            
      GTRESULT ="Received results of genetic test"                            
      GTRESHOW ="How results of test were received"                           
      GTACCURA ="Confident results are accurate"                              
      GTCOUNC  ="Received genetic counseling"                                 
      GTCWHEN  ="When did you receive genetic counseling"                     
      GTINSURE ="Genetic testing affects health insurance"                    
      GTCRISK  ="Risk of getting cancer in the future"                        
      GTFRISK  ="Amount of cancer in family"                                  
                                                                              
      FHFCAN   ="Biological father ever have cancer"                          
      FHFTYP1  ="What kind of cancer...bladder"                               
      FHFAGE1  ="Father <50 when diag w/bladder cancer"                       
      FHFTYP2  ="What kind of cancer...blood"                                 
      FHFAGE2  ="Father <50 when diag w/blood cancer"                         
      FHFTYP3  ="What kind of cancer...bone"                                  
      FHFAGE3  ="Father <50 when diag w/bone cancer"                          
      FHFTYP4  ="What kind of cancer...brain"                                 
      FHFAGE4  ="Father <50 when diag w/brain cancer"                         
      FHFTYP5  ="What kind of cancer...breast"                                
      FHFAGE5  ="Father <50 when diag w/breast cancer"                        
      FHFTYP6  ="What kind of cancer...cervix"                                
      FHFAGE6  ="Father <50 when diag w/cervical cancer"                      
      FHFTYP7  ="What kind of cancer...colon"                                 
      FHFAGE7  ="Father <50 when diag w/colon cancer"                         
      FHFTYP8  ="What kind of cancer...esophagus"                             
      FHFAGE8  ="Father <50 when diag w/esophageal cancer"                    
      FHFTYP9  ="What kind of cancer...gallbladder"                           
      FHFAGE9  ="Father <50 when diag w/gallbladder Ca"                       
      FHFTYP10 ="What kind of cancer...kidney"                                
      FHFAGE10 ="Father <50 when diag w/kidney cancer"                        
      FHFTYP11 ="What kind of cancer...larynx-windpipe"                       
      FHFAGE11 ="Father <50 when diag w/laryngeal cancer"                     
      FHFTYP12 ="What kind of cancer...leukemia"                              
      FHFAGE12 ="Father <50 when diag w/leukemia"                             
      FHFTYP13 ="What kind of cancer...liver"                                 
      FHFAGE13 ="Father <50 when diag w/liver cancer"                         
      FHFTYP14 ="What kind of cancer...lung"                                  
      FHFAGE14 ="Father <50 when diag w/lung cancer"                          
      FHFTYP15 ="What kind of cancer...lymphoma"                              
      FHFAGE15 ="Father <50 when diag w/lymphoma"                             
      FHFTYP16 ="What kind of cancer...melanoma"                              
      FHFAGE16 ="Father <50 when diag w/melanoma"                             
      FHFTYP17 ="What kind of cancer...mouth/tongue/lip"                      
      FHFAGE17 ="Father <50 when diag w/mouth cancer"                         
      FHFTYP18 ="What kind of cancer...ovarian"                               
      FHFAGE18 ="Father <50 when diag w/ovarian cancer"                       
      FHFTYP19 ="What kind of cancer...pancreatic"                            
      FHFAGE19 ="Father <50 when diag w/pancreatic cancer"                    
      FHFTYP20 ="What kind of cancer...prostate"                              
      FHFAGE20 ="Father <50 when diag w/prostate cancer"                      
      FHFTYP21 ="What kind of cancer...rectum"                                
      FHFAGE21 ="Father <50 when diag w/rectal cancer"                        
      FHFTYP22 ="What kind of cancer..skin (non-melanoma)"                    
      FHFAGE22 ="Father <50 when diag w/skin-non-melanoma"                    
      FHFTYP23 ="What kind of cancer...skin (DK kind)"                        
      FHFAGE23 ="Father <50 when diag w/skin(DK kind) Ca"                     
      FHFTYP24 ="Type of cancer..soft tissue (muscle)"                        
      FHFAGE24 ="Father <50 when diag w/soft tissue Ca"                       
      FHFTYP25 ="What kind of cancer...stomach"                               
      FHFAGE25 ="Father <50 when diag w/stomach cancer"                       
      FHFTYP26 ="What kind of cancer ... testicular"                          
      FHFAGE26 ="Father <50 when diag w/testicular cancer"                    
      FHFTYP27 ="What kind of cancer...throat-pharynx"                        
      FHFAGE27 ="Father <50 when diag w/throat cancer"                        
      FHFTYP28 ="What kind of cancer...thyroid"                               
      FHFAGE28 ="Father <50 when diag w/thyroid cancer"                       
      FHFTYP29 ="What kind of cancer...uterine"                               
      FHFAGE29 ="Father <50 when diag w/uterine cancer"                       
      FHFTYP30 ="What kind of cancer...other"                                 
      FHFAGE30 ="Father <50 when diag w/other cancer"                         
      FHFTYP31 ="What kind of cancer...unknown"                               
      FHFAGE31 ="Father <50 when diag w/unknown cancer"                       
      FHFTYP32 ="What kind of cancer...more than 3 kinds"                     
      FHMCAN   ="Biological mother ever have cancer"                          
      FHMTYP1  ="What kind of cancer...bladder"                               
      FHMAGE1  ="mother <50 when diag w/bladder cancer"                       
      FHMTYP2  ="What kind of cancer...blood"                                 
      FHMAGE2  ="mother <50 when diag w/blood cancer"                         
      FHMTYP3  ="What kind of cancer...bone"                                  
      FHMAGE3  ="mother <50 when diag w/bone cancer"                          
      FHMTYP4  ="What kind of cancer...brain"                                 
      FHMAGE4  ="mother <50 when diag w/brain cancer"                         
      FHMTYP5  ="What kind of cancer...breast"                                
      FHMAGE5  ="mother <50 when diag w/breast cancer"                        
      FHMTYP6  ="What kind of cancer...cervix"                                
      FHMAGE6  ="mother <50 when diag w/cervical cancer"                      
      FHMTYP7  ="What kind of cancer...colon"                                 
      FHMAGE7  ="mother <50 when diag w/colon cancer"                         
      FHMTYP8  ="What kind of cancer...esophagus"                             
      FHMAGE8  ="mother <50 when diag w/esophageal cancer"                    
      FHMTYP9  ="What kind of cancer...gallbladder"                           
      FHMAGE9  ="mother <50 when diag w/gallbladder Ca"                       
      FHMTYP10 ="What kind of cancer...kidney"                                
      FHMAGE10 ="mother <50 when diag w/kidney cancer"                        
      FHMTYP11 ="What kind of cancer...larynx-windpipe"                       
      FHMAGE11 ="mother <50 when diag w/laryngeal cancer"                     
      FHMTYP12 ="What kind of cancer...leukemia"                              
      FHMAGE12 ="mother <50 when diag w/leukemia"                             
      FHMTYP13 ="What kind of cancer...liver"                                 
      FHMAGE13 ="mother <50 when diag w/liver cancer"                         
      FHMTYP14 ="What kind of cancer...lung"                                  
      FHMAGE14 ="mother <50 when diag w/lung cancer"                          
      FHMTYP15 ="What kind of cancer...lymphoma"                              
      FHMAGE15 ="mother <50 when diag w/lymphoma"                             
      FHMTYP16 ="What kind of cancer...melanoma"                              
      FHMAGE16 ="mother <50 when diag w/melanoma"                             
      FHMTYP17 ="What kind of cancer...mouth/tongue/lip"                      
      FHMAGE17 ="mother <50 when diag w/mouth cancer"                         
      FHMTYP18 ="What kind of cancer...ovarian"                               
      FHMAGE18 ="mother <50 when diag w/ovarian cancer"                       
      FHMTYP19 ="What kind of cancer...pancreatic"                            
      FHMAGE19 ="mother <50 when diag w/pancreatic cancer"                    
      FHMTYP20 ="What kind of cancer...prostate"                              
      FHMAGE20 ="mother <50 when diag w/prostate cancer"                      
      FHMTYP21 ="What kind of cancer...rectum"                                
      FHMAGE21 ="mother <50 when diag w/rectal cancer"                        
      FHMTYP22 ="What kind of cancer..skin (non-melanoma)"                    
      FHMAGE22 ="mother <50 when diag w/skin-non-melanoma"                    
      FHMTYP23 ="What kind of cancer...skin (DK kind)"                        
      FHMAGE23 ="mother <50 when diag w/skin(DK kind) Ca"                     
      FHMTYP24 ="Type of cancer..soft tissue (muscle)"                        
      FHMAGE24 ="mother <50 when diag w/soft tissue Ca"                       
      FHMTYP25 ="What kind of cancer...stomach"                               
      FHMAGE25 ="mother <50 when diag w/stomach cancer"                       
      FHMTYP26 ="What kind of cancer ... testicular"                          
      FHMAGE26 ="mother <50 when diag w/testicular cancer"                    
      FHMTYP27 ="What kind of cancer...throat-pharynx"                        
      FHMAGE27 ="mother <50 when diag w/throat cancer"                        
      FHMTYP28 ="What kind of cancer...thyroid"                               
      FHMAGE28 ="mother <50 when diag w/thyroid cancer"                       
      FHMTYP29 ="What kind of cancer...uterine"                               
      FHMAGE29 ="mother <50 when diag w/uterine cancer"                       
      FHMTYP30 ="What kind of cancer...other"                                 
      FHMAGE30 ="mother <50 when diag w/other cancer"                         
      FHMTYP31 ="What kind of cancer...unknown"                               
      FHMAGE31 ="mother <50 when diag w/unknown cancer"                       
      FHMTYP32 ="What kind of cancer...more than 3 kinds"                     
      FHBNUM   ="# of FULL BROTHERS"                                          
      FHBCAN   ="# of full brothers who EVER had cancer"                      
      FHBTYP1  ="What kind of cancer...bladder"                               
      FHBMAN1  ="# of brothers who had bladder cancer"                        
      FHBAGE1  ="# brothers <50 when diag w/bladder Ca"                       
      FHBTYP2  ="What kind of cancer...blood"                                 
      FHBMAN2  ="# of brothers who had blood cancer"                          
      FHBAGE2  ="# brothers <50 when diag w/blood cancer"                     
      FHBTYP3  ="What kind of cancer...bone"                                  
      FHBMAN3  ="# of brothers who had bone cancer"                           
      FHBAGE3  ="# brothers <50 when diag w/bone cancer"                      
      FHBTYP4  ="What kind of cancer...brain"                                 
      FHBMAN4  ="# of brothers who had brain cancer"                          
      FHBAGE4  ="# brothers <50 when diag w/brain cancer"                     
      FHBTYP5  ="What kind of cancer...breast"                                
      FHBMAN5  ="# of brothers who had breast cancer"                         
      FHBAGE5  ="# brothers <50 when diag w/breast cancer"                    
      FHBTYP6  ="What kind of cancer...cervix"                                
      FHBMAN6  ="# of brothers who had cervical cancer"                       
      FHBAGE6  ="# brothers <50 when diag w/cervical Ca"                      
      FHBTYP7  ="What kind of cancer...colon"                                 
      FHBMAN7  ="# of brothers who had colon cancer"                          
      FHBAGE7  ="# brothers <50 when diag w/colon cancer"                     
      FHBTYP8  ="What kind of cancer...esophagus"                             
      FHBMAN8  ="# of brothers who had esophageal cancer"                     
      FHBAGE8  ="# brothers <50 when diag w/esophageal Ca"                    
      FHBTYP9  ="What kind of cancer...gallbladder"                           
      FHBMAN9  ="# of brothers who had gallbladder cancer"                    
      FHBAGE9  ="# brothers<50 when diag w/gallbladder Ca"                    
      FHBTYP10 ="What kind of cancer...kidney"                                
      FHBMAN10 ="# of brothers who had kidney cancer"                         
      FHBAGE10 ="# brothers <50 when diag w/kidney cancer"                    
      FHBTYP11 ="What kind of cancer...larynx-windpipe"                       
      FHBMAN11 ="# of brothers who had larynx-windpipe Ca"                    
      FHBAGE11 ="# brothers <50 when diag w/laryngeal Ca"                     
      FHBTYP12 ="What kind of cancer...leukemia"                              
      FHBMAN12 ="# of brothers who had leukemia"                              
      FHBAGE12 ="# brothers <50 when diag w/leukemia"                         
      FHBTYP13 ="What kind of cancer...liver"                                 
      FHBMAN13 ="# of brothers who had liver cancer"                          
      FHBAGE13 ="# brothers <50 when diag w/liver cancer"                     
      FHBTYP14 ="What kind of cancer...lung"                                  
      FHBMAN14 ="# of brothers who had lung cancer"                           
      FHBAGE14 ="# brothers <50 when diag w/lung cancer"                      
      FHBTYP15 ="What kind of cancer...lymphoma"                              
      FHBMAN15 ="# of brothers who had lymphoma"                              
      FHBAGE15 ="# brothers <50 when diag w/ lymphoma"                        
      FHBTYP16 ="What kind of cancer...melanoma"                              
      FHBMAN16 ="# of brothers who had melanoma"                              
      FHBAGE16 ="# brothers <50 when diag w/ melanoma"                        
      FHBTYP17 ="What kind of cancer...mouth/tongue/lip"                      
      FHBMAN17 ="# of brothers who had mouth/tongue/lip C"                    
      FHBAGE17 ="# brothers <50 when diag w/mouth cancer"                     
      FHBTYP18 ="What kind of cancer...ovarian"                               
      FHBMAN18 ="# of brothers who had ovarian cancer"                        
      FHBAGE18 ="# brothers <50 when diag w/ovarian Ca"                       
      FHBTYP19 ="What kind of cancer...pancreatic"                            
      FHBMAN19 ="# of brothers who had pancreatic cancer"                     
      FHBAGE19 ="# brothers <50 when diag w/pancreatic Ca"                    
      FHBTYP20 ="What kind of cancer...prostate"                              
      FHBMAN20 ="# of brothers who had prostate cancer"                       
      FHBAGE20 ="# brothers <50 when diag w/prostate Ca"                      
      FHBTYP21 ="What kind of cancer...rectum"                                
      FHBMAN21 ="# of brothers who had rectal cancer"                         
      FHBAGE21 ="# brothers <50 when diag w/rectal cancer"                    
      FHBTYP22 ="What kind of cancer..skin (non-melanoma)"                    
      FHBMAN22 ="# of brothers who had skin-non-melanoma"                     
      FHBAGE22 ="# brothers <50 when diag w/skin-nonmelan"                    
      FHBTYP23 ="What kind of cancer...skin (DK kind)"                        
      FHBMAN23 ="# of brothers who had skin (DK kind) Ca"                     
      FHBAGE23 ="# brothers <50 when diag w/skin (DK kind"                    
      FHBTYP24 ="Type of cancer..soft tissue (muscle)"                        
      FHBMAN24 ="# of brothers who had soft tissue Ca"                        
      FHBAGE24 ="# brothers<50 when diag w/soft tissue Ca"                    
      FHBTYP25 ="What kind of cancer...stomach"                               
      FHBMAN25 ="# of brothers who had stomach cancer"                        
      FHBAGE25 ="# brothers <50 when diag w/stomach Ca"                       
      FHBTYP26 ="What kind of cancer ... testicular"                          
      FHBMAN26 ="# of brothers who had testicular cancer"                     
      FHBAGE26 ="# brothers <50 when diag w/testicular Ca"                    
      FHBTYP27 ="What kind of cancer...throat-pharynx"                        
      FHBMAN27 ="# of brothers who had throat cancer"                         
      FHBAGE27 ="# brothers <50 when diag w/throat cancer"                    
      FHBTYP28 ="What kind of cancer...thyroid"                               
      FHBMAN28 ="# of brothers who had thyroid cancer"                        
      FHBAGE28 ="# brothers <50 when diag w/thyroid Ca"                       
      FHBTYP29 ="What kind of cancer...uterine"                               
      FHBMAN29 ="# of brothers who had uterine cancer"                        
      FHBAGE29 ="# brothers <50 when diag w/uterine cance"                    
      FHBTYP30 ="What kind of cancer...other"                                 
      FHBMAN30 ="# of brothers who had other cancer"                          
      FHBAGE30 ="# brothers <50 when diag w/other cancer"                     
      FHBTYP31 ="What kind of cancer...unknown"                               
      FHBMAN31 ="# of brothers who had unknown cancer"                        
      FHBAGE31 ="# brothers <50 when diag w/unknown Ca"                       
      FHBTYP32 ="What kind of cancer...more than 3 kinds"                     
      FHSNUM   ="# of FULL SISTERS"                                           
      FHSCAN   ="# of full sisters who EVER had cancer"                       
      FHSTYP1  ="What kind of cancer...bladder"                               
      FHSMAN1  ="# of sisters who had bladder cancer"                         
      FHSAGE1  ="# sisters <50 when diag w/bladder Ca"                        
      FHSTYP2  ="What kind of cancer...blood"                                 
      FHSMAN2  ="# of sisters who had blood cancer"                           
      FHSAGE2  ="# sisters <50 when diag w/blood cancer"                      
      FHSTYP3  ="What kind of cancer...bone"                                  
      FHSMAN3  ="# of sisters who had bone cancer"                            
      FHSAGE3  ="# sisters <50 when diag w/bone cancer"                       
      FHSTYP4  ="What kind of cancer...brain"                                 
      FHSMAN4  ="# of sisters who had brain cancer"                           
      FHSAGE4  ="# sisters <50 when diag w/brain cancer"                      
      FHSTYP5  ="What kind of cancer...breast"                                
      FHSMAN5  ="# of sisters who had breast cancer"                          
      FHSAGE5  ="# sisters <50 when diag w/breast cancer"                     
      FHSTYP6  ="What kind of cancer...cervix"                                
      FHSMAN6  ="# of sisters who had cervical cancer"                        
      FHSAGE6  ="# sisters <50 when diag w/cervical Ca"                       
      FHSTYP7  ="What kind of cancer...colon"                                 
      FHSMAN7  ="# of sisters who had colon cancer"                           
      FHSAGE7  ="# sisters <50 when diag w/colon cancer"                      
      FHSTYP8  ="What kind of cancer...esophagus"                             
      FHSMAN8  ="# of sisters who had esophageal cancer"                      
      FHSAGE8  ="# sisters <50 when diag w/esophageal Ca"                     
      FHSTYP9  ="What kind of cancer...gallbladder"                           
      FHSMAN9  ="# of sisters who had gallbladder cancer"                     
      FHSAGE9  ="# sisters<50 when diag w/gallbladder Ca"                     
      FHSTYP10 ="What kind of cancer...kidney"                                
      FHSMAN10 ="# of sisters who had kidney cancer"                          
      FHSAGE10 ="# sisters <50 when diag w/kidney cancer"                     
      FHSTYP11 ="What kind of cancer...larynx-windpipe"                       
      FHSMAN11 ="# of sisters who had larynx-windpipe Ca"                     
      FHSAGE11 ="# sisters <50 when diag w/laryngeal Ca"                      
      FHSTYP12 ="What kind of cancer...leukemia"                              
      FHSMAN12 ="# of sisters who had leukemia"                               
      FHSAGE12 ="# sisters <50 when diag w/leukemia"                          
      FHSTYP13 ="What kind of cancer...liver"                                 
      FHSMAN13 ="# of sisters who had liver cancer"                           
      FHSAGE13 ="# sisters <50 when diag w/liver cancer"                      
      FHSTYP14 ="What kind of cancer...lung"                                  
      FHSMAN14 ="# of sisters who had lung cancer"                            
      FHSAGE14 ="# sisters <50 when diag w/lung cancer"                       
      FHSTYP15 ="What kind of cancer...lymphoma"                              
      FHSMAN15 ="# of sisters who had lymphoma"                               
      FHSAGE15 ="# sisters <50 when diag w/ lymphoma"                         
      FHSTYP16 ="What kind of cancer...melanoma"                              
      FHSMAN16 ="# of sisters who had melanoma"                               
      FHSAGE16 ="# sisters <50 when diag w/ melanoma"                         
      FHSTYP17 ="What kind of cancer...mouth/tongue/lip"                      
      FHSMAN17 ="# of sisters who had mouth/tongue/lip Ca"                    
      FHSAGE17 ="# sisters <50 when diag w/mouth cancer"                      
      FHSTYP18 ="What kind of cancer...ovarian"                               
      FHSMAN18 ="# of sisters who had ovarian cancer"                         
      FHSAGE18 ="# sisters <50 when diag w/ovarian Ca"                        
      FHSTYP19 ="What kind of cancer...pancreatic"                            
      FHSMAN19 ="# of sisters who had pancreatic cancer"                      
      FHSAGE19 ="# sisters <50 when diag w/pancreatic Ca"                     
      FHSTYP20 ="What kind of cancer...prostate"                              
      FHSMAN20 ="# of sisters who had prostate cancer"                        
      FHSAGE20 ="# sisters <50 when diag w/prostate Ca"                       
      FHSTYP21 ="What kind of cancer...rectum"                                
      FHSMAN21 ="# of sisters who had rectal cancer"                          
      FHSAGE21 ="# sisters <50 when diag w/rectal cancer"                     
      FHSTYP22 ="What kind of cancer..skin (non-melanoma)"                    
      FHSMAN22 ="# of sisters who had skin-non-melanoma"                      
      FHSAGE22 ="# sisters <50 when diag w/skin-nonmelan"                     
      FHSTYP23 ="What kind of cancer...skin (DK kind)"                        
      FHSMAN23 ="# of sisters who had skin (DK kind) Ca"                      
      FHSAGE23 ="# sisters <50 when diag w/skin (DK kind)"                    
      FHSTYP24 ="Type of cancer..soft tissue (muscle)"                        
      FHSMAN24 ="# of sisters who had soft tissue Ca"                         
      FHSAGE24 ="# sisters<50 when diag w/soft tissue Ca"                     
      FHSTYP25 ="What kind of cancer...stomach"                               
      FHSMAN25 ="# of sisters who had stomach cancer"                         
      FHSAGE25 ="# sisters <50 when diag w/stomach Ca"                        
      FHSTYP26 ="What kind of cancer ... testicular"                          
      FHSMAN26 ="# of sisters who had testicular cancer"                      
      FHSAGE26 ="# sisters <50 when diag w/testicular Ca"                     
      FHSTYP27 ="What kind of cancer...throat-pharynx"                        
      FHSMAN27 ="# of sisters who had throat cancer"                          
      FHSAGE27 ="# sisters <50 when diag w/throat cancer"                     
      FHSTYP28 ="What kind of cancer...thyroid"                               
      FHSMAN28 ="# of sisters who had thyroid cancer"                         
      FHSAGE28 ="# sisters <50 when diag w/thyroid Ca"                        
      FHSTYP29 ="What kind of cancer...uterine"                               
      FHSMAN29 ="# of sisters who had uterine cancer"                         
      FHSAGE29 ="# sisters <50 when diag w/uterine cancer"                    
      FHSTYP30 ="What kind of cancer...other"                                 
      FHSMAN30 ="# of sisters who had other cancer"                           
      FHSAGE30 ="# sisters <50 when diag w/other cancer"                      
      FHSTYP31 ="What kind of cancer...unknown"                               
      FHSMAN31 ="# of sisters who had unknown cancer"                         
      FHSAGE31 ="# sisters <50 when diag w/unknown Ca"                        
      FHSTYP32 ="What kind of cancer...more than 3 kinds"                     
      FHNNUM   ="# of BIOLOGICAL SONS"                                        
      FHNCAN   ="# of full sons who EVER had cancer"                          
      FHNTYP1  ="What kind of cancer...bladder"                               
      FHNMAN1  ="# of sons who had bladder cancer"                            
      FHNAGE1  ="# sons <50 when diag w/bladder Ca"                           
      FHNTYP2  ="What kind of cancer...blood"                                 
      FHNMAN2  ="# of sons who had blood cancer"                              
      FHNAGE2  ="# sons <50 when diag w/blood cancer"                         
      FHNTYP3  ="What kind of cancer...bone"                                  
      FHNMAN3  ="# of sons who had bone cancer"                               
      FHNAGE3  ="# sons <50 when diag w/bone cancer"                          
      FHNTYP4  ="What kind of cancer...brain"                                 
      FHNMAN4  ="# of sons who had brain cancer"                              
      FHNAGE4  ="# sons <50 when diag w/brain cancer"                         
      FHNTYP5  ="What kind of cancer...breast"                                
      FHNMAN5  ="# of sons who had breast cancer"                             
      FHNAGE5  ="# sons <50 when diag w/breast cancer"                        
      FHNTYP6  ="What kind of cancer...cervix"                                
      FHNMAN6  ="# of sons who had cervical cancer"                           
      FHNAGE6  ="# sons <50 when diag w/cervical Ca"                          
      FHNTYP7  ="What kind of cancer...colon"                                 
      FHNMAN7  ="# of sons who had colon cancer"                              
      FHNAGE7  ="# sons <50 when diag w/colon cancer"                         
      FHNTYP8  ="What kind of cancer...esophagus"                             
      FHNMAN8  ="# of sons who had esophageal cancer"                         
      FHNAGE8  ="# sons <50 when diag w/esophageal Ca"                        
      FHNTYP9  ="What kind of cancer...gallbladder"                           
      FHNMAN9  ="# of sons who had gallbladder cancer"                        
      FHNAGE9  ="# sons<50 when diag w/gallbladder Ca"                        
      FHNTYP10 ="What kind of cancer...kidney"                                
      FHNMAN10 ="# of sons who had kidney cancer"                             
      FHNAGE10 ="# sons <50 when diag w/kidney cancer"                        
      FHNTYP11 ="What kind of cancer...larynx-windpipe"                       
      FHNMAN11 ="# of sons who had larynx-windpipe Ca"                        
      FHNAGE11 ="# sons <50 when diag w/laryngeal Ca"                         
      FHNTYP12 ="What kind of cancer...leukemia"                              
      FHNMAN12 ="# of sons who had leukemia"                                  
      FHNAGE12 ="# sons <50 when diag w/leukemia"                             
      FHNTYP13 ="What kind of cancer...liver"                                 
      FHNMAN13 ="# of sons who had liver cancer"                              
      FHNAGE13 ="# sons <50 when diag w/liver cancer"                         
      FHNTYP14 ="What kind of cancer...lung"                                  
      FHNMAN14 ="# of sons who had lung cancer"                               
      FHNAGE14 ="# sons <50 when diag w/lung cancer"                          
      FHNTYP15 ="What kind of cancer...lymphoma"                              
      FHNMAN15 ="# of sons who had lymphoma"                                  
      FHNAGE15 ="# sons <50 when diag w/ lymphoma"                            
      FHNTYP16 ="What kind of cancer...melanoma"                              
      FHNMAN16 ="# of sons who had melanoma"                                  
      FHNAGE16 ="# sons <50 when diag w/ melanoma"                            
      FHNTYP17 ="What kind of cancer...mouth/tongue/lip"                      
      FHNMAN17 ="# of sons who had mouth/tongue/lip Ca"                       
      FHNAGE17 ="# sons <50 when diag w/mouth cancer"                         
      FHNTYP18 ="What kind of cancer...ovarian"                               
      FHNMAN18 ="# of sons who had ovarian cancer"                            
      FHNAGE18 ="# sons <50 when diag w/ovarian Ca"                           
      FHNTYP19 ="What kind of cancer...pancreatic"                            
      FHNMAN19 ="# of sons who had pancreatic cancer"                         
      FHNAGE19 ="# sons <50 when diag w/pancreatic Ca"                        
      FHNTYP20 ="What kind of cancer...prostate"                              
      FHNMAN20 ="# of sons who had prostate cancer"                           
      FHNAGE20 ="# sons <50 when diag w/prostate Ca"                          
      FHNTYP21 ="What kind of cancer...rectum"                                
      FHNMAN21 ="# of sons who had rectal cancer"                             
      FHNAGE21 ="# sons <50 when diag w/rectal cancer"                        
      FHNTYP22 ="What kind of cancer..skin (non-melanoma)"                    
      FHNMAN22 ="# of sons who had skin-non-melanoma"                         
      FHNAGE22 ="# sons <50 when diag w/skin-nonmelan"                        
      FHNTYP23 ="What kind of cancer...skin (DK kind)"                        
      FHNMAN23 ="# of sons who had skin (DK kind) Ca"                         
      FHNAGE23 ="# sons <50 when diag w/skin (DK kind) Ca"                    
      FHNTYP24 ="Type of cancer..soft tissue (muscle)"                        
      FHNMAN24 ="# of sons who had soft tissue Ca"                            
      FHNAGE24 ="# sons<50 when diag w/soft tissue Ca"                        
      FHNTYP25 ="What kind of cancer...stomach"                               
      FHNMAN25 ="# of sons who had stomach cancer"                            
      FHNAGE25 ="# sons <50 when diag w/stomach Ca"                           
      FHNTYP26 ="What kind of cancer ... testicular"                          
      FHNMAN26 ="# of sons who had testicular cancer"                         
      FHNAGE26 ="# sons <50 when diag w/testicular Ca"                        
      FHNTYP27 ="What kind of cancer...throat-pharynx"                        
      FHNMAN27 ="# of sons who had throat cancer"                             
      FHNAGE27 ="# sons <50 when diag w/throat cancer"                        
      FHNTYP28 ="What kind of cancer...thyroid"                               
      FHNMAN28 ="# of sons who had thyroid cancer"                            
      FHNAGE28 ="# sons <50 when diag w/thyroid Ca"                           
      FHNTYP29 ="What kind of cancer...uterine"                               
      FHNMAN29 ="# of sons who had uterine cancer"                            
      FHNAGE29 ="# sons <50 when diag w/uterine cancer"                       
      FHNTYP30 ="What kind of cancer...other"                                 
      FHNMAN30 ="# of sons who had other cancer"                              
      FHNAGE30 ="# sons <50 when diag w/other cancer"                         
      FHNTYP31 ="What kind of cancer...unknown"                               
      FHNMAN31 ="# of sons who had unknown cancer"                            
      FHNAGE31 ="# sons <50 when diag w/unknown Ca"                           
      FHNTYP32 ="What kind of cancer...more than 3 kinds"                     
      FHDNUM   ="# of BIOLOGICAL daughters"                                   
      FHDCAN   ="# of daughters who EVER had cancer"                          
      FHDTYP1  ="What kind of cancer...bladder"                               
      FHDMAN1  ="# of daughters who had bladder cancer"                       
      FHDAGE1  ="# daughters <50 when diag w/bladder Ca"                      
      FHDTYP2  ="What kind of cancer...blood"                                 
      FHDMAN2  ="# of daughters who had blood cancer"                         
      FHDAGE2  ="# daughters <50 when diag w/blood cancer"                    
      FHDTYP3  ="What kind of cancer...bone"                                  
      FHDMAN3  ="# of daughters who had bone cancer"                          
      FHDAGE3  ="# daughters <50 when diag w/bone cancer"                     
      FHDTYP4  ="What kind of cancer...brain"                                 
      FHDMAN4  ="# of daughters who had brain cancer"                         
      FHDAGE4  ="# daughters <50 when diag w/brain cancer"                    
      FHDTYP5  ="What kind of cancer...breast"                                
      FHDMAN5  ="# of daughters who had breast cancer"                        
      FHDAGE5  ="# daughters<50 when diag w/breast cancer"                    
      FHDTYP6  ="What kind of cancer...cervix"                                
      FHDMAN6  ="# of daughters who had cervical cancer"                      
      FHDAGE6  ="# daughters <50 when diag w/cervical Ca"                     
      FHDTYP7  ="What kind of cancer...colon"                                 
      FHDMAN7  ="# of daughters who had colon cancer"                         
      FHDAGE7  ="# daughters <50 when diag w/colon cancer"                    
      FHDTYP8  ="What kind of cancer...esophagus"                             
      FHDMAN8  ="# of daughters who had esophageal cancer"                    
      FHDAGE8  ="# daughters<50 when diag w/esophageal Ca"                    
      FHDTYP9  ="What kind of cancer...gallbladder"                           
      FHDMAN9  ="# of daughters who had gallbladder Ca"                       
      FHDAGE9  ="#daughters<50 when diag w/gallbladder Ca"                    
      FHDTYP10 ="What kind of cancer...kidney"                                
      FHDMAN10 ="# of daughters who had kidney cancer"                        
      FHDAGE10 ="# daughters<50 when diag w/kidney cancer"                    
      FHDTYP11 ="What kind of cancer...larynx-windpipe"                       
      FHDMAN11 ="# of daughters who had laryngeal Ca"                         
      FHDAGE11 ="# daughters <50 when diag w/laryngeal Ca"                    
      FHDTYP12 ="What kind of cancer...leukemia"                              
      FHDMAN12 ="# of daughters who had leukemia"                             
      FHDAGE12 ="# daughters <50 when diag w/leukemia"                        
      FHDTYP13 ="What kind of cancer...liver"                                 
      FHDMAN13 ="# of daughters who had liver cancer"                         
      FHDAGE13 ="# daughters <50 when diag w/liver cancer"                    
      FHDTYP14 ="What kind of cancer...lung"                                  
      FHDMAN14 ="# of daughters who had lung cancer"                          
      FHDAGE14 ="# daughters <50 when diag w/lung cancer"                     
      FHDTYP15 ="What kind of cancer...lymphoma"                              
      FHDMAN15 ="# of daughters who had lymphoma"                             
      FHDAGE15 ="# daughters <50 when diag w/ lymphoma"                       
      FHDTYP16 ="What kind of cancer...melanoma"                              
      FHDMAN16 ="# of daughters who had melanoma"                             
      FHDAGE16 ="# daughters <50 when diag w/ melanoma"                       
      FHDTYP17 ="What kind of cancer...mouth/tongue/lip"                      
      FHDMAN17 ="# of daughters who had mouth cancer"                         
      FHDAGE17 ="# daughters <50 when diag w/mouth cancer"                    
      FHDTYP18 ="What kind of cancer...ovarian"                               
      FHDMAN18 ="# of daughters who had ovarian cancer"                       
      FHDAGE18 ="# daughters <50 when diag w/ovarian Ca"                      
      FHDTYP19 ="What kind of cancer...pancreatic"                            
      FHDMAN19 ="# of daughters who had pancreatic cancer"                    
      FHDAGE19 ="# daughters<50 when diag w/pancreatic Ca"                    
      FHDTYP20 ="What kind of cancer...prostate"                              
      FHDMAN20 ="# of daughters who had prostate cancer"                      
      FHDAGE20 ="# daughters <50 when diag w/prostate Ca"                     
      FHDTYP21 ="What kind of cancer...rectum"                                
      FHDMAN21 ="# of daughters who had rectal cancer"                        
      FHDAGE21 ="# daughters<50 when diag w/rectal cancer"                    
      FHDTYP22 ="What kind of cancer..skin (non-melanoma)"                    
      FHDMAN22 ="# of daughters who had skin-non-melanoma"                    
      FHDAGE22 ="# daughters<50 when diag w/skin-nonmelan"                    
      FHDTYP23 ="What kind of cancer...skin (DK kind)"                        
      FHDMAN23 ="# of daughters who had skin (DK kind) Ca"                    
      FHDAGE23 ="#daughters<50 when diag w/skin-DK knd Ca"                    
      FHDTYP24 ="Type of cancer..soft tissue (muscle)"                        
      FHDMAN24 ="# of daughters who had soft tissue Ca"                       
      FHDAGE24 ="#daughters<50 when diag w/soft tissue Ca"                    
      FHDTYP25 ="What kind of cancer...stomach"                               
      FHDMAN25 ="# of daughters who had stomach cancer"                       
      FHDAGE25 ="# daughters <50 when diag w/stomach Ca"                      
      FHDTYP26 ="What kind of cancer ... testicular"                          
      FHDMAN26 ="# of daughters who had testicular cancer"                    
      FHDAGE26 ="# daughters<50 when diag w/testicular Ca"                    
      FHDTYP27 ="What kind of cancer...throat-pharynx"                        
      FHDMAN27 ="# of daughters who had throat cancer"                        
      FHDAGE27 ="# daughters<50 when diag w/throat cancer"                    
      FHDTYP28 ="What kind of cancer...thyroid"                               
      FHDMAN28 ="# of daughters who had thyroid cancer"                       
      FHDAGE28 ="# daughters <50 when diag w/thyroid Ca"                      
      FHDTYP29 ="What kind of cancer...uterine"                               
      FHDMAN29 ="# of daughters who had uterine cancer"                       
      FHDAGE29 ="# daughters <50 when diag w/uterine Ca"                      
      FHDTYP30 ="What kind of cancer...other"                                 
      FHDMAN30 ="# of daughters who had other cancer"                         
      FHDAGE30 ="# daughters <50 when diag w/other cancer"                    
      FHDTYP31 ="What kind of cancer...unknown"                               
      FHDMAN31 ="# of daughters who had unknown cancer"                       
      FHDAGE31 ="# daughters <50 when diag w/unknown Ca"                      
      FHDTYP32 ="What kind of cancer...more than 3 kinds"                     
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
      FM_SIZE  SAP026X.    REGION   SAP027X.    MSASIZEP SAP028X.             
      DUMMY_CA SAP033X.                                                       
                                                                              
      HYPEV    SAP034X.    HYPDIFV  SAP035X.    CHDEV    SAP034X.             
      ANGEV    SAP034X.    MIEV     SAP034X.    HRTEV    SAP034X.             
      STREV    SAP034X.    EPHEV    SAP034X.    AASMEV   SAP034X.             
      AASMYR   SAP035X.    AASMERYR SAP035X.    ULCEV    SAP034X.             
      ULCYR    SAP035X.    CANEV    SAP034X.    CNKIND1  SAP048X.             
      CANAGE1  SAP049X.    CNKIND2  SAP048X.    CANAGE2  SAP049X.             
      CNKIND3  SAP048X.    CANAGE3  SAP049X.    CNKIND4  SAP048X.             
      CANAGE4  SAP049X.    CNKIND5  SAP048X.    CANAGE5  SAP049X.             
      CNKIND6  SAP048X.    CANAGE6  SAP049X.    CNKIND7  SAP048X.             
      CANAGE7  SAP049X.    CNKIND8  SAP048X.    CANAGE8  SAP049X.             
      CNKIND9  SAP048X.    CANAGE9  SAP049X.    CNKIND10 SAP048X.             
      CANAGE10 SAP049X.    CNKIND11 SAP048X.    CANAGE11 SAP049X.             
      CNKIND12 SAP048X.    CANAGE12 SAP049X.    CNKIND13 SAP048X.             
      CANAGE13 SAP049X.    CNKIND14 SAP048X.    CANAGE14 SAP049X.             
      CNKIND15 SAP048X.    CANAGE15 SAP049X.    CNKIND16 SAP048X.             
      CANAGE16 SAP049X.    CNKIND17 SAP048X.    CANAGE17 SAP049X.             
      CNKIND18 SAP048X.    CANAGE18 SAP049X.    CNKIND19 SAP048X.             
      CANAGE19 SAP049X.    CNKIND20 SAP048X.    CANAGE20 SAP049X.             
      CNKIND21 SAP048X.    CANAGE21 SAP049X.    CNKIND22 SAP048X.             
      CANAGE22 SAP049X.    CNKIND23 SAP048X.    CANAGE23 SAP049X.             
      CNKIND24 SAP048X.    CANAGE24 SAP049X.    CNKIND25 SAP048X.             
      CANAGE25 SAP049X.    CNKIND26 SAP048X.    CANAGE26 SAP049X.             
      CNKIND27 SAP048X.    CANAGE27 SAP049X.    CNKIND28 SAP048X.             
      CANAGE28 SAP049X.    CNKIND29 SAP048X.    CANAGE29 SAP049X.             
      CNKIND30 SAP048X.    CANAGE30 SAP049X.    CNKIND31 SAP048X.             
      DIBEV    SAP109X.    DIBAGE   SAP049X.    DIFAGE2  SAP111X.             
      INSLN    SAP035X.    DIBPILL  SAP035X.    AHAYFYR  SAP034X.             
      SINYR    SAP034X.    CBRCHYR  SAP034X.    KIDWKYR  SAP034X.             
      LIVYR    SAP034X.    JNTYR    SAP034X.    JNTMO    SAP035X.             
      JNTIJ    SAP035X.    JNTIJLN  SAP122X.    JNTIJLT  SAP123X.             
      JNTIJLM  SAP124X.    JNTYR1   SAP048X.    JNTYR2   SAP048X.             
      JNTYR3   SAP048X.    JNTYR4   SAP048X.    JNTYR5   SAP048X.             
      JNTYR6   SAP048X.    JNTYR7   SAP048X.    JNTYR8   SAP048X.             
      JNTYR9   SAP048X.    JNTYR10  SAP048X.    JNTYR11  SAP048X.             
      JNTYR12  SAP048X.    JNTYR13  SAP048X.    JNTYR14  SAP048X.             
      JNTYR15  SAP048X.    JNTYR16  SAP048X.    JNTYR17  SAP048X.             
      PAINECK  SAP034X.    PAINLB   SAP034X.    PAINLEG  SAP035X.             
      PAINFACE SAP034X.    AMIGR    SAP034X.    ACOLD2W  SAP034X.             
      AINTIL2W SAP034X.    PREGNOW  SAP035X.    HEARAID  SAP034X.             
      AHEARST  SAP151X.    AVISION  SAP034X.    ABLIND   SAP035X.             
      LUPPRT   SAP034X.    SAD      SAP155X.    NERVOUS  SAP155X.             
      RESTLESS SAP155X.    HOPELESS SAP155X.    EFFORT   SAP155X.             
      WORTHLS  SAP155X.    MHAMTMO  SAP161X.                                  
                                                                              
      WRKLYR2  SAP162X.    WKDAYR   SAP163X.    BEDDAYR  SAP164X.             
      AHSTATYR SAP165X.    SPECEQ   SAP034X.    FLWALK   SAP167X.             
      FLCLIMB  SAP167X.    FLSTAND  SAP167X.    FLSIT    SAP167X.             
      FLSTOOP  SAP167X.    FLREACH  SAP167X.    FLGRASP  SAP167X.             
      FLCARRY  SAP167X.    FLPUSH   SAP167X.    FLSHOP   SAP167X.             
      FLSOCL   SAP167X.    FLRELAX  SAP167X.    FLA1AR   SAP179X.             
      AFLHCA1  SAP180X.    ALHCLN1  SAP181X.    ALHCLT1  SAP182X.             
      ALHCLY1  SAP183X.    ALANTR1  SAP184X.    AFLHCA2  SAP180X.             
      ALHCLN2  SAP181X.    ALHCLT2  SAP182X.    ALHCLY2  SAP183X.             
      ALANTR2  SAP184X.    AFLHCA3  SAP180X.    ALHCLN3  SAP181X.             
      ALHCLT3  SAP182X.    ALHCLY3  SAP183X.    ALANTR3  SAP184X.             
      AFLHCA4  SAP180X.    ALHCLN4  SAP181X.    ALHCLT4  SAP182X.             
      ALHCLY4  SAP183X.    ALANTR4  SAP184X.    AFLHCA5  SAP180X.             
      ALHCLN5  SAP181X.    ALHCLT5  SAP182X.    ALHCLY5  SAP183X.             
      ALANTR5  SAP184X.    AFLHCA6  SAP180X.    ALHCLN6  SAP181X.             
      ALHCLT6  SAP182X.    ALHCLY6  SAP183X.    ALANTR6  SAP184X.             
      AFLHCA7  SAP180X.    ALHCLN7  SAP181X.    ALHCLT7  SAP182X.             
      ALHCLY7  SAP183X.    ALANTR7  SAP184X.    AFLHCA8  SAP180X.             
      ALHCLN8  SAP181X.    ALHCLT8  SAP182X.    ALHCLY8  SAP183X.             
      ALANTR8  SAP184X.    AFLHCA9  SAP180X.    ALHCLN9  SAP181X.             
      ALHCLT9  SAP182X.    ALHCLY9  SAP183X.    ALANTR9  SAP184X.             
      AFLHCA10 SAP180X.    ALHCLN10 SAP181X.    ALHCLT10 SAP182X.             
      ALHCLY10 SAP183X.    ALANTR10 SAP184X.    AFLHCA11 SAP180X.             
      ALHCLN11 SAP181X.    ALHCLT11 SAP182X.    ALHCLY11 SAP183X.             
      ALANTR11 SAP184X.    AFLHCA12 SAP180X.    ALHCLN12 SAP181X.             
      ALHCLT12 SAP182X.    ALHCLY12 SAP183X.    ALANTR12 SAP184X.             
      AFLHCA13 SAP180X.    ALHCLN13 SAP241X.    ALHCLT13 SAP182X.             
      ALHCLY13 SAP183X.    ALANTR13 SAP184X.    AFLHCA14 SAP180X.             
      ALHCLN14 SAP181X.    ALHCLT14 SAP182X.    ALHCLY14 SAP183X.             
      ALANTR14 SAP184X.    AFLHCA15 SAP180X.    ALHCLN15 SAP181X.             
      ALHCLT15 SAP182X.    ALHCLY15 SAP183X.    ALANTR15 SAP184X.             
      AFLHCA16 SAP180X.    ALHCLN16 SAP181X.    ALHCLT16 SAP182X.             
      ALHCLY16 SAP183X.    ALANTR16 SAP184X.    AFLHCA17 SAP180X.             
      ALHCLN17 SAP181X.    ALHCLT17 SAP182X.    ALHCLY17 SAP183X.             
      ALANTR17 SAP184X.    AFLHCA18 SAP180X.    ALHCLN18 SAP181X.             
      ALHCLT18 SAP182X.    ALHCLY18 SAP183X.    ALANTR18 SAP184X.             
      AFLHCA19 SAP180X.    ALHCLN19 SAP181X.    ALHCLT19 SAP182X.             
      ALHCLY19 SAP183X.    ALANTR19 SAP184X.    AFLHCA20 SAP180X.             
      ALHCLN20 SAP181X.    ALHCLT20 SAP182X.    ALHCLY20 SAP183X.             
      ALANTR20 SAP184X.    AFLHCA21 SAP180X.    ALHCLN21 SAP181X.             
      ALHCLT21 SAP182X.    ALHCLY21 SAP183X.    ALANTR21 SAP184X.             
      AFLHCA22 SAP180X.    ALHCLN22 SAP181X.    ALHCLT22 SAP182X.             
      ALHCLY22 SAP183X.    ALANTR22 SAP184X.    AFLHCA23 SAP180X.             
      ALHCLN23 SAP181X.    ALHCLT23 SAP182X.    ALHCLY23 SAP183X.             
      ALANTR23 SAP184X.    AFLHCA24 SAP180X.    ALHCLN24 SAP181X.             
      ALHCLT24 SAP182X.    ALHCLY24 SAP183X.    ALANTR24 SAP184X.             
      AFLHCA25 SAP180X.    ALHCLN25 SAP181X.    ALHCLT25 SAP182X.             
      ALHCLY25 SAP183X.    ALANTR25 SAP184X.    AFLHCA26 SAP180X.             
      ALHCLN26 SAP181X.    ALHCLT26 SAP182X.    ALHCLY26 SAP183X.             
      ALANTR26 SAP184X.    AFLHCA27 SAP180X.    ALHCLN27 SAP181X.             
      ALHCLT27 SAP182X.    ALHCLY27 SAP183X.    ALANTR27 SAP184X.             
      AFLHCA28 SAP180X.    ALHCLN28 SAP181X.    ALHCLT28 SAP182X.             
      ALHCLY28 SAP183X.    ALANTR28 SAP184X.    AFLHCA29 SAP180X.             
      ALHCLN29 SAP181X.    ALHCLT29 SAP182X.    ALHCLY29 SAP183X.             
      ALANTR29 SAP184X.    AFLHCA30 SAP180X.    ALHCLN30 SAP181X.             
      ALHCLT30 SAP182X.    ALHCLY30 SAP183X.    ALANTR30 SAP184X.             
      AFLHCA31 SAP180X.    ALHCLN31 SAP181X.    ALHCLT31 SAP182X.             
      ALHCLY31 SAP183X.    ALANTR31 SAP184X.    AFLHCA32 SAP180X.             
      ALHCLN32 SAP336X.    ALHCLT32 SAP337X.    ALHCLY32 SAP183X.             
      ALANTR32 SAP184X.    AFLHCA33 SAP180X.    ALHCLN33 SAP181X.             
      ALHCLT33 SAP182X.    ALHCLY33 SAP183X.    ALANTR33 SAP184X.             
      AFLHCA34 SAP180X.    ALHCLN34 SAP181X.    ALHCLT34 SAP182X.             
      ALHCLY34 SAP183X.    ALANTR34 SAP184X.    AFLHCA90 SAP180X.             
      ALHCLN90 SAP181X.    ALHCLT90 SAP182X.    ALHCLY90 SAP183X.             
      ALANTR90 SAP184X.    AFLHCA91 SAP180X.    ALHCLN91 SAP181X.             
      ALHCLT91 SAP182X.    ALHCLY91 SAP183X.    ALANTR91 SAP184X.             
      ALCNDR1  SAP360X.    ALCNDR2  SAP360X.    ALCNDR3  SAP360X.             
      ALCNDR4  SAP360X.    ALCNDR5  SAP360X.    ALCNDR6  SAP360X.             
      ALCNDR7  SAP360X.    ALCNDR8  SAP360X.    ALCNDR9  SAP360X.             
      ALCNDR10 SAP360X.    ALCNDR11 SAP360X.    ALCNDR12 SAP360X.             
      ALCNDR13 SAP360X.    ALCNDR14 SAP360X.    ALCNDR15 SAP360X.             
      ALCNDR16 SAP360X.    ALCNDR17 SAP360X.    ALCNDR18 SAP360X.             
      ALCNDR19 SAP360X.    ALCNDR20 SAP360X.    ALCNDR21 SAP360X.             
      ALCNDR22 SAP360X.    ALCNDR23 SAP360X.    ALCNDR24 SAP360X.             
      ALCNDR25 SAP360X.    ALCNDR26 SAP360X.    ALCNDR27 SAP360X.             
      ALCNDR28 SAP360X.    ALCNDR29 SAP360X.    ALCNDR30 SAP360X.             
      ALCNDR31 SAP360X.    ALCNDR32 SAP360X.    ALCNDR33 SAP360X.             
      ALCNDR34 SAP360X.    ALCNDR90 SAP360X.    ALCNDR91 SAP360X.             
      ALCNDRT  SAP396X.    ALCHRONR SAP397X.                                  
                                                                              
      SMKEV    SAP034X.    SMKREG   SAP399X.    SMKNOW   SAP400X.             
      SMKQTNO  SAP401X.    SMKQTTP  SAP402X.    SMKQTY   SAP403X.             
      SMKQTD   SAP035X.    CIGSDA1  SAP405X.    CIGDAMO  SAP406X.             
      CIGSDA2  SAP405X.    CIGSDAY  SAP405X.    SMKSTAT1 SAP409X.             
      SMKSTAT2 SAP410X.    SMKSTAT3 SAP411X.    CIGQTYR  SAP035X.             
      VIGNO    SAP413X.    VIGTP    SAP414X.    VIGFREQW SAP415X.             
      VIGLNGNO SAP416X.    VIGLNGTP SAP417X.    VIGMIN   SAP418X.             
      VIGLONGD SAP419X.    MODNO    SAP420X.    MODTP    SAP414X.             
      MODFREQW SAP422X.    MODLNGNO SAP416X.    MODLNGTP SAP417X.             
      MODMIN   SAP418X.    MODLONGD SAP419X.    STRNGNO  SAP413X.             
      STRNGTP  SAP414X.    STRFREQW SAP429X.    ALC1YR   SAP034X.             
      ALCLIFE  SAP035X.    ALC12MNO SAP432X.    ALC12MTP SAP433X.             
      ALC12MMO SAP434X.    ALC12MWK SAP435X.    ALC12MYR SAP436X.             
      ALCAMT   SAP437X.    ALC5UPNO SAP438X.    ALC5UPTP SAP433X.             
      ALC5UPYR SAP436X.    ALCSTAT1 SAP441X.    MET_FLG1 SAP442X.             
      MET_FLG2 SAP443X.    AHEIGHT  SAP444X.    AWEIGHTP SAP445X.             
      DESIREWT SAP446X.    BMI      SAP447X.                                  
                                                                              
      AUSUALPL SAP448X.    APLKIND  SAP449X.    AHCPLROU SAP035X.             
      AHCPLKND SAP451X.    SOURCELA SAP452X.    AHCCHGYR SAP035X.             
      AHCCHGHI SAP454X.    AHCDLYR1 SAP034X.    AHCDLYR2 SAP034X.             
      AHCDLYR3 SAP034X.    AHCDLYR4 SAP034X.    AHCDLYR5 SAP034X.             
      AHCAFYR1 SAP034X.    AHCAFYR2 SAP034X.    AHCAFYR3 SAP034X.             
      AHCAFYR4 SAP034X.    ADNLONGR SAP464X.    AHCSYR1  SAP034X.             
      AHCSYR2  SAP034X.    AHCSYR3  SAP034X.    AHCSYR4  SAP034X.             
      AHCSYR5  SAP034X.    AHCSYR6  SAP034X.    AHCSYR7  SAP035X.             
      AHCSYR8  SAP034X.    AHCSYR9  SAP034X.    AHCSYR10 SAP035X.             
      AHERNOY2 SAP475X.    AHCHYR   SAP034X.    AHCHMOYR SAP477X.             
      AHCHNOY2 SAP478X.    AHCNOYR2 SAP475X.    ASRGYR   SAP034X.             
      ASRGNOYR SAP481X.    AMDLONGR SAP464X.    SHTFLUYR SAP034X.             
      SHTPNUYR SAP034X.    APOX     SAP034X.    APOX12MO SAP035X.             
      AHEP     SAP034X.    AHEPLIV  SAP035X.    SHTHEPB  SAP034X.             
      SHEPDOS  SAP490X.                                                       
                                                                              
      WRKCAT   SAP495X.    LOCALLNO SAP496X.    LOCPRTNO SAP496X.             
      YRSWRK_P SAP498X.    WRKLONGD SAP499X.    HOURPD   SAP035X.             
      PDSICK   SAP035X.    ONEJOB   SAP035X.    WRKCATOT SAP503X.             
      BUSINC   SAP035X.                                                       
                                                                              
      BLDGV    SAP034X.    BLDG12M  SAP035X.    HIVTST   SAP034X.             
      WHYTST_C SAP508X.    TST12M_M SAP509X.    TST12M_Y SAP510X.             
      TIMETST  SAP511X.    REATST_R SAP512X.    REASWHO  SAP513X.             
      WHYREQ_C SAP514X.    LASTST_C SAP515X.    CLNTYP_C SAP516X.             
      WHOADM   SAP517X.    GIVNAM   SAP035X.    EXTST12M SAP034X.             
      CHNSADSP SAP520X.    STMTRU   SAP521X.    STD      SAP035X.             
      STDDOC   SAP035X.    STDWHER  SAP524X.    TBHRD    SAP034X.             
      TBKNOW   SAP035X.    TB       SAP527X.    TBSPRD1  SAP048X.             
      TBSPRD2  SAP048X.    TBSPRD3  SAP048X.    TBSPRD4  SAP048X.             
      TBSPRD5  SAP048X.    TBSPRD6  SAP048X.    TBCURED  SAP035X.             
      TBCHANC  SAP535X.    HOMELESS SAP035X.    TBSHAME  SAP035X.             
                                                                              
      SPSPEAK  SAP538X.    SPCHILD  SAP538X.    SPREAD   SAP540X.             
      SP1_HOME SAP541X.    SP1_FRND SAP541X.    SP2_THNK SAP541X.             
      SP2_TV   SAP541X.    SP2_RDIO SAP541X.                                  
                                                                              
      COLDCNO  SAP546X.    COLDCTP  SAP547X.    COLDCY   SAP548X.             
      COLDCW   SAP549X.    MILKNO   SAP546X.    MILKTP   SAP547X.             
      MILKY    SAP548X.    MILKW    SAP549X.    MILKKND  SAP554X.             
      BACONNO  SAP546X.    BACONTP  SAP547X.    BACONY   SAP548X.             
      BACONW   SAP549X.    HTDOGNO  SAP546X.    HTDOGTP  SAP547X.             
      HTDOGY   SAP548X.    HTDOGW   SAP549X.    BREADNO  SAP546X.             
      BREADTP  SAP547X.    BREADY   SAP548X.    BREADW   SAP549X.             
      JUICENO  SAP546X.    JUICETP  SAP547X.    JUICEY   SAP548X.             
      JUICEW   SAP549X.    FRUITNO  SAP546X.    FRUITTP  SAP547X.             
      FRUITY   SAP548X.    FRUITW   SAP549X.    DRESSNO  SAP546X.             
      DRESSTP  SAP547X.    DRESSY   SAP548X.    DRESSW   SAP549X.             
      SALADNO  SAP546X.    SALADTP  SAP547X.    SALADY   SAP548X.             
      SALADW   SAP549X.    FRIESNO  SAP546X.    FRIESTP  SAP547X.             
      FRIESY   SAP548X.    FRIESW   SAP549X.    POTATNO  SAP546X.             
      POTATTP  SAP547X.    POTATY   SAP548X.    POTATW   SAP549X.             
      BEANSNO  SAP546X.    BEANSTP  SAP547X.    BEANSY   SAP548X.             
      BEANSW   SAP549X.    OVEGNO   SAP546X.    OVEGTP   SAP547X.             
      OVEGY    SAP548X.    OVEGW    SAP549X.    PASTANO  SAP546X.             
      PASTATP  SAP547X.    PASTAY   SAP548X.    PASTAW   SAP549X.             
      PNUTNO   SAP546X.    PNUTTP   SAP547X.    PNUTY    SAP548X.             
      PNUTW    SAP549X.    CHIPSNO  SAP546X.    CHIPSTP  SAP547X.             
      CHIPSY   SAP548X.    CHIPSW   SAP549X.    VITANY   SAP034X.             
      VITMUL   SAP035X.    VITMULM  SAP613X.    VITMULD1 SAP614X.             
      VITMULD2 SAP615X.    VITMULDM SAP616X.    VITMULDW SAP617X.             
      VITA     SAP035X.    VITAM    SAP613X.    VITADNO  SAP614X.             
      VITADTP  SAP615X.    VITADM   SAP616X.    VITADW   SAP617X.             
      VITC     SAP035X.    VITCM    SAP613X.    VITCDNO  SAP614X.             
      VITCDTP  SAP615X.    VITCDM   SAP616X.    VITCDW   SAP617X.             
      VITE     SAP035X.    VITEM    SAP613X.    VITEDNO  SAP614X.             
      VITEDTP  SAP615X.    VITEDM   SAP616X.    VITEDW   SAP617X.             
      CALC     SAP035X.    CALCM    SAP613X.    CALCDNO  SAP614X.             
      CALCDTP  SAP615X.    CALCDM   SAP616X.    CALCDW   SAP617X.             
      HERBSUPP SAP034X.    HERB_ALO SAP048X.    HERB_AST SAP048X.             
      HERB_BIL SAP048X.    HERB_CAS SAP048X.    HERB_CAT SAP048X.             
      HERB_CAY SAP048X.    HERB_CRA SAP048X.    HERB_DON SAP048X.             
      HERB_ECH SAP048X.    HERB_EVE SAP048X.    HERB_FEV SAP048X.             
      HERB_GAR SAP048X.    HERB_GIG SAP048X.    HERB_GIK SAP048X.             
      HERB_GIA SAP048X.    HERB_GIS SAP048X.    HERB_GOL SAP048X.             
      HERB_GRA SAP048X.    HERB_KAV SAP048X.    HERB_LEC SAP048X.             
      HERB_MEL SAP048X.    HERB_MIL SAP048X.    HERB_SAW SAP048X.             
      HERB_JOH SAP048X.    HERB_VAL SAP048X.    HERB_OTH SAP048X.             
      HERBM    SAP613X.    HERBDNO  SAP614X.    HERBDTP  SAP615X.             
      HERBDM   SAP616X.    HERBDW   SAP617X.    MDTALK   SAP674X.             
                                                                              
      WALK     SAP675X.    MOVE1    SAP676X.    LIFT     SAP677X.             
      SITWDAY  SAP678X.    SITWEND  SAP678X.    MDEXER   SAP674X.             
                                                                              
      FSSWITC  SAP035X.    FSQSTOP  SAP048X.    FSQDECR  SAP048X.             
      FSQBOOK  SAP048X.    FSQCOUN  SAP048X.    FSQCLIN  SAP048X.             
      FSQPATC  SAP048X.    FSQGUM   SAP048X.    FSQSPRY  SAP048X.             
      FSQINHA  SAP048X.    FSQZYB   SAP048X.    FSQSWIT  SAP048X.             
      FSQOTH   SAP048X.    FSQUITN  SAP694X.    CSSWITC  SAP035X.             
      CSQEV    SAP035X.    CSQ12    SAP694X.    CSQSTOP  SAP048X.             
      CSQDECR  SAP048X.    CSQBOOK  SAP048X.    CSQCOUN  SAP048X.             
      CSQCLIN  SAP048X.    CSQPATC  SAP048X.    CSQGUM   SAP048X.             
      CSQSPRY  SAP048X.    CSQINHA  SAP048X.    CSQZYB   SAP048X.             
      CSQSWIT  SAP048X.    CSQOTH   SAP048X.    QWANT    SAP035X.             
      CSQ6M    SAP035X.    CSQ30D   SAP035X.    MDTOB1   SAP713X.             
      MDTOB2   SAP035X.    EVPIPE   SAP034X.    EVCIGAR  SAP034X.             
      EVBIDI   SAP034X.    EVSNUFF  SAP034X.    EVCHEW   SAP034X.             
      PIPE50   SAP035X.    PIPEED   SAP400X.    CIGAR50  SAP035X.             
      CIGARED  SAP400X.    CIG30D   SAP724X.    BIDI20   SAP035X.             
      BIDIED   SAP400X.    SNUFF20  SAP035X.    SNUFFED  SAP400X.             
      CHEW20   SAP035X.    CHEWED   SAP400X.    SMHOME   SAP731X.             
      AREAWRK  SAP732X.    SMAREA   SAP035X.    SMPOL    SAP035X.             
      SMPOLP   SAP735X.    SMPOLW   SAP736X.    NOSMOK   SAP737X.             
      SMHARM   SAP738X.    INCR150  SAP738X.                                  
                                                                              
      SUN1HR   SAP740X.    SUNTAN   SAP741X.    SUN1_SHA SAP742X.             
      SUN1_HAT SAP742X.    SUN2_LGS SAP742X.    SUN2_SCR SAP742X.             
      SPF      SAP746X.    NBURN    SAP747X.    SKNX     SAP034X.             
      RSKX1_MT $SAP749X.   RSKX1_YR SAP750X.    RSKX1_NO SAP751X.             
      RSKX1_TP SAP752X.    RSKX2    SAP753X.    RSKX_MO2 SAP754X.             
      RSKX3    SAP753X.    SKNXREAS SAP756X.    MENSTAGE SAP757X.             
      BCEVUSE  SAP035X.    BC_NO    SAP759X.    BC_TP    SAP760X.             
      BIRTHEV  SAP035X.    BIRTHNUM SAP762X.    BIRTHAGE SAP763X.             
      BIRTHAG2 SAP764X.    PAPHAD   SAP035X.    PAP6YR_P SAP766X.             
      RPAP1_MT $SAP749X.   RPAP1_YR SAP750X.    RPAP1_NO SAP751X.             
      RPAP1_TP SAP752X.    RPAP2CA  SAP753X.    RPAP_MO2 SAP754X.             
      RPAP3    SAP753X.    PAPREAS  SAP774X.    PAPABN   SAP035X.             
      PAPADDE  SAP035X.    PAPTRT   SAP035X.    PAPNOT   SAP778X.             
      MDRECPAP SAP779X.    HYST     SAP035X.    RHYST1_M $SAP749X.            
      RHYST1_Y SAP750X.    RHYST1_N SAP751X.    RHYST1_T SAP402X.             
      RHYST2   SAP753X.    RHYS_MO2 SAP754X.    RHYST3   SAP753X.             
      MAMHAD   SAP035X.    MAMAGE   SAP789X.    MAM6YR_P SAP790X.             
      RMAM1_MT $SAP749X.   RMAM1_YR SAP750X.    RMAM1_NO SAP751X.             
      RMAM1_TP SAP752X.    RMAM2CA  SAP753X.    RMAM_MO2 SAP754X.             
      RMAM3    SAP753X.    MAMWHER  SAP798X.    MAMPAY   SAP799X.             
      MAMP_PRI SAP048X.    MAMP_CAR SAP048X.    MAMP_AID SAP048X.             
      MAMP_FRE SAP048X.    MAMP_OTH SAP048X.    MAMLOCST SAP035X.             
      MAMREAS  SAP806X.    MAMABN   SAP035X.    MAMT_NON SAP048X.             
      MAMT_OTH SAP048X.    MAMT_ULT SAP048X.    MAMT_CBE SAP048X.             
      MAMT_BIO SAP048X.    MAMT_TUM SAP048X.    MAMT_BRE SAP048X.             
      MAMCAN   SAP035X.    LUMPEV   SAP816X.    LUMPNUM  SAP817X.             
      MAMNOT   SAP818X.    MDRECMAM SAP819X.    MED_HRT  SAP035X.             
      MED_TAMX SAP035X.    MED_RALX SAP035X.    MED_BC   SAP035X.             
      CBEHAD   SAP035X.    RCBE1_MT $SAP749X.   RCBE1_YR SAP750X.             
      RCBE1_NO SAP751X.    RCBE1_TP SAP752X.    RCBE2    SAP753X.             
      RCBE_MO2 SAP830X.    RCBE3    SAP753X.    PSAHRD   SAP035X.             
      PSAHAD   SAP035X.    PSAAGE1  SAP834X.    PSA5YR_P SAP835X.             
      RPSA1_MT $SAP749X.   RPSA1_YR SAP750X.    RPSA1_NO SAP751X.             
      RPSA1_TP SAP752X.    RPSA2    SAP753X.    RPSA_MO2 SAP754X.             
      RPSA3    SAP753X.    PSAREAS  SAP843X.    PSASUGG  SAP844X.             
      PSADISC  SAP035X.    PSAABN   SAP035X.    PSAT_NON SAP048X.             
      PSAT_OTH SAP048X.    PSAT_BIO SAP048X.    PSAT_ULT SAP048X.             
      PSAT_MRI SAP048X.    PSACAN   SAP035X.    CREHAD   SAP035X.             
      CRE10Y_P SAP854X.    RCRE1_MT $SAP749X.   RCRE1_YR SAP750X.             
      RCRE1_NO SAP751X.    RCRE1_TP SAP752X.    RCRE2    SAP859X.             
      RCRE_MO2 SAP860X.    RCRE3    SAP861X.    CRENAM   SAP862X.             
      CREREAS  SAP863X.    CRENOT   SAP864X.    CREREC   SAP865X.             
      HFOBHAD  SAP035X.    HFOB3Y_P SAP867X.    RHFOB1_M $SAP749X.            
      RHFOB1_Y SAP750X.    RHFOB1_N SAP751X.    RHFOB1_T SAP752X.             
      RHFOB2   SAP859X.    RHFO_MO2 SAP860X.    RHFOB3   SAP861X.             
      HFOBREAS SAP875X.    HFOBABN  SAP035X.    HFOB_NON SAP048X.             
      HFOB_OTH SAP048X.    HFOB_SIG SAP048X.    HFOB_COL SAP048X.             
      HFOB_BAR SAP048X.    HFOB_SUR SAP048X.    HFOBNOT  SAP864X.             
      MDHFOB   SAP884X.    FOBHAD   SAP035X.    RFOB1_MT $SAP749X.            
      RFOB1_YR SAP750X.    RFOB1_NO SAP751X.    RFOB1_TP SAP752X.             
      RFOB2    SAP859X.    RFOB_MO2 SAP860X.    RFOB3    SAP861X.             
                                                                              
      GTHEARD  SAP034X.    GTPOSS   SAP035X.    GTADVISE SAP035X.             
      GTGRISK  SAP035X.    GT_BRE   SAP897X.    GT_OVA   SAP897X.             
      GT_COL   SAP035X.    GT_OTH   SAP035X.    GTCOUNT  SAP901X.             
      GTRSK_MT SAP509X.    GTRSK_YR SAP903X.    GTRSKBNO SAP904X.             
      GTRSKBTP SAP402X.    GTCONSNT SAP035X.    GTRSRCH  SAP035X.             
      GTDOCT   SAP908X.    GTCONF   SAP035X.    GTRESULT SAP035X.             
      GTRESHOW SAP911X.    GTACCURA SAP912X.    GTCOUNC  SAP035X.             
      GTCWHEN  SAP914X.    GTINSURE SAP035X.    GTCRISK  SAP916X.             
      GTFRISK  SAP916X.                                                       
                                                                              
      FHFCAN   SAP918X.    FHFTYP1  SAP919X.    FHFAGE1  SAP035X.             
      FHFTYP2  SAP919X.    FHFAGE2  SAP035X.    FHFTYP3  SAP919X.             
      FHFAGE3  SAP035X.    FHFTYP4  SAP919X.    FHFAGE4  SAP035X.             
      FHFTYP5  SAP919X.    FHFAGE5  SAP035X.    FHFTYP6  SAP919X.             
      FHFAGE6  SAP035X.    FHFTYP7  SAP919X.    FHFAGE7  SAP035X.             
      FHFTYP8  SAP919X.    FHFAGE8  SAP035X.    FHFTYP9  SAP919X.             
      FHFAGE9  SAP035X.    FHFTYP10 SAP919X.    FHFAGE10 SAP035X.             
      FHFTYP11 SAP919X.    FHFAGE11 SAP035X.    FHFTYP12 SAP919X.             
      FHFAGE12 SAP035X.    FHFTYP13 SAP919X.    FHFAGE13 SAP035X.             
      FHFTYP14 SAP919X.    FHFAGE14 SAP035X.    FHFTYP15 SAP919X.             
      FHFAGE15 SAP035X.    FHFTYP16 SAP919X.    FHFAGE16 SAP035X.             
      FHFTYP17 SAP919X.    FHFAGE17 SAP035X.    FHFTYP18 SAP919X.             
      FHFAGE18 SAP035X.    FHFTYP19 SAP919X.    FHFAGE19 SAP035X.             
      FHFTYP20 SAP919X.    FHFAGE20 SAP035X.    FHFTYP21 SAP919X.             
      FHFAGE21 SAP035X.    FHFTYP22 SAP919X.    FHFAGE22 SAP035X.             
      FHFTYP23 SAP919X.    FHFAGE23 SAP035X.    FHFTYP24 SAP919X.             
      FHFAGE24 SAP035X.    FHFTYP25 SAP919X.    FHFAGE25 SAP035X.             
      FHFTYP26 SAP919X.    FHFAGE26 SAP035X.    FHFTYP27 SAP919X.             
      FHFAGE27 SAP035X.    FHFTYP28 SAP919X.    FHFAGE28 SAP035X.             
      FHFTYP29 SAP919X.    FHFAGE29 SAP035X.    FHFTYP30 SAP919X.             
      FHFAGE30 SAP035X.    FHFTYP31 SAP919X.    FHFAGE31 SAP035X.             
      FHFTYP32 SAP919X.    FHMCAN   SAP982X.    FHMTYP1  SAP919X.             
      FHMAGE1  SAP035X.    FHMTYP2  SAP919X.    FHMAGE2  SAP035X.             
      FHMTYP3  SAP919X.    FHMAGE3  SAP035X.    FHMTYP4  SAP919X.             
      FHMAGE4  SAP035X.    FHMTYP5  SAP919X.    FHMAGE5  SAP035X.             
      FHMTYP6  SAP919X.    FHMAGE6  SAP035X.    FHMTYP7  SAP919X.             
      FHMAGE7  SAP035X.    FHMTYP8  SAP919X.    FHMAGE8  SAP035X.             
      FHMTYP9  SAP919X.    FHMAGE9  SAP035X.    FHMTYP10 SAP919X.             
      FHMAGE10 SAP035X.    FHMTYP11 SAP919X.    FHMAGE11 SAP035X.             
      FHMTYP12 SAP919X.    FHMAGE12 SAP035X.    FHMTYP13 SAP919X.             
      FHMAGE13 SAP035X.    FHMTYP14 SAP919X.    FHMAGE14 SAP035X.             
      FHMTYP15 SAP919X.    FHMAGE15 SAP035X.    FHMTYP16 SAP919X.             
      FHMAGE16 SAP035X.    FHMTYP17 SAP919X.    FHMAGE17 SAP035X.             
      FHMTYP18 SAP919X.    FHMAGE18 SAP035X.    FHMTYP19 SAP919X.             
      FHMAGE19 SAP035X.    FHMTYP20 SAP919X.    FHMAGE20 SAP035X.             
      FHMTYP21 SAP919X.    FHMAGE21 SAP035X.    FHMTYP22 SAP919X.             
      FHMAGE22 SAP035X.    FHMTYP23 SAP919X.    FHMAGE23 SAP035X.             
      FHMTYP24 SAP919X.    FHMAGE24 SAP035X.    FHMTYP25 SAP919X.             
      FHMAGE25 SAP035X.    FHMTYP26 SAP919X.    FHMAGE26 SAP035X.             
      FHMTYP27 SAP919X.    FHMAGE27 SAP035X.    FHMTYP28 SAP919X.             
      FHMAGE28 SAP035X.    FHMTYP29 SAP919X.    FHMAGE29 SAP035X.             
      FHMTYP30 SAP919X.    FHMAGE30 SAP035X.    FHMTYP31 SAP919X.             
      FHMAGE31 SAP035X.    FHMTYP32 SAP919X.    FHBNUM   SAP046K.             
      FHBCAN   SAP047K.    FHBTYP1  SAP919X.    FHBMAN1  SAP049K.             
      FHBAGE1  SAP050K.    FHBTYP2  SAP919X.    FHBMAN2  SAP049K.             
      FHBAGE2  SAP050K.    FHBTYP3  SAP919X.    FHBMAN3  SAP049K.             
      FHBAGE3  SAP050K.    FHBTYP4  SAP919X.    FHBMAN4  SAP049K.             
      FHBAGE4  SAP050K.    FHBTYP5  SAP919X.    FHBMAN5  SAP049K.             
      FHBAGE5  SAP050K.    FHBTYP6  SAP919X.    FHBMAN6  SAP049K.             
      FHBAGE6  SAP050K.    FHBTYP7  SAP919X.    FHBMAN7  SAP049K.             
      FHBAGE7  SAP050K.    FHBTYP8  SAP919X.    FHBMAN8  SAP049K.             
      FHBAGE8  SAP050K.    FHBTYP9  SAP919X.    FHBMAN9  SAP049K.             
      FHBAGE9  SAP050K.    FHBTYP10 SAP919X.    FHBMAN10 SAP049K.             
      FHBAGE10 SAP050K.    FHBTYP11 SAP919X.    FHBMAN11 SAP049K.             
      FHBAGE11 SAP050K.    FHBTYP12 SAP919X.    FHBMAN12 SAP049K.             
      FHBAGE12 SAP050K.    FHBTYP13 SAP919X.    FHBMAN13 SAP049K.             
      FHBAGE13 SAP050K.    FHBTYP14 SAP919X.    FHBMAN14 SAP049K.             
      FHBAGE14 SAP050K.    FHBTYP15 SAP919X.    FHBMAN15 SAP049K.             
      FHBAGE15 SAP050K.    FHBTYP16 SAP919X.    FHBMAN16 SAP049K.             
      FHBAGE16 SAP050K.    FHBTYP17 SAP919X.    FHBMAN17 SAP049K.             
      FHBAGE17 SAP050K.    FHBTYP18 SAP919X.    FHBMAN18 SAP049K.             
      FHBAGE18 SAP050K.    FHBTYP19 SAP919X.    FHBMAN19 SAP049K.             
      FHBAGE19 SAP050K.    FHBTYP20 SAP919X.    FHBMAN20 SAP049K.             
      FHBAGE20 SAP050K.    FHBTYP21 SAP919X.    FHBMAN21 SAP049K.             
      FHBAGE21 SAP050K.    FHBTYP22 SAP919X.    FHBMAN22 SAP049K.             
      FHBAGE22 SAP050K.    FHBTYP23 SAP919X.    FHBMAN23 SAP049K.             
      FHBAGE23 SAP050K.    FHBTYP24 SAP919X.    FHBMAN24 SAP049K.             
      FHBAGE24 SAP050K.    FHBTYP25 SAP919X.    FHBMAN25 SAP049K.             
      FHBAGE25 SAP050K.    FHBTYP26 SAP919X.    FHBMAN26 SAP049K.             
      FHBAGE26 SAP050K.    FHBTYP27 SAP919X.    FHBMAN27 SAP049K.             
      FHBAGE27 SAP050K.    FHBTYP28 SAP919X.    FHBMAN28 SAP049K.             
      FHBAGE28 SAP050K.    FHBTYP29 SAP919X.    FHBMAN29 SAP049K.             
      FHBAGE29 SAP050K.    FHBTYP30 SAP919X.    FHBMAN30 SAP049K.             
      FHBAGE30 SAP050K.    FHBTYP31 SAP919X.    FHBMAN31 SAP049K.             
      FHBAGE31 SAP050K.    FHBTYP32 SAP919X.    FHSNUM   SAP142K.             
      FHSCAN   SAP143K.    FHSTYP1  SAP919X.    FHSMAN1  SAP145K.             
      FHSAGE1  SAP146K.    FHSTYP2  SAP919X.    FHSMAN2  SAP145K.             
      FHSAGE2  SAP146K.    FHSTYP3  SAP919X.    FHSMAN3  SAP145K.             
      FHSAGE3  SAP146K.    FHSTYP4  SAP919X.    FHSMAN4  SAP145K.             
      FHSAGE4  SAP146K.    FHSTYP5  SAP919X.    FHSMAN5  SAP145K.             
      FHSAGE5  SAP146K.    FHSTYP6  SAP919X.    FHSMAN6  SAP145K.             
      FHSAGE6  SAP146K.    FHSTYP7  SAP919X.    FHSMAN7  SAP145K.             
      FHSAGE7  SAP146K.    FHSTYP8  SAP919X.    FHSMAN8  SAP145K.             
      FHSAGE8  SAP146K.    FHSTYP9  SAP919X.    FHSMAN9  SAP145K.             
      FHSAGE9  SAP146K.    FHSTYP10 SAP919X.    FHSMAN10 SAP145K.             
      FHSAGE10 SAP146K.    FHSTYP11 SAP919X.    FHSMAN11 SAP145K.             
      FHSAGE11 SAP146K.    FHSTYP12 SAP919X.    FHSMAN12 SAP145K.             
      FHSAGE12 SAP146K.    FHSTYP13 SAP919X.    FHSMAN13 SAP145K.             
      FHSAGE13 SAP146K.    FHSTYP14 SAP919X.    FHSMAN14 SAP145K.             
      FHSAGE14 SAP146K.    FHSTYP15 SAP919X.    FHSMAN15 SAP145K.             
      FHSAGE15 SAP146K.    FHSTYP16 SAP919X.    FHSMAN16 SAP145K.             
      FHSAGE16 SAP146K.    FHSTYP17 SAP919X.    FHSMAN17 SAP145K.             
      FHSAGE17 SAP146K.    FHSTYP18 SAP919X.    FHSMAN18 SAP145K.             
      FHSAGE18 SAP146K.    FHSTYP19 SAP919X.    FHSMAN19 SAP145K.             
      FHSAGE19 SAP146K.    FHSTYP20 SAP919X.    FHSMAN20 SAP145K.             
      FHSAGE20 SAP146K.    FHSTYP21 SAP919X.    FHSMAN21 SAP145K.             
      FHSAGE21 SAP146K.    FHSTYP22 SAP919X.    FHSMAN22 SAP145K.             
      FHSAGE22 SAP146K.    FHSTYP23 SAP919X.    FHSMAN23 SAP145K.             
      FHSAGE23 SAP146K.    FHSTYP24 SAP919X.    FHSMAN24 SAP145K.             
      FHSAGE24 SAP146K.    FHSTYP25 SAP919X.    FHSMAN25 SAP145K.             
      FHSAGE25 SAP146K.    FHSTYP26 SAP919X.    FHSMAN26 SAP145K.             
      FHSAGE26 SAP146K.    FHSTYP27 SAP919X.    FHSMAN27 SAP145K.             
      FHSAGE27 SAP146K.    FHSTYP28 SAP919X.    FHSMAN28 SAP145K.             
      FHSAGE28 SAP146K.    FHSTYP29 SAP919X.    FHSMAN29 SAP145K.             
      FHSAGE29 SAP146K.    FHSTYP30 SAP919X.    FHSMAN30 SAP145K.             
      FHSAGE30 SAP146K.    FHSTYP31 SAP919X.    FHSMAN31 SAP145K.             
      FHSAGE31 SAP146K.    FHSTYP32 SAP919X.    FHNNUM   SAP238K.             
      FHNCAN   SAP239K.    FHNTYP1  SAP919X.    FHNMAN1  SAP241K.             
      FHNAGE1  SAP239K.    FHNTYP2  SAP919X.    FHNMAN2  SAP241K.             
      FHNAGE2  SAP239K.    FHNTYP3  SAP919X.    FHNMAN3  SAP241K.             
      FHNAGE3  SAP239K.    FHNTYP4  SAP919X.    FHNMAN4  SAP241K.             
      FHNAGE4  SAP239K.    FHNTYP5  SAP919X.    FHNMAN5  SAP241K.             
      FHNAGE5  SAP239K.    FHNTYP6  SAP919X.    FHNMAN6  SAP241K.             
      FHNAGE6  SAP239K.    FHNTYP7  SAP919X.    FHNMAN7  SAP241K.             
      FHNAGE7  SAP239K.    FHNTYP8  SAP919X.    FHNMAN8  SAP241K.             
      FHNAGE8  SAP239K.    FHNTYP9  SAP919X.    FHNMAN9  SAP241K.             
      FHNAGE9  SAP239K.    FHNTYP10 SAP919X.    FHNMAN10 SAP241K.             
      FHNAGE10 SAP239K.    FHNTYP11 SAP919X.    FHNMAN11 SAP241K.             
      FHNAGE11 SAP239K.    FHNTYP12 SAP919X.    FHNMAN12 SAP241K.             
      FHNAGE12 SAP239K.    FHNTYP13 SAP919X.    FHNMAN13 SAP241K.             
      FHNAGE13 SAP239K.    FHNTYP14 SAP919X.    FHNMAN14 SAP241K.             
      FHNAGE14 SAP239K.    FHNTYP15 SAP919X.    FHNMAN15 SAP241K.             
      FHNAGE15 SAP239K.    FHNTYP16 SAP919X.    FHNMAN16 SAP241K.             
      FHNAGE16 SAP239K.    FHNTYP17 SAP919X.    FHNMAN17 SAP241K.             
      FHNAGE17 SAP239K.    FHNTYP18 SAP919X.    FHNMAN18 SAP241K.             
      FHNAGE18 SAP239K.    FHNTYP19 SAP919X.    FHNMAN19 SAP241K.             
      FHNAGE19 SAP239K.    FHNTYP20 SAP919X.    FHNMAN20 SAP241K.             
      FHNAGE20 SAP239K.    FHNTYP21 SAP919X.    FHNMAN21 SAP241K.             
      FHNAGE21 SAP239K.    FHNTYP22 SAP919X.    FHNMAN22 SAP241K.             
      FHNAGE22 SAP239K.    FHNTYP23 SAP919X.    FHNMAN23 SAP241K.             
      FHNAGE23 SAP239K.    FHNTYP24 SAP919X.    FHNMAN24 SAP241K.             
      FHNAGE24 SAP239K.    FHNTYP25 SAP919X.    FHNMAN25 SAP241K.             
      FHNAGE25 SAP239K.    FHNTYP26 SAP919X.    FHNMAN26 SAP241K.             
      FHNAGE26 SAP239K.    FHNTYP27 SAP919X.    FHNMAN27 SAP241K.             
      FHNAGE27 SAP239K.    FHNTYP28 SAP919X.    FHNMAN28 SAP241K.             
      FHNAGE28 SAP239K.    FHNTYP29 SAP919X.    FHNMAN29 SAP241K.             
      FHNAGE29 SAP239K.    FHNTYP30 SAP919X.    FHNMAN30 SAP241K.             
      FHNAGE30 SAP239K.    FHNTYP31 SAP919X.    FHNMAN31 SAP241K.             
      FHNAGE31 SAP239K.    FHNTYP32 SAP919X.    FHDNUM   SAP334K.             
      FHDCAN   SAP335K.    FHDTYP1  SAP919X.    FHDMAN1  SAP337K.             
      FHDAGE1  SAP335K.    FHDTYP2  SAP919X.    FHDMAN2  SAP337K.             
      FHDAGE2  SAP335K.    FHDTYP3  SAP919X.    FHDMAN3  SAP337K.             
      FHDAGE3  SAP335K.    FHDTYP4  SAP919X.    FHDMAN4  SAP337K.             
      FHDAGE4  SAP335K.    FHDTYP5  SAP919X.    FHDMAN5  SAP337K.             
      FHDAGE5  SAP335K.    FHDTYP6  SAP919X.    FHDMAN6  SAP337K.             
      FHDAGE6  SAP335K.    FHDTYP7  SAP919X.    FHDMAN7  SAP337K.             
      FHDAGE7  SAP335K.    FHDTYP8  SAP919X.    FHDMAN8  SAP337K.             
      FHDAGE8  SAP335K.    FHDTYP9  SAP919X.    FHDMAN9  SAP337K.             
      FHDAGE9  SAP335K.    FHDTYP10 SAP919X.    FHDMAN10 SAP337K.             
      FHDAGE10 SAP335K.    FHDTYP11 SAP919X.    FHDMAN11 SAP337K.             
      FHDAGE11 SAP335K.    FHDTYP12 SAP919X.    FHDMAN12 SAP337K.             
      FHDAGE12 SAP335K.    FHDTYP13 SAP919X.    FHDMAN13 SAP337K.             
      FHDAGE13 SAP335K.    FHDTYP14 SAP919X.    FHDMAN14 SAP337K.             
      FHDAGE14 SAP335K.    FHDTYP15 SAP919X.    FHDMAN15 SAP337K.             
      FHDAGE15 SAP335K.    FHDTYP16 SAP919X.    FHDMAN16 SAP337K.             
      FHDAGE16 SAP335K.    FHDTYP17 SAP919X.    FHDMAN17 SAP337K.             
      FHDAGE17 SAP335K.    FHDTYP18 SAP919X.    FHDMAN18 SAP337K.             
      FHDAGE18 SAP335K.    FHDTYP19 SAP919X.    FHDMAN19 SAP337K.             
      FHDAGE19 SAP335K.    FHDTYP20 SAP919X.    FHDMAN20 SAP337K.             
      FHDAGE20 SAP335K.    FHDTYP21 SAP919X.    FHDMAN21 SAP337K.             
      FHDAGE21 SAP335K.    FHDTYP22 SAP919X.    FHDMAN22 SAP337K.             
      FHDAGE22 SAP335K.    FHDTYP23 SAP919X.    FHDMAN23 SAP337K.             
      FHDAGE23 SAP335K.    FHDTYP24 SAP919X.    FHDMAN24 SAP337K.             
      FHDAGE24 SAP335K.    FHDTYP25 SAP919X.    FHDMAN25 SAP337K.             
      FHDAGE25 SAP335K.    FHDTYP26 SAP919X.    FHDMAN26 SAP337K.             
      FHDAGE26 SAP335K.    FHDTYP27 SAP919X.    FHDMAN27 SAP337K.             
      FHDAGE27 SAP335K.    FHDTYP28 SAP919X.    FHDMAN28 SAP337K.             
      FHDAGE28 SAP335K.    FHDTYP29 SAP919X.    FHDMAN29 SAP337K.             
      FHDAGE29 SAP335K.    FHDTYP30 SAP919X.    FHDMAN30 SAP337K.             
      FHDAGE30 SAP335K.    FHDTYP31 SAP919X.    FHDMAN31 SAP337K.             
      FHDAGE31 SAP335K.    FHDTYP32 SAP919X.;                                 
                                                                              
PROC CONTENTS DATA=NHIS.SAMADULT_2000;                                             
   TITLE1 'CONTENTS OF THE 2000 NHIS SAMADULT FILE';                          
                                                                              
PROC FREQ DATA=NHIS.SAMADULT_2000;                                                 
   TITLE1 'FREQUENCY REPORT FOR 2000 NHIS SAMADULT FILE';                     
   TITLE2 '(WEIGHTED)';                                                       
   TABLES EDUC * SEX/LIST MISSING;                                            
   WEIGHT WTFA_SA ;                                                           
                                                                              
PROC FREQ DATA=NHIS.SAMADULT_2000;                                                 
   TITLE1 'FREQUENCY REPORT FOR 2000 NHIS SAMADULT FILE';                     
   TITLE2 '(UNWEIGHTED)';                                                     
   TABLES EDUC * SEX/LIST MISSING;                                            
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE                 
        STATEMENT: FORMAT _ALL_;                                              
RUN;                                                                          
