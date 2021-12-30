                                                                              
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
 NOVEMBER 16, 2001 10:00 AM                                                   
                                                                              
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS                       
 FILE FROM THE 2000 NHIS PUBLIC USE PERSONSX.DAT ASCII FILE                   
                                                                              
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN                      
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                         
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                           
       DOCUMENTATION                                                          
                                                                              
 THIS IS STORED IN PERSONSX.SAS                                               
*********************************************************************;        
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;                
                                                                              
LIBNAME NHIS    'C:\DATA\NHIS\';                                               
LIBNAME LIBRARY 'C:\DATA\NHIS\2000';                                               
                                                                              
* DEFINE VARIABLE VALUES FOR REPORTS;                                         
                                                                              
PROC FORMAT LIBRARY=LIBRARY;                                                  
  VALUE PEP001X                                                               
    20               = "Person"                                               
   ;                                                                          
  VALUE PEP002X                                                               
    2000             = "2000"                                                 
   ;                                                                          
  VALUE $PEP004X                                                              
    "01" - "30"      = "Family number 1 thru 30"                              
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
    "1916"           = "1916 or before"                                       
    "1917" - "2001"  = "1917-2001"                                            
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
  VALUE PEP051X                                                               
    1                = "Armed Forces"                                         
    2                = "Not Armed Forces"                                     
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP052X                                                               
    0                = "Sample Adult - no record"                             
    1                = "Sample Adult - has record"                            
    2                = "Not selected as Sample Adult"                         
    3                = "No one selected as Sample Adult"                      
    4                = "Armed Force member"                                   
    5                = "Armed Force member - selected as Sample Adult"        
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP053X                                                               
    0                = "Sample Child - no record"                             
    1                = "Sample Child - has record"                            
    2                = "Not selected as Sample Child"                         
    3                = "No one selected as Sample Child"                      
    4                = "Emancipated Minor"                                    
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP054X                                                               
    0                = "Immunization Child - no record"                       
    1                = "Immunization Child - has record"                      
    2                = "Not eligible for immunization questions"              
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP055X                                                               
    1                = "Northeast"                                            
    2                = "Midwest"                                              
    3                = "South"                                                
    4                = "West"                                                 
   ;                                                                          
  VALUE PEP056X                                                               
    1                = "5,000,000 or more"                                    
    2                = "2,500,000 - 4,999,999"                                
    3                = "1,000,000 - 2,499,999"                                
    4                = "500,000 - 999,999"                                    
    5                = "250,000 - 499,999"                                    
    6                = "Under 250,000"                                        
    7                = "Non-MSA"                                              
   ;                                                                          
  VALUE PEP073X                                                               
    0                = "Unable to work"                                       
    1                = "Limited in work"                                      
    2                = "Not limited in work"                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP074X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP076X                                                               
    0                = "Limitation previously mentioned"                      
    1                = "Yes, limited in some other way"                       
    2                = "Not limited in any way"                               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP077X                                                               
    1                = "Limited in any way"                                   
    2                = "Not limited in any way"                               
    3                = "Unknown if limited"                                   
   ;                                                                          
  VALUE PEP078X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    6                = "No condition at all"                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP079X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused*"                                             
    98               = "Not ascertained"                                      
    99               = "Don't know*"                                          
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP080X                                                               
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
  VALUE PEP081X                                                               
    00               = "Less than 1 year"                                     
    01 - 17          = "01-17 years"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP095X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP133X                                                               
    00               = "Less than 1 year"                                     
    01 - 84          = "01-84 years"                                          
    85               = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP255X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth **"                                       
    97               = "Refused*"                                             
    98               = "Not ascertained"                                      
    99               = "Don't know*"                                          
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP256X                                                               
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
  VALUE PEP274X                                                               
    00               = "Since birth and child < 1 year of age"                
    01               = "Less than 3 months"                                   
    02               = "3 -  5 months"                                        
    03               = "6 - 12 months"                                        
    04               = "More than 1 year"                                     
    10               = "Unknown number of days"                               
    11               = "Unknown number of weeks"                              
    12               = "Unknown number of months"                             
    13               = "Unknown number of years"                              
    99               = "Unknown time with cond/impairment"                    
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP287X                                                               
    01               = "Less than 3 months"                                   
    02               = "3 -  5 months"                                        
    03               = "6 - 12 months"                                        
    04               = "More than 1 year"                                     
    10               = "Unknown number of days"                               
    11               = "Unknown number of weeks"                              
    12               = "Unknown number of months"                             
    13               = "Unknown number of years"                              
    99               = "Unknown time with cond/impairment"                    
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP323X                                                               
    1                = "Chronic"                                              
    2                = "Not chronic"                                          
    9                = "Unknown if chronic"                                   
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP372X                                                               
    1                = "At least one condition causing LA is chronic"         
    2                = "No condition causing LA is chronic"                   
    9                = "Unknown if any condition causing LA is chronic"       
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP373X                                                               
    0                = "Not limited in any way (incl unk if limited)"         
    1                = "Limited; caused by at least one chronic cond"         
    2                = "Limited; not caused by chronic cond"                  
    3                = "Limited; unk if cond causing LA is chronic"           
   ;                                                                          
  VALUE PEP374X                                                               
    1                = "Excellent"                                            
    2                = "Very good"                                            
    3                = "Good"                                                 
    4                = "Fair"                                                 
    5                = "Poor"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP378X                                                               
    001 - 365        = "1-365 times"                                          
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP379X                                                               
    001 - 365        = "1-365 nights"                                         
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP381X                                                               
    01 - 50          = "1-50 visits"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP383X                                                               
    01 - 50          = "1-50 calls"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP385X                                                               
    01 - 50          = "1-50 times"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
                                                                              
  VALUE PEP387X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP401X                                                               
    1                = "Yes, information"                                     
    2                = "Yes, but no detail information"                       
    3                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP402X                                                               
    1                = "Part A - Hospital Only"                               
    2                = "Part B - Medical Only"                                
    3                = "Both Part A and Part B"                               
    4                = "Card Not Available"                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP408X                                                               
    1                = "Any doctor"                                           
    2                = "Select from a book/list"                              
    3                = "Doctor is assigned"                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP411X                                                               
    1                = "Yes with detail"                                      
    2                = "Yes with no detail"                                   
    3                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP412X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP425X                                                               
    01 - 92          = "Refer to Health Insurance Plan Appendix"              
    98               = "Not ascertained"                                      
    99               = "Unknown"                                              
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP426X                                                               
    1                = "In own name"                                          
    2                = "Someone else in family"                               
    3                = "Person not in household"                              
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP427X                                                               
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
  VALUE PEP435X                                                               
    00001 - 19999    = "$1-$19999"                                            
    20000            = "$20000 or more"                                       
    99997            = "Refused"                                              
    99998            = "Not ascertained"                                      
    99999            = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP436X                                                               
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
  VALUE PEP437X                                                               
    1                = "Any doctor"                                           
    2                = "Select from group/list"                               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP490X                                                               
    1                = "Yes, Military/VA only"                                
    2                = "Yes, CHAMPUS/TRICARE/CHAMP-VA only"                   
    3                = "Yes Both Military/VA + CHAMPUS/TRICARE/CHAMP-VA"      
    4                = "Yes unknown type"                                     
    5                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP494X                                                               
    1                = "Not covered"                                          
    2                = "Covered"                                              
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP495X                                                               
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
  VALUE PEP512X                                                               
    01 - 12          = "1-12 months"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP513X                                                               
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
                                                                              
  VALUE PEP514X                                                               
    01               = "United States"                                        
    02               = "Mexico, Central America, Carribbean Islands"          
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
  VALUE PEP516X                                                               
    1                = "Less than 1 year"                                     
    2                = "1 yr., less than 5 yrs."                              
    3                = "5 yrs., less than 10 yrs."                            
    4                = "10 yrs., less than 15 yrs."                           
    5                = "15 years or more"                                     
    9                = "Unknown"                                              
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP517X                                                               
    1                = "Yes, citizen of the United States"                    
    2                = "No, not a citizen of the United States"               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP520X                                                               
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
  VALUE PEP521X                                                               
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
  VALUE PEP523X                                                               
    1                = "Working at a job or business"                         
    2                = "With a job or business but not at work"               
    3                = "Looking for work"                                     
    4                = "Not working at a job or business"                     
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP524X                                                               
    01 - 94          = "1-94 hours"                                           
    95               = "95+ hours"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP526X                                                               
    01               = "Taking care of house or family"                       
    02               = "Going to school"                                      
    03               = "Retired"                                              
    04               = "Unable to work for health reasons"                    
    05               = "On layoff"                                            
    06               = "Disabled"                                             
    07               = "Other"                                                
    97               = "Refused"                                              
    98               = "Not Ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP529X                                                               
    1                = "Working at a job or business"                         
    2                = "Keeping house"                                        
    3                = "Going to school"                                      
    4                = "Something else"                                       
    5                = "Unknown"                                              
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP530X                                                               
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
  VALUE PEP547X                                                               
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
  VALUE PEP548X                                                               
    1                = "$20,000 or more"                                      
    2                = "Less than $20,000"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP549X                                                               
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
  VALUE PEP550X                                                               
    1                = "Owned or being bought"                                
    2                = "Rented"                                               
    3                = "Other arrangement"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP554X                                                               
    01 - 12          = "01-12 months"                                         
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
                                                                              
