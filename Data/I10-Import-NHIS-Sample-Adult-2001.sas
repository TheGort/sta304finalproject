                                                                              
                                                                              
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
 NOVEMBER 7, 2002 10:11 AM                                                    
                                                                              
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS                       
 FILE FROM THE 2001 NHIS PUBLIC USE SAMADULT.DAT ASCII FILE                   
                                                                              
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN                      
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                         
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                           
       DOCUMENTATION                                                          
                                                                              
 THIS IS STORED IN SAMADULT.SAS                                               
*********************************************************************;        
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;                
                                                                              
LIBNAME  NHIS     'C:\DATA\NHIS\';                                             
LIBNAME  LIBRARY  'C:\DATA\NHIS\2001';                                             
                                                                              
FILENAME ASCIIDAT 'C:\DATA\NHIS\2001\da3605.adult.sas';                                 
                                                                              
* DEFINE VARIABLE VALUES FOR REPORTS;                                         
                                                                              
PROC FORMAT LIBRARY=LIBRARY;                                                  
  VALUE SAP001X                                                               
    30               = "Sample Adult"                                         
   ;                                                                          
  VALUE SAP002X                                                               
    2001             = "2001"                                                 
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
    1                = "Proxy"                                                
    2                = "Not proxy"                                            
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
  VALUE SAP047X                                                               
    1                = "Advise them to drive to the hospital"                 
    2                = "Advise them to call their physician"                  
    3                = "Call 9-1-1 (or another emergency number)"             
    4                = "Call spouse or family member"                         
    5                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP054X                                                               
    1                = "1 year or less"                                       
    2                = "More than 1 year, but not more than 2 years"          
    3                = "More than 2 years, but not more than 5 years"         
    4                = "More than 5 years"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP062X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP063X                                                               
    01 - 84          = "1-84 Years"                                           
    85               = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP123X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Borderline"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP125X                                                               
    00               = "Within past year"                                     
    01 - 84          = "1-84 years"                                           
    85               = "85+ years"                                            
    96               = "1+ year(s) with diabetes and age is 85+"              
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP136X                                                               
    01 - 52          = "1-52 Units"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP137X                                                               
    1                = "Week(s)"                                              
    2                = "Month(s)"                                             
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP138X                                                               
    00               = "Less than 1 month"                                    
    01 - 12          = "1-12 months"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP166X                                                               
    1                = "Good"                                                 
    2                = "Little trouble"                                       
    3                = "Lot of trouble"                                       
    4                = "Deaf"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP170X                                                               
    1                = "ALL of the time"                                      
    2                = "MOST of the time"                                     
    3                = "SOME of the time"                                     
    4                = "A LITTLE of the time"                                 
    5                = "NONE of the time"                                     
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP176X                                                               
    1                = "A lot"                                                
    2                = "Some"                                                 
    3                = "A little"                                             
    4                = "Not at all"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP177X                                                               
    1                = "Always"                                               
    2                = "Usually"                                              
    3                = "Sometimes"                                            
    4                = "Rarely"                                               
    5                = "Never"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP178X                                                               
    1                = "Very satisfied"                                       
    2                = "Satisfied"                                            
    3                = "Dissatisfied"                                         
    4                = "Very dissatisfied"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
                                                                              
  VALUE SAP187X                                                               
    0                = "Had job last week"                                    
    1                = "No job last week, had job past 12 m"                  
    2                = "No job last week, no job past 12 m"                   
    3                = "Never worked"                                         
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP188X                                                               
    000              = "None"                                                 
    001 - 366        = "1-366 days"                                           
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP189X                                                               
    000              = "None"                                                 
    001 - 366        = "1-366 days"                                           
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP190X                                                               
    1                = "Better"                                               
    2                = "Worse"                                                
    3                = "About the same"                                       
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP192X                                                               
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
  VALUE SAP204X                                                               
    1                = "Limited in any way"                                   
    2                = "Not limited in any way"                               
    3                = "Unknown if limited"                                   
   ;                                                                          
  VALUE SAP205X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    6                = "No condition at all"                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP206X                                                               
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused *"                                            
    98               = "Not ascertained"                                      
    99               = "Don't know *"                                         
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP207X                                                               
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
  VALUE SAP208X                                                               
    00               = "Less than 1 year"                                     
    01 - 84          = "01-84 years"                                          
    85 - 96          = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP209X                                                               
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
  VALUE SAP266X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP361X                                                               
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    96               = "Since birth **"                                       
    97               = "Refused *"                                            
    98               = "Not ascertained"                                      
    99               = "Don't know *"                                         
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP362X                                                               
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
  VALUE SAP385X                                                               
    1                = "Chronic"                                              
    2                = "Not chronic"                                          
    9                = "Unknown if chronic"                                   
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP421X                                                               
    1                = "At least one chronic cond causes functl lim"          
    2                = "No chronic condition causes functl lim"               
    9                = "Unknown if any chronic cond causes functl lim"        
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP422X                                                               
    0                = "Not limited in any way (incl unk if limited)"         
    1                = "Limited; caused by at least one chronic cond"         
    2                = "Limited; not caused by chronic cond"                  
    3                = "Limited; unk if cond causing LA is chronic"           
   ;                                                                          
  VALUE SAP424X                                                               
    06 - 84          = "6-84 years"                                           
    85               = "85 years or older"                                    
    96               = "Never smoked regularly"                               
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP425X                                                               
    1                = "Every day"                                            
    2                = "Some days"                                            
    3                = "Not at all"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP426X                                                               
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP427X                                                               
    1                = "Days"                                                 
    2                = "Weeks"                                                
    3                = "Months"                                               
    4                = "Years"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP428X                                                               
    00               = "Less than 1 year"                                     
    01 - 69          = "1-69 years"                                           
    70               = "70+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP430X                                                               
    01 - 94          = "1-94 cigarettes"                                      
    95               = "95+ cigarettes"                                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP431X                                                               
    00               = "None"                                                 
    01 - 30          = "1-30 days"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP434X                                                               
    1                = "Current"                                              
    2                = "Former"                                               
    3                = "Never"                                                
    4                = "Smoker, current status unknown"                       
    9                = "Unknown if ever smoked"                               
   ;                                                                          
  VALUE SAP435X                                                               
    1                = "Current every day smoker"                             
    2                = "Current some day smoker"                              
    3                = "Former smoker"                                        
    4                = "Never  smoker"                                        
    5                = "Smoker, current status unknown"                       
    9                = "Unknown if ever smoked"                               
   ;                                                                          
  VALUE SAP436X                                                               
    1                = "Current  every day smoker"                            
    2                = "Current some day smoker (1+ days past mo)"            
    3                = "Current some day smoker (0 days past mo)"             
    4                = "Current some day smoker (unknown days past mo)"       
    5                = "Former smoker"                                        
    6                = "Never smoker"                                         
    7                = "Smoker, current status unknown"                       
    9                = "Unknown if ever smoked"                               
   ;                                                                          
  VALUE SAP438X                                                               
    000              = "Never"                                                
    001 - 995        = "1-995 times per"                                      
    996              = "Unable to do this type activity"                      
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP439X                                                               
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
  VALUE SAP440X                                                               
    00               = "Less than once per week"                              
    01 - 28          = "1-28 times per week"                                  
    95               = "Never"                                                
    96               = "Unable to do vig activity"                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP441X                                                               
    001 - 720        = "1-720 (minutes/hours)"                                
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP442X                                                               
    1                = "Minutes"                                              
    2                = "Hours"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP443X                                                               
    010 - 720        = "10-720 minutes"                                       
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP444X                                                               
    1                = "Less than 20 minutes"                                 
    2                = "20 minutes or more"                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP445X                                                               
    000              = "Never"                                                
    001 - 995        = "1-995 times"                                          
    996              = "Unable to do this type activity"                      
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP447X                                                               
    00               = "Less than once per week"                              
    01 - 28          = "1-28 times per week"                                  
    95               = "Never"                                                
    96               = "Unable to do moderate activity"                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP454X                                                               
    00               = "Less than once per week"                              
    01 - 28          = "1-28 times per week"                                  
    95               = "Never"                                                
    96               = "Unable to do strength activity"                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP457X                                                               
    00               = "Less than once per week"                              
    01 - 28          = "1-28 times per week"                                  
    95               = "Never"                                                
    96               = "Unable to do stretch activity"                        
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP460X                                                               
    001 - 720        = "10-720 minutes"                                       
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP463X                                                               
    000              = "Never"                                                
    001 - 365        = "1-365 days per"                                       
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP464X                                                               
    0                = "Never/None"                                           
    1                = "Week"                                                 
    2                = "Month"                                                
    3                = "Year"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP465X                                                               
    00               = "Less than once a month"                               
    01 - 31          = "1-31 days per month"                                  
    95               = "Did not drink in past year"                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP466X                                                               
    00               = "Less than one day per week"                           
    01 - 07          = "1-7 days per week"                                    
    95               = "Did not drink in past year"                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP467X                                                               
    000              = "Never/none"                                           
    001 - 365        = "1-365 days"                                           
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP468X                                                               
    01 - 94          = "1-94 drinks"                                          
    95               = "95+ drinks"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP469X                                                               
    000              = "Never/None"                                           
    001 - 365        = "1-365 days per"                                       
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP472X                                                               
    1                = "Lifetime abstainer [<12 drinks in lifetime]"          
    2                = "Former drinker [No drinks in past year]"              
    3                = "Current drinker [1+ drinks in past year]"             
    9                = "Drinking status unknown"                              
   ;                                                                          
  VALUE SAP473X                                                               
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
  VALUE SAP474X                                                               
    59 - 76          = "59-76 inches"                                         
    96               = "Not available"                                        
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP475X                                                               
    099 - 285        = "99-285 pounds"                                        
    996              = "Not available"                                        
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP476X                                                               
    1                = "10% or more below desirable weight"                   
    2                = "5-9% below desirable weight"                          
    3                = "4.9% (+/-) of desirable body weight"                  
    4                = "5-9.9% above desirable body weight"                   
    5                = "10-19.9% above desirable body weight"                 
    6                = "20-29.9 % above desirable body weight"                
    7                = "30% + above desirable body weight"                    
    9                = "Unknown"                                              
   ;                                                                          
  VALUE SAP477X                                                               
    00.01 - 99.94    = "00.01-99.94"                                          
    99.95            = "99.95+"                                               
    99.99            = "Unknown"                                              
   ;                                                                          
                                                                              
  VALUE SAP478X                                                               
    1                = "Yes"                                                  
    2                = "There is NO place"                                    
    3                = "There is MORE THAN ONE place"                         
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP479X                                                               
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
  VALUE SAP481X                                                               
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
  VALUE SAP482X                                                               
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
  VALUE SAP486X                                                               
    1                = "Doctor"                                               
    2                = "Nurse"                                                
    3                = "Nurse Practitioner"                                   
    4                = "Physician's assistant"                                
    5                = "Chiropractor"                                         
    6                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP499X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Did not need emergency care"                          
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP517X                                                               
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
  VALUE SAP528X                                                               
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
  VALUE SAP530X                                                               
    01 - 12          = "01-12 months"                                         
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP531X                                                               
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
  VALUE SAP534X                                                               
    01 - 94          = "1-94 Times"                                           
    95               = "95+ Times"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP543X                                                               
    1                = "Received at least 3 doses"                            
    2                = "Received less than 3 doses"                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
                                                                              
  VALUE SAP544X                                                               
    1                = "Currently working"                                    
    2                = "Retired"                                              
    3                = "Not currently working but has worked previously"      
    4                = "Has never worked"                                     
    9                = "Unknown"                                              
   ;                                                                          
  VALUE SAP554X                                                               
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
  VALUE SAP558X                                                               
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
  VALUE SAP560X                                                               
    00               = "Less than 1 year"                                     
    01 - 34          = "01-34 years"                                          
    35               = "35 or more years"                                     
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP570X                                                               
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
  VALUE SAP571X                                                               
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
  VALUE SAP572X                                                               
    1985 - 2002      = "1985-2002"                                            
    9996             = "Used time period format"                              
    9997             = "Refused"                                              
    9998             = "Not ascertained"                                      
    9999             = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP573X                                                               
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
  VALUE SAP574X                                                               
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
  VALUE SAP575X                                                               
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
  VALUE SAP576X                                                               
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
  VALUE SAP577X                                                               
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
  VALUE SAP578X                                                               
    1                = "Nurse or health worker"                               
    2                = "Self-sampling kit"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP581X                                                               
    1                = "High/Already have HIV/AIDS"                           
    2                = "Medium"                                               
    3                = "Low"                                                  
    4                = "None"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP582X                                                               
    1                = "Yes, at least one statement is true"                  
    2                = "No, none of these statements are true"                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP585X                                                               
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
  VALUE SAP588X                                                               
    1                = "A lot"                                                
    2                = "Some"                                                 
    3                = "A little"                                             
    4                = "Nothing"                                              
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP596X                                                               
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
                                                                              
