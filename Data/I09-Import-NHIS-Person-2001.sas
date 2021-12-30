                                                                              
                                                                              
 *--------------------------------------------------------------------------* 
 |              SAS DATA DEFINITION STATEMENTS FOR ICPSR 3605              |  
 |                 NATIONAL HEALTH INTERVIEW SURVEY, 2001                  |  
 |                                                                         |  
 | NOTE: THESE STATEMENTS HAVE BEEN PROVIDED BY NCHS.                      |  
 |        Users should modify these data definition statements to suit     |  
 |        their specific needs.                                            |  
 |                                                                         |  
 |        Users may need to modify the LIBNAME statements.                 |  
 *-------------------------------------------------------------------------*. 
                                                                              
*********************************************************************         
 NOVEMBER 7, 2002  4:50 PM                                                    
                                                                              
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS                       
 FILE FROM THE 2001 NHIS PUBLIC USE PERSONSX.DAT ASCII FILE                   
                                                                              
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN                      
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                         
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                           
       DOCUMENTATION                                                          
                                                                              
 THIS IS STORED IN PERSONSX.SAS                                               
*********************************************************************;        
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;                
                                                                              
LIBNAME  NHIS     'C:\DATA\NHIS\';                                             
LIBNAME  LIBRARY  'C:\DATA\NHIS\2001';                                             
                                                                              
FILENAME ASCIIDAT 'C:\DATA\NHIS\2001\da2001person.sas';                                 
                                                                              
* DEFINE VARIABLE VALUES FOR REPORTS;                                         
                                                                              
PROC FORMAT LIBRARY=LIBRARY;                                                  
  VALUE PEP001X                                                               
    20               = "Person"                                               
   ;                                                                          
  VALUE PEP002X                                                               
    2001             = "2001"                                                 
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
    "1917"           = "1917 or before"                                       
    "1918" - "2002"  = "1918-2002"                                            
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
  VALUE PEP057X                                                               
    1                = "5,000,000 or more"                                    
    2                = "2,500,000 - 4,999,999"                                
    3                = "1,000,000 - 2,499,999"                                
    4                = "500,000 - 999,999"                                    
    5                = "250,000 - 499,999"                                    
    6                = "Under 250,000"                                        
    7                = "Non-MSA"                                              
   ;                                                                          
  VALUE PEP075X                                                               
    0                = "Unable to work"                                       
    1                = "Limited in work"                                      
    2                = "Not limited in work"                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP076X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP078X                                                               
    0                = "Limitation previously mentioned"                      
    1                = "Yes, limited in some other way"                       
    2                = "Not limited in any way"                               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP079X                                                               
    1                = "Limited in any way"                                   
    2                = "Not limited in any way"                               
    3                = "Unknown if limited"                                   
   ;                                                                          
  VALUE PEP080X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    6                = "No condition at all"                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP081X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused*"                                             
    98               = "Not ascertained"                                      
    99               = "Don't know*"                                          
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP082X                                                               
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
  VALUE PEP083X                                                               
    00               = "Less than 1 year"                                     
    01 - 17          = "01-17 years"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP097X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP143X                                                               
    00               = "Less than 1 year"                                     
    01 - 84          = "01-84 years"                                          
    85               = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP265X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth **"                                       
    97               = "Refused*"                                             
    98               = "Not ascertained"                                      
    99               = "Don't know*"                                          
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP266X                                                               
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
  VALUE PEP284X                                                               
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
  VALUE PEP299X                                                               
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
  VALUE PEP335X                                                               
    1                = "Chronic"                                              
    2                = "Not chronic"                                          
    9                = "Unknown if chronic"                                   
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP386X                                                               
    1                = "At least one condition causing LA is chronic"         
    2                = "No condition causing LA is chronic"                   
    9                = "Unknown if any condition causing LA is chronic"       
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP387X                                                               
    0                = "Not limited in any way (incl unk if limited)"         
    1                = "Limited; caused by at least one chronic cond"         
    2                = "Limited; not caused by chronic cond"                  
    3                = "Limited; unk if cond causing LA is chronic"           
   ;                                                                          
  VALUE PEP388X                                                               
    1                = "Excellent"                                            
    2                = "Very good"                                            
    3                = "Good"                                                 
    4                = "Fair"                                                 
    5                = "Poor"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP397X                                                               
    001 - 365        = "1-365 times"                                          
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP398X                                                               
    001 - 365        = "1-365 nights"                                         
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP400X                                                               
    01 - 50          = "1-50 visits"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP402X                                                               
    01 - 50          = "1-50 calls"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP404X                                                               
    01 - 50          = "1-50 times"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
                                                                              
  VALUE PEP406X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP420X                                                               
    1                = "Yes, information"                                     
    2                = "Yes, but no detail information"                       
    3                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP421X                                                               
    1                = "Part A - Hospital Only"                               
    2                = "Part B - Medical Only"                                
    3                = "Both Part A and Part B"                               
    4                = "Card Not Available"                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP424X                                                               
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
  VALUE PEP428X                                                               
    1                = "Any doctor"                                           
    2                = "Select from a book/list"                              
    3                = "Doctor is assigned"                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP431X                                                               
    1                = "Yes with detail"                                      
    2                = "Yes with no detail"                                   
    3                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP432X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP445X                                                               
    01 - 92          = "Refer to Health Insurance Plan Appendix"              
    98               = "Not ascertained"                                      
    99               = "Unknown"                                              
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP446X                                                               
    1                = "In own name"                                          
    2                = "Someone else in family"                               
    3                = "Person not in household"                              
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP447X                                                               
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
  VALUE PEP455X                                                               
    00001 - 19999    = "$1-$19999"                                            
    20000            = "$20000 or more"                                       
    99997            = "Refused"                                              
    99998            = "Not ascertained"                                      
    99999            = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP456X                                                               
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
  VALUE PEP457X                                                               
    1                = "Any doctor"                                           
    2                = "Select from group/list"                               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP510X                                                               
    1                = "Yes, Military/VA only"                                
    2                = "Yes, CHAMPUS/TRICARE/CHAMP-VA only"                   
    3                = "Yes Both Military/VA + CHAMPUS/TRICARE/CHAMP-VA"      
    4                = "Yes unknown type"                                     
    5                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP514X                                                               
    1                = "Not covered"                                          
    2                = "Covered"                                              
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP515X                                                               
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
  VALUE PEP532X                                                               
    01 - 12          = "1-12 months"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP533X                                                               
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
                                                                              
  VALUE PEP534X                                                               
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
  VALUE PEP536X                                                               
    1                = "Less than 1 year"                                     
    2                = "1 yr., less than 5 yrs."                              
    3                = "5 yrs., less than 10 yrs."                            
    4                = "10 yrs., less than 15 yrs."                           
    5                = "15 years or more"                                     
    9                = "Unknown"                                              
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP537X                                                               
    1                = "Yes, citizen of the United States"                    
    2                = "No, not a citizen of the United States"               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP540X                                                               
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
  VALUE PEP541X                                                               
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
  VALUE PEP543X                                                               
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
  VALUE PEP544X                                                               
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
  VALUE PEP545X                                                               
    01 - 94          = "1-94 hours"                                           
    95               = "95+ hours"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP549X                                                               
    1                = "Working at a job or business"                         
    2                = "Keeping house"                                        
    3                = "Going to school"                                      
    4                = "Something else"                                       
    5                = "Unknown"                                              
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP550X                                                               
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
  VALUE PEP567X                                                               
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
  VALUE PEP568X                                                               
    1                = "$20,000 or more"                                      
    2                = "Less than $20,000"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP569X                                                               
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
  VALUE PEP570X                                                               
    1                = "Owned or being bought"                                
    2                = "Rented"                                               
    3                = "Other arrangement"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP574X                                                               
    01 - 12          = "01-12 months"                                         
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP577X                                                               
    0                = "No WIC age-eligible family members"                   
    1                = "At least 1 WIC age-eligible family member"            
   ;                                                                          
  VALUE PEP579X                                                               
    0                = "Person not age-eligible"                              
    1                = "Person age-eligible"                                  
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
                                                                              