DATA NHIS.PERSON_2000;                                                           
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS2000\';                         
   INFILE 'C:\DATA\NHIS\2000\da3381.persn.sas' MISSOVER TRUNCOVER LRECL=789;                           
                                                                              
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
      FM_TYPE    3   FM_STRP    3   NOWAF      3   ASTATFLG   3               
      CSTATFLG   3   IMMUNFLG   3   REGION     3   MSASIZEP   3               
      WTIA       8   WTFA       8   STRATUM    4   PSU        3               
                                                                              
      PLAPLYLM   3   PLAPLYUN   3   PSPEDEIS   3   PLAADL     3               
      LABATH     3   LADRESS    3   LAEAT      3   LABED      3               
      LATOILT    3   LAHOME     3   PLAIADL    3   PLAWKNOW   3               
      PLAWKLIM   3   PLAWALK    3   PLAREMEM   3   PLIMANY    3               
      LA1AR      3   LAHCC1     3   LHCCLN1    3   LHCCLT1    3               
      LHCCLY1    3   LAHCC2     3   LHCCLN2    3   LHCCLT2    3               
      LHCCLY2    3   LAHCC3     3   LHCCLN3    3   LHCCLT3    3               
      LHCCLY3    3   LAHCC4     3   LHCCLN4    3   LHCCLT4    3               
      LHCCLY4    3   LAHCC5     3   LHCCLN5    3   LHCCLT5    3               
      LHCCLY5    3   LAHCC6     3   LHCCLN6    3   LHCCLT6    3               
      LHCCLY6    3   LAHCC7     3   LHCCLN7    3   LHCCLT7    3               
      LHCCLY7    3   LAHCC8     3   LHCCLN8    3   LHCCLT8    3               
      LHCCLY8    3   LAHCC9     3   LHCCLN9    3   LHCCLT9    3               
      LHCCLY9    3   LAHCC10    3   LHCCLN10   3   LHCCLT10   3               
      LHCCLY10   3   LAHCC11    3   LHCCLN11   3   LHCCLT11   3               
      LHCCLY11   3   LAHCC90    3   LHCCLN90   3   LHCCLT90   3               
      LHCCLY90   3   LAHCC91    3   LHCCLN91   3   LHCCLT91   3               
      LHCCLY91   3   LAHCA1     3   LHCALN1    3   LHCALT1    3               
      LHCALY1    3   LAHCA2     3   LHCALN2    3   LHCALT2    3               
      LHCALY2    3   LAHCA3     3   LHCALN3    3   LHCALT3    3               
      LHCALY3    3   LAHCA4     3   LHCALN4    3   LHCALT4    3               
      LHCALY4    3   LAHCA5     3   LHCALN5    3   LHCALT5    3               
      LHCALY5    3   LAHCA6     3   LHCALN6    3   LHCALT6    3               
      LHCALY6    3   LAHCA7     3   LHCALN7    3   LHCALT7    3               
      LHCALY7    3   LAHCA8     3   LHCALN8    3   LHCALT8    3               
      LHCALY8    3   LAHCA9     3   LHCALN9    3   LHCALT9    3               
      LHCALY9    3   LAHCA10    3   LHCALN10   3   LHCALT10   3               
      LHCALY10   3   LAHCA11    3   LHCALN11   3   LHCALT11   3               
      LHCALY11   3   LAHCA12    3   LHCALN12   3   LHCALT12   3               
      LHCALY12   3   LAHCA13    3   LHCALN13   3   LHCALT13   3               
      LHCALY13   3   LAHCA14    3   LHCALN14   3   LHCALT14   3               
      LHCALY14   3   LAHCA15    3   LHCALN15   3   LHCALT15   3               
      LHCALY15   3   LAHCA16    3   LHCALN16   3   LHCALT16   3               
      LHCALY16   3   LAHCA17    3   LHCALN17   3   LHCALT17   3               
      LHCALY17   3   LAHCA18    3   LHCALN18   3   LHCALT18   3               
      LHCALY18   3   LAHCA19    3   LHCALN19   3   LHCALT19   3               
      LHCALY19   3   LAHCA20    3   LHCALN20   3   LHCALT20   3               
      LHCALY20   3   LAHCA21    3   LHCALN21   3   LHCALT21   3               
      LHCALY21   3   LAHCA22    3   LHCALN22   3   LHCALT22   3               
      LHCALY22   3   LAHCA23    3   LHCALN23   3   LHCALT23   3               
      LHCALY23   3   LAHCA24    3   LHCALN24   3   LHCALT24   3               
      LHCALY24   3   LAHCA25    3   LHCALN25   3   LHCALT25   3               
      LHCALY25   3   LAHCA26    3   LHCALN26   3   LHCALT26   3               
      LHCALY26   3   LAHCA27    3   LHCALN27   3   LHCALT27   3               
      LHCALY27   3   LAHCA28    3   LHCALN28   3   LHCALT28   3               
      LHCALY28   3   LAHCA29    3   LHCALN29   3   LHCALT29   3               
      LHCALY29   3   LAHCA30    3   LHCALN30   3   LHCALT30   3               
      LHCALY30   3   LAHCA31    3   LHCALN31   3   LHCALT31   3               
      LHCALY31   3   LAHCA32    3   LHCALN32   3   LHCALT32   3               
      LHCALY32   3   LAHCA33    3   LHCALN33   3   LHCALT33   3               
      LHCALY33   3   LAHCA34    3   LHCALN34   3   LHCALT34   3               
      LHCALY34   3   LAHCA90    3   LHCALN90   3   LHCALT90   3               
      LHCALY90   3   LAHCA91    3   LHCALN91   3   LHCALT91   3               
      LHCALY91   3   LACNTR1    3   LACNTR2    3   LACNTR3    3               
      LACNTR4    3   LACNTR5    3   LACNTR6    3   LACNTR7    3               
      LACNTR8    3   LACNTR9    3   LACNTR10   3   LACNTR11   3               
      LACNTR90   3   LACNTR91   3   LAANTR1    3   LAANTR2    3               
      LAANTR3    3   LAANTR4    3   LAANTR5    3   LAANTR6    3               
      LAANTR7    3   LAANTR8    3   LAANTR9    3   LAANTR10   3               
      LAANTR11   3   LAANTR12   3   LAANTR13   3   LAANTR14   3               
      LAANTR15   3   LAANTR16   3   LAANTR17   3   LAANTR18   3               
      LAANTR19   3   LAANTR20   3   LAANTR21   3   LAANTR22   3               
      LAANTR23   3   LAANTR24   3   LAANTR25   3   LAANTR26   3               
      LAANTR27   3   LAANTR28   3   LAANTR29   3   LAANTR30   3               
      LAANTR31   3   LAANTR32   3   LAANTR33   3   LAANTR34   3               
      LAANTR90   3   LAANTR91   3   LCCNDR1    3   LCCNDR2    3               
      LCCNDR3    3   LCCNDR4    3   LCCNDR5    3   LCCNDR6    3               
      LCCNDR7    3   LCCNDR8    3   LCCNDR9    3   LCCNDR10   3               
      LCCNDR11   3   LCCNDR90   3   LCCNDR91   3   LACNDR1    3               
      LACNDR2    3   LACNDR3    3   LACNDR4    3   LACNDR5    3               
      LACNDR6    3   LACNDR7    3   LACNDR8    3   LACNDR9    3               
      LACNDR10   3   LACNDR11   3   LACNDR12   3   LACNDR13   3               
      LACNDR14   3   LACNDR15   3   LACNDR16   3   LACNDR17   3               
      LACNDR18   3   LACNDR19   3   LACNDR20   3   LACNDR21   3               
      LACNDR22   3   LACNDR23   3   LACNDR24   3   LACNDR25   3               
      LACNDR26   3   LACNDR27   3   LACNDR28   3   LACNDR29   3               
      LACNDR30   3   LACNDR31   3   LACNDR32   3   LACNDR33   3               
      LACNDR34   3   LACNDR90   3   LACNDR91   3   LCONDRT    3               
      LACHRONR   3   PHSTAT     3                                             
                                                                              
      PDMED12M   3   PNMED12M   3   PHOSPYR    3   HOSPNO     4               
      HPNITE     4   PHCHM2W    3   PHCHMN2W   3   PHCPH2WR   3               
      PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3   P10DVYR    3               
                                                                              
      HIKINDA    3   HIKINDB    3   HIKINDC    3   HIKINDD    3               
      HIKINDE    3   HIKINDF    3   HIKINDG    3   HIKINDH    3               
      HIKINDI    3   HIKINDJ    3   HIKINDK    3   HIKINDL    3               
      HIKINDM    3   HIKINDN    3   MEDICARE   3   MCPART     3               
      MCCHOICE   3   MCHMO      3   MCREF      3   MCPAYPRE   3               
      MEDICAID   3   MACHMD     3   MAPCMD     3   MAREF      3               
      SINGLE     3   SSTYPEA    3   SSTYPEB    3   SSTYPEC    3               
      SSTYPED    3   SSTYPEE    3   SSTYPEF    3   SSTYPEG    3               
      SSTYPEH    3   SSTYPEI    3   SSTYPEJ    3   SSTYPEK    3               
      SSTYPEL    3   PRIVATE    3   HITYPE1    3   WHONAM1    3               
      PLNWRK1    3   PLNPAY11   3   PLNPAY21   3   PLNPAY31   3               
      PLNPAY41   3   PLNPAY51   3   PLNPAY61   3   PLNPAY71   3               
      HICOSTR1   4   PLNMGD1    3   MGCHMD1    3   MGPRMD1    3               
      MGPYMD1    3   MGPREF1    3   HITYPE2    3   WHONAM2    3               
      PLNWRK2    3   PLNPAY12   3   PLNPAY22   3   PLNPAY32   3               
      PLNPAY42   3   PLNPAY52   3   PLNPAY62   3   PLNPAY72   3               
      HICOSTR2   4   PLNMGD2    3   MGCHMD2    3   MGPRMD2    3               
      MGPYMD2    3   MGPREF2    3   HITYPE3    3   WHONAM3    3               
      PLNWRK3    3   PLNPAY13   3   PLNPAY23   3   PLNPAY33   3               
      PLNPAY43   3   PLNPAY53   3   PLNPAY63   3   PLNPAY73   3               
      HICOSTR3   4   PLNMGD3    3   MGCHMD3    3   MGPRMD3    3               
      MGPYMD3    3   MGPREF3    3   HITYPE4    3   WHONAM4    3               
      PLNWRK4    3   PLNPAY14   3   PLNPAY24   3   PLNPAY34   3               
      PLNPAY44   3   PLNPAY54   3   PLNPAY64   3   PLNPAY74   3               
      HICOSTR4   4   PLNMGD4    3   MGCHMD4    3   MGPRMD4    3               
      MGPYMD4    3   MGPREF4    3   IHS        3   MILITARY   3               
      CHIP       3   OTHERPUB   3   OTHERGOV   3   NOTCOV     3               
      HILAST     3   HISTOP1    3   HISTOP2    3   HISTOP3    3               
      HISTOP4    3   HISTOP5    3   HISTOP6    3   HISTOP7    3               
      HISTOP8    3   HISTOP9    3   HISTOP10   3   HISTOP11   3               
      HISTOP12   3   HISTOP13   3   HISTOP14   3   HISTOP15   3               
      HINOTYR    3   HINOTMYR   3   HCSPFYR    3                              
                                                                              
      REGIONBR   3   USBRTH_P   3   YRSINUS    3   CITIZENP   3               
      HEADST     3   HEADSTEV   3   EDUC       3   EDUC_R1    3               
      MILTRYDS   3   DOINGLW    3   WRKHRS     3   WRKFTALL   3               
      WHYNOWRK   3   WRKLYR     3   WRKMYR     3   MAJR_ACT   3               
      ERNYR_P    3   HIEMPOF    3                                             
                                                                              
      PSAL       3   PSEINC     3   PSSRR      3   PSSRRDB    3               
      PSSRRD     3   PPENS      3   POPENS     3   PSSI       3               
      PSSID      3   PTANF      3   POWBEN     3   PINTRSTR   3               
      PDIVD      3   PCHLDSP    3   PINCOT     3   INCGRP     3               
      AB_BL20K   3   RAT_CAT    3   HOUSEOWN   3   FGAH       3               
      PSSAPL     3   PSDAPL     3   TANFMYR    3   PFSTP      3               
      FSTPMYR    3   PWIC       3 ;                                           
                                                                              
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
      FM_TYPE      82 -  82    FM_STRP      83 -  84                          
      NOWAF        85 -  85    ASTATFLG     86 -  86                          
      CSTATFLG     87 -  87    IMMUNFLG     88 -  88                          
      REGION       89 -  89    MSASIZEP     90 -  90                          
      WTIA         91 -  96 .1 WTFA         97 - 102                          
      STRATUM     103 - 105    PSU         106 - 106                          
                                                                              
      PLAPLYLM    107 - 107    PLAPLYUN    108 - 108                          
      PSPEDEIS    109 - 109    PLAADL      110 - 110                          
      LABATH      111 - 111    LADRESS     112 - 112                          
      LAEAT       113 - 113    LABED       114 - 114                          
      LATOILT     115 - 115    LAHOME      116 - 116                          
      PLAIADL     117 - 117    PLAWKNOW    118 - 118                          
      PLAWKLIM    119 - 119    PLAWALK     120 - 120                          
      PLAREMEM    121 - 121    PLIMANY     122 - 122                          
      LA1AR       123 - 123    LAHCC1      124 - 124                          
      LHCCLN1     125 - 126    LHCCLT1     127 - 127                          
      LHCCLY1     128 - 129    LAHCC2      130 - 130                          
      LHCCLN2     131 - 132    LHCCLT2     133 - 133                          
      LHCCLY2     134 - 135    LAHCC3      136 - 136                          
      LHCCLN3     137 - 138    LHCCLT3     139 - 139                          
      LHCCLY3     140 - 141    LAHCC4      142 - 142                          
      LHCCLN4     143 - 144    LHCCLT4     145 - 145                          
      LHCCLY4     146 - 147    LAHCC5      148 - 148                          
      LHCCLN5     149 - 150    LHCCLT5     151 - 151                          
      LHCCLY5     152 - 153    LAHCC6      154 - 154                          
      LHCCLN6     155 - 156    LHCCLT6     157 - 157                          
      LHCCLY6     158 - 159    LAHCC7      160 - 160                          
      LHCCLN7     161 - 162    LHCCLT7     163 - 163                          
      LHCCLY7     164 - 165    LAHCC8      166 - 166                          
      LHCCLN8     167 - 168    LHCCLT8     169 - 169                          
      LHCCLY8     170 - 171    LAHCC9      172 - 172                          
      LHCCLN9     173 - 174    LHCCLT9     175 - 175                          
      LHCCLY9     176 - 177    LAHCC10     178 - 178                          
      LHCCLN10    179 - 180    LHCCLT10    181 - 181                          
      LHCCLY10    182 - 183    LAHCC11     184 - 184                          
      LHCCLN11    185 - 186    LHCCLT11    187 - 187                          
      LHCCLY11    188 - 189    LAHCC90     190 - 190                          
      LHCCLN90    191 - 192    LHCCLT90    193 - 193                          
      LHCCLY90    194 - 195    LAHCC91     196 - 196                          
      LHCCLN91    197 - 198    LHCCLT91    199 - 199                          
      LHCCLY91    200 - 201    LAHCA1      202 - 202                          
      LHCALN1     203 - 204    LHCALT1     205 - 205                          
      LHCALY1     206 - 207    LAHCA2      208 - 208                          
      LHCALN2     209 - 210    LHCALT2     211 - 211                          
      LHCALY2     212 - 213    LAHCA3      214 - 214                          
      LHCALN3     215 - 216    LHCALT3     217 - 217                          
      LHCALY3     218 - 219    LAHCA4      220 - 220                          
      LHCALN4     221 - 222    LHCALT4     223 - 223                          
      LHCALY4     224 - 225    LAHCA5      226 - 226                          
      LHCALN5     227 - 228    LHCALT5     229 - 229                          
      LHCALY5     230 - 231    LAHCA6      232 - 232                          
      LHCALN6     233 - 234    LHCALT6     235 - 235                          
      LHCALY6     236 - 237    LAHCA7      238 - 238                          
      LHCALN7     239 - 240    LHCALT7     241 - 241                          
      LHCALY7     242 - 243    LAHCA8      244 - 244                          
      LHCALN8     245 - 246    LHCALT8     247 - 247                          
      LHCALY8     248 - 249    LAHCA9      250 - 250                          
      LHCALN9     251 - 252    LHCALT9     253 - 253                          
      LHCALY9     254 - 255    LAHCA10     256 - 256                          
      LHCALN10    257 - 258    LHCALT10    259 - 259                          
      LHCALY10    260 - 261    LAHCA11     262 - 262                          
      LHCALN11    263 - 264    LHCALT11    265 - 265                          
      LHCALY11    266 - 267    LAHCA12     268 - 268                          
      LHCALN12    269 - 270    LHCALT12    271 - 271                          
      LHCALY12    272 - 273    LAHCA13     274 - 274                          
      LHCALN13    275 - 276    LHCALT13    277 - 277                          
      LHCALY13    278 - 279    LAHCA14     280 - 280                          
      LHCALN14    281 - 282    LHCALT14    283 - 283                          
      LHCALY14    284 - 285    LAHCA15     286 - 286                          
      LHCALN15    287 - 288    LHCALT15    289 - 289                          
      LHCALY15    290 - 291    LAHCA16     292 - 292                          
      LHCALN16    293 - 294    LHCALT16    295 - 295                          
      LHCALY16    296 - 297    LAHCA17     298 - 298                          
      LHCALN17    299 - 300    LHCALT17    301 - 301                          
      LHCALY17    302 - 303    LAHCA18     304 - 304                          
      LHCALN18    305 - 306    LHCALT18    307 - 307                          
      LHCALY18    308 - 309    LAHCA19     310 - 310                          
      LHCALN19    311 - 312    LHCALT19    313 - 313                          
      LHCALY19    314 - 315    LAHCA20     316 - 316                          
      LHCALN20    317 - 318    LHCALT20    319 - 319                          
      LHCALY20    320 - 321    LAHCA21     322 - 322                          
      LHCALN21    323 - 324    LHCALT21    325 - 325                          
      LHCALY21    326 - 327    LAHCA22     328 - 328                          
      LHCALN22    329 - 330    LHCALT22    331 - 331                          
      LHCALY22    332 - 333    LAHCA23     334 - 334                          
      LHCALN23    335 - 336    LHCALT23    337 - 337                          
      LHCALY23    338 - 339    LAHCA24     340 - 340                          
      LHCALN24    341 - 342    LHCALT24    343 - 343                          
      LHCALY24    344 - 345    LAHCA25     346 - 346                          
      LHCALN25    347 - 348    LHCALT25    349 - 349                          
      LHCALY25    350 - 351    LAHCA26     352 - 352                          
      LHCALN26    353 - 354    LHCALT26    355 - 355                          
      LHCALY26    356 - 357    LAHCA27     358 - 358                          
      LHCALN27    359 - 360    LHCALT27    361 - 361                          
      LHCALY27    362 - 363    LAHCA28     364 - 364                          
      LHCALN28    365 - 366    LHCALT28    367 - 367                          
      LHCALY28    368 - 369    LAHCA29     370 - 370                          
      LHCALN29    371 - 372    LHCALT29    373 - 373                          
      LHCALY29    374 - 375    LAHCA30     376 - 376                          
      LHCALN30    377 - 378    LHCALT30    379 - 379                          
      LHCALY30    380 - 381    LAHCA31     382 - 382                          
      LHCALN31    383 - 384    LHCALT31    385 - 385                          
      LHCALY31    386 - 387    LAHCA32     388 - 388                          
      LHCALN32    389 - 390    LHCALT32    391 - 391                          
      LHCALY32    392 - 393    LAHCA33     394 - 394                          
      LHCALN33    395 - 396    LHCALT33    397 - 397                          
      LHCALY33    398 - 399    LAHCA34     400 - 400                          
      LHCALN34    401 - 402    LHCALT34    403 - 403                          
      LHCALY34    404 - 405    LAHCA90     406 - 406                          
      LHCALN90    407 - 408    LHCALT90    409 - 409                          
      LHCALY90    410 - 411    LAHCA91     412 - 412                          
      LHCALN91    413 - 414    LHCALT91    415 - 415                          
      LHCALY91    416 - 417    LACNTR1     418 - 419                          
      LACNTR2     420 - 421    LACNTR3     422 - 423                          
      LACNTR4     424 - 425    LACNTR5     426 - 427                          
      LACNTR6     428 - 429    LACNTR7     430 - 431                          
      LACNTR8     432 - 433    LACNTR9     434 - 435                          
      LACNTR10    436 - 437    LACNTR11    438 - 439                          
      LACNTR90    440 - 441    LACNTR91    442 - 443                          
      LAANTR1     444 - 445    LAANTR2     446 - 447                          
      LAANTR3     448 - 449    LAANTR4     450 - 451                          
      LAANTR5     452 - 453    LAANTR6     454 - 455                          
      LAANTR7     456 - 457    LAANTR8     458 - 459                          
      LAANTR9     460 - 461    LAANTR10    462 - 463                          
      LAANTR11    464 - 465    LAANTR12    466 - 467                          
      LAANTR13    468 - 469    LAANTR14    470 - 471                          
      LAANTR15    472 - 473    LAANTR16    474 - 475                          
      LAANTR17    476 - 477    LAANTR18    478 - 479                          
      LAANTR19    480 - 481    LAANTR20    482 - 483                          
      LAANTR21    484 - 485    LAANTR22    486 - 487                          
      LAANTR23    488 - 489    LAANTR24    490 - 491                          
      LAANTR25    492 - 493    LAANTR26    494 - 495                          
      LAANTR27    496 - 497    LAANTR28    498 - 499                          
      LAANTR29    500 - 501    LAANTR30    502 - 503                          
      LAANTR31    504 - 505    LAANTR32    506 - 507                          
      LAANTR33    508 - 509    LAANTR34    510 - 511                          
      LAANTR90    512 - 513    LAANTR91    514 - 515                          
      LCCNDR1     516 - 516    LCCNDR2     517 - 517                          
      LCCNDR3     518 - 518    LCCNDR4     519 - 519                          
      LCCNDR5     520 - 520    LCCNDR6     521 - 521                          
      LCCNDR7     522 - 522    LCCNDR8     523 - 523                          
      LCCNDR9     524 - 524    LCCNDR10    525 - 525                          
      LCCNDR11    526 - 526    LCCNDR90    527 - 527                          
      LCCNDR91    528 - 528    LACNDR1     529 - 529                          
      LACNDR2     530 - 530    LACNDR3     531 - 531                          
      LACNDR4     532 - 532    LACNDR5     533 - 533                          
      LACNDR6     534 - 534    LACNDR7     535 - 535                          
      LACNDR8     536 - 536    LACNDR9     537 - 537                          
      LACNDR10    538 - 538    LACNDR11    539 - 539                          
      LACNDR12    540 - 540    LACNDR13    541 - 541                          
      LACNDR14    542 - 542    LACNDR15    543 - 543                          
      LACNDR16    544 - 544    LACNDR17    545 - 545                          
      LACNDR18    546 - 546    LACNDR19    547 - 547                          
      LACNDR20    548 - 548    LACNDR21    549 - 549                          
      LACNDR22    550 - 550    LACNDR23    551 - 551                          
      LACNDR24    552 - 552    LACNDR25    553 - 553                          
      LACNDR26    554 - 554    LACNDR27    555 - 555                          
      LACNDR28    556 - 556    LACNDR29    557 - 557                          
      LACNDR30    558 - 558    LACNDR31    559 - 559                          
      LACNDR32    560 - 560    LACNDR33    561 - 561                          
      LACNDR34    562 - 562    LACNDR90    563 - 563                          
      LACNDR91    564 - 564    LCONDRT     565 - 565                          
      LACHRONR    566 - 566    PHSTAT      567 - 567                          
                                                                              
      PDMED12M    568 - 568    PNMED12M    569 - 569                          
      PHOSPYR     570 - 570    HOSPNO      571 - 573                          
      HPNITE      574 - 576    PHCHM2W     577 - 577                          
      PHCHMN2W    578 - 579    PHCPH2WR    580 - 580                          
      PHCPHN2W    581 - 582    PHCDV2W     583 - 583                          
      PHCDVN2W    584 - 585    P10DVYR     586 - 586                          
                                                                              
      HIKINDA     587 - 587    HIKINDB     588 - 588                          
      HIKINDC     589 - 589    HIKINDD     590 - 590                          
      HIKINDE     591 - 591    HIKINDF     592 - 592                          
      HIKINDG     593 - 593    HIKINDH     594 - 594                          
      HIKINDI     595 - 595    HIKINDJ     596 - 596                          
      HIKINDK     597 - 597    HIKINDL     598 - 598                          
      HIKINDM     599 - 599    HIKINDN     600 - 600                          
      MEDICARE    601 - 601    MCPART      602 - 602                          
      MCCHOICE    603 - 603    MCHMO       604 - 604                          
      MCREF       605 - 605    MCPAYPRE    606 - 606                          
      MEDICAID    607 - 607    MACHMD      608 - 608                          
      MAPCMD      609 - 609    MAREF       610 - 610                          
      SINGLE      611 - 611    SSTYPEA     612 - 612                          
      SSTYPEB     613 - 613    SSTYPEC     614 - 614                          
      SSTYPED     615 - 615    SSTYPEE     616 - 616                          
      SSTYPEF     617 - 617    SSTYPEG     618 - 618                          
      SSTYPEH     619 - 619    SSTYPEI     620 - 620                          
      SSTYPEJ     621 - 621    SSTYPEK     622 - 622                          
      SSTYPEL     623 - 623    PRIVATE     624 - 624                          
      HITYPE1     625 - 626    WHONAM1     627 - 627                          
      PLNWRK1     628 - 628    PLNPAY11    629 - 629                          
      PLNPAY21    630 - 630    PLNPAY31    631 - 631                          
      PLNPAY41    632 - 632    PLNPAY51    633 - 633                          
      PLNPAY61    634 - 634    PLNPAY71    635 - 635                          
      HICOSTR1    636 - 640    PLNMGD1     641 - 641                          
      MGCHMD1     642 - 642    MGPRMD1     643 - 643                          
      MGPYMD1     644 - 644    MGPREF1     645 - 645                          
      HITYPE2     646 - 647    WHONAM2     648 - 648                          
      PLNWRK2     649 - 649    PLNPAY12    650 - 650                          
      PLNPAY22    651 - 651    PLNPAY32    652 - 652                          
      PLNPAY42    653 - 653    PLNPAY52    654 - 654                          
      PLNPAY62    655 - 655    PLNPAY72    656 - 656                          
      HICOSTR2    657 - 661    PLNMGD2     662 - 662                          
      MGCHMD2     663 - 663    MGPRMD2     664 - 664                          
      MGPYMD2     665 - 665    MGPREF2     666 - 666                          
      HITYPE3     667 - 668    WHONAM3     669 - 669                          
      PLNWRK3     670 - 670    PLNPAY13    671 - 671                          
      PLNPAY23    672 - 672    PLNPAY33    673 - 673                          
      PLNPAY43    674 - 674    PLNPAY53    675 - 675                          
      PLNPAY63    676 - 676    PLNPAY73    677 - 677                          
      HICOSTR3    678 - 682    PLNMGD3     683 - 683                          
      MGCHMD3     684 - 684    MGPRMD3     685 - 685                          
      MGPYMD3     686 - 686    MGPREF3     687 - 687                          
      HITYPE4     688 - 689    WHONAM4     690 - 690                          
      PLNWRK4     691 - 691    PLNPAY14    692 - 692                          
      PLNPAY24    693 - 693    PLNPAY34    694 - 694                          
      PLNPAY44    695 - 695    PLNPAY54    696 - 696                          
      PLNPAY64    697 - 697    PLNPAY74    698 - 698                          
      HICOSTR4    699 - 703    PLNMGD4     704 - 704                          
      MGCHMD4     705 - 705    MGPRMD4     706 - 706                          
      MGPYMD4     707 - 707    MGPREF4     708 - 708                          
      IHS         709 - 709    MILITARY    710 - 710                          
      CHIP        711 - 711    OTHERPUB    712 - 712                          
      OTHERGOV    713 - 713    NOTCOV      714 - 714                          
      HILAST      715 - 715    HISTOP1     716 - 716                          
      HISTOP2     717 - 717    HISTOP3     718 - 718                          
      HISTOP4     719 - 719    HISTOP5     720 - 720                          
      HISTOP6     721 - 721    HISTOP7     722 - 722                          
      HISTOP8     723 - 723    HISTOP9     724 - 724                          
      HISTOP10    725 - 725    HISTOP11    726 - 726                          
      HISTOP12    727 - 727    HISTOP13    728 - 728                          
      HISTOP14    729 - 729    HISTOP15    730 - 730                          
      HINOTYR     731 - 731    HINOTMYR    732 - 733                          
      HCSPFYR     734 - 734                                                   
                                                                              
      REGIONBR    735 - 736    USBRTH_P    737 - 737                          
      YRSINUS     738 - 738    CITIZENP    739 - 739                          
      HEADST      740 - 740    HEADSTEV    741 - 741                          
      EDUC        742 - 743    EDUC_R1     744 - 745                          
      MILTRYDS    746 - 746    DOINGLW     747 - 747                          
      WRKHRS      748 - 749    WRKFTALL    750 - 750                          
      WHYNOWRK    751 - 752    WRKLYR      753 - 753                          
      WRKMYR      754 - 755    MAJR_ACT    756 - 756                          
      ERNYR_P     757 - 758    HIEMPOF     759 - 759                          
                                                                              
      PSAL        760 - 760    PSEINC      761 - 761                          
      PSSRR       762 - 762    PSSRRDB     763 - 763                          
      PSSRRD      764 - 764    PPENS       765 - 765                          
      POPENS      766 - 766    PSSI        767 - 767                          
      PSSID       768 - 768    PTANF       769 - 769                          
      POWBEN      770 - 770    PINTRSTR    771 - 771                          
      PDIVD       772 - 772    PCHLDSP     773 - 773                          
      PINCOT      774 - 774    INCGRP      775 - 776                          
      AB_BL20K    777 - 777    RAT_CAT     778 - 779                          
      HOUSEOWN    780 - 780    FGAH        781 - 781                          
      PSSAPL      782 - 782    PSDAPL      783 - 783                          
      TANFMYR     784 - 785    PFSTP       786 - 786                          
      FSTPMYR     787 - 788    PWIC        789 - 789;                         
                                                                              
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
      FM_STRP  ="Family Structure (on the person-level)"                      
      NOWAF    ="Armed Forces - active duty"                                  
      ASTATFLG ="Sample Adult Flag"                                           
      CSTATFLG ="Sample Child Flag"                                           
      IMMUNFLG ="Child Immunization Flag"                                     
      REGION   ="Region"                                                      
      MSASIZEP ="Geographic Distribution - MSA size"                          
      WTIA     ="Weight - Interim Annual"                                     
      WTFA     ="Weight - Final Annual"                                       
      STRATUM  ="Stratum for variance estimation"                             
      PSU      ="PSU for variance estimation"                                 
                                                                              
      PLAPLYLM ="Limited in kind/amount play"                                 
      PLAPLYUN ="Is -- able to play AT ALL"                                   
      PSPEDEIS ="Does -- receive Spec Ed or EIS?"                             
      PLAADL   ="Does -- need help w/ADL"                                     
      LABATH   ="Need help with bath/shower"                                  
      LADRESS  ="Need help dressing"                                          
      LAEAT    ="Need help eating"                                            
      LABED    ="Need help in/out of bed or chairs"                           
      LATOILT  ="Does -- need help using the toilet?"                         
      LAHOME   ="Need help getting around in home"                            
      PLAIADL  ="Need help with IADL"                                         
      PLAWKNOW ="Is -- unable to work due to health prob?"                    
      PLAWKLIM ="Limited in kind/amt of work"                                 
      PLAWALK  ="Difficulty walking w/o equip"                                
      PLAREMEM ="Limited by dif remembering"                                  
      PLIMANY  ="Is -- limited in ANY (other) WAY?"                           
      LA1AR    ="Any limitation - all persons, all conds"                     
      LAHCC1   ="Vision problem causes limitation"                            
      LHCCLN1  ="Duration of vision prob: # of units"                         
      LHCCLT1  ="Duration of vision prob: Time unit"                          
      LHCCLY1  ="Duration of vision prob (in years)"                          
      LAHCC2   ="Hearing problem causes limitation"                           
      LHCCLN2  ="Duration of hearing prob: # of units"                        
      LHCCLT2  ="Duration of hearing prob: Time unit"                         
      LHCCLY2  ="Duration of hearing prob (in years)"                         
      LAHCC3   ="Speech problem causes limitation"                            
      LHCCLN3  ="Duration of speech prob: # of units"                         
      LHCCLT3  ="Duration of speech prob: Time unit"                          
      LHCCLY3  ="Duration of speech prob (in years)"                          
      LAHCC4   ="Asthma/breathing prob causes limitation"                     
      LHCCLN4  ="Duration asthma/breath prob: # of units"                     
      LHCCLT4  ="Duration asthma/breath prob: Time unit"                      
      LHCCLY4  ="Duration of asthma/breathing prob (yrs)"                     
      LAHCC5   ="Birth defect causes limitation"                              
      LHCCLN5  ="Duration of birth defect: # of units"                        
      LHCCLT5  ="Duration of birth defect: Time unit"                         
      LHCCLY5  ="Duration of birth defect (in years)"                         
      LAHCC6   ="Injury causes limitation"                                    
      LHCCLN6  ="Duration of injury: # of units"                              
      LHCCLT6  ="Duration of injury: Time unit"                               
      LHCCLY6  ="Duration of injury (in years)"                               
      LAHCC7   ="Mental retardation causes limitation"                        
      LHCCLN7  ="Duration of mental retardation: # units"                     
      LHCCLT7  ="Duration mental retardation: Time unit"                      
      LHCCLY7  ="Duration of mental retardation (in yrs)"                     
      LAHCC8   ="Other devel prob causes limitation"                          
      LHCCLN8  ="Duration of otr dev prob: # of units"                        
      LHCCLT8  ="Duration of otr dev prob: Time unit"                         
      LHCCLY8  ="Duration of otr dev prob (in years)"                         
      LAHCC9   ="Other emot/behav prob causes limitation"                     
      LHCCLN9  ="Duration of otr emot/behav prob: # units"                    
      LHCCLT9  ="Duration otr emot/behav prob: Time unit"                     
      LHCCLY9  ="Duration of otr emot/behav prob (in yrs)"                    
      LAHCC10  ="Bone/joint/muscl prob causes limitation"                     
      LHCCLN10 ="Duration bone/joint/muscl prob: # units"                     
      LHCCLT10 ="Dur bone/joint/muscl prob: Time unit"                        
      LHCCLY10 ="Dur of bone/joint/muscl prob (in yrs)"                       
      LAHCC11  ="Epilepsy causes limitation"                                  
      LHCCLN11 ="Duration of epilepsy: # of units"                            
      LHCCLT11 ="Duration of epilepsy: Time unit"                             
      LHCCLY11 ="Duration of epilepsy (in years)"                             
      LAHCC90  ="Other, N.E.C. prob (1) causes limitation"                    
      LHCCLN90 ="Duration otr, N.E.C. prob (1): # of unit"                    
      LHCCLT90 ="Duration otr, N.E.C. prob(1): Time unit"                     
      LHCCLY90 ="Duration other, N.E.C. prob(1) (in yrs)"                     
      LAHCC91  ="Other, N.E.C. prob (2) causes limitation"                    
      LHCCLN91 ="Duration otr, N.E.C. prob(2): # of units"                    
      LHCCLT91 ="Duration otr, N.E.C. prob (2): Time unit"                    
      LHCCLY91 ="Duration other, N.E.C. prob (2) (in yrs)"                    
      LAHCA1   ="Vision problem causes limitation"                            
      LHCALN1  ="Duration of vision prob: # of units"                         
      LHCALT1  ="Duration of vision prob: Time unit"                          
      LHCALY1  ="Duration of vision prob (in years)"                          
      LAHCA2   ="Hearing problem causes limitation"                           
      LHCALN2  ="Duration of hearing prob: # of units"                        
      LHCALT2  ="Duration of hearing prob: Time unit"                         
      LHCALY2  ="Duration of hearing prob (in years)"                         
      LAHCA3   ="Arthritis/rheumatism causes limitation"                      
      LHCALN3  ="Duration of arthritis prob: # of units"                      
      LHCALT3  ="Duration of arthritis prob: Time unit"                       
      LHCALY3  ="Duration of arthritis prob (in years)"                       
      LAHCA4   ="Back/neck prob causes limitation"                            
      LHCALN4  ="Duration of back/neck prob: # of units"                      
      LHCALT4  ="Duration of back/neck prob: Time unit"                       
      LHCALY4  ="Duration of back/neck prob (in years)"                       
      LAHCA5   ="Fract/bone/joint inj causes limitation"                      
      LHCALN5  ="Dur fract/bone/joint inj: # of units"                        
      LHCALT5  ="Duration fract/bone/joint inj: Time unit"                    
      LHCALY5  ="Duration fract/bone/joint inj (in yrs)"                      
      LAHCA6   ="Other injury causes limitation"                              
      LHCALN6  ="Duration of other injury: # of units"                        
      LHCALT6  ="Duration of other injury: Time unit"                         
      LHCALY6  ="Duration of other injury (in years)"                         
      LAHCA7   ="Heart prob causes limitation"                                
      LHCALN7  ="Duration of heart prob: # of units"                          
      LHCALT7  ="Duration of heart prob: Time unit"                           
      LHCALY7  ="Duration of heart prob (in years)"                           
      LAHCA8   ="Stroke causes limitation"                                    
      LHCALN8  ="Duration of stroke: # of units"                              
      LHCALT8  ="Duration of stroke: Time unit"                               
      LHCALY8  ="Duration of stroke (in years)"                               
      LAHCA9   ="Hypertension causes limitation"                              
      LHCALN9  ="Duration of hypertension: # of units"                        
      LHCALT9  ="Duration of hypertension: Time unit"                         
      LHCALY9  ="Duration of hypertension (in years)"                         
      LAHCA10  ="Diabetes causes limitation"                                  
      LHCALN10 ="Duration of diabetes: # of units"                            
      LHCALT10 ="Duration of diabetes: Time unit"                             
      LHCALY10 ="Duration of diabetes (in years)"                             
      LAHCA11  ="Lung/breath prob causes limitation"                          
      LHCALN11 ="Duration of lung prob: # of units"                           
      LHCALT11 ="Duration of lung prob: Time unit"                            
      LHCALY11 ="Duration of lung prob (in years)"                            
      LAHCA12  ="Cancer causes limitation"                                    
      LHCALN12 ="Duration of cancer: # of units"                              
      LHCALT12 ="Duration of cancer: Time unit"                               
      LHCALY12 ="Duration of cancer (in years)"                               
      LAHCA13  ="Birth defect causes limitation"                              
      LHCALN13 ="Duration of birth defect: # of units"                        
      LHCALT13 ="Duration of birth defect: Time unit"                         
      LHCALY13 ="Duration of birth defect (in years)"                         
      LAHCA14  ="Mental retardation causes limitation"                        
      LHCALN14 ="Duration mental retardation: # of units"                     
      LHCALT14 ="Duration mental retardation: Time unit"                      
      LHCALY14 ="Duration of mental retardation (in yrs)"                     
      LAHCA15  ="Other devel prob causes limitation"                          
      LHCALN15 ="Duration of otr dev prob: # of units"                        
      LHCALT15 ="Duration of otr dev prob: Time unit"                         
      LHCALY15 ="Duration of otr dev prob (in years)"                         
      LAHCA16  ="Senility causes limitation"                                  
      LHCALN16 ="Duration of senility: # of units"                            
      LHCALT16 ="Duration of senility: Time unit"                             
      LHCALY16 ="Duration of senility (in years)"                             
      LAHCA17  ="Dep/anx/emot prob causes limitation"                         
      LHCALN17 ="Duration dep/anx/emot prob: # of units"                      
      LHCALT17 ="Duration of dep/anx/emot prob: Time unit"                    
      LHCALY17 ="Duration of dep/anx/emot prob (in years)"                    
      LAHCA18  ="Weight prob causes limitation"                               
      LHCALN18 ="Duration of weight prob: # of units"                         
      LHCALT18 ="Duration of weight prob: Time unit"                          
      LHCALY18 ="Duration of weight prob (in years)"                          
      LAHCA19  ="Missing limb/finger causes limitation"                       
      LHCALN19 ="Duration missing limb/finger: # of units"                    
      LHCALT19 ="Duration missing limb/finger: Time unit"                     
      LHCALY19 ="Duration of missing limb/finger (in yrs)"                    
      LAHCA20  ="Musculoskel prob causes limitation"                          
      LHCALN20 ="Duration of musculoskel prob: # of units"                    
      LHCALT20 ="Duration of musculoskel prob: Time unit"                     
      LHCALY20 ="Duration of musculoskel prob (in years)"                     
      LAHCA21  ="Circulatory prob causes limitation"                          
      LHCALN21 ="Duration of circulatory prob: # of units"                    
      LHCALT21 ="Duration of circulatory prob: Time unit"                     
      LHCALY21 ="Duration of circulatory prob (in years)"                     
      LAHCA22  ="Endocrine prob causes limitation"                            
      LHCALN22 ="Duration of endocrine prob: # of units"                      
      LHCALT22 ="Duration of endocrine prob: Time unit"                       
      LHCALY22 ="Duration of endocrine prob (in years)"                       
      LAHCA23  ="Nervous sys cond causes limitation"                          
      LHCALN23 ="Duration of nervous sys prob: # of units"                    
      LHCALT23 ="Duration of nervous sys prob: Time unit"                     
      LHCALY23 ="Duration of nervous sys prob (in years)"                     
      LAHCA24  ="Digestive prob causes limitation"                            
      LHCALN24 ="Duration of digestive prob: # of units"                      
      LHCALT24 ="Duration of digestive prob: Time unit"                       
      LHCALY24 ="Duration of digestive prob (in years)"                       
      LAHCA25  ="Genitourinary prob causes limitation"                        
      LHCALN25 ="Duration genitourinary prob: # of units"                     
      LHCALT25 ="Duration genitourinary prob: Time unit"                      
      LHCALY25 ="Duration of genitourinary prob (in yrs)"                     
      LAHCA26  ="Skin prob causes limitation"                                 
      LHCALN26 ="Duration of skin prob: # of units"                           
      LHCALT26 ="Duration of skin prob: Time unit"                            
      LHCALY26 ="Duration of skin prob (in years)"                            
      LAHCA27  ="Blood prob causes limitation"                                
      LHCALN27 ="Duration of blood prob: # of units"                          
      LHCALT27 ="Duration of blood prob: Time unit"                           
      LHCALY27 ="Duration of blood prob (in years)"                           
      LAHCA28  ="Benign tumor causes limitation"                              
      LHCALN28 ="Duration of benign tumor: # of units"                        
      LHCALT28 ="Duration of benign tumor: Time unit"                         
      LHCALY28 ="Duration of benign tumor (in years)"                         
      LAHCA29  ="Alcohol or drug prob causes limitation"                      
      LHCALN29 ="Duration alcohol/drug prob: # of units"                      
      LHCALT29 ="Duration of alcohol/drug prob: Time unit"                    
      LHCALY29 ="Duration of alcohol/drug prob (in yrs)"                      
      LAHCA30  ="Other mental prob causes limitation"                         
      LHCALN30 ="Duration of otr mental prob: # of units"                     
      LHCALT30 ="Duration of otr mental prob: Time unit"                      
      LHCALY30 ="Duration of otr mental prob (in years)"                      
      LAHCA31  ="Surgical after-effects causes limitation"                    
      LHCALN31 ="Duration surgical after-effects: # units"                    
      LHCALT31 ="Dur of surgical after-effects: Time unit"                    
      LHCALY31 ="Duration surgical after-effects (in yrs)"                    
      LAHCA32  ='"Old age" causes limitation'                                 
      LHCALN32 ='Duration of "old age": # of units'                           
      LHCALT32 ='Duration of "old age": Time unit'                            
      LHCALY32 ='Duration of "old age" (in years)'                            
      LAHCA33  ="Fatigue prob causes limitation"                              
      LHCALN33 ="Duration of fatigue: # of units"                             
      LHCALT33 ="Duration of fatigue: Time unit"                              
      LHCALY33 ="Duration of fatigue (in years)"                              
      LAHCA34  ="Pregnancy-related prob causes limitation"                    
      LHCALN34 ="Dur pregnancy prob: # of units"                              
      LHCALT34 ="Dur pregnancy prob: Time unit"                               
      LHCALY34 ="Dur pregnancy prob (in years)"                               
      LAHCA90  ="Other, N.E.C. prob (1) causes limitation"                    
      LHCALN90 ="Duration otr, N.E.C. prob (1): # units"                      
      LHCALT90 ="Duration otr, N.E.C. prob (1): Time unit"                    
      LHCALY90 ="Duration other N.E.C. prob (1) (in yrs)"                     
      LAHCA91  ="Other, N.E.C. prob (2) causes limitation"                    
      LHCALN91 ="Duration otr, N.E.C. prob (2): # units"                      
      LHCALT91 ="Duration otr, N.E.C. prob (2): Time unit"                    
      LHCALY91 ="Duration other, N.E.C. prob (2) (in yrs)"                    
      LACNTR1  ="Duration of visual prob recode 2"                            
      LACNTR2  ="Duration of hearing prob recode 2"                           
      LACNTR3  ="Duration of speech prob recode 2"                            
      LACNTR4  ="Duration asthma/breathing prob recode 2"                     
      LACNTR5  ="Duration of birth defect recode 2"                           
      LACNTR6  ="Duration of injury recode 2"                                 
      LACNTR7  ="Duration of mental retardation recode 2"                     
      LACNTR8  ="Duration of otr dev prob recode 2"                           
      LACNTR9  ="Duration of otr emot/behav prob recode 2"                    
      LACNTR10 ="Duration bone/joint/muscl prob recode 2"                     
      LACNTR11 ="Duration of epilepsy recode 2"                               
      LACNTR90 ="Duration of otr, N.E.C. prob(1) recode 2"                    
      LACNTR91 ="Duration of otr, N.E.C. prob(2) recode 2"                    
      LAANTR1  ="Duration of vision prob recode 2"                            
      LAANTR2  ="Duration of hearing prob recode 2"                           
      LAANTR3  ="Duration of arthritis prob recode 2"                         
      LAANTR4  ="Duration of back/neck prob recode 2"                         
      LAANTR5  ="Dur fract/bone/joint inj recode 2"                           
      LAANTR6  ="Duration of other injury recode 2"                           
      LAANTR7  ="Duration of heart prob recode 2"                             
      LAANTR8  ="Duration of stroke recode 2"                                 
      LAANTR9  ="Duration of hypertension recode 2"                           
      LAANTR10 ="Duration of diabetes recode 2"                               
      LAANTR11 ="Duration of lung prob recode 2"                              
      LAANTR12 ="Duration of cancer recode 2"                                 
      LAANTR13 ="Duration of birth defect recode 2"                           
      LAANTR14 ="Duration of mental retardation recode 2"                     
      LAANTR15 ="Duration of otr dev prob recode 2"                           
      LAANTR16 ="Duration of senility recode 2"                               
      LAANTR17 ="Duration of dep/anx/emot prob recode 2"                      
      LAANTR18 ="Duration of weight prob recode 2"                            
      LAANTR19 ="Duration of missing limb/finger recode 2"                    
      LAANTR20 ="Duration of musculoskel prob recode 2"                       
      LAANTR21 ="Duration of circulatory prob recode 2"                       
      LAANTR22 ="Duration of endocrine prob recode 2"                         
      LAANTR23 ="Duration of nervous sys prob recode 2"                       
      LAANTR24 ="Duration of digestive prob recode 2"                         
      LAANTR25 ="Duration of genitourinary prob recode 2"                     
      LAANTR26 ="Duration of skin prob recode 2"                              
      LAANTR27 ="Duration of blood prob recode 2"                             
      LAANTR28 ="Duration of benign tumor recode 2"                           
      LAANTR29 ="Duration of alcohol/drug prob recode 2"                      
      LAANTR30 ="Duration of otr mental prob recode 2"                        
      LAANTR31 ="Duration surgical after-effects recode 2"                    
      LAANTR32 ='Duration of "old age" recode 2'                              
      LAANTR33 ="Duration of fatigue recode 2"                                
      LAANTR34 ="Dur pregnancy prob recode 2"                                 
      LAANTR90 ="Duration of otr, N.E.C. prob(1) recode 2"                    
      LAANTR91 ="Duration of otr, N.E.C. prob(2) recode 2"                    
      LCCNDR1  ="Vision problem condition status"                             
      LCCNDR2  ="Hearing problem condition status"                            
      LCCNDR3  ="Speech problem condition status"                             
      LCCNDR4  ="Asthma/breath prob condition status"                         
      LCCNDR5  ="Birth defect condition status"                               
      LCCNDR6  ="Injury condition status"                                     
      LCCNDR7  ="Mental retardation condition status"                         
      LCCNDR8  ="Otr dev prob condition status"                               
      LCCNDR9  ="Otr emot/behav prob condition status"                        
      LCCNDR10 ="Bone/joint/muscl prob condition status"                      
      LCCNDR11 ="Epilepsy condition status"                                   
      LCCNDR90 ="Otr, N.E.C prob (1) condition status"                        
      LCCNDR91 ="Otr, N.E.C prob (2) condition status"                        
      LACNDR1  ="Vision problem condition status"                             
      LACNDR2  ="Hearing problem condition status"                            
      LACNDR3  ="Arthritis prob condition status"                             
      LACNDR4  ="Back/neck problem condition status"                          
      LACNDR5  ="Fract/bone/joint inj condition status"                       
      LACNDR6  ="Other injury condition status"                               
      LACNDR7  ="Heart problem condition status"                              
      LACNDR8  ="Stroke condition status"                                     
      LACNDR9  ="Hypertension condition status"                               
      LACNDR10 ="Diabetes condition status"                                   
      LACNDR11 ="Lung prob condition status"                                  
      LACNDR12 ="Cancer condition status"                                     
      LACNDR13 ="Birth defect condition status"                               
      LACNDR14 ="Mental retardation condition status"                         
      LACNDR15 ="Otr dev prob condition status"                               
      LACNDR16 ="Senility condition status"                                   
      LACNDR17 ="Dep/anx/emot prob condition status"                          
      LACNDR18 ="Weight prob condition status"                                
      LACNDR19 ="Missing limb/finger condition status"                        
      LACNDR20 ="Musculoskeletal condition status"                            
      LACNDR21 ="Circulatory condition status"                                
      LACNDR22 ="Endocrine prob condition status"                             
      LACNDR23 ="Nervous sys prob condition status"                           
      LACNDR24 ="Digestive prob condition status"                             
      LACNDR25 ="Genitourinary prob condition status"                         
      LACNDR26 ="Skin prob condition status"                                  
      LACNDR27 ="Blood prob condition status"                                 
      LACNDR28 ="Benign tumor condition status"                               
      LACNDR29 ="Alcohol/drug prob condition status"                          
      LACNDR30 ="Otr mental prob condition status"                            
      LACNDR31 ="Surgical after-effects condition status"                     
      LACNDR32 ='"Old age" condition status'                                  
      LACNDR33 ="Fatigue condition status"                                    
      LACNDR34 ="Pregnancy prob condition status"                             
      LACNDR90 ="Otr, N.E.C. prob(1) condition status"                        
      LACNDR91 ="Otr, N.E.C. prob(2) condition status"                        
      LCONDRT  ="Chronic cond rec for person with LA"                         
      LACHRONR ="Lim of activ recode by chron cond status"                    
      PHSTAT   ="Reported health status"                                      
                                                                              
      PDMED12M ="Was med care delayed for - - (cost), 12m"                    
      PNMED12M ="Did - - NOT get medical care (cost), 12m"                    
      PHOSPYR  ="Was - - in a hospital OVERNIGHT, 12m"                        
      HOSPNO   ="Number of times in hosp overnight, 12m"                      
      HPNITE   ="Number of nights in hospital, 12m"                           
      PHCHM2W  ="Did - - rec HOME care by hlth prof, 2 wk"                    
      PHCHMN2W ="Number of HOME visits by hlth prof, 2wk"                     
      PHCPH2WR ="Did - - have a CALL to hlth prof, 2 wk"                      
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
      HIKINDI  ="CHAMPUS/TRICARE/CHAMP-VA"                                    
      HIKINDJ  ="Indian Health Service"                                       
      HIKINDK  ="State-sponsored health plan"                                 
      HIKINDL  ="Other government program"                                    
      HIKINDM  ="Single service plan"                                         
      HIKINDN  ="No Health Insurance"                                         
      MEDICARE ="Medicare coverage recode"                                    
      MCPART   ="Type of Medicare coverage"                                   
      MCCHOICE ="Enrolled in Medicare Plus Choice"                            
      MCHMO    ="Is - - signed up with an HMO?"                               
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
      PLNWRK1  ="Originally through work or union (Plan 1"                    
      PLNPAY11 ="Paid for by self or family (Plan 1)"                         
      PLNPAY21 ="Paid for by employer or union (Plan 1)"                      
      PLNPAY31 ="Paid by someone outside household Plan 1"                    
      PLNPAY41 ="Paid for by Medicare (Plan 1)"                               
      PLNPAY51 ="Paid for by Medicaid (Plan 1)"                               
      PLNPAY61 ="Paid for by CHIP (Plan 1)"                                   
      PLNPAY71 ="Paid for by government program (Plan 1)"                     
      HICOSTR1 ="Out-of-pocket premium cost (Plan 2)"                         
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
      CHIP     ="Children's Health Insurance Prog Recode"                     
      OTHERPUB ="Other State-Sponsored Health Plan Recode"                    
      OTHERGOV ="Other government programs Recode"                            
      NOTCOV   ="Coverage status as used in Health US"                        
      HILAST   ="How long since last had hlth coverage"                       
      HISTOP1  ="Persons in family with health insurance"                     
      HISTOP2  ="Got divorced or seperated/death of spous"                    
      HISTOP3  ="Ineligible due to age/left school"                           
      HISTOP4  ="Empl doesn't offer cov/or not eligible"                      
      HISTOP5  ="Cost is too high"                                            
      HISTOP6  ="Insurance company refused coverage"                          
      HISTOP7  ="Medicaid/Medical plan stopped after preg"                    
      HISTOP8  ="Lost Medicaid/Medical plan because of ne"                    
      HISTOP9  ="Lost Medicaid (other)"                                       
      HISTOP10 ="Other"                                                       
      HISTOP11 ="Never had health insurance"                                  
      HISTOP12 ="Moved from another county/state/country"                     
      HISTOP13 ="Self-employed"                                               
      HISTOP14 ="No need for it/chooses not to have"                          
      HISTOP15 ="Got married"                                                 
      HINOTYR  ="No hlth coverage during past 12 months"                      
      HINOTMYR ="Months w/o coverage in  past 12 months"                      
      HCSPFYR  ="Amount family spent for medical care"                        
                                                                              
      REGIONBR ="Region of Birth Recode 1"                                    
      USBRTH_P ="Was -- born in U.S. (excl U.S. terr*)?"                      
      YRSINUS  ="Years that -- has been in the U.S."                          
      CITIZENP ="Citizenship Status"                                          
      HEADST   ="Now attending Head Start?"                                   
      HEADSTEV ="Ever attended Head Start?"                                   
      EDUC     ="Highest level of school completed"                           
      EDUC_R1  ="Education Recode"                                            
      MILTRYDS ="Ever honorably discharged (active duty)?"                    
      DOINGLW  ="What was -- doing last week?"                                
      WRKHRS   ="Total hours worked LAST week (all jobs)"                     
      WRKFTALL ="Does -- usually work full time?"                             
      WHYNOWRK ="Main reason for not working last week"                       
      WRKLYR   ="Did -- work for pay in last year?"                           
      WRKMYR   ="Months in {last yr} person had 1+ jobs"                      
      MAJR_ACT ="Major activity in last week"                                 
      ERNYR_P  ="{Person's} total earnings in 1999"                           
      HIEMPOF  ="Was health ins offered thru workplace?"                      
                                                                              
      PSAL     ="Rec inc from wage/sal (last CY)"                             
      PSEINC   ="Rec inc from self-employ (last CY)"                          
      PSSRR    ="Rec inc from SS or RR (last CY)"                             
      PSSRRDB  ="Rec'd SS or RR as disability benefit"                        
      PSSRRD   ="Rec'd benefit due to disability"                             
      PPENS    ="Rec inc from otr pensions"                                   
      POPENS   ="Rec inc from any otr pension"                                
      PSSI     ="Rec'd inc from SSI"                                          
      PSSID    ="Rec'd SSI due to disability"                                 
      PTANF    ="Rec'd inc from Welfare/TANF"                                 
      POWBEN   ="Rec'd otr govt assistance"                                   
      PINTRSTR ="Did -- rec inc from savings, investments"                    
      PDIVD    ="Rec'd div from stocks/funds/etc"                             
      PCHLDSP  ="Rec'd inc from child support"                                
      PINCOT   ="Rec'd inc from any other source"                             
      INCGRP   ="Total Combined Family Income (Grouped)"                      
      AB_BL20K ="Fam inc at/above vs. below $20,000"                          
      RAT_CAT  ="Ratio of fam inc to 1999 pov threshold"                      
      HOUSEOWN ="Home Tenure Status"                                          
      FGAH     ="Paying lower rent due to govt prgm"                          
      PSSAPL   ="Ever applied for SSI"                                        
      PSDAPL   ="Ever applied for SSDI"                                       
      TANFMYR  ="Months rec Welfare/TANF (last CY)"                           
      PFSTP    ="Person author to rec fd stmps (last CY)"                     
      FSTPMYR  ="Months rec food stamps (last CY)"                            
      PWIC     ="Rec'd WIC benefits"                                          
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
      NOWAF    PEP051X.    ASTATFLG PEP052X.    CSTATFLG PEP053X.             
      IMMUNFLG PEP054X.    REGION   PEP055X.    MSASIZEP PEP056X.             
                                                                              
      PLAPLYLM PEP027X.    PLAPLYUN PEP027X.    PSPEDEIS PEP027X.             
      PLAADL   PEP027X.    LABATH   PEP027X.    LADRESS  PEP027X.             
      LAEAT    PEP027X.    LABED    PEP027X.    LATOILT  PEP027X.             
      LAHOME   PEP027X.    PLAIADL  PEP027X.    PLAWKNOW PEP027X.             
      PLAWKLIM PEP073X.    PLAWALK  PEP074X.    PLAREMEM PEP074X.             
      PLIMANY  PEP076X.    LA1AR    PEP077X.    LAHCC1   PEP078X.             
      LHCCLN1  PEP079X.    LHCCLT1  PEP080X.    LHCCLY1  PEP081X.             
      LAHCC2   PEP078X.    LHCCLN2  PEP079X.    LHCCLT2  PEP080X.             
      LHCCLY2  PEP081X.    LAHCC3   PEP078X.    LHCCLN3  PEP079X.             
      LHCCLT3  PEP080X.    LHCCLY3  PEP081X.    LAHCC4   PEP078X.             
      LHCCLN4  PEP079X.    LHCCLT4  PEP080X.    LHCCLY4  PEP081X.             
      LAHCC5   PEP078X.    LHCCLN5  PEP095X.    LHCCLT5  PEP080X.             
      LHCCLY5  PEP081X.    LAHCC6   PEP078X.    LHCCLN6  PEP079X.             
      LHCCLT6  PEP080X.    LHCCLY6  PEP081X.    LAHCC7   PEP078X.             
      LHCCLN7  PEP079X.    LHCCLT7  PEP080X.    LHCCLY7  PEP081X.             
      LAHCC8   PEP078X.    LHCCLN8  PEP079X.    LHCCLT8  PEP080X.             
      LHCCLY8  PEP081X.    LAHCC9   PEP078X.    LHCCLN9  PEP079X.             
      LHCCLT9  PEP080X.    LHCCLY9  PEP081X.    LAHCC10  PEP078X.             
      LHCCLN10 PEP079X.    LHCCLT10 PEP080X.    LHCCLY10 PEP081X.             
      LAHCC11  PEP078X.    LHCCLN11 PEP079X.    LHCCLT11 PEP080X.             
      LHCCLY11 PEP081X.    LAHCC90  PEP078X.    LHCCLN90 PEP079X.             
      LHCCLT90 PEP080X.    LHCCLY90 PEP081X.    LAHCC91  PEP078X.             
      LHCCLN91 PEP079X.    LHCCLT91 PEP080X.    LHCCLY91 PEP081X.             
      LAHCA1   PEP078X.    LHCALN1  PEP079X.    LHCALT1  PEP080X.             
      LHCALY1  PEP133X.    LAHCA2   PEP078X.    LHCALN2  PEP079X.             
      LHCALT2  PEP080X.    LHCALY2  PEP133X.    LAHCA3   PEP078X.             
      LHCALN3  PEP079X.    LHCALT3  PEP080X.    LHCALY3  PEP133X.             
      LAHCA4   PEP078X.    LHCALN4  PEP079X.    LHCALT4  PEP080X.             
      LHCALY4  PEP133X.    LAHCA5   PEP078X.    LHCALN5  PEP079X.             
      LHCALT5  PEP080X.    LHCALY5  PEP133X.    LAHCA6   PEP078X.             
      LHCALN6  PEP079X.    LHCALT6  PEP080X.    LHCALY6  PEP133X.             
      LAHCA7   PEP078X.    LHCALN7  PEP079X.    LHCALT7  PEP080X.             
      LHCALY7  PEP133X.    LAHCA8   PEP078X.    LHCALN8  PEP079X.             
      LHCALT8  PEP080X.    LHCALY8  PEP133X.    LAHCA9   PEP078X.             
      LHCALN9  PEP079X.    LHCALT9  PEP080X.    LHCALY9  PEP133X.             
      LAHCA10  PEP078X.    LHCALN10 PEP079X.    LHCALT10 PEP080X.             
      LHCALY10 PEP133X.    LAHCA11  PEP078X.    LHCALN11 PEP079X.             
      LHCALT11 PEP080X.    LHCALY11 PEP133X.    LAHCA12  PEP078X.             
      LHCALN12 PEP079X.    LHCALT12 PEP080X.    LHCALY12 PEP133X.             
      LAHCA13  PEP078X.    LHCALN13 PEP095X.    LHCALT13 PEP080X.             
      LHCALY13 PEP133X.    LAHCA14  PEP078X.    LHCALN14 PEP079X.             
      LHCALT14 PEP080X.    LHCALY14 PEP133X.    LAHCA15  PEP078X.             
      LHCALN15 PEP079X.    LHCALT15 PEP080X.    LHCALY15 PEP133X.             
      LAHCA16  PEP078X.    LHCALN16 PEP079X.    LHCALT16 PEP080X.             
      LHCALY16 PEP133X.    LAHCA17  PEP078X.    LHCALN17 PEP079X.             
      LHCALT17 PEP080X.    LHCALY17 PEP133X.    LAHCA18  PEP078X.             
      LHCALN18 PEP079X.    LHCALT18 PEP080X.    LHCALY18 PEP133X.             
      LAHCA19  PEP078X.    LHCALN19 PEP079X.    LHCALT19 PEP080X.             
      LHCALY19 PEP133X.    LAHCA20  PEP078X.    LHCALN20 PEP079X.             
      LHCALT20 PEP080X.    LHCALY20 PEP133X.    LAHCA21  PEP078X.             
      LHCALN21 PEP079X.    LHCALT21 PEP080X.    LHCALY21 PEP133X.             
      LAHCA22  PEP078X.    LHCALN22 PEP079X.    LHCALT22 PEP080X.             
      LHCALY22 PEP133X.    LAHCA23  PEP078X.    LHCALN23 PEP079X.             
      LHCALT23 PEP080X.    LHCALY23 PEP133X.    LAHCA24  PEP078X.             
      LHCALN24 PEP079X.    LHCALT24 PEP080X.    LHCALY24 PEP133X.             
      LAHCA25  PEP078X.    LHCALN25 PEP079X.    LHCALT25 PEP080X.             
      LHCALY25 PEP133X.    LAHCA26  PEP078X.    LHCALN26 PEP079X.             
      LHCALT26 PEP080X.    LHCALY26 PEP133X.    LAHCA27  PEP078X.             
      LHCALN27 PEP079X.    LHCALT27 PEP080X.    LHCALY27 PEP133X.             
      LAHCA28  PEP078X.    LHCALN28 PEP079X.    LHCALT28 PEP080X.             
      LHCALY28 PEP133X.    LAHCA29  PEP078X.    LHCALN29 PEP079X.             
      LHCALT29 PEP080X.    LHCALY29 PEP133X.    LAHCA30  PEP078X.             
      LHCALN30 PEP079X.    LHCALT30 PEP080X.    LHCALY30 PEP133X.             
      LAHCA31  PEP078X.    LHCALN31 PEP079X.    LHCALT31 PEP080X.             
      LHCALY31 PEP133X.    LAHCA32  PEP078X.    LHCALN32 PEP255X.             
      LHCALT32 PEP256X.    LHCALY32 PEP133X.    LAHCA33  PEP078X.             
      LHCALN33 PEP079X.    LHCALT33 PEP080X.    LHCALY33 PEP133X.             
      LAHCA34  PEP078X.    LHCALN34 PEP079X.    LHCALT34 PEP080X.             
      LHCALY34 PEP133X.    LAHCA90  PEP078X.    LHCALN90 PEP079X.             
      LHCALT90 PEP080X.    LHCALY90 PEP133X.    LAHCA91  PEP078X.             
      LHCALN91 PEP079X.    LHCALT91 PEP080X.    LHCALY91 PEP133X.             
      LACNTR1  PEP274X.    LACNTR2  PEP274X.    LACNTR3  PEP274X.             
      LACNTR4  PEP274X.    LACNTR5  PEP274X.    LACNTR6  PEP274X.             
      LACNTR7  PEP274X.    LACNTR8  PEP274X.    LACNTR9  PEP274X.             
      LACNTR10 PEP274X.    LACNTR11 PEP274X.    LACNTR90 PEP274X.             
      LACNTR91 PEP274X.    LAANTR1  PEP287X.    LAANTR2  PEP287X.             
      LAANTR3  PEP287X.    LAANTR4  PEP287X.    LAANTR5  PEP287X.             
      LAANTR6  PEP287X.    LAANTR7  PEP287X.    LAANTR8  PEP287X.             
      LAANTR9  PEP287X.    LAANTR10 PEP287X.    LAANTR11 PEP287X.             
      LAANTR12 PEP287X.    LAANTR13 PEP287X.    LAANTR14 PEP287X.             
      LAANTR15 PEP287X.    LAANTR16 PEP287X.    LAANTR17 PEP287X.             
      LAANTR18 PEP287X.    LAANTR19 PEP287X.    LAANTR20 PEP287X.             
      LAANTR21 PEP287X.    LAANTR22 PEP287X.    LAANTR23 PEP287X.             
      LAANTR24 PEP287X.    LAANTR25 PEP287X.    LAANTR26 PEP287X.             
      LAANTR27 PEP287X.    LAANTR28 PEP287X.    LAANTR29 PEP287X.             
      LAANTR30 PEP287X.    LAANTR31 PEP287X.    LAANTR32 PEP287X.             
      LAANTR33 PEP287X.    LAANTR34 PEP287X.    LAANTR90 PEP287X.             
      LAANTR91 PEP287X.    LCCNDR1  PEP323X.    LCCNDR2  PEP323X.             
      LCCNDR3  PEP323X.    LCCNDR4  PEP323X.    LCCNDR5  PEP323X.             
      LCCNDR6  PEP323X.    LCCNDR7  PEP323X.    LCCNDR8  PEP323X.             
      LCCNDR9  PEP323X.    LCCNDR10 PEP323X.    LCCNDR11 PEP323X.             
      LCCNDR90 PEP323X.    LCCNDR91 PEP323X.    LACNDR1  PEP323X.             
      LACNDR2  PEP323X.    LACNDR3  PEP323X.    LACNDR4  PEP323X.             
      LACNDR5  PEP323X.    LACNDR6  PEP323X.    LACNDR7  PEP323X.             
      LACNDR8  PEP323X.    LACNDR9  PEP323X.    LACNDR10 PEP323X.             
      LACNDR11 PEP323X.    LACNDR12 PEP323X.    LACNDR13 PEP323X.             
      LACNDR14 PEP323X.    LACNDR15 PEP323X.    LACNDR16 PEP323X.             
      LACNDR17 PEP323X.    LACNDR18 PEP323X.    LACNDR19 PEP323X.             
      LACNDR20 PEP323X.    LACNDR21 PEP323X.    LACNDR22 PEP323X.             
      LACNDR23 PEP323X.    LACNDR24 PEP323X.    LACNDR25 PEP323X.             
      LACNDR26 PEP323X.    LACNDR27 PEP323X.    LACNDR28 PEP323X.             
      LACNDR29 PEP323X.    LACNDR30 PEP323X.    LACNDR31 PEP323X.             
      LACNDR32 PEP323X.    LACNDR33 PEP323X.    LACNDR34 PEP323X.             
      LACNDR90 PEP323X.    LACNDR91 PEP323X.    LCONDRT  PEP372X.             
      LACHRONR PEP373X.    PHSTAT   PEP374X.                                  
                                                                              
      PDMED12M PEP074X.    PNMED12M PEP074X.    PHOSPYR  PEP074X.             
      HOSPNO   PEP378X.    HPNITE   PEP379X.    PHCHM2W  PEP074X.             
      PHCHMN2W PEP381X.    PHCPH2WR PEP074X.    PHCPHN2W PEP383X.             
      PHCDV2W  PEP074X.    PHCDVN2W PEP385X.    P10DVYR  PEP074X.             
                                                                              
      HIKINDA  PEP387X.    HIKINDB  PEP387X.    HIKINDC  PEP387X.             
      HIKINDD  PEP387X.    HIKINDE  PEP387X.    HIKINDF  PEP387X.             
      HIKINDG  PEP387X.    HIKINDH  PEP387X.    HIKINDI  PEP387X.             
      HIKINDJ  PEP387X.    HIKINDK  PEP387X.    HIKINDL  PEP387X.             
      HIKINDM  PEP387X.    HIKINDN  PEP387X.    MEDICARE PEP401X.             
      MCPART   PEP402X.    MCCHOICE PEP027X.    MCHMO    PEP027X.             
      MCREF    PEP027X.    MCPAYPRE PEP027X.    MEDICAID PEP401X.             
      MACHMD   PEP408X.    MAPCMD   PEP027X.    MAREF    PEP027X.             
      SINGLE   PEP411X.    SSTYPEA  PEP412X.    SSTYPEB  PEP412X.             
      SSTYPEC  PEP412X.    SSTYPED  PEP412X.    SSTYPEE  PEP412X.             
      SSTYPEF  PEP412X.    SSTYPEG  PEP412X.    SSTYPEH  PEP412X.             
      SSTYPEI  PEP412X.    SSTYPEJ  PEP412X.    SSTYPEK  PEP412X.             
      SSTYPEL  PEP412X.    PRIVATE  PEP401X.    HITYPE1  PEP425X.             
      WHONAM1  PEP426X.    PLNWRK1  PEP427X.    PLNPAY11 PEP412X.             
      PLNPAY21 PEP412X.    PLNPAY31 PEP412X.    PLNPAY41 PEP412X.             
      PLNPAY51 PEP412X.    PLNPAY61 PEP412X.    PLNPAY71 PEP412X.             
      HICOSTR1 PEP435X.    PLNMGD1  PEP436X.    MGCHMD1  PEP437X.             
      MGPRMD1  PEP027X.    MGPYMD1  PEP027X.    MGPREF1  PEP027X.             
      HITYPE2  PEP425X.    WHONAM2  PEP426X.    PLNWRK2  PEP427X.             
      PLNPAY12 PEP412X.    PLNPAY22 PEP412X.    PLNPAY32 PEP412X.             
      PLNPAY42 PEP412X.    PLNPAY52 PEP412X.    PLNPAY62 PEP412X.             
      PLNPAY72 PEP412X.    HICOSTR2 PEP435X.    PLNMGD2  PEP436X.             
      MGCHMD2  PEP437X.    MGPRMD2  PEP027X.    MGPYMD2  PEP027X.             
      MGPREF2  PEP027X.    HITYPE3  PEP425X.    WHONAM3  PEP426X.             
      PLNWRK3  PEP427X.    PLNPAY13 PEP412X.    PLNPAY23 PEP412X.             
      PLNPAY33 PEP412X.    PLNPAY43 PEP412X.    PLNPAY53 PEP412X.             
      PLNPAY63 PEP412X.    PLNPAY73 PEP412X.    HICOSTR3 PEP435X.             
      PLNMGD3  PEP436X.    MGCHMD3  PEP437X.    MGPRMD3  PEP027X.             
      MGPYMD3  PEP027X.    MGPREF3  PEP027X.    HITYPE4  PEP425X.             
      WHONAM4  PEP426X.    PLNWRK4  PEP427X.    PLNPAY14 PEP412X.             
      PLNPAY24 PEP412X.    PLNPAY34 PEP412X.    PLNPAY44 PEP412X.             
      PLNPAY54 PEP412X.    PLNPAY64 PEP412X.    PLNPAY74 PEP412X.             
      HICOSTR4 PEP435X.    PLNMGD4  PEP436X.    MGCHMD4  PEP437X.             
      MGPRMD4  PEP027X.    MGPYMD4  PEP027X.    MGPREF4  PEP027X.             
      IHS      PEP074X.    MILITARY PEP490X.    CHIP     PEP074X.             
      OTHERPUB PEP074X.    OTHERGOV PEP074X.    NOTCOV   PEP494X.             
      HILAST   PEP495X.    HISTOP1  PEP412X.    HISTOP2  PEP412X.             
      HISTOP3  PEP412X.    HISTOP4  PEP412X.    HISTOP5  PEP412X.             
      HISTOP6  PEP412X.    HISTOP7  PEP412X.    HISTOP8  PEP412X.             
      HISTOP9  PEP412X.    HISTOP10 PEP412X.    HISTOP11 PEP412X.             
      HISTOP12 PEP412X.    HISTOP13 PEP412X.    HISTOP14 PEP412X.             
      HISTOP15 PEP412X.    HINOTYR  PEP027X.    HINOTMYR PEP512X.             
      HCSPFYR  PEP513X.                                                       
                                                                              
      REGIONBR PEP514X.    USBRTH_P PEP013X.    YRSINUS  PEP516X.             
      CITIZENP PEP517X.    HEADST   PEP027X.    HEADSTEV PEP027X.             
      EDUC     PEP520X.    EDUC_R1  PEP521X.    MILTRYDS PEP027X.             
      DOINGLW  PEP523X.    WRKHRS   PEP524X.    WRKFTALL PEP027X.             
      WHYNOWRK PEP526X.    WRKLYR   PEP027X.    WRKMYR   PEP512X.             
      MAJR_ACT PEP529X.    ERNYR_P  PEP530X.    HIEMPOF  PEP027X.             
                                                                              
      PSAL     PEP027X.    PSEINC   PEP027X.    PSSRR    PEP074X.             
      PSSRRDB  PEP027X.    PSSRRD   PEP027X.    PPENS    PEP074X.             
      POPENS   PEP074X.    PSSI     PEP074X.    PSSID    PEP027X.             
      PTANF    PEP074X.    POWBEN   PEP074X.    PINTRSTR PEP074X.             
      PDIVD    PEP074X.    PCHLDSP  PEP074X.    PINCOT   PEP074X.             
      INCGRP   PEP547X.    AB_BL20K PEP548X.    RAT_CAT  PEP549X.             
      HOUSEOWN PEP550X.    FGAH     PEP027X.    PSSAPL   PEP074X.             
      PSDAPL   PEP074X.    TANFMYR  PEP554X.    PFSTP    PEP074X.             
      FSTPMYR  PEP554X.    PWIC     PEP027X.;                                 
                                                                              
PROC CONTENTS DATA=NHIS.PERSON_2000;                                             
   TITLE1 'CONTENTS OF THE 2000 NHIS PERSONSX FILE';                          
                                                                              
PROC FREQ DATA=NHIS.PERSON_2000;                                                 
   TITLE1 'FREQUENCY REPORT FOR 2000 NHIS PERSONSX FILE';                     
   TITLE2 '(WEIGHTED)';                                                       
   TABLES EDUC * SEX/LIST MISSING;                                            
   WEIGHT WTFA ;                                                              
                                                                              
PROC FREQ DATA=NHIS.PERSON_2000;                                                 
   TITLE1 'FREQUENCY REPORT FOR 2000 NHIS PERSONSX FILE';                     
   TITLE2 '(UNWEIGHTED)';                                                     
   TABLES EDUC * SEX/LIST MISSING;                                            
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE                 
        STATEMENT: FORMAT _ALL_;                                              
RUN;                                                                          