DATA NHIS.SAMADULT_2001;                                                           
   * CREATE A SAS DATA SET;                                                   
   INFILE ASCIIDAT PAD LRECL=851;                                             
                                                                              
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
      PROXYSA    3                                                            
                                                                              
      HYPEV      3   HYPDIFV    3   CHDEV      3   ANGEV      3               
      MIEV       3   HRTEV      3   STREV      3   EPHEV      3               
      JAW        3   WEAK       3   CHEST      3   ARM        3               
      BREATH     3   AHADO      3   FACE       3   SPEAKING   3               
      EYE        3   WALKING    3   HEADACHE   3   ACPR       3               
      ACPRLO     3   AASMEV     3   AASSTILL   3   AASMYR     3               
      AASMERYR   3   ULCEV      3   ULCYR      3   CANEV      3               
      CNKIND1    3   CANAGE1    3   CNKIND2    3   CANAGE2    3               
      CNKIND3    3   CANAGE3    3   CNKIND4    3   CANAGE4    3               
      CNKIND5    3   CANAGE5    3   CNKIND6    3   CANAGE6    3               
      CNKIND7    3   CANAGE7    3   CNKIND8    3   CANAGE8    3               
      CNKIND9    3   CANAGE9    3   CNKIND10   3   CANAGE10   3               
      CNKIND11   3   CANAGE11   3   CNKIND12   3   CANAGE12   3               
      CNKIND13   3   CANAGE13   3   CNKIND14   3   CANAGE14   3               
      CNKIND15   3   CANAGE15   3   CNKIND16   3   CANAGE16   3               
      CNKIND17   3   CANAGE17   3   CNKIND18   3   CANAGE18   3               
      CNKIND19   3   CANAGE19   3   CNKIND20   3   CANAGE20   3               
      CNKIND21   3   CANAGE21   3   CNKIND22   3   CANAGE22   3               
      CNKIND23   3   CANAGE23   3   CNKIND24   3   CANAGE24   3               
      CNKIND25   3   CANAGE25   3   CNKIND26   3   CANAGE26   3               
      CNKIND27   3   CANAGE27   3   CNKIND28   3   CANAGE28   3               
      CNKIND29   3   CANAGE29   3   CNKIND30   3   CANAGE30   3               
      CNKIND31   3   DIBEV      3   DIBAGE     3   DIFAGE2    3               
      INSLN      3   DIBPILL    3   AHAYFYR    3   SINYR      3               
      CBRCHYR    3   KIDWKYR    3   LIVYR      3   JNTYR      3               
      JNTMO      3   JNTIJ      3   JNTIJLN    3   JNTIJLT    3               
      JNTIJLM    3   JNTYR1     3   JNTYR2     3   JNTYR3     3               
      JNTYR4     3   JNTYR5     3   JNTYR6     3   JNTYR7     3               
      JNTYR8     3   JNTYR9     3   JNTYR10    3   JNTYR11    3               
      JNTYR12    3   JNTYR13    3   JNTYR14    3   JNTYR15    3               
      JNTYR16    3   JNTYR17    3   ARTH       3   PAINECK    3               
      PAINLB     3   PAINLEG    3   PAINFACE   3   AMIGR      3               
      ACOLD2W    3   AINTIL2W   3   PREGNOW    3   HEARAID    3               
      AHEARST    3   AVISION    3   ABLIND     3   LUPPRT     3               
      SAD        3   NERVOUS    3   RESTLESS   3   HOPELESS   3               
      EFFORT     3   WORTHLS    3   MHAMTMO    3   AEMOFT     3               
      AEMSAT     3   HAPPY      3   GET        3   TELEPHON   3               
      RELATIVE   3   RELATIVS   3   WORSHIP    3   GROUP      3               
      EAT        3                                                            
                                                                              
      WRKLYR3    3   WKDAYR     4   BEDDAYR    4   AHSTATYR   3               
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
      STRTCHNO   4   STRTCHTP   3   STCFREQW   3   STRCHLNO   4               
      STRCHLTP   3   STRCHMIN   4   ALC1YR     3   ALCLIFE    3               
      ALC12MNO   4   ALC12MTP   3   ALC12MMO   3   ALC12MWK   3               
      ALC12MYR   4   ALCAMT     3   ALC5UPNO   4   ALC5UPTP   3               
      ALC5UPYR   4   ALCSTAT1   3   ALC7STAT   3   AHEIGHT    3               
      AWEIGHTP   4   DESIREWT   3   BMI        8                              
                                                                              
      AUSUALPL   3   APLKIND    3   AHCPLROU   3   AHCPLKND   3               
      SOURCELA   3   AHCCHGYR   3   AHCCHGHI   3   AQHP2      3               
      AQHPKND2   3   AQHPVI2    3   AHDIET     3   AHPA       3               
      AALCHLP    3   AHCQSMK    3   AHCHELP    3   AHCMENO    3               
      AHCDLYR1   3   AHCDLYR2   3   AHCDLYR3   3   AHCDLYR4   3               
      AHCDLYR5   3   AHCDIFER   3   AHCERR01   3   AHCERR02   3               
      AHCERR03   3   AHCERR04   3   AHCERR05   3   AHCERR06   3               
      AHCERR07   3   AHCERR08   3   AHCERR09   3   AHCERR10   3               
      AHCERR11   3   AHCERR12   3   AHCERR13   3   AHCAFYR1   3               
      AHCAFYR2   3   AHCAFYR3   3   AHCAFYR4   3   ADNLONG2   3               
      AHCSYR1    3   AHCSYR2    3   AHCSYR3    3   AHCSYR4    3               
      AHCSYR5    3   AHCSYR6    3   AHCSYR7    3   AHCSYR8    3               
      AHCSYR9    3   AHCSYR10   3   AHERNOY2   3   AHCHYR     3               
      AHCHMOYR   3   AHCHNOY2   3   AHCNOYR2   3   ASRGYR     3               
      ASRGNOYR   3   AMDLONGR   3   SHTFLUYR   3   SHTPNUYR   3               
      APOX       3   APOX12MO   3   AHEP       3   AHEPLIV    3               
      SHTHEPB    3   SHEPDOS    3                                             
                                                                              
      ALL_SA     3   EVERWRK    3   INDSTRY1   3   INDSTRY2   3               
      INDSTR1A   3   INDSTR2A   3   OCCUP1     3   OCCUP2     3               
      OCCUP1A    3   OCCUP2A    3   WRKCAT     3   WRKCATA    3               
      BUSINC1    3   BUSINC1A   3   LOCALL1    3   LOCALL1A   3               
      YRSWRK_P   3   YRSWRKPA   3   HOURPD     3   HOURPDA    3               
      PDSICK     3   PDSICKA    3   ONEJOB     3                              
                                                                              
      BLDGV      3   BLDG12M    3   HIVTST     3   WHYTST_R   3               
      TST12M_M   3   TST12M_Y   4   TIMETST    3   REATST_C   3               
      REASWHOR   3   LASTST_C   3   CLNTYP_C   3   WHOADM     3               
      GIVNAM     3   EXTST12M   3   CHNSADSP   3   STMTRU     3               
      STD        3   STDDOC     3   STDWHER    3   TBHRD      3               
      TBKNOW     3   TB         3   TBSPRD1    3   TBSPRD2    3               
      TBSPRD3    3   TBSPRD4    3   TBSPRD5    3   TBSPRD6    3               
      TBCURED    3   TBCHANC    3   HOMELESS   3   TBSHAME    3 ;             
                                                                              
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
      PROXYSA      66 -  66                                                   
                                                                              
      HYPEV        67 -  67    HYPDIFV      68 -  68                          
      CHDEV        69 -  69    ANGEV        70 -  70                          
      MIEV         71 -  71    HRTEV        72 -  72                          
      STREV        73 -  73    EPHEV        74 -  74                          
      JAW          75 -  75    WEAK         76 -  76                          
      CHEST        77 -  77    ARM          78 -  78                          
      BREATH       79 -  79    AHADO        80 -  80                          
      FACE         81 -  81    SPEAKING     82 -  82                          
      EYE          83 -  83    WALKING      84 -  84                          
      HEADACHE     85 -  85    ACPR         86 -  86                          
      ACPRLO       87 -  87    AASMEV       88 -  88                          
      AASSTILL     89 -  89    AASMYR       90 -  90                          
      AASMERYR     91 -  91    ULCEV        92 -  92                          
      ULCYR        93 -  93    CANEV        94 -  94                          
      CNKIND1      95 -  95    CANAGE1      96 -  97                          
      CNKIND2      98 -  98    CANAGE2      99 - 100                          
      CNKIND3     101 - 101    CANAGE3     102 - 103                          
      CNKIND4     104 - 104    CANAGE4     105 - 106                          
      CNKIND5     107 - 107    CANAGE5     108 - 109                          
      CNKIND6     110 - 110    CANAGE6     111 - 112                          
      CNKIND7     113 - 113    CANAGE7     114 - 115                          
      CNKIND8     116 - 116    CANAGE8     117 - 118                          
      CNKIND9     119 - 119    CANAGE9     120 - 121                          
      CNKIND10    122 - 122    CANAGE10    123 - 124                          
      CNKIND11    125 - 125    CANAGE11    126 - 127                          
      CNKIND12    128 - 128    CANAGE12    129 - 130                          
      CNKIND13    131 - 131    CANAGE13    132 - 133                          
      CNKIND14    134 - 134    CANAGE14    135 - 136                          
      CNKIND15    137 - 137    CANAGE15    138 - 139                          
      CNKIND16    140 - 140    CANAGE16    141 - 142                          
      CNKIND17    143 - 143    CANAGE17    144 - 145                          
      CNKIND18    146 - 146    CANAGE18    147 - 148                          
      CNKIND19    149 - 149    CANAGE19    150 - 151                          
      CNKIND20    152 - 152    CANAGE20    153 - 154                          
      CNKIND21    155 - 155    CANAGE21    156 - 157                          
      CNKIND22    158 - 158    CANAGE22    159 - 160                          
      CNKIND23    161 - 161    CANAGE23    162 - 163                          
      CNKIND24    164 - 164    CANAGE24    165 - 166                          
      CNKIND25    167 - 167    CANAGE25    168 - 169                          
      CNKIND26    170 - 170    CANAGE26    171 - 172                          
      CNKIND27    173 - 173    CANAGE27    174 - 175                          
      CNKIND28    176 - 176    CANAGE28    177 - 178                          
      CNKIND29    179 - 179    CANAGE29    180 - 181                          
      CNKIND30    182 - 182    CANAGE30    183 - 184                          
      CNKIND31    185 - 185    DIBEV       186 - 186                          
      DIBAGE      187 - 188    DIFAGE2     189 - 190                          
      INSLN       191 - 191    DIBPILL     192 - 192                          
      AHAYFYR     193 - 193    SINYR       194 - 194                          
      CBRCHYR     195 - 195    KIDWKYR     196 - 196                          
      LIVYR       197 - 197    JNTYR       198 - 198                          
      JNTMO       199 - 199    JNTIJ       200 - 200                          
      JNTIJLN     201 - 202    JNTIJLT     203 - 203                          
      JNTIJLM     204 - 205    JNTYR1      206 - 206                          
      JNTYR2      207 - 207    JNTYR3      208 - 208                          
      JNTYR4      209 - 209    JNTYR5      210 - 210                          
      JNTYR6      211 - 211    JNTYR7      212 - 212                          
      JNTYR8      213 - 213    JNTYR9      214 - 214                          
      JNTYR10     215 - 215    JNTYR11     216 - 216                          
      JNTYR12     217 - 217    JNTYR13     218 - 218                          
      JNTYR14     219 - 219    JNTYR15     220 - 220                          
      JNTYR16     221 - 221    JNTYR17     222 - 222                          
      ARTH        223 - 223    PAINECK     224 - 224                          
      PAINLB      225 - 225    PAINLEG     226 - 226                          
      PAINFACE    227 - 227    AMIGR       228 - 228                          
      ACOLD2W     229 - 229    AINTIL2W    230 - 230                          
      PREGNOW     231 - 231    HEARAID     232 - 232                          
      AHEARST     233 - 233    AVISION     234 - 234                          
      ABLIND      235 - 235    LUPPRT      236 - 236                          
      SAD         237 - 237    NERVOUS     238 - 238                          
      RESTLESS    239 - 239    HOPELESS    240 - 240                          
      EFFORT      241 - 241    WORTHLS     242 - 242                          
      MHAMTMO     243 - 243    AEMOFT      244 - 244                          
      AEMSAT      245 - 245    HAPPY       246 - 246                          
      GET         247 - 247    TELEPHON    248 - 248                          
      RELATIVE    249 - 249    RELATIVS    250 - 250                          
      WORSHIP     251 - 251    GROUP       252 - 252                          
      EAT         253 - 253                                                   
                                                                              
      WRKLYR3     254 - 254    WKDAYR      255 - 257                          
      BEDDAYR     258 - 260    AHSTATYR    261 - 261                          
      SPECEQ      262 - 262    FLWALK      263 - 263                          
      FLCLIMB     264 - 264    FLSTAND     265 - 265                          
      FLSIT       266 - 266    FLSTOOP     267 - 267                          
      FLREACH     268 - 268    FLGRASP     269 - 269                          
      FLCARRY     270 - 270    FLPUSH      271 - 271                          
      FLSHOP      272 - 272    FLSOCL      273 - 273                          
      FLRELAX     274 - 274    FLA1AR      275 - 275                          
      AFLHCA1     276 - 276    ALHCLN1     277 - 278                          
      ALHCLT1     279 - 279    ALHCLY1     280 - 281                          
      ALANTR1     282 - 283    AFLHCA2     284 - 284                          
      ALHCLN2     285 - 286    ALHCLT2     287 - 287                          
      ALHCLY2     288 - 289    ALANTR2     290 - 291                          
      AFLHCA3     292 - 292    ALHCLN3     293 - 294                          
      ALHCLT3     295 - 295    ALHCLY3     296 - 297                          
      ALANTR3     298 - 299    AFLHCA4     300 - 300                          
      ALHCLN4     301 - 302    ALHCLT4     303 - 303                          
      ALHCLY4     304 - 305    ALANTR4     306 - 307                          
      AFLHCA5     308 - 308    ALHCLN5     309 - 310                          
      ALHCLT5     311 - 311    ALHCLY5     312 - 313                          
      ALANTR5     314 - 315    AFLHCA6     316 - 316                          
      ALHCLN6     317 - 318    ALHCLT6     319 - 319                          
      ALHCLY6     320 - 321    ALANTR6     322 - 323                          
      AFLHCA7     324 - 324    ALHCLN7     325 - 326                          
      ALHCLT7     327 - 327    ALHCLY7     328 - 329                          
      ALANTR7     330 - 331    AFLHCA8     332 - 332                          
      ALHCLN8     333 - 334    ALHCLT8     335 - 335                          
      ALHCLY8     336 - 337    ALANTR8     338 - 339                          
      AFLHCA9     340 - 340    ALHCLN9     341 - 342                          
      ALHCLT9     343 - 343    ALHCLY9     344 - 345                          
      ALANTR9     346 - 347    AFLHCA10    348 - 348                          
      ALHCLN10    349 - 350    ALHCLT10    351 - 351                          
      ALHCLY10    352 - 353    ALANTR10    354 - 355                          
      AFLHCA11    356 - 356    ALHCLN11    357 - 358                          
      ALHCLT11    359 - 359    ALHCLY11    360 - 361                          
      ALANTR11    362 - 363    AFLHCA12    364 - 364                          
      ALHCLN12    365 - 366    ALHCLT12    367 - 367                          
      ALHCLY12    368 - 369    ALANTR12    370 - 371                          
      AFLHCA13    372 - 372    ALHCLN13    373 - 374                          
      ALHCLT13    375 - 375    ALHCLY13    376 - 377                          
      ALANTR13    378 - 379    AFLHCA14    380 - 380                          
      ALHCLN14    381 - 382    ALHCLT14    383 - 383                          
      ALHCLY14    384 - 385    ALANTR14    386 - 387                          
      AFLHCA15    388 - 388    ALHCLN15    389 - 390                          
      ALHCLT15    391 - 391    ALHCLY15    392 - 393                          
      ALANTR15    394 - 395    AFLHCA16    396 - 396                          
      ALHCLN16    397 - 398    ALHCLT16    399 - 399                          
      ALHCLY16    400 - 401    ALANTR16    402 - 403                          
      AFLHCA17    404 - 404    ALHCLN17    405 - 406                          
      ALHCLT17    407 - 407    ALHCLY17    408 - 409                          
      ALANTR17    410 - 411    AFLHCA18    412 - 412                          
      ALHCLN18    413 - 414    ALHCLT18    415 - 415                          
      ALHCLY18    416 - 417    ALANTR18    418 - 419                          
      AFLHCA19    420 - 420    ALHCLN19    421 - 422                          
      ALHCLT19    423 - 423    ALHCLY19    424 - 425                          
      ALANTR19    426 - 427    AFLHCA20    428 - 428                          
      ALHCLN20    429 - 430    ALHCLT20    431 - 431                          
      ALHCLY20    432 - 433    ALANTR20    434 - 435                          
      AFLHCA21    436 - 436    ALHCLN21    437 - 438                          
      ALHCLT21    439 - 439    ALHCLY21    440 - 441                          
      ALANTR21    442 - 443    AFLHCA22    444 - 444                          
      ALHCLN22    445 - 446    ALHCLT22    447 - 447                          
      ALHCLY22    448 - 449    ALANTR22    450 - 451                          
      AFLHCA23    452 - 452    ALHCLN23    453 - 454                          
      ALHCLT23    455 - 455    ALHCLY23    456 - 457                          
      ALANTR23    458 - 459    AFLHCA24    460 - 460                          
      ALHCLN24    461 - 462    ALHCLT24    463 - 463                          
      ALHCLY24    464 - 465    ALANTR24    466 - 467                          
      AFLHCA25    468 - 468    ALHCLN25    469 - 470                          
      ALHCLT25    471 - 471    ALHCLY25    472 - 473                          
      ALANTR25    474 - 475    AFLHCA26    476 - 476                          
      ALHCLN26    477 - 478    ALHCLT26    479 - 479                          
      ALHCLY26    480 - 481    ALANTR26    482 - 483                          
      AFLHCA27    484 - 484    ALHCLN27    485 - 486                          
      ALHCLT27    487 - 487    ALHCLY27    488 - 489                          
      ALANTR27    490 - 491    AFLHCA28    492 - 492                          
      ALHCLN28    493 - 494    ALHCLT28    495 - 495                          
      ALHCLY28    496 - 497    ALANTR28    498 - 499                          
      AFLHCA29    500 - 500    ALHCLN29    501 - 502                          
      ALHCLT29    503 - 503    ALHCLY29    504 - 505                          
      ALANTR29    506 - 507    AFLHCA30    508 - 508                          
      ALHCLN30    509 - 510    ALHCLT30    511 - 511                          
      ALHCLY30    512 - 513    ALANTR30    514 - 515                          
      AFLHCA31    516 - 516    ALHCLN31    517 - 518                          
      ALHCLT31    519 - 519    ALHCLY31    520 - 521                          
      ALANTR31    522 - 523    AFLHCA32    524 - 524                          
      ALHCLN32    525 - 526    ALHCLT32    527 - 527                          
      ALHCLY32    528 - 529    ALANTR32    530 - 531                          
      AFLHCA33    532 - 532    ALHCLN33    533 - 534                          
      ALHCLT33    535 - 535    ALHCLY33    536 - 537                          
      ALANTR33    538 - 539    AFLHCA34    540 - 540                          
      ALHCLN34    541 - 542    ALHCLT34    543 - 543                          
      ALHCLY34    544 - 545    ALANTR34    546 - 547                          
      AFLHCA90    548 - 548    ALHCLN90    549 - 550                          
      ALHCLT90    551 - 551    ALHCLY90    552 - 553                          
      ALANTR90    554 - 555    AFLHCA91    556 - 556                          
      ALHCLN91    557 - 558    ALHCLT91    559 - 559                          
      ALHCLY91    560 - 561    ALANTR91    562 - 563                          
      ALCNDR1     564 - 564    ALCNDR2     565 - 565                          
      ALCNDR3     566 - 566    ALCNDR4     567 - 567                          
      ALCNDR5     568 - 568    ALCNDR6     569 - 569                          
      ALCNDR7     570 - 570    ALCNDR8     571 - 571                          
      ALCNDR9     572 - 572    ALCNDR10    573 - 573                          
      ALCNDR11    574 - 574    ALCNDR12    575 - 575                          
      ALCNDR13    576 - 576    ALCNDR14    577 - 577                          
      ALCNDR15    578 - 578    ALCNDR16    579 - 579                          
      ALCNDR17    580 - 580    ALCNDR18    581 - 581                          
      ALCNDR19    582 - 582    ALCNDR20    583 - 583                          
      ALCNDR21    584 - 584    ALCNDR22    585 - 585                          
      ALCNDR23    586 - 586    ALCNDR24    587 - 587                          
      ALCNDR25    588 - 588    ALCNDR26    589 - 589                          
      ALCNDR27    590 - 590    ALCNDR28    591 - 591                          
      ALCNDR29    592 - 592    ALCNDR30    593 - 593                          
      ALCNDR31    594 - 594    ALCNDR32    595 - 595                          
      ALCNDR33    596 - 596    ALCNDR34    597 - 597                          
      ALCNDR90    598 - 598    ALCNDR91    599 - 599                          
      ALCNDRT     600 - 600    ALCHRONR    601 - 601                          
                                                                              
      SMKEV       602 - 602    SMKREG      603 - 604                          
      SMKNOW      605 - 605    SMKQTNO     606 - 607                          
      SMKQTTP     608 - 608    SMKQTY      609 - 610                          
      SMKQTD      611 - 611    CIGSDA1     612 - 613                          
      CIGDAMO     614 - 615    CIGSDA2     616 - 617                          
      CIGSDAY     618 - 619    SMKSTAT1    620 - 620                          
      SMKSTAT2    621 - 621    SMKSTAT3    622 - 622                          
      CIGQTYR     623 - 623    VIGNO       624 - 626                          
      VIGTP       627 - 627    VIGFREQW    628 - 629                          
      VIGLNGNO    630 - 632    VIGLNGTP    633 - 633                          
      VIGMIN      634 - 636    VIGLONGD    637 - 637                          
      MODNO       638 - 640    MODTP       641 - 641                          
      MODFREQW    642 - 643    MODLNGNO    644 - 646                          
      MODLNGTP    647 - 647    MODMIN      648 - 650                          
      MODLONGD    651 - 651    STRNGNO     652 - 654                          
      STRNGTP     655 - 655    STRFREQW    656 - 657                          
      STRTCHNO    658 - 660    STRTCHTP    661 - 661                          
      STCFREQW    662 - 663    STRCHLNO    664 - 666                          
      STRCHLTP    667 - 667    STRCHMIN    668 - 670                          
      ALC1YR      671 - 671    ALCLIFE     672 - 672                          
      ALC12MNO    673 - 675    ALC12MTP    676 - 676                          
      ALC12MMO    677 - 678    ALC12MWK    679 - 680                          
      ALC12MYR    681 - 683    ALCAMT      684 - 685                          
      ALC5UPNO    686 - 688    ALC5UPTP    689 - 689                          
      ALC5UPYR    690 - 692    ALCSTAT1    693 - 693                          
      ALC7STAT    694 - 694    AHEIGHT     695 - 696                          
      AWEIGHTP    697 - 699    DESIREWT    700 - 700                          
      BMI         701 - 704 .2                                                
                                                                              
      AUSUALPL    705 - 705    APLKIND     706 - 706                          
      AHCPLROU    707 - 707    AHCPLKND    708 - 708                          
      SOURCELA    709 - 710    AHCCHGYR    711 - 711                          
      AHCCHGHI    712 - 712    AQHP2       713 - 713                          
      AQHPKND2    714 - 714    AQHPVI2     715 - 715                          
      AHDIET      716 - 716    AHPA        717 - 717                          
      AALCHLP     718 - 718    AHCQSMK     719 - 719                          
      AHCHELP     720 - 720    AHCMENO     721 - 721                          
      AHCDLYR1    722 - 722    AHCDLYR2    723 - 723                          
      AHCDLYR3    724 - 724    AHCDLYR4    725 - 725                          
      AHCDLYR5    726 - 726    AHCDIFER    727 - 727                          
      AHCERR01    728 - 728    AHCERR02    729 - 729                          
      AHCERR03    730 - 730    AHCERR04    731 - 731                          
      AHCERR05    732 - 732    AHCERR06    733 - 733                          
      AHCERR07    734 - 734    AHCERR08    735 - 735                          
      AHCERR09    736 - 736    AHCERR10    737 - 737                          
      AHCERR11    738 - 738    AHCERR12    739 - 739                          
      AHCERR13    740 - 740    AHCAFYR1    741 - 741                          
      AHCAFYR2    742 - 742    AHCAFYR3    743 - 743                          
      AHCAFYR4    744 - 744    ADNLONG2    745 - 745                          
      AHCSYR1     746 - 746    AHCSYR2     747 - 747                          
      AHCSYR3     748 - 748    AHCSYR4     749 - 749                          
      AHCSYR5     750 - 750    AHCSYR6     751 - 751                          
      AHCSYR7     752 - 752    AHCSYR8     753 - 753                          
      AHCSYR9     754 - 754    AHCSYR10    755 - 755                          
      AHERNOY2    756 - 757    AHCHYR      758 - 758                          
      AHCHMOYR    759 - 760    AHCHNOY2    761 - 762                          
      AHCNOYR2    763 - 764    ASRGYR      765 - 765                          
      ASRGNOYR    766 - 767    AMDLONGR    768 - 768                          
      SHTFLUYR    769 - 769    SHTPNUYR    770 - 770                          
      APOX        771 - 771    APOX12MO    772 - 772                          
      AHEP        773 - 773    AHEPLIV     774 - 774                          
      SHTHEPB     775 - 775    SHEPDOS     776 - 776                          
                                                                              
      ALL_SA      777 - 777    EVERWRK     778 - 778                          
      INDSTRY1    779 - 780    INDSTRY2    781 - 782                          
      INDSTR1A    783 - 784    INDSTR2A    785 - 786                          
      OCCUP1      787 - 788    OCCUP2      789 - 790                          
      OCCUP1A     791 - 792    OCCUP2A     793 - 794                          
      WRKCAT      795 - 795    WRKCATA     796 - 796                          
      BUSINC1     797 - 797    BUSINC1A    798 - 798                          
      LOCALL1     799 - 800    LOCALL1A    801 - 802                          
      YRSWRK_P    803 - 804    YRSWRKPA    805 - 806                          
      HOURPD      807 - 807    HOURPDA     808 - 808                          
      PDSICK      809 - 809    PDSICKA     810 - 810                          
      ONEJOB      811 - 811                                                   
                                                                              
      BLDGV       812 - 812    BLDG12M     813 - 813                          
      HIVTST      814 - 814    WHYTST_R    815 - 816                          
      TST12M_M    817 - 818    TST12M_Y    819 - 822                          
      TIMETST     823 - 823    REATST_C    824 - 825                          
      REASWHOR    826 - 826    LASTST_C    827 - 828                          
      CLNTYP_C    829 - 830    WHOADM      831 - 831                          
      GIVNAM      832 - 832    EXTST12M    833 - 833                          
      CHNSADSP    834 - 834    STMTRU      835 - 835                          
      STD         836 - 836    STDDOC      837 - 837                          
      STDWHER     838 - 838    TBHRD       839 - 839                          
      TBKNOW      840 - 840    TB          841 - 841                          
      TBSPRD1     842 - 842    TBSPRD2     843 - 843                          
      TBSPRD3     844 - 844    TBSPRD4     845 - 845                          
      TBSPRD5     846 - 846    TBSPRD6     847 - 847                          
      TBCURED     848 - 848    TBCHANC     849 - 849                          
      HOMELESS    850 - 850    TBSHAME     851 - 851;                         
                                                                              
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
      PROXYSA  ="Response status is ......"                                   
                                                                              
      HYPEV    ="Ever been told you had hypertension"                         
      HYPDIFV  ="Ever told had hypertension on 2+ visits"                     
      CHDEV    ="Ever told you had coronary heart disease"                    
      ANGEV    ="Ever been told you had angina pectoris"                      
      MIEV     ="Ever been told you had a heart attack"                       
      HRTEV    ="Ever told you had a heart cond/disease"                      
      STREV    ="Ever been told you had a stroke"                             
      EPHEV    ="Ever been told you had emphysema"                            
      JAW      ="Pain in jaw as symptom of heart attack"                      
      WEAK     ="Feeling weak as symptom of heart attack"                     
      CHEST    ="Chest pain as symptom of heart attack"                       
      ARM      ="Arm pain as symptom of heart attack"                         
      BREATH   ="Short breath as symptom of heart attack"                     
      AHADO    ="BEST thing to do for heart attack victim"                    
      FACE     ="Numbness of face as symptom of stroke"                       
      SPEAKING ="Sudden confusion as symptom of stroke"                       
      EYE      ="Sudden trouble seeing as sympt of stroke"                    
      WALKING  ="Sudden trouble walking as symp of stroke"                    
      HEADACHE ="Sudden headache as sympt of stroke"                          
      ACPR     ="Ever receive CPR training"                                   
      ACPRLO   ="Time since CPR training"                                     
      AASMEV   ="Ever been told you had asthma"                               
      AASSTILL ="Still have asthma"                                           
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
      ARTH     ="Ever told had arthritis"                                     
      PAINECK  ="Had neck pain, past 3 months"                                
      PAINLB   ="Had low back pain, past 3 months"                            
      PAINLEG  ="Pain spread down leg/below knees"                            
      PAINFACE ="Had pain in jaw/front of ear, past 3 m"                      
      AMIGR    ="Had severe headache/migraine, past 3 m"                      
      ACOLD2W  ="Had a head/chest cold past 2 weeks"                          
      AINTIL2W ="Had stomach prob w/vomit/diarrhea, 2 w"                      
      PREGNOW  ="Currently pregnant"                                          
      HEARAID  ="Had ever worn a hearing aid"                                 
      AHEARST  ="Description of hearing w/o hearing aid"                      
      AVISION  ="Trouble seeing even w/glasses/lenses"                        
      ABLIND   ="Are you blind or unable to see at all"                       
      LUPPRT   ="Lost all upper & lower natural teeth"                        
      SAD      ="So sad nothing cheers you up, past 30 d"                     
      NERVOUS  ="How often felt nervous, past 30 days"                        
      RESTLESS ="How often restless/fidgety, past 30 days"                    
      HOPELESS ="How often felt hopeless, past 30 days"                       
      EFFORT   ="Felt everything was an effort, past 30 d"                    
      WORTHLS  ="How often felt worthless, past 30 days"                      
      MHAMTMO  ="Feelings interfered w/life, past 30 days"                    
      AEMOFT   ="How often get emotional support"                             
      AEMSAT   ="How satisfied with life"                                     
      HAPPY    ="How often felt happy, past 30 days"                          
      GET      ="Get together w/friends, past 2 wks"                          
      TELEPHON ="Telephone friends, past 2 wks"                               
      RELATIVE ="Get together w/relatives, past 2 wks"                        
      RELATIVS ="Talk w/relatives on the phone,past 2 wks"                    
      WORSHIP  ="Go to worship service, past 2 wks"                           
      GROUP    ="Go to group event, past 2 wks"                               
      EAT      ="Go out to eat at a restaurant,past 2 wks"                    
                                                                              
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
      STRTCHNO ="Freq stretching activity: # of units"                        
      STRTCHTP ="Freq stretching activity: Time unit"                         
      STCFREQW ="Freq stretch activity (times per wk)"                        
      STRCHLNO ="Duration stretch activity: # of units"                       
      STRCHLTP ="Duration stretch activity: Time unit"                        
      STRCHMIN ="Duration stretch activity (in minutes)"                      
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
      AQHP2    ="Particlr hlth prof seen most often ex MH"                    
      AQHPKND2 ="Kind of health prof seen most often"                         
      AQHPVI2  ="Visit health care place/provider, 12 mo"                     
      AHDIET   ="Hlth provdr ask/give diet/nutri adv, 12m"                    
      AHPA     ="Hlth provdr ask/give activ/exer adv, 12m"                    
      AALCHLP  ="Hlth provider advised about alcohol, 12m"                    
      AHCQSMK  ="Hlth providr advised to quit smoking 12m"                    
      AHCHELP  ="Hlth prov give help to quit smoking, 12m"                    
      AHCMENO  ="Hlth provider give menopause advice, 12m"                    
      AHCDLYR1 ="Couldn't get through on phone, past 12 m"                    
      AHCDLYR2 ="Couldn't get appt soon enough, past 12 m"                    
      AHCDLYR3 ="Wait too long in dr's office, past 12 mo"                    
      AHCDLYR4 ="Not open when you could go, past 12 mo"                      
      AHCDLYR5 ="No transportation, past 12 mo"                               
      AHCDIFER ="Delay/trouble/unable to get ER care, 12m"                    
      AHCERR01 ="Reason delay ER care...not sure need ER*"                    
      AHCERR02 ="Reason delay ER care...no time off work*"                    
      AHCERR03 ="Reason delay ER care...no child care*"                       
      AHCERR04 ="Reason delay ER care..no transportation*"                    
      AHCERR05 ="Reason delay ER care...ambulance late*"                      
      AHCERR06 ="Reason delay ER care..no hlth insurance*"                    
      AHCERR07 ="Reason delay ER care...costs too much*"                      
      AHCERR08 ="Reason delay ER care...no co-pay money*"                     
      AHCERR09 ="Reason delay ER care..need pre auth*"                        
      AHCERR10 ="Reason delay ER care...plan may not pay*"                    
      AHCERR11 ="Reason delay ER care...long wait"                            
      AHCERR12 ="Reason delay ER care..sent to othr area*"                    
      AHCERR13 ="Reason delay ER care 12m...other specify"                    
      AHCAFYR1 ="Can't afford presc medicine, past 12 mo"                     
      AHCAFYR2 ="Can't afford mental care/counsel, 12 mo"                     
      AHCAFYR3 ="Can't afford dental care, past 12 mo"                        
      AHCAFYR4 ="Can't afford eyeglasses, past 12 mo"                         
      ADNLONG2 ="Time since last saw a dentist"                               
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
      SHTPNUYR ="Ever had pneumonia shot"                                     
      APOX     ="Ever had chickenpox"                                         
      APOX12MO ="Had chickenpox, past 12 mo"                                  
      AHEP     ="Ever had hepatitis"                                          
      AHEPLIV  ="Ever lived w/ someone w/ hepatitis"                          
      SHTHEPB  ="Ever had hepatitis B vaccine"                                
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
                                                                              
      BLDGV    ="Donated blood since March 1985"                              
      BLDG12M  ="Donated blood past 12 m"                                     
      HIVTST   ="Ever been tested for HIV?"                                   
      WHYTST_R ="Reason why you have not been tested?"                        
      TST12M_M ="Month of last test for HIV"                                  
      TST12M_Y ="Year of last test for HIV"                                   
      TIMETST  ="Was it:"                                                     
      REATST_C ="Main reason for last HIV test"                               
      REASWHOR ="Who suggested you should be tested"                          
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
      PROXYSA  SAP033X.                                                       
                                                                              
      HYPEV    SAP034X.    HYPDIFV  SAP035X.    CHDEV    SAP034X.             
      ANGEV    SAP034X.    MIEV     SAP034X.    HRTEV    SAP034X.             
      STREV    SAP034X.    EPHEV    SAP034X.    JAW      SAP034X.             
      WEAK     SAP034X.    CHEST    SAP034X.    ARM      SAP034X.             
      BREATH   SAP034X.    AHADO    SAP047X.    FACE     SAP034X.             
      SPEAKING SAP034X.    EYE      SAP034X.    WALKING  SAP034X.             
      HEADACHE SAP034X.    ACPR     SAP034X.    ACPRLO   SAP054X.             
      AASMEV   SAP034X.    AASSTILL SAP035X.    AASMYR   SAP035X.             
      AASMERYR SAP035X.    ULCEV    SAP034X.    ULCYR    SAP035X.             
      CANEV    SAP034X.    CNKIND1  SAP062X.    CANAGE1  SAP063X.             
      CNKIND2  SAP062X.    CANAGE2  SAP063X.    CNKIND3  SAP062X.             
      CANAGE3  SAP063X.    CNKIND4  SAP062X.    CANAGE4  SAP063X.             
      CNKIND5  SAP062X.    CANAGE5  SAP063X.    CNKIND6  SAP062X.             
      CANAGE6  SAP063X.    CNKIND7  SAP062X.    CANAGE7  SAP063X.             
      CNKIND8  SAP062X.    CANAGE8  SAP063X.    CNKIND9  SAP062X.             
      CANAGE9  SAP063X.    CNKIND10 SAP062X.    CANAGE10 SAP063X.             
      CNKIND11 SAP062X.    CANAGE11 SAP063X.    CNKIND12 SAP062X.             
      CANAGE12 SAP063X.    CNKIND13 SAP062X.    CANAGE13 SAP063X.             
      CNKIND14 SAP062X.    CANAGE14 SAP063X.    CNKIND15 SAP062X.             
      CANAGE15 SAP063X.    CNKIND16 SAP062X.    CANAGE16 SAP063X.             
      CNKIND17 SAP062X.    CANAGE17 SAP063X.    CNKIND18 SAP062X.             
      CANAGE18 SAP063X.    CNKIND19 SAP062X.    CANAGE19 SAP063X.             
      CNKIND20 SAP062X.    CANAGE20 SAP063X.    CNKIND21 SAP062X.             
      CANAGE21 SAP063X.    CNKIND22 SAP062X.    CANAGE22 SAP063X.             
      CNKIND23 SAP062X.    CANAGE23 SAP063X.    CNKIND24 SAP062X.             
      CANAGE24 SAP063X.    CNKIND25 SAP062X.    CANAGE25 SAP063X.             
      CNKIND26 SAP062X.    CANAGE26 SAP063X.    CNKIND27 SAP062X.             
      CANAGE27 SAP063X.    CNKIND28 SAP062X.    CANAGE28 SAP063X.             
      CNKIND29 SAP062X.    CANAGE29 SAP063X.    CNKIND30 SAP062X.             
      CANAGE30 SAP063X.    CNKIND31 SAP062X.    DIBEV    SAP123X.             
      DIBAGE   SAP063X.    DIFAGE2  SAP125X.    INSLN    SAP035X.             
      DIBPILL  SAP035X.    AHAYFYR  SAP034X.    SINYR    SAP034X.             
      CBRCHYR  SAP034X.    KIDWKYR  SAP034X.    LIVYR    SAP034X.             
      JNTYR    SAP034X.    JNTMO    SAP035X.    JNTIJ    SAP035X.             
      JNTIJLN  SAP136X.    JNTIJLT  SAP137X.    JNTIJLM  SAP138X.             
      JNTYR1   SAP062X.    JNTYR2   SAP062X.    JNTYR3   SAP062X.             
      JNTYR4   SAP062X.    JNTYR5   SAP062X.    JNTYR6   SAP062X.             
      JNTYR7   SAP062X.    JNTYR8   SAP062X.    JNTYR9   SAP062X.             
      JNTYR10  SAP062X.    JNTYR11  SAP062X.    JNTYR12  SAP062X.             
      JNTYR13  SAP062X.    JNTYR14  SAP062X.    JNTYR15  SAP062X.             
      JNTYR16  SAP062X.    JNTYR17  SAP062X.    ARTH     SAP034X.             
      PAINECK  SAP034X.    PAINLB   SAP034X.    PAINLEG  SAP035X.             
      PAINFACE SAP034X.    AMIGR    SAP034X.    ACOLD2W  SAP034X.             
      AINTIL2W SAP034X.    PREGNOW  SAP035X.    HEARAID  SAP034X.             
      AHEARST  SAP166X.    AVISION  SAP034X.    ABLIND   SAP035X.             
      LUPPRT   SAP034X.    SAD      SAP170X.    NERVOUS  SAP170X.             
      RESTLESS SAP170X.    HOPELESS SAP170X.    EFFORT   SAP170X.             
      WORTHLS  SAP170X.    MHAMTMO  SAP176X.    AEMOFT   SAP177X.             
      AEMSAT   SAP178X.    HAPPY    SAP170X.    GET      SAP034X.             
      TELEPHON SAP034X.    RELATIVE SAP034X.    RELATIVS SAP034X.             
      WORSHIP  SAP034X.    GROUP    SAP034X.    EAT      SAP034X.             
                                                                              
      WRKLYR3  SAP187X.    WKDAYR   SAP188X.    BEDDAYR  SAP189X.             
      AHSTATYR SAP190X.    SPECEQ   SAP034X.    FLWALK   SAP192X.             
      FLCLIMB  SAP192X.    FLSTAND  SAP192X.    FLSIT    SAP192X.             
      FLSTOOP  SAP192X.    FLREACH  SAP192X.    FLGRASP  SAP192X.             
      FLCARRY  SAP192X.    FLPUSH   SAP192X.    FLSHOP   SAP192X.             
      FLSOCL   SAP192X.    FLRELAX  SAP192X.    FLA1AR   SAP204X.             
      AFLHCA1  SAP205X.    ALHCLN1  SAP206X.    ALHCLT1  SAP207X.             
      ALHCLY1  SAP208X.    ALANTR1  SAP209X.    AFLHCA2  SAP205X.             
      ALHCLN2  SAP206X.    ALHCLT2  SAP207X.    ALHCLY2  SAP208X.             
      ALANTR2  SAP209X.    AFLHCA3  SAP205X.    ALHCLN3  SAP206X.             
      ALHCLT3  SAP207X.    ALHCLY3  SAP208X.    ALANTR3  SAP209X.             
      AFLHCA4  SAP205X.    ALHCLN4  SAP206X.    ALHCLT4  SAP207X.             
      ALHCLY4  SAP208X.    ALANTR4  SAP209X.    AFLHCA5  SAP205X.             
      ALHCLN5  SAP206X.    ALHCLT5  SAP207X.    ALHCLY5  SAP208X.             
      ALANTR5  SAP209X.    AFLHCA6  SAP205X.    ALHCLN6  SAP206X.             
      ALHCLT6  SAP207X.    ALHCLY6  SAP208X.    ALANTR6  SAP209X.             
      AFLHCA7  SAP205X.    ALHCLN7  SAP206X.    ALHCLT7  SAP207X.             
      ALHCLY7  SAP208X.    ALANTR7  SAP209X.    AFLHCA8  SAP205X.             
      ALHCLN8  SAP206X.    ALHCLT8  SAP207X.    ALHCLY8  SAP208X.             
      ALANTR8  SAP209X.    AFLHCA9  SAP205X.    ALHCLN9  SAP206X.             
      ALHCLT9  SAP207X.    ALHCLY9  SAP208X.    ALANTR9  SAP209X.             
      AFLHCA10 SAP205X.    ALHCLN10 SAP206X.    ALHCLT10 SAP207X.             
      ALHCLY10 SAP208X.    ALANTR10 SAP209X.    AFLHCA11 SAP205X.             
      ALHCLN11 SAP206X.    ALHCLT11 SAP207X.    ALHCLY11 SAP208X.             
      ALANTR11 SAP209X.    AFLHCA12 SAP205X.    ALHCLN12 SAP206X.             
      ALHCLT12 SAP207X.    ALHCLY12 SAP208X.    ALANTR12 SAP209X.             
      AFLHCA13 SAP205X.    ALHCLN13 SAP266X.    ALHCLT13 SAP207X.             
      ALHCLY13 SAP208X.    ALANTR13 SAP209X.    AFLHCA14 SAP205X.             
      ALHCLN14 SAP206X.    ALHCLT14 SAP207X.    ALHCLY14 SAP208X.             
      ALANTR14 SAP209X.    AFLHCA15 SAP205X.    ALHCLN15 SAP206X.             
      ALHCLT15 SAP207X.    ALHCLY15 SAP208X.    ALANTR15 SAP209X.             
      AFLHCA16 SAP205X.    ALHCLN16 SAP206X.    ALHCLT16 SAP207X.             
      ALHCLY16 SAP208X.    ALANTR16 SAP209X.    AFLHCA17 SAP205X.             
      ALHCLN17 SAP206X.    ALHCLT17 SAP207X.    ALHCLY17 SAP208X.             
      ALANTR17 SAP209X.    AFLHCA18 SAP205X.    ALHCLN18 SAP206X.             
      ALHCLT18 SAP207X.    ALHCLY18 SAP208X.    ALANTR18 SAP209X.             
      AFLHCA19 SAP205X.    ALHCLN19 SAP206X.    ALHCLT19 SAP207X.             
      ALHCLY19 SAP208X.    ALANTR19 SAP209X.    AFLHCA20 SAP205X.             
      ALHCLN20 SAP206X.    ALHCLT20 SAP207X.    ALHCLY20 SAP208X.             
      ALANTR20 SAP209X.    AFLHCA21 SAP205X.    ALHCLN21 SAP206X.             
      ALHCLT21 SAP207X.    ALHCLY21 SAP208X.    ALANTR21 SAP209X.             
      AFLHCA22 SAP205X.    ALHCLN22 SAP206X.    ALHCLT22 SAP207X.             
      ALHCLY22 SAP208X.    ALANTR22 SAP209X.    AFLHCA23 SAP205X.             
      ALHCLN23 SAP206X.    ALHCLT23 SAP207X.    ALHCLY23 SAP208X.             
      ALANTR23 SAP209X.    AFLHCA24 SAP205X.    ALHCLN24 SAP206X.             
      ALHCLT24 SAP207X.    ALHCLY24 SAP208X.    ALANTR24 SAP209X.             
      AFLHCA25 SAP205X.    ALHCLN25 SAP206X.    ALHCLT25 SAP207X.             
      ALHCLY25 SAP208X.    ALANTR25 SAP209X.    AFLHCA26 SAP205X.             
      ALHCLN26 SAP206X.    ALHCLT26 SAP207X.    ALHCLY26 SAP208X.             
      ALANTR26 SAP209X.    AFLHCA27 SAP205X.    ALHCLN27 SAP206X.             
      ALHCLT27 SAP207X.    ALHCLY27 SAP208X.    ALANTR27 SAP209X.             
      AFLHCA28 SAP205X.    ALHCLN28 SAP206X.    ALHCLT28 SAP207X.             
      ALHCLY28 SAP208X.    ALANTR28 SAP209X.    AFLHCA29 SAP205X.             
      ALHCLN29 SAP206X.    ALHCLT29 SAP207X.    ALHCLY29 SAP208X.             
      ALANTR29 SAP209X.    AFLHCA30 SAP205X.    ALHCLN30 SAP206X.             
      ALHCLT30 SAP207X.    ALHCLY30 SAP208X.    ALANTR30 SAP209X.             
      AFLHCA31 SAP205X.    ALHCLN31 SAP206X.    ALHCLT31 SAP207X.             
      ALHCLY31 SAP208X.    ALANTR31 SAP209X.    AFLHCA32 SAP205X.             
      ALHCLN32 SAP361X.    ALHCLT32 SAP362X.    ALHCLY32 SAP208X.             
      ALANTR32 SAP209X.    AFLHCA33 SAP205X.    ALHCLN33 SAP206X.             
      ALHCLT33 SAP207X.    ALHCLY33 SAP208X.    ALANTR33 SAP209X.             
      AFLHCA34 SAP205X.    ALHCLN34 SAP206X.    ALHCLT34 SAP207X.             
      ALHCLY34 SAP208X.    ALANTR34 SAP209X.    AFLHCA90 SAP205X.             
      ALHCLN90 SAP206X.    ALHCLT90 SAP207X.    ALHCLY90 SAP208X.             
      ALANTR90 SAP209X.    AFLHCA91 SAP205X.    ALHCLN91 SAP206X.             
      ALHCLT91 SAP207X.    ALHCLY91 SAP208X.    ALANTR91 SAP209X.             
      ALCNDR1  SAP385X.    ALCNDR2  SAP385X.    ALCNDR3  SAP385X.             
      ALCNDR4  SAP385X.    ALCNDR5  SAP385X.    ALCNDR6  SAP385X.             
      ALCNDR7  SAP385X.    ALCNDR8  SAP385X.    ALCNDR9  SAP385X.             
      ALCNDR10 SAP385X.    ALCNDR11 SAP385X.    ALCNDR12 SAP385X.             
      ALCNDR13 SAP385X.    ALCNDR14 SAP385X.    ALCNDR15 SAP385X.             
      ALCNDR16 SAP385X.    ALCNDR17 SAP385X.    ALCNDR18 SAP385X.             
      ALCNDR19 SAP385X.    ALCNDR20 SAP385X.    ALCNDR21 SAP385X.             
      ALCNDR22 SAP385X.    ALCNDR23 SAP385X.    ALCNDR24 SAP385X.             
      ALCNDR25 SAP385X.    ALCNDR26 SAP385X.    ALCNDR27 SAP385X.             
      ALCNDR28 SAP385X.    ALCNDR29 SAP385X.    ALCNDR30 SAP385X.             
      ALCNDR31 SAP385X.    ALCNDR32 SAP385X.    ALCNDR33 SAP385X.             
      ALCNDR34 SAP385X.    ALCNDR90 SAP385X.    ALCNDR91 SAP385X.             
      ALCNDRT  SAP421X.    ALCHRONR SAP422X.                                  
                                                                              
      SMKEV    SAP034X.    SMKREG   SAP424X.    SMKNOW   SAP425X.             
      SMKQTNO  SAP426X.    SMKQTTP  SAP427X.    SMKQTY   SAP428X.             
      SMKQTD   SAP035X.    CIGSDA1  SAP430X.    CIGDAMO  SAP431X.             
      CIGSDA2  SAP430X.    CIGSDAY  SAP430X.    SMKSTAT1 SAP434X.             
      SMKSTAT2 SAP435X.    SMKSTAT3 SAP436X.    CIGQTYR  SAP035X.             
      VIGNO    SAP438X.    VIGTP    SAP439X.    VIGFREQW SAP440X.             
      VIGLNGNO SAP441X.    VIGLNGTP SAP442X.    VIGMIN   SAP443X.             
      VIGLONGD SAP444X.    MODNO    SAP445X.    MODTP    SAP439X.             
      MODFREQW SAP447X.    MODLNGNO SAP441X.    MODLNGTP SAP442X.             
      MODMIN   SAP443X.    MODLONGD SAP444X.    STRNGNO  SAP438X.             
      STRNGTP  SAP439X.    STRFREQW SAP454X.    STRTCHNO SAP438X.             
      STRTCHTP SAP439X.    STCFREQW SAP457X.    STRCHLNO SAP441X.             
      STRCHLTP SAP442X.    STRCHMIN SAP460X.    ALC1YR   SAP034X.             
      ALCLIFE  SAP035X.    ALC12MNO SAP463X.    ALC12MTP SAP464X.             
      ALC12MMO SAP465X.    ALC12MWK SAP466X.    ALC12MYR SAP467X.             
      ALCAMT   SAP468X.    ALC5UPNO SAP469X.    ALC5UPTP SAP464X.             
      ALC5UPYR SAP467X.    ALCSTAT1 SAP472X.    ALC7STAT SAP473X.             
      AHEIGHT  SAP474X.    AWEIGHTP SAP475X.    DESIREWT SAP476X.             
      BMI      SAP477X.                                                       
                                                                              
      AUSUALPL SAP478X.    APLKIND  SAP479X.    AHCPLROU SAP035X.             
      AHCPLKND SAP481X.    SOURCELA SAP482X.    AHCCHGYR SAP035X.             
      AHCCHGHI SAP035X.    AQHP2    SAP034X.    AQHPKND2 SAP486X.             
      AQHPVI2  SAP035X.    AHDIET   SAP035X.    AHPA     SAP035X.             
      AALCHLP  SAP035X.    AHCQSMK  SAP035X.    AHCHELP  SAP035X.             
      AHCMENO  SAP035X.    AHCDLYR1 SAP034X.    AHCDLYR2 SAP034X.             
      AHCDLYR3 SAP034X.    AHCDLYR4 SAP034X.    AHCDLYR5 SAP034X.             
      AHCDIFER SAP499X.    AHCERR01 SAP062X.    AHCERR02 SAP062X.             
      AHCERR03 SAP062X.    AHCERR04 SAP062X.    AHCERR05 SAP062X.             
      AHCERR06 SAP062X.    AHCERR07 SAP062X.    AHCERR08 SAP062X.             
      AHCERR09 SAP062X.    AHCERR10 SAP062X.    AHCERR11 SAP062X.             
      AHCERR12 SAP062X.    AHCERR13 SAP062X.    AHCAFYR1 SAP034X.             
      AHCAFYR2 SAP034X.    AHCAFYR3 SAP034X.    AHCAFYR4 SAP034X.             
      ADNLONG2 SAP517X.    AHCSYR1  SAP034X.    AHCSYR2  SAP034X.             
      AHCSYR3  SAP034X.    AHCSYR4  SAP034X.    AHCSYR5  SAP034X.             
      AHCSYR6  SAP034X.    AHCSYR7  SAP035X.    AHCSYR8  SAP034X.             
      AHCSYR9  SAP034X.    AHCSYR10 SAP035X.    AHERNOY2 SAP528X.             
      AHCHYR   SAP034X.    AHCHMOYR SAP530X.    AHCHNOY2 SAP531X.             
      AHCNOYR2 SAP528X.    ASRGYR   SAP034X.    ASRGNOYR SAP534X.             
      AMDLONGR SAP517X.    SHTFLUYR SAP034X.    SHTPNUYR SAP034X.             
      APOX     SAP034X.    APOX12MO SAP035X.    AHEP     SAP034X.             
      AHEPLIV  SAP035X.    SHTHEPB  SAP034X.    SHEPDOS  SAP543X.             
                                                                              
      ALL_SA   SAP544X.    EVERWRK  SAP035X.    WRKCAT   SAP554X.             
      WRKCATA  SAP554X.    BUSINC1  SAP035X.    BUSINC1A SAP035X.             
      LOCALL1  SAP558X.    LOCALL1A SAP558X.    YRSWRK_P SAP560X.             
      YRSWRKPA SAP560X.    HOURPD   SAP035X.    HOURPDA  SAP035X.             
      PDSICK   SAP035X.    PDSICKA  SAP035X.    ONEJOB   SAP035X.             
                                                                              
      BLDGV    SAP034X.    BLDG12M  SAP035X.    HIVTST   SAP034X.             
      WHYTST_R SAP570X.    TST12M_M SAP571X.    TST12M_Y SAP572X.             
      TIMETST  SAP573X.    REATST_C SAP574X.    REASWHOR SAP575X.             
      LASTST_C SAP576X.    CLNTYP_C SAP577X.    WHOADM   SAP578X.             
      GIVNAM   SAP035X.    EXTST12M SAP034X.    CHNSADSP SAP581X.             
      STMTRU   SAP582X.    STD      SAP035X.    STDDOC   SAP035X.             
      STDWHER  SAP585X.    TBHRD    SAP034X.    TBKNOW   SAP035X.             
      TB       SAP588X.    TBSPRD1  SAP062X.    TBSPRD2  SAP062X.             
      TBSPRD3  SAP062X.    TBSPRD4  SAP062X.    TBSPRD5  SAP062X.             
      TBSPRD6  SAP062X.    TBCURED  SAP035X.    TBCHANC  SAP596X.             
      HOMELESS SAP035X.    TBSHAME  SAP035X.;                                 
                                                                              