DATA NHIS.PERSON_2001;                                                           
   * CREATE A SAS DATA SET;                                                   
   INFILE ASCIIDAT PAD LRECL=819;                                             
                                                                              
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
      MSASIZEP   3   WTIA       8   WTFA       8   STRATUM    4               
      PSU        3                                                            
                                                                              
      PLAPLYLM   3   PLAPLYUN   3   PSPEDEIS   3   PSPEDEM    3               
      PLAADL     3   LABATH     3   LADRESS    3   LAEAT      3               
      LABED      3   LATOILT    3   LAHOME     3   PLAIADL    3               
      PLAWKNOW   3   PLAWKLIM   3   PLAWALK    3   PLAREMEM   3               
      PLIMANY    3   LA1AR      3   LAHCC1     3   LHCCLN1    3               
      LHCCLT1    3   LHCCLY1    3   LAHCC2     3   LHCCLN2    3               
      LHCCLT2    3   LHCCLY2    3   LAHCC3     3   LHCCLN3    3               
      LHCCLT3    3   LHCCLY3    3   LAHCC4     3   LHCCLN4    3               
      LHCCLT4    3   LHCCLY4    3   LAHCC5     3   LHCCLN5    3               
      LHCCLT5    3   LHCCLY5    3   LAHCC6     3   LHCCLN6    3               
      LHCCLT6    3   LHCCLY6    3   LAHCC7     3   LHCCLN7    3               
      LHCCLT7    3   LHCCLY7    3   LAHCC8     3   LHCCLN8    3               
      LHCCLT8    3   LHCCLY8    3   LAHCC9     3   LHCCLN9    3               
      LHCCLT9    3   LHCCLY9    3   LAHCC10    3   LHCCLN10   3               
      LHCCLT10   3   LHCCLY10   3   LAHCC11    3   LHCCLN11   3               
      LHCCLT11   3   LHCCLY11   3   LAHCC12    3   LHCCLN12   3               
      LHCCLT12   3   LHCCLY12   3   LAHCC13    3   LHCCLN13   3               
      LHCCLT13   3   LHCCLY13   3   LAHCC90    3   LHCCLN90   3               
      LHCCLT90   3   LHCCLY90   3   LAHCC91    3   LHCCLN91   3               
      LHCCLT91   3   LHCCLY91   3   LAHCA1     3   LHCALN1    3               
      LHCALT1    3   LHCALY1    3   LAHCA2     3   LHCALN2    3               
      LHCALT2    3   LHCALY2    3   LAHCA3     3   LHCALN3    3               
      LHCALT3    3   LHCALY3    3   LAHCA4     3   LHCALN4    3               
      LHCALT4    3   LHCALY4    3   LAHCA5     3   LHCALN5    3               
      LHCALT5    3   LHCALY5    3   LAHCA6     3   LHCALN6    3               
      LHCALT6    3   LHCALY6    3   LAHCA7     3   LHCALN7    3               
      LHCALT7    3   LHCALY7    3   LAHCA8     3   LHCALN8    3               
      LHCALT8    3   LHCALY8    3   LAHCA9     3   LHCALN9    3               
      LHCALT9    3   LHCALY9    3   LAHCA10    3   LHCALN10   3               
      LHCALT10   3   LHCALY10   3   LAHCA11    3   LHCALN11   3               
      LHCALT11   3   LHCALY11   3   LAHCA12    3   LHCALN12   3               
      LHCALT12   3   LHCALY12   3   LAHCA13    3   LHCALN13   3               
      LHCALT13   3   LHCALY13   3   LAHCA14    3   LHCALN14   3               
      LHCALT14   3   LHCALY14   3   LAHCA15    3   LHCALN15   3               
      LHCALT15   3   LHCALY15   3   LAHCA16    3   LHCALN16   3               
      LHCALT16   3   LHCALY16   3   LAHCA17    3   LHCALN17   3               
      LHCALT17   3   LHCALY17   3   LAHCA18    3   LHCALN18   3               
      LHCALT18   3   LHCALY18   3   LAHCA19    3   LHCALN19   3               
      LHCALT19   3   LHCALY19   3   LAHCA20    3   LHCALN20   3               
      LHCALT20   3   LHCALY20   3   LAHCA21    3   LHCALN21   3               
      LHCALT21   3   LHCALY21   3   LAHCA22    3   LHCALN22   3               
      LHCALT22   3   LHCALY22   3   LAHCA23    3   LHCALN23   3               
      LHCALT23   3   LHCALY23   3   LAHCA24    3   LHCALN24   3               
      LHCALT24   3   LHCALY24   3   LAHCA25    3   LHCALN25   3               
      LHCALT25   3   LHCALY25   3   LAHCA26    3   LHCALN26   3               
      LHCALT26   3   LHCALY26   3   LAHCA27    3   LHCALN27   3               
      LHCALT27   3   LHCALY27   3   LAHCA28    3   LHCALN28   3               
      LHCALT28   3   LHCALY28   3   LAHCA29    3   LHCALN29   3               
      LHCALT29   3   LHCALY29   3   LAHCA30    3   LHCALN30   3               
      LHCALT30   3   LHCALY30   3   LAHCA31    3   LHCALN31   3               
      LHCALT31   3   LHCALY31   3   LAHCA32    3   LHCALN32   3               
      LHCALT32   3   LHCALY32   3   LAHCA33    3   LHCALN33   3               
      LHCALT33   3   LHCALY33   3   LAHCA34    3   LHCALN34   3               
      LHCALT34   3   LHCALY34   3   LAHCA90    3   LHCALN90   3               
      LHCALT90   3   LHCALY90   3   LAHCA91    3   LHCALN91   3               
      LHCALT91   3   LHCALY91   3   LACNTR1    3   LACNTR2    3               
      LACNTR3    3   LACNTR4    3   LACNTR5    3   LACNTR6    3               
      LACNTR7    3   LACNTR8    3   LACNTR9    3   LACNTR10   3               
      LACNTR11   3   LACNTR12   3   LACNTR13   3   LACNTR90   3               
      LACNTR91   3   LAANTR1    3   LAANTR2    3   LAANTR3    3               
      LAANTR4    3   LAANTR5    3   LAANTR6    3   LAANTR7    3               
      LAANTR8    3   LAANTR9    3   LAANTR10   3   LAANTR11   3               
      LAANTR12   3   LAANTR13   3   LAANTR14   3   LAANTR15   3               
      LAANTR16   3   LAANTR17   3   LAANTR18   3   LAANTR19   3               
      LAANTR20   3   LAANTR21   3   LAANTR22   3   LAANTR23   3               
      LAANTR24   3   LAANTR25   3   LAANTR26   3   LAANTR27   3               
      LAANTR28   3   LAANTR29   3   LAANTR30   3   LAANTR31   3               
      LAANTR32   3   LAANTR33   3   LAANTR34   3   LAANTR90   3               
      LAANTR91   3   LCCNDR1    3   LCCNDR2    3   LCCNDR3    3               
      LCCNDR4    3   LCCNDR5    3   LCCNDR6    3   LCCNDR7    3               
      LCCNDR8    3   LCCNDR9    3   LCCNDR10   3   LCCNDR11   3               
      LCCNDR12   3   LCCNDR13   3   LCCNDR90   3   LCCNDR91   3               
      LACNDR1    3   LACNDR2    3   LACNDR3    3   LACNDR4    3               
      LACNDR5    3   LACNDR6    3   LACNDR7    3   LACNDR8    3               
      LACNDR9    3   LACNDR10   3   LACNDR11   3   LACNDR12   3               
      LACNDR13   3   LACNDR14   3   LACNDR15   3   LACNDR16   3               
      LACNDR17   3   LACNDR18   3   LACNDR19   3   LACNDR20   3               
      LACNDR21   3   LACNDR22   3   LACNDR23   3   LACNDR24   3               
      LACNDR25   3   LACNDR26   3   LACNDR27   3   LACNDR28   3               
      LACNDR29   3   LACNDR30   3   LACNDR31   3   LACNDR32   3               
      LACNDR33   3   LACNDR34   3   LACNDR90   3   LACNDR91   3               
      LCONDRT    3   LACHRONR   3   PHSTAT     3                              
                                                                              
      PDMED12M   3   PNMED12M   3   HOMEWHO    3   ADAYWHO    3               
      ASTLWHO    3   HOSPWHO    3   NURSWHO    3   PHOSPYR    3               
      HOSPNO     4   HPNITE     4   PHCHM2W    3   PHCHMN2W   3               
      PHCPH2WR   3   PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3               
      P10DVYR    3                                                            
                                                                              
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
                                                                              
      REGIONBR   3   USBRTH_P   3   YRSINUS    3   CITIZENP   3               
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
      MSASIZEP     92 -  92    WTIA         93 -  98 .1                       
      WTFA         99 - 104    STRATUM     105 - 107                          
      PSU         108 - 108                                                   
                                                                              
      PLAPLYLM    109 - 109    PLAPLYUN    110 - 110                          
      PSPEDEIS    111 - 111    PSPEDEM     112 - 112                          
      PLAADL      113 - 113    LABATH      114 - 114                          
      LADRESS     115 - 115    LAEAT       116 - 116                          
      LABED       117 - 117    LATOILT     118 - 118                          
      LAHOME      119 - 119    PLAIADL     120 - 120                          
      PLAWKNOW    121 - 121    PLAWKLIM    122 - 122                          
      PLAWALK     123 - 123    PLAREMEM    124 - 124                          
      PLIMANY     125 - 125    LA1AR       126 - 126                          
      LAHCC1      127 - 127    LHCCLN1     128 - 129                          
      LHCCLT1     130 - 130    LHCCLY1     131 - 132                          
      LAHCC2      133 - 133    LHCCLN2     134 - 135                          
      LHCCLT2     136 - 136    LHCCLY2     137 - 138                          
      LAHCC3      139 - 139    LHCCLN3     140 - 141                          
      LHCCLT3     142 - 142    LHCCLY3     143 - 144                          
      LAHCC4      145 - 145    LHCCLN4     146 - 147                          
      LHCCLT4     148 - 148    LHCCLY4     149 - 150                          
      LAHCC5      151 - 151    LHCCLN5     152 - 153                          
      LHCCLT5     154 - 154    LHCCLY5     155 - 156                          
      LAHCC6      157 - 157    LHCCLN6     158 - 159                          
      LHCCLT6     160 - 160    LHCCLY6     161 - 162                          
      LAHCC7      163 - 163    LHCCLN7     164 - 165                          
      LHCCLT7     166 - 166    LHCCLY7     167 - 168                          
      LAHCC8      169 - 169    LHCCLN8     170 - 171                          
      LHCCLT8     172 - 172    LHCCLY8     173 - 174                          
      LAHCC9      175 - 175    LHCCLN9     176 - 177                          
      LHCCLT9     178 - 178    LHCCLY9     179 - 180                          
      LAHCC10     181 - 181    LHCCLN10    182 - 183                          
      LHCCLT10    184 - 184    LHCCLY10    185 - 186                          
      LAHCC11     187 - 187    LHCCLN11    188 - 189                          
      LHCCLT11    190 - 190    LHCCLY11    191 - 192                          
      LAHCC12     193 - 193    LHCCLN12    194 - 195                          
      LHCCLT12    196 - 196    LHCCLY12    197 - 198                          
      LAHCC13     199 - 199    LHCCLN13    200 - 201                          
      LHCCLT13    202 - 202    LHCCLY13    203 - 204                          
      LAHCC90     205 - 205    LHCCLN90    206 - 207                          
      LHCCLT90    208 - 208    LHCCLY90    209 - 210                          
      LAHCC91     211 - 211    LHCCLN91    212 - 213                          
      LHCCLT91    214 - 214    LHCCLY91    215 - 216                          
      LAHCA1      217 - 217    LHCALN1     218 - 219                          
      LHCALT1     220 - 220    LHCALY1     221 - 222                          
      LAHCA2      223 - 223    LHCALN2     224 - 225                          
      LHCALT2     226 - 226    LHCALY2     227 - 228                          
      LAHCA3      229 - 229    LHCALN3     230 - 231                          
      LHCALT3     232 - 232    LHCALY3     233 - 234                          
      LAHCA4      235 - 235    LHCALN4     236 - 237                          
      LHCALT4     238 - 238    LHCALY4     239 - 240                          
      LAHCA5      241 - 241    LHCALN5     242 - 243                          
      LHCALT5     244 - 244    LHCALY5     245 - 246                          
      LAHCA6      247 - 247    LHCALN6     248 - 249                          
      LHCALT6     250 - 250    LHCALY6     251 - 252                          
      LAHCA7      253 - 253    LHCALN7     254 - 255                          
      LHCALT7     256 - 256    LHCALY7     257 - 258                          
      LAHCA8      259 - 259    LHCALN8     260 - 261                          
      LHCALT8     262 - 262    LHCALY8     263 - 264                          
      LAHCA9      265 - 265    LHCALN9     266 - 267                          
      LHCALT9     268 - 268    LHCALY9     269 - 270                          
      LAHCA10     271 - 271    LHCALN10    272 - 273                          
      LHCALT10    274 - 274    LHCALY10    275 - 276                          
      LAHCA11     277 - 277    LHCALN11    278 - 279                          
      LHCALT11    280 - 280    LHCALY11    281 - 282                          
      LAHCA12     283 - 283    LHCALN12    284 - 285                          
      LHCALT12    286 - 286    LHCALY12    287 - 288                          
      LAHCA13     289 - 289    LHCALN13    290 - 291                          
      LHCALT13    292 - 292    LHCALY13    293 - 294                          
      LAHCA14     295 - 295    LHCALN14    296 - 297                          
      LHCALT14    298 - 298    LHCALY14    299 - 300                          
      LAHCA15     301 - 301    LHCALN15    302 - 303                          
      LHCALT15    304 - 304    LHCALY15    305 - 306                          
      LAHCA16     307 - 307    LHCALN16    308 - 309                          
      LHCALT16    310 - 310    LHCALY16    311 - 312                          
      LAHCA17     313 - 313    LHCALN17    314 - 315                          
      LHCALT17    316 - 316    LHCALY17    317 - 318                          
      LAHCA18     319 - 319    LHCALN18    320 - 321                          
      LHCALT18    322 - 322    LHCALY18    323 - 324                          
      LAHCA19     325 - 325    LHCALN19    326 - 327                          
      LHCALT19    328 - 328    LHCALY19    329 - 330                          
      LAHCA20     331 - 331    LHCALN20    332 - 333                          
      LHCALT20    334 - 334    LHCALY20    335 - 336                          
      LAHCA21     337 - 337    LHCALN21    338 - 339                          
      LHCALT21    340 - 340    LHCALY21    341 - 342                          
      LAHCA22     343 - 343    LHCALN22    344 - 345                          
      LHCALT22    346 - 346    LHCALY22    347 - 348                          
      LAHCA23     349 - 349    LHCALN23    350 - 351                          
      LHCALT23    352 - 352    LHCALY23    353 - 354                          
      LAHCA24     355 - 355    LHCALN24    356 - 357                          
      LHCALT24    358 - 358    LHCALY24    359 - 360                          
      LAHCA25     361 - 361    LHCALN25    362 - 363                          
      LHCALT25    364 - 364    LHCALY25    365 - 366                          
      LAHCA26     367 - 367    LHCALN26    368 - 369                          
      LHCALT26    370 - 370    LHCALY26    371 - 372                          
      LAHCA27     373 - 373    LHCALN27    374 - 375                          
      LHCALT27    376 - 376    LHCALY27    377 - 378                          
      LAHCA28     379 - 379    LHCALN28    380 - 381                          
      LHCALT28    382 - 382    LHCALY28    383 - 384                          
      LAHCA29     385 - 385    LHCALN29    386 - 387                          
      LHCALT29    388 - 388    LHCALY29    389 - 390                          
      LAHCA30     391 - 391    LHCALN30    392 - 393                          
      LHCALT30    394 - 394    LHCALY30    395 - 396                          
      LAHCA31     397 - 397    LHCALN31    398 - 399                          
      LHCALT31    400 - 400    LHCALY31    401 - 402                          
      LAHCA32     403 - 403    LHCALN32    404 - 405                          
      LHCALT32    406 - 406    LHCALY32    407 - 408                          
      LAHCA33     409 - 409    LHCALN33    410 - 411                          
      LHCALT33    412 - 412    LHCALY33    413 - 414                          
      LAHCA34     415 - 415    LHCALN34    416 - 417                          
      LHCALT34    418 - 418    LHCALY34    419 - 420                          
      LAHCA90     421 - 421    LHCALN90    422 - 423                          
      LHCALT90    424 - 424    LHCALY90    425 - 426                          
      LAHCA91     427 - 427    LHCALN91    428 - 429                          
      LHCALT91    430 - 430    LHCALY91    431 - 432                          
      LACNTR1     433 - 434    LACNTR2     435 - 436                          
      LACNTR3     437 - 438    LACNTR4     439 - 440                          
      LACNTR5     441 - 442    LACNTR6     443 - 444                          
      LACNTR7     445 - 446    LACNTR8     447 - 448                          
      LACNTR9     449 - 450    LACNTR10    451 - 452                          
      LACNTR11    453 - 454    LACNTR12    455 - 456                          
      LACNTR13    457 - 458    LACNTR90    459 - 460                          
      LACNTR91    461 - 462    LAANTR1     463 - 464                          
      LAANTR2     465 - 466    LAANTR3     467 - 468                          
      LAANTR4     469 - 470    LAANTR5     471 - 472                          
      LAANTR6     473 - 474    LAANTR7     475 - 476                          
      LAANTR8     477 - 478    LAANTR9     479 - 480                          
      LAANTR10    481 - 482    LAANTR11    483 - 484                          
      LAANTR12    485 - 486    LAANTR13    487 - 488                          
      LAANTR14    489 - 490    LAANTR15    491 - 492                          
      LAANTR16    493 - 494    LAANTR17    495 - 496                          
      LAANTR18    497 - 498    LAANTR19    499 - 500                          
      LAANTR20    501 - 502    LAANTR21    503 - 504                          
      LAANTR22    505 - 506    LAANTR23    507 - 508                          
      LAANTR24    509 - 510    LAANTR25    511 - 512                          
      LAANTR26    513 - 514    LAANTR27    515 - 516                          
      LAANTR28    517 - 518    LAANTR29    519 - 520                          
      LAANTR30    521 - 522    LAANTR31    523 - 524                          
      LAANTR32    525 - 526    LAANTR33    527 - 528                          
      LAANTR34    529 - 530    LAANTR90    531 - 532                          
      LAANTR91    533 - 534    LCCNDR1     535 - 535                          
      LCCNDR2     536 - 536    LCCNDR3     537 - 537                          
      LCCNDR4     538 - 538    LCCNDR5     539 - 539                          
      LCCNDR6     540 - 540    LCCNDR7     541 - 541                          
      LCCNDR8     542 - 542    LCCNDR9     543 - 543                          
      LCCNDR10    544 - 544    LCCNDR11    545 - 545                          
      LCCNDR12    546 - 546    LCCNDR13    547 - 547                          
      LCCNDR90    548 - 548    LCCNDR91    549 - 549                          
      LACNDR1     550 - 550    LACNDR2     551 - 551                          
      LACNDR3     552 - 552    LACNDR4     553 - 553                          
      LACNDR5     554 - 554    LACNDR6     555 - 555                          
      LACNDR7     556 - 556    LACNDR8     557 - 557                          
      LACNDR9     558 - 558    LACNDR10    559 - 559                          
      LACNDR11    560 - 560    LACNDR12    561 - 561                          
      LACNDR13    562 - 562    LACNDR14    563 - 563                          
      LACNDR15    564 - 564    LACNDR16    565 - 565                          
      LACNDR17    566 - 566    LACNDR18    567 - 567                          
      LACNDR19    568 - 568    LACNDR20    569 - 569                          
      LACNDR21    570 - 570    LACNDR22    571 - 571                          
      LACNDR23    572 - 572    LACNDR24    573 - 573                          
      LACNDR25    574 - 574    LACNDR26    575 - 575                          
      LACNDR27    576 - 576    LACNDR28    577 - 577                          
      LACNDR29    578 - 578    LACNDR30    579 - 579                          
      LACNDR31    580 - 580    LACNDR32    581 - 581                          
      LACNDR33    582 - 582    LACNDR34    583 - 583                          
      LACNDR90    584 - 584    LACNDR91    585 - 585                          
      LCONDRT     586 - 586    LACHRONR    587 - 587                          
      PHSTAT      588 - 588                                                   
                                                                              
      PDMED12M    589 - 589    PNMED12M    590 - 590                          
      HOMEWHO     591 - 591    ADAYWHO     592 - 592                          
      ASTLWHO     593 - 593    HOSPWHO     594 - 594                          
      NURSWHO     595 - 595    PHOSPYR     596 - 596                          
      HOSPNO      597 - 599    HPNITE      600 - 602                          
      PHCHM2W     603 - 603    PHCHMN2W    604 - 605                          
      PHCPH2WR    606 - 606    PHCPHN2W    607 - 608                          
      PHCDV2W     609 - 609    PHCDVN2W    610 - 611                          
      P10DVYR     612 - 612                                                   
                                                                              
      HIKINDA     613 - 613    HIKINDB     614 - 614                          
      HIKINDC     615 - 615    HIKINDD     616 - 616                          
      HIKINDE     617 - 617    HIKINDF     618 - 618                          
      HIKINDG     619 - 619    HIKINDH     620 - 620                          
      HIKINDI     621 - 621    HIKINDJ     622 - 622                          
      HIKINDK     623 - 623    HIKINDL     624 - 624                          
      HIKINDM     625 - 625    HIKINDN     626 - 626                          
      MEDICARE    627 - 627    MCPART      628 - 628                          
      MCCHOICE    629 - 629    MCHMO       630 - 630                          
      MCNAME      631 - 632    MCREF       633 - 633                          
      MCPAYPRE    634 - 634    MEDICAID    635 - 635                          
      MACHMD      636 - 636    MAPCMD      637 - 637                          
      MAREF       638 - 638    SINGLE      639 - 639                          
      SSTYPEA     640 - 640    SSTYPEB     641 - 641                          
      SSTYPEC     642 - 642    SSTYPED     643 - 643                          
      SSTYPEE     644 - 644    SSTYPEF     645 - 645                          
      SSTYPEG     646 - 646    SSTYPEH     647 - 647                          
      SSTYPEI     648 - 648    SSTYPEJ     649 - 649                          
      SSTYPEK     650 - 650    SSTYPEL     651 - 651                          
      PRIVATE     652 - 652    HITYPE1     653 - 654                          
      WHONAM1     655 - 655    PLNWRK1     656 - 656                          
      PLNPAY11    657 - 657    PLNPAY21    658 - 658                          
      PLNPAY31    659 - 659    PLNPAY41    660 - 660                          
      PLNPAY51    661 - 661    PLNPAY61    662 - 662                          
      PLNPAY71    663 - 663    HICOSTR1    664 - 668                          
      PLNMGD1     669 - 669    MGCHMD1     670 - 670                          
      MGPRMD1     671 - 671    MGPYMD1     672 - 672                          
      MGPREF1     673 - 673    HITYPE2     674 - 675                          
      WHONAM2     676 - 676    PLNWRK2     677 - 677                          
      PLNPAY12    678 - 678    PLNPAY22    679 - 679                          
      PLNPAY32    680 - 680    PLNPAY42    681 - 681                          
      PLNPAY52    682 - 682    PLNPAY62    683 - 683                          
      PLNPAY72    684 - 684    HICOSTR2    685 - 689                          
      PLNMGD2     690 - 690    MGCHMD2     691 - 691                          
      MGPRMD2     692 - 692    MGPYMD2     693 - 693                          
      MGPREF2     694 - 694    HITYPE3     695 - 696                          
      WHONAM3     697 - 697    PLNWRK3     698 - 698                          
      PLNPAY13    699 - 699    PLNPAY23    700 - 700                          
      PLNPAY33    701 - 701    PLNPAY43    702 - 702                          
      PLNPAY53    703 - 703    PLNPAY63    704 - 704                          
      PLNPAY73    705 - 705    HICOSTR3    706 - 710                          
      PLNMGD3     711 - 711    MGCHMD3     712 - 712                          
      MGPRMD3     713 - 713    MGPYMD3     714 - 714                          
      MGPREF3     715 - 715    HITYPE4     716 - 717                          
      WHONAM4     718 - 718    PLNWRK4     719 - 719                          
      PLNPAY14    720 - 720    PLNPAY24    721 - 721                          
      PLNPAY34    722 - 722    PLNPAY44    723 - 723                          
      PLNPAY54    724 - 724    PLNPAY64    725 - 725                          
      PLNPAY74    726 - 726    HICOSTR4    727 - 731                          
      PLNMGD4     732 - 732    MGCHMD4     733 - 733                          
      MGPRMD4     734 - 734    MGPYMD4     735 - 735                          
      MGPREF4     736 - 736    IHS         737 - 737                          
      MILITARY    738 - 738    CHIP        739 - 739                          
      OTHERPUB    740 - 740    OTHERGOV    741 - 741                          
      NOTCOV      742 - 742    HILAST      743 - 743                          
      HISTOP1     744 - 744    HISTOP2     745 - 745                          
      HISTOP3     746 - 746    HISTOP4     747 - 747                          
      HISTOP5     748 - 748    HISTOP6     749 - 749                          
      HISTOP7     750 - 750    HISTOP8     751 - 751                          
      HISTOP9     752 - 752    HISTOP10    753 - 753                          
      HISTOP11    754 - 754    HISTOP12    755 - 755                          
      HISTOP13    756 - 756    HISTOP14    757 - 757                          
      HISTOP15    758 - 758    HINOTYR     759 - 759                          
      HINOTMYR    760 - 761    HCSPFYR     762 - 762                          
                                                                              
      REGIONBR    763 - 764    USBRTH_P    765 - 765                          
      YRSINUS     766 - 766    CITIZENP    767 - 767                          
      HEADST      768 - 768    HEADSTV1    769 - 769                          
      EDUC        770 - 771    EDUC_R1     772 - 773                          
      MILTRYDS    774 - 774    DOINGLW1    775 - 775                          
      WHYNOWK1    776 - 777    WRKHRS      778 - 779                          
      WRKFTALL    780 - 780    WRKLYR1     781 - 781                          
      WRKMYR      782 - 783    MAJR_ACT    784 - 784                          
      ERNYR_P     785 - 786    HIEMPOF     787 - 787                          
                                                                              
      PSAL        788 - 788    PSEINC      789 - 789                          
      PSSRR       790 - 790    PSSRRDB     791 - 791                          
      PSSRRD      792 - 792    PPENS       793 - 793                          
      POPENS      794 - 794    PSSI        795 - 795                          
      PSSID       796 - 796    PTANF       797 - 797                          
      POWBEN      798 - 798    PINTRSTR    799 - 799                          
      PDIVD       800 - 800    PCHLDSP     801 - 801                          
      PINCOT      802 - 802    INCGRP      803 - 804                          
      AB_BL20K    805 - 805    RAT_CAT     806 - 807                          
      HOUSEOWN    808 - 808    FGAH        809 - 809                          
      PSSAPL      810 - 810    PSDAPL      811 - 811                          
      TANFMYR     812 - 813    PFSTP       814 - 814                          
      FSTPMYR     815 - 816    ELIGPWIC    817 - 817                          
      PWIC        818 - 818    WIC_FLAG    819 - 819;                         
                                                                              
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
      MSASIZEP ="Geographic Distribution - MSA size"                          
      WTIA     ="Weight - Interim Annual"                                     
      WTFA     ="Weight - Final Annual"                                       
      STRATUM  ="Stratum for variance estimation"                             
      PSU      ="PSU for variance estimation"                                 
                                                                              
      PLAPLYLM ="Limited in kind/amount play"                                 
      PLAPLYUN ="Is -- able to play AT ALL"                                   
      PSPEDEIS ="Does -- receive Spec Ed or EIS?"                             
      PSPEDEM  ="Receive services due to emotional or beh"                    
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
      LAHCC12  ="Learning disability causes limitation"                       
      LHCCLN12 ="Duration of learning disab: # of units"                      
      LHCCLT12 ="Duration of learning disab: Time unit"                       
      LHCCLY12 ="Duration of learning disab (in years)"                       
      LAHCC13  ="ADD/ADHD causes limitation"                                  
      LHCCLN13 ="Duration of ADD/ADHD: # of units"                            
      LHCCLT13 ="Duration of ADD/ADHD: Time unit"                             
      LHCCLY13 ="Duration of ADD/ADHD (in years)"                             
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
      LACNTR12 ="Duration of learning disab recode 2"                         
      LACNTR13 ="Duration of ADD/ADHD recode 2"                               
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
      LCCNDR12 ="Learning disability condition status"                        
      LCCNDR13 ="ADD/ADHD condition status"                                   
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
      PNMED12M ="Did--need+NOT get med care (cost), 12m"                      
      HOMEWHO  ="Did--need & NOT get home hlth care, 12m"                     
      ADAYWHO  ="Did--need & NOT get adult day care, 12m"                     
      ASTLWHO  ="Did--need & NOT get assisted living 12m"                     
      HOSPWHO  ="Did--need & NOT get hospice care, 12m"                       
      NURSWHO  ="Did--need & NOT get nursing home care 12"                    
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
      HISTOP2  ="Got divorced or separated/death of spous"                    
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
                                                                              
      REGIONBR ="Region of Birth Recode"                                      
      USBRTH_P ="Was -- born in U.S. (excl U.S. terr*)?"                      
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
      ERNYR_P  ="{Person's} total earnings in 2000"                           
      HIEMPOF  ="Was health ins offered thru workplace?"                      
                                                                              
      PSAL     ="Rec inc from wage/sal (last CY)"                             
      PSEINC   ="Rec inc from self-employ (last CY)"                          
      PSSRR    ="Rec inc from SS or RR (last CY)"                             
      PSSRRDB  ="Rec'd SS or RR a disability benefit"                         
      PSSRRD   ="Rec'd benefit due to disability"                             
      PPENS    ="Rec inc from otr pensions (disab)"                           
      POPENS   ="Rec inc from any otr pension"                                
      PSSI     ="Rec'd inc from SSI"                                          
      PSSID    ="Rec'd SSI due to disability"                                 
      PTANF    ="Rec'd inc from Welfare/TANF"                                 
      POWBEN   ="Rec'd otr govt assistance"                                   
      PINTRSTR ="Rec int from sav/bank accounts"                              
      PDIVD    ="Rec div from stocks/funds/etc."                              
      PCHLDSP  ="Rec'd inc from child support"                                
      PINCOT   ="Rec'd inc from any other source"                             
      INCGRP   ="Total Combined Family Income (Grouped)"                      
      AB_BL20K ="Fam inc at/above vs. below $20,000"                          
      RAT_CAT  ="Ratio of fam inc to poverty threshold"                       
      HOUSEOWN ="Home Tenure Status"                                          
      FGAH     ="Paying lower rent due to govt prgm"                          
      PSSAPL   ="Ever applied for SSI"                                        
      PSDAPL   ="Ever applied for SSDI"                                       
      TANFMYR  ="Months rec Welfare/TANF (last CY)"                           
      PFSTP    ="Person author to rec fd stmps (last CY)"                     
      FSTPMYR  ="Months rec food stamps (last CY)"                            
      ELIGPWIC ="Anyone age-eligible for the WIC program?"                    
      PWIC     ="Rec'd WIC benefits"                                          
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
      IMMUNFLG PEP055X.    REGION   PEP056X.    MSASIZEP PEP057X.             
                                                                              
      PLAPLYLM PEP027X.    PLAPLYUN PEP027X.    PSPEDEIS PEP027X.             
      PSPEDEM  PEP027X.    PLAADL   PEP027X.    LABATH   PEP027X.             
      LADRESS  PEP027X.    LAEAT    PEP027X.    LABED    PEP027X.             
      LATOILT  PEP027X.    LAHOME   PEP027X.    PLAIADL  PEP027X.             
      PLAWKNOW PEP027X.    PLAWKLIM PEP075X.    PLAWALK  PEP076X.             
      PLAREMEM PEP076X.    PLIMANY  PEP078X.    LA1AR    PEP079X.             
      LAHCC1   PEP080X.    LHCCLN1  PEP081X.    LHCCLT1  PEP082X.             
      LHCCLY1  PEP083X.    LAHCC2   PEP080X.    LHCCLN2  PEP081X.             
      LHCCLT2  PEP082X.    LHCCLY2  PEP083X.    LAHCC3   PEP080X.             
      LHCCLN3  PEP081X.    LHCCLT3  PEP082X.    LHCCLY3  PEP083X.             
      LAHCC4   PEP080X.    LHCCLN4  PEP081X.    LHCCLT4  PEP082X.             
      LHCCLY4  PEP083X.    LAHCC5   PEP080X.    LHCCLN5  PEP097X.             
      LHCCLT5  PEP082X.    LHCCLY5  PEP083X.    LAHCC6   PEP080X.             
      LHCCLN6  PEP081X.    LHCCLT6  PEP082X.    LHCCLY6  PEP083X.             
      LAHCC7   PEP080X.    LHCCLN7  PEP081X.    LHCCLT7  PEP082X.             
      LHCCLY7  PEP083X.    LAHCC8   PEP080X.    LHCCLN8  PEP081X.             
      LHCCLT8  PEP082X.    LHCCLY8  PEP083X.    LAHCC9   PEP080X.             
      LHCCLN9  PEP081X.    LHCCLT9  PEP082X.    LHCCLY9  PEP083X.             
      LAHCC10  PEP080X.    LHCCLN10 PEP081X.    LHCCLT10 PEP082X.             
      LHCCLY10 PEP083X.    LAHCC11  PEP080X.    LHCCLN11 PEP081X.             
      LHCCLT11 PEP082X.    LHCCLY11 PEP083X.    LAHCC12  PEP080X.             
      LHCCLN12 PEP081X.    LHCCLT12 PEP082X.    LHCCLY12 PEP083X.             
      LAHCC13  PEP080X.    LHCCLN13 PEP081X.    LHCCLT13 PEP082X.             
      LHCCLY13 PEP083X.    LAHCC90  PEP080X.    LHCCLN90 PEP081X.             
      LHCCLT90 PEP082X.    LHCCLY90 PEP083X.    LAHCC91  PEP080X.             
      LHCCLN91 PEP081X.    LHCCLT91 PEP082X.    LHCCLY91 PEP083X.             
      LAHCA1   PEP080X.    LHCALN1  PEP081X.    LHCALT1  PEP082X.             
      LHCALY1  PEP143X.    LAHCA2   PEP080X.    LHCALN2  PEP081X.             
      LHCALT2  PEP082X.    LHCALY2  PEP143X.    LAHCA3   PEP080X.             
      LHCALN3  PEP081X.    LHCALT3  PEP082X.    LHCALY3  PEP143X.             
      LAHCA4   PEP080X.    LHCALN4  PEP081X.    LHCALT4  PEP082X.             
      LHCALY4  PEP143X.    LAHCA5   PEP080X.    LHCALN5  PEP081X.             
      LHCALT5  PEP082X.    LHCALY5  PEP143X.    LAHCA6   PEP080X.             
      LHCALN6  PEP081X.    LHCALT6  PEP082X.    LHCALY6  PEP143X.             
      LAHCA7   PEP080X.    LHCALN7  PEP081X.    LHCALT7  PEP082X.             
      LHCALY7  PEP143X.    LAHCA8   PEP080X.    LHCALN8  PEP081X.             
      LHCALT8  PEP082X.    LHCALY8  PEP143X.    LAHCA9   PEP080X.             
      LHCALN9  PEP081X.    LHCALT9  PEP082X.    LHCALY9  PEP143X.             
      LAHCA10  PEP080X.    LHCALN10 PEP081X.    LHCALT10 PEP082X.             
      LHCALY10 PEP143X.    LAHCA11  PEP080X.    LHCALN11 PEP081X.             
      LHCALT11 PEP082X.    LHCALY11 PEP143X.    LAHCA12  PEP080X.             
      LHCALN12 PEP081X.    LHCALT12 PEP082X.    LHCALY12 PEP143X.             
      LAHCA13  PEP080X.    LHCALN13 PEP097X.    LHCALT13 PEP082X.             
      LHCALY13 PEP143X.    LAHCA14  PEP080X.    LHCALN14 PEP081X.             
      LHCALT14 PEP082X.    LHCALY14 PEP143X.    LAHCA15  PEP080X.             
      LHCALN15 PEP081X.    LHCALT15 PEP082X.    LHCALY15 PEP143X.             
      LAHCA16  PEP080X.    LHCALN16 PEP081X.    LHCALT16 PEP082X.             
      LHCALY16 PEP143X.    LAHCA17  PEP080X.    LHCALN17 PEP081X.             
      LHCALT17 PEP082X.    LHCALY17 PEP143X.    LAHCA18  PEP080X.             
      LHCALN18 PEP081X.    LHCALT18 PEP082X.    LHCALY18 PEP143X.             
      LAHCA19  PEP080X.    LHCALN19 PEP081X.    LHCALT19 PEP082X.             
      LHCALY19 PEP143X.    LAHCA20  PEP080X.    LHCALN20 PEP081X.             
      LHCALT20 PEP082X.    LHCALY20 PEP143X.    LAHCA21  PEP080X.             
      LHCALN21 PEP081X.    LHCALT21 PEP082X.    LHCALY21 PEP143X.             
      LAHCA22  PEP080X.    LHCALN22 PEP081X.    LHCALT22 PEP082X.             
      LHCALY22 PEP143X.    LAHCA23  PEP080X.    LHCALN23 PEP081X.             
      LHCALT23 PEP082X.    LHCALY23 PEP143X.    LAHCA24  PEP080X.             
      LHCALN24 PEP081X.    LHCALT24 PEP082X.    LHCALY24 PEP143X.             
      LAHCA25  PEP080X.    LHCALN25 PEP081X.    LHCALT25 PEP082X.             
      LHCALY25 PEP143X.    LAHCA26  PEP080X.    LHCALN26 PEP081X.             
      LHCALT26 PEP082X.    LHCALY26 PEP143X.    LAHCA27  PEP080X.             
      LHCALN27 PEP081X.    LHCALT27 PEP082X.    LHCALY27 PEP143X.             
      LAHCA28  PEP080X.    LHCALN28 PEP081X.    LHCALT28 PEP082X.             
      LHCALY28 PEP143X.    LAHCA29  PEP080X.    LHCALN29 PEP081X.             
      LHCALT29 PEP082X.    LHCALY29 PEP143X.    LAHCA30  PEP080X.             
      LHCALN30 PEP081X.    LHCALT30 PEP082X.    LHCALY30 PEP143X.             
      LAHCA31  PEP080X.    LHCALN31 PEP081X.    LHCALT31 PEP082X.             
      LHCALY31 PEP143X.    LAHCA32  PEP080X.    LHCALN32 PEP265X.             
      LHCALT32 PEP266X.    LHCALY32 PEP143X.    LAHCA33  PEP080X.             
      LHCALN33 PEP081X.    LHCALT33 PEP082X.    LHCALY33 PEP143X.             
      LAHCA34  PEP080X.    LHCALN34 PEP081X.    LHCALT34 PEP082X.             
      LHCALY34 PEP143X.    LAHCA90  PEP080X.    LHCALN90 PEP081X.             
      LHCALT90 PEP082X.    LHCALY90 PEP143X.    LAHCA91  PEP080X.             
      LHCALN91 PEP081X.    LHCALT91 PEP082X.    LHCALY91 PEP143X.             
      LACNTR1  PEP284X.    LACNTR2  PEP284X.    LACNTR3  PEP284X.             
      LACNTR4  PEP284X.    LACNTR5  PEP284X.    LACNTR6  PEP284X.             
      LACNTR7  PEP284X.    LACNTR8  PEP284X.    LACNTR9  PEP284X.             
      LACNTR10 PEP284X.    LACNTR11 PEP284X.    LACNTR12 PEP284X.             
      LACNTR13 PEP284X.    LACNTR90 PEP284X.    LACNTR91 PEP284X.             
      LAANTR1  PEP299X.    LAANTR2  PEP299X.    LAANTR3  PEP299X.             
      LAANTR4  PEP299X.    LAANTR5  PEP299X.    LAANTR6  PEP299X.             
      LAANTR7  PEP299X.    LAANTR8  PEP299X.    LAANTR9  PEP299X.             
      LAANTR10 PEP299X.    LAANTR11 PEP299X.    LAANTR12 PEP299X.             
      LAANTR13 PEP299X.    LAANTR14 PEP299X.    LAANTR15 PEP299X.             
      LAANTR16 PEP299X.    LAANTR17 PEP299X.    LAANTR18 PEP299X.             
      LAANTR19 PEP299X.    LAANTR20 PEP299X.    LAANTR21 PEP299X.             
      LAANTR22 PEP299X.    LAANTR23 PEP299X.    LAANTR24 PEP299X.             
      LAANTR25 PEP299X.    LAANTR26 PEP299X.    LAANTR27 PEP299X.             
      LAANTR28 PEP299X.    LAANTR29 PEP299X.    LAANTR30 PEP299X.             
      LAANTR31 PEP299X.    LAANTR32 PEP299X.    LAANTR33 PEP299X.             
      LAANTR34 PEP299X.    LAANTR90 PEP299X.    LAANTR91 PEP299X.             
      LCCNDR1  PEP335X.    LCCNDR2  PEP335X.    LCCNDR3  PEP335X.             
      LCCNDR4  PEP335X.    LCCNDR5  PEP335X.    LCCNDR6  PEP335X.             
      LCCNDR7  PEP335X.    LCCNDR8  PEP335X.    LCCNDR9  PEP335X.             
      LCCNDR10 PEP335X.    LCCNDR11 PEP335X.    LCCNDR12 PEP335X.             
      LCCNDR13 PEP335X.    LCCNDR90 PEP335X.    LCCNDR91 PEP335X.             
      LACNDR1  PEP335X.    LACNDR2  PEP335X.    LACNDR3  PEP335X.             
      LACNDR4  PEP335X.    LACNDR5  PEP335X.    LACNDR6  PEP335X.             
      LACNDR7  PEP335X.    LACNDR8  PEP335X.    LACNDR9  PEP335X.             
      LACNDR10 PEP335X.    LACNDR11 PEP335X.    LACNDR12 PEP335X.             
      LACNDR13 PEP335X.    LACNDR14 PEP335X.    LACNDR15 PEP335X.             
      LACNDR16 PEP335X.    LACNDR17 PEP335X.    LACNDR18 PEP335X.             
      LACNDR19 PEP335X.    LACNDR20 PEP335X.    LACNDR21 PEP335X.             
      LACNDR22 PEP335X.    LACNDR23 PEP335X.    LACNDR24 PEP335X.             
      LACNDR25 PEP335X.    LACNDR26 PEP335X.    LACNDR27 PEP335X.             
      LACNDR28 PEP335X.    LACNDR29 PEP335X.    LACNDR30 PEP335X.             
      LACNDR31 PEP335X.    LACNDR32 PEP335X.    LACNDR33 PEP335X.             
      LACNDR34 PEP335X.    LACNDR90 PEP335X.    LACNDR91 PEP335X.             
      LCONDRT  PEP386X.    LACHRONR PEP387X.    PHSTAT   PEP388X.             
                                                                              
      PDMED12M PEP076X.    PNMED12M PEP076X.    HOMEWHO  PEP027X.             
      ADAYWHO  PEP027X.    ASTLWHO  PEP027X.    HOSPWHO  PEP027X.             
      NURSWHO  PEP027X.    PHOSPYR  PEP076X.    HOSPNO   PEP397X.             
      HPNITE   PEP398X.    PHCHM2W  PEP076X.    PHCHMN2W PEP400X.             
      PHCPH2WR PEP076X.    PHCPHN2W PEP402X.    PHCDV2W  PEP076X.             
      PHCDVN2W PEP404X.    P10DVYR  PEP076X.                                  
                                                                              
      HIKINDA  PEP406X.    HIKINDB  PEP406X.    HIKINDC  PEP406X.             
      HIKINDD  PEP406X.    HIKINDE  PEP406X.    HIKINDF  PEP406X.             
      HIKINDG  PEP406X.    HIKINDH  PEP406X.    HIKINDI  PEP406X.             
      HIKINDJ  PEP406X.    HIKINDK  PEP406X.    HIKINDL  PEP406X.             
      HIKINDM  PEP406X.    HIKINDN  PEP406X.    MEDICARE PEP420X.             
      MCPART   PEP421X.    MCCHOICE PEP027X.    MCHMO    PEP027X.             
      MCNAME   PEP424X.    MCREF    PEP027X.    MCPAYPRE PEP027X.             
      MEDICAID PEP420X.    MACHMD   PEP428X.    MAPCMD   PEP027X.             
      MAREF    PEP027X.    SINGLE   PEP431X.    SSTYPEA  PEP432X.             
      SSTYPEB  PEP432X.    SSTYPEC  PEP432X.    SSTYPED  PEP432X.             
      SSTYPEE  PEP432X.    SSTYPEF  PEP432X.    SSTYPEG  PEP432X.             
      SSTYPEH  PEP432X.    SSTYPEI  PEP432X.    SSTYPEJ  PEP432X.             
      SSTYPEK  PEP432X.    SSTYPEL  PEP432X.    PRIVATE  PEP420X.             
      HITYPE1  PEP445X.    WHONAM1  PEP446X.    PLNWRK1  PEP447X.             
      PLNPAY11 PEP432X.    PLNPAY21 PEP432X.    PLNPAY31 PEP432X.             
      PLNPAY41 PEP432X.    PLNPAY51 PEP432X.    PLNPAY61 PEP432X.             
      PLNPAY71 PEP432X.    HICOSTR1 PEP455X.    PLNMGD1  PEP456X.             
      MGCHMD1  PEP457X.    MGPRMD1  PEP027X.    MGPYMD1  PEP027X.             
      MGPREF1  PEP027X.    HITYPE2  PEP445X.    WHONAM2  PEP446X.             
      PLNWRK2  PEP447X.    PLNPAY12 PEP432X.    PLNPAY22 PEP432X.             
      PLNPAY32 PEP432X.    PLNPAY42 PEP432X.    PLNPAY52 PEP432X.             
      PLNPAY62 PEP432X.    PLNPAY72 PEP432X.    HICOSTR2 PEP455X.             
      PLNMGD2  PEP456X.    MGCHMD2  PEP457X.    MGPRMD2  PEP027X.             
      MGPYMD2  PEP027X.    MGPREF2  PEP027X.    HITYPE3  PEP445X.             
      WHONAM3  PEP446X.    PLNWRK3  PEP447X.    PLNPAY13 PEP432X.             
      PLNPAY23 PEP432X.    PLNPAY33 PEP432X.    PLNPAY43 PEP432X.             
      PLNPAY53 PEP432X.    PLNPAY63 PEP432X.    PLNPAY73 PEP432X.             
      HICOSTR3 PEP455X.    PLNMGD3  PEP456X.    MGCHMD3  PEP457X.             
      MGPRMD3  PEP027X.    MGPYMD3  PEP027X.    MGPREF3  PEP027X.             
      HITYPE4  PEP445X.    WHONAM4  PEP446X.    PLNWRK4  PEP447X.             
      PLNPAY14 PEP432X.    PLNPAY24 PEP432X.    PLNPAY34 PEP432X.             
      PLNPAY44 PEP432X.    PLNPAY54 PEP432X.    PLNPAY64 PEP432X.             
      PLNPAY74 PEP432X.    HICOSTR4 PEP455X.    PLNMGD4  PEP456X.             
      MGCHMD4  PEP457X.    MGPRMD4  PEP027X.    MGPYMD4  PEP027X.             
      MGPREF4  PEP027X.    IHS      PEP076X.    MILITARY PEP510X.             
      CHIP     PEP076X.    OTHERPUB PEP076X.    OTHERGOV PEP076X.             
      NOTCOV   PEP514X.    HILAST   PEP515X.    HISTOP1  PEP432X.             
      HISTOP2  PEP432X.    HISTOP3  PEP432X.    HISTOP4  PEP432X.             
      HISTOP5  PEP432X.    HISTOP6  PEP432X.    HISTOP7  PEP432X.             
      HISTOP8  PEP432X.    HISTOP9  PEP432X.    HISTOP10 PEP432X.             
      HISTOP11 PEP432X.    HISTOP12 PEP432X.    HISTOP13 PEP432X.             
      HISTOP14 PEP432X.    HISTOP15 PEP432X.    HINOTYR  PEP027X.             
      HINOTMYR PEP532X.    HCSPFYR  PEP533X.                                  
                                                                              
      REGIONBR PEP534X.    USBRTH_P PEP013X.    YRSINUS  PEP536X.             
      CITIZENP PEP537X.    HEADST   PEP027X.    HEADSTV1 PEP027X.             
      EDUC     PEP540X.    EDUC_R1  PEP541X.    MILTRYDS PEP027X.             
      DOINGLW1 PEP543X.    WHYNOWK1 PEP544X.    WRKHRS   PEP545X.             
      WRKFTALL PEP027X.    WRKLYR1  PEP027X.    WRKMYR   PEP532X.             
      MAJR_ACT PEP549X.    ERNYR_P  PEP550X.    HIEMPOF  PEP027X.             
                                                                              
      PSAL     PEP027X.    PSEINC   PEP027X.    PSSRR    PEP076X.             
      PSSRRDB  PEP027X.    PSSRRD   PEP027X.    PPENS    PEP076X.             
      POPENS   PEP076X.    PSSI     PEP076X.    PSSID    PEP027X.             
      PTANF    PEP076X.    POWBEN   PEP076X.    PINTRSTR PEP076X.             
      PDIVD    PEP076X.    PCHLDSP  PEP076X.    PINCOT   PEP076X.             
      INCGRP   PEP567X.    AB_BL20K PEP568X.    RAT_CAT  PEP569X.             
      HOUSEOWN PEP570X.    FGAH     PEP027X.    PSSAPL   PEP076X.             
      PSDAPL   PEP076X.    TANFMYR  PEP574X.    PFSTP    PEP076X.             
      FSTPMYR  PEP574X.    ELIGPWIC PEP577X.    PWIC     PEP027X.             
      WIC_FLAG PEP579X.;                                                      
                                                                              
PROC CONTENTS DATA=NHIS.PERSON_2001;                                             
   TITLE1 'CONTENTS OF THE 2001 NHIS PERSONSX FILE';                          
                                                                              
PROC FREQ DATA=NHIS.PERSON_2001;                                                 
   TITLE1 'FREQUENCY REPORT FOR 2001 NHIS PERSONSX FILE';                     
   TITLE2 '(WEIGHTED)';                                                       
   TABLES EDUC * SEX/LIST MISSING;                                            
   WEIGHT WTFA ;                                                              
                                                                              
PROC FREQ DATA=NHIS.PERSON_2001;                                                 
   TITLE1 'FREQUENCY REPORT FOR 2001 NHIS PERSONSX FILE';                     
   TITLE2 '(UNWEIGHTED)';                                                     
   TABLES EDUC * SEX/LIST MISSING;                                            
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE                 
        STATEMENT: FORMAT _ALL_;                                              
RUN;                                                                          