PROC CONTENTS DATA=NHIS.SAMADULT_2001;                                             
   TITLE1 'CONTENTS OF THE 2001 NHIS SAMADULT FILE';                          
                                                                              
PROC FREQ DATA=NHIS.SAMADULT_2001;                                                 
   TITLE1 'FREQUENCY REPORT FOR 2001 NHIS SAMADULT FILE';                     
   TITLE2 '(WEIGHTED)';                                                       
   TABLES EDUC * SEX/LIST MISSING;                                            
   WEIGHT WTFA_SA ;                                                           
                                                                              
PROC FREQ DATA=NHIS.SAMADULT_2001;                                                 
   TITLE1 'FREQUENCY REPORT FOR 2001 NHIS SAMADULT FILE';                     
   TITLE2 '(UNWEIGHTED)';                                                     
   TABLES EDUC * SEX/LIST MISSING;                                            
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE                 
        STATEMENT: FORMAT _ALL_;                                              
RUN;                                                                          
/*
data asthma2001a;
   set nhis.samadult;
   keep aasmev aasstill aasmyr aasmeryr age_p srvy_yr sex origin_i hispan_i rcdt1p_i rc_smp_i racerp_i 
        mracrp_i mracbp_i racrec_i hiscod_i;
run;


data asthma2001b;
   set asthma2001a;
   if aasmev = 1 then asth_ever = 1;
   else asth_ever = 0;
   if aasstill = 1 then asth_now = 1;
   else asth_now = 0;
   if aasmyr = 1 then asth_ep_12mon = 1; 
   else asth_ep_12mon = 0;
   if aasmeryr = 1 then asth_ep_12mon_er = 1;
   else asth_ep_12mon_er = 0;
run;

data asthma2001c;
   set asthma2001a;
   if aasmeryr > 0;
   if aasmeryr = 1 then asth_ep_12mon_er = 1;
   else asth_ep_12mon_er = 0;
   run;

proc means data = asthma2001b;
   var asth_ever asth_ep_12mon asth_ep_12mon_er;
   run;
*/
