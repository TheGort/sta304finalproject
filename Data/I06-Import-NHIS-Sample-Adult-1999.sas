                                                                              
 *--------------------------------------------------------------------------* 
 |              SAS DATA DEFINITION STATEMENTS FOR ICPSR 3397              |  
 |                 NATIONAL HEALTH INTERVIEW SURVEY, 1999                  |  
 |                                                                         |  
 | NOTE: THESE STATEMENTS HAVE BEEN PROVIDED BY NCHS.                      |  
 |        Users should modify these data definition statements to suit     |  
 |        their specific needs.                                            |  
 |                                                                         |  
 |        Users may need to modify the LIBNAME statements.                 |  
 *-------------------------------------------------------------------------*. 
*********************************************************************         
 FEBRUARY 5, 2002                                                             
                                                                              
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS                       
 FILE FROM THE 1999 NHIS PUBLIC USE SAMADULT.DAT ASCII FILE                   
                                                                              
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN                      
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                         
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                           
       DOCUMENTATION                                                          
                                                                              
 THIS IS STORED IN SAMADULT.SAS                                               
*********************************************************************;        
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;                
                                                                              
LIBNAME  NHIS    'C:\DATA\NHIS\';                                              
LIBNAME  LIBRARY 'C:\DATA\NHIS\1999';                                              
                                                                                                                              
* DEFINE VARIABLE VALUES FOR REPORTS;                                         
                                                                              
PROC FORMAT LIBRARY=LIBRARY;                                                  
  VALUE SAP001X                                                               
    30               = "Sample Adult"                                         
   ;                                                                          
  VALUE SAP002X                                                               
    1999             = "1999"                                                 
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
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP010X                                                               
    00               = "Multiple Hispanic"                                    
    01               = "Puerto Rican"                                         
    02               = "Mexican"                                              
    03               = "Mexican-American"                                     
    04               = "Cuban/Cuban American"                                 
    05               = "Dominican (Republic)"                                 
    06               = "Central or South American"                            
    07               = "Other Latin American, type not specified"             
    08               = "Other spanish"                                        
    09               = "Hispanic/Latino/Spanish, non-specific type"           
    10               = "Hispanic/Latino/Spanish, type refused"                
    11               = "Hispanic/Latino/Spanish, type not ascertained"        
    12               = "Not Hispanic/Spanish origin"                          
   ;                                                                          
  VALUE SAP011X                                                               
    01               = "White only"                                           
    02               = "Black/African American only"                          
    03               = "AIAN only"                                            
    09               = "Asian Indian only"                                    
    10               = "Chinese only"                                         
    11               = "Filipino only"                                        
    15               = "Other Asian only"                                     
    16               = "Other race only"                                      
    17               = "Multiple detailed race*"                              
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP012X                                                               
    01               = "White only"                                           
    02               = "Black/African American only"                          
    03               = "AIAN only*"                                           
    04               = "Asian only"                                           
    05               = "Other race only"                                      
    06               = "Multiple detailed race only"                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP013X                                                               
    01               = "White only"                                           
    02               = "Black/African American only"                          
    03               = "AIAN* only"                                           
    04               = "Asian only"                                           
    05               = "Other race only"                                      
    06               = "Multiple race"                                        
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP014X                                                               
    1                = "Race imputed"                                         
    2                = "Race given by respondent/proxy"                       
   ;                                                                          
  VALUE SAP015X                                                               
    01               = "White"                                                
    02               = "Black/African American"                               
    03               = "Indian (American), Alaska Native"                     
    09               = "Asian Indian"                                         
    10               = "Chinese"                                              
    11               = "Filipino"                                             
    15               = "Other Asian*"                                         
    16               = "Other Race*"                                          
    17               = "Multiple Race*"                                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP016X                                                               
    01               = "White"                                                
    02               = "Black/African American"                               
    03               = "Indian (American) (includes Eskimo, Aleut)"           
    06               = "Chinese"                                              
    07               = "Filipino"                                             
    12               = "Asian Indian"                                         
    16               = "Other race"                                           
    17               = "Multiple race"                                        
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP017X                                                               
    1                = "White"                                                
    2                = "Black"                                                
    3                = "Other"                                                
   ;                                                                          
  VALUE SAP018X                                                               
    1                = "Hispanic"                                             
    2                = "Non-Hispanic White"                                   
    3                = "Non-Hispanic Black"                                   
    4                = "Non-Hispanic Other"                                   
   ;                                                                          
  VALUE SAP019X                                                               
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
  VALUE SAP020X                                                               
    1                = "$20,000 or more"                                      
    2                = "Less than $20,000"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP021X                                                               
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
  VALUE SAP022X                                                               
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
  VALUE SAP023X                                                               
    01 - 30          = "01-30 persons"                                        
   ;                                                                          
  VALUE SAP024X                                                               
    1                = "Northeast"                                            
    2                = "Midwest"                                              
    3                = "South"                                                
    4                = "West"                                                 
   ;                                                                          
  VALUE SAP025X                                                               
    1                = "5,000,000 or more"                                    
    2                = "2,500,000 - 4,999,999"                                
    3                = "1,000,000 - 2,499,999"                                
    4                = "500,000 - 999,999"                                    
    5                = "250,000 - 499,999"                                    
    6                = "Under 250,000"                                        
    7                = "Non-MSA"                                              
   ;                                                                          
  VALUE SAP031X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP034X                                                               
    00               = "Never"                                                
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    97               = "Refused *"                                            
    98               = "Not ascertained"                                      
    99               = "Don't know *"                                         
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP035X                                                               
    0                = "Never"                                                
    1                = "Days"                                                 
    2                = "Weeks"                                                
    3                = "Months"                                               
    4                = "Years"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP036X                                                               
    00               = "Less than 1 year"                                     
    01 - 84          = "01-84 years"                                          
    85               = "85+ years"                                            
    96               = "Never"                                                
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP037X                                                               
    1                = "Not told"                                             
    2                = "High"                                                 
    3                = "Normal"                                               
    4                = "Low"                                                  
    5                = "Borderline"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP041X                                                               
    01 - 84          = "1-84 Years"                                           
    85               = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP052X                                                               
    1                = "1"                                                    
    2                = "2-3"                                                  
    3                = "4-9"                                                  
    4                = "10-12"                                                
    5                = "13+"                                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP055X                                                               
    01 - 94          = "1-94 canisters"                                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP058X                                                               
    01 - 94          = "1-94 attacks"                                         
    95               = "95+ attacks"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP060X                                                               
    1                = "Less than one time per week"                          
    2                = "One time per week"                                    
    3                = "More than one time per week"                          
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP063X                                                               
    000              = "None"                                                 
    001 - 365        = "1-365 times"                                          
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP064X                                                               
    1                = "Not at all"                                           
    2                = "A little"                                             
    3                = "A fair amount"                                        
    4                = "A moderate amount"                                    
    5                = "A lot"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP065X                                                               
    0                = "None"                                                 
    1                = "1-7"                                                  
    2                = "8-30"                                                 
    3                = "31+"                                                  
    4                = "Does not work/go to school"                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP073X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP134X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Borderline"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP135X                                                               
    01 - 82          = "1-82 Years"                                           
    83               = "83+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP136X                                                               
    00               = "Within past year"                                     
    01 - 84          = "1-84 years"                                           
    85               = "85+ years"                                            
    96               = "1+ year(s) with diabetes and age is 85+"              
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP138X                                                               
    1                = "3 months ago or less"                                 
    2                = "More than 3 months ago, but not more than 6 m"        
    3                = "More than 6 months ago, but not more than 9 m"        
    4                = "More than 9 months ago, but not more than 12 m"       
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP143X                                                               
    00               = "None"                                                 
    01 - 52          = "1-52 times"                                           
    53               = "53+ times"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP145X                                                               
    1                = "Less than 1 month"                                    
    2                = "1 to 12 months"                                       
    3                = "13 to 24 months"                                      
    4                = "More than 2 years"                                    
    5                = "Never"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP156X                                                               
    01 - 52          = "1-52 Units"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP157X                                                               
    1                = "Week(s)"                                              
    2                = "Month(s)"                                             
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP158X                                                               
    00               = "Less than 1 month"                                    
    01 - 12          = "1-12 months"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP194X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Never had a menstrual period"                         
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP196X                                                               
    1                = "More regular"                                         
    2                = "Less regular"                                         
    3                = "About the same"                                       
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP197X                                                               
    1                = "Lighter"                                              
    2                = "About the same"                                       
    3                = "Heavier"                                              
    4                = "More variable"                                        
    5                = "Has stopped"                                          
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP198X                                                               
    11 - 59          = "11-59 Years"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP199X                                                               
    01               = "Younger than 20"                                      
    02               = "20-29"                                                
    03               = "30-39"                                                
    04               = "40-44"                                                
    05               = "45-49"                                                
    06               = "50-54"                                                
    07               = "55 or older"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP201X                                                               
    11 - 84          = "11-84 Years"                                          
    85               = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP208X                                                               
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained*"                                     
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP209X                                                               
    1                = "Days"                                                 
    2                = "Weeks"                                                
    3                = "Months"                                               
    4                = "Years"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP210X                                                               
    00               = "00 Less than 1 year"                                  
    01 - 70          = "01-70 years"                                          
    71               = "71+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP211X                                                               
    14 - 84          = "14-84 years"                                          
    85               = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP212X                                                               
    0                = "No age/time period inconsistency"                     
    1                = "ESTROAGE acceptable; time period = NA"                
    2                = "Time period acceptable; ESTROAGE = NA"                
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP219X                                                               
    0                = "No age/time period inconsistency"                     
    1                = "PROGEAGE acceptable; time period = NA"                
    2                = "Time period acceptable; PROGEAGE = NA"                
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP221X                                                               
    1                = "Good"                                                 
    2                = "Little trouble"                                       
    3                = "Lot of trouble"                                       
    4                = "Deaf"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP222X                                                               
    1                = "Good"                                                 
    2                = "Little trouble"                                       
    3                = "Lot of trouble"                                       
    4                = "Deaf"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP223X                                                               
    1                = "At birth"                                             
    2                = "Less than 3 years old"                                
    3                = "Over three but less than 19 years old"                
    4                = "19 and over but less than 45 years old"               
    5                = "45 and over but less than 65 years old"               
    6                = "65 and over"                                          
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP236X                                                               
    0                = "Not at all difficult"                                 
    1                = "Only a little difficult"                              
    2                = "Somewhat difficult"                                   
    3                = "Very difficult"                                       
    4                = "Can't do at all"                                      
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP243X                                                               
    1                = "ALL of the time"                                      
    2                = "MOST of the time"                                     
    3                = "SOME of the time"                                     
    4                = "A LITTLE of the time"                                 
    5                = "NONE of the time"                                     
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP249X                                                               
    1                = "More often"                                           
    2                = "Less often"                                           
    3                = "About the same"                                       
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP250X                                                               
    1                = "A lot more"                                           
    2                = "Somewhat more"                                        
    3                = "A little more"                                        
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP251X                                                               
    1                = "A lot less"                                           
    2                = "Somewhat less"                                        
    3                = "A little less"                                        
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP252X                                                               
    1                = "A lot"                                                
    2                = "Some"                                                 
    3                = "A little"                                             
    4                = "Not at all"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP253X                                                               
    00 - 30          = "0-30 days"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP255X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Volunteered: 'I was on medication...'"                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP256X                                                               
    1                = "All day long"                                         
    2                = "Most of the day"                                      
    3                = "About half of the day"                                
    4                = "Less than half of the day"                            
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP257X                                                               
    1                = "Every day"                                            
    2                = "Almost every day"                                     
    3                = "Less often"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP260X                                                               
    1                = "Gain"                                                 
    2                = "Lose"                                                 
    3                = "Volunteered: 'both gained and lost weight'"           
    4                = "Stay about the same"                                  
    5                = "Volunteered: 'was on a diet'"                         
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP261X                                                               
    001 - 500        = "1-500 pounds"                                         
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP264X                                                               
    1                = "Every night"                                          
    2                = "Nearly every night"                                   
    3                = "Less often"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP268X                                                               
    02 - 52          = "2-52 weeks"                                           
    96               = "Entire year"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP269X                                                               
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
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP270X                                                               
    1998 - 2000      = "1998-2000"                                            
    9997             = "Refused"                                              
    9998             = "Not ascertained"                                      
    9999             = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP275X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Volunteered:'I was on medication...'"                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP279X                                                               
    1                = "Gain"                                                 
    2                = "Lose"                                                 
    3                = 'Volunteered: "both gained and lost weight"'           
    4                = "Stay about the same"                                  
    5                = 'Volunteered: "was on a diet"'                         
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP296X                                                               
    1                = "Ended"                                                
    2                = "Still going on"                                       
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP297X                                                               
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    96               = "Volunteered:  'All my life...'"                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP298X                                                               
    1                = "Months"                                               
    2                = "Years"                                                
    6                = "Volunteered:  'All my life...'"                       
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP299X                                                               
    00               = "Less than 1 year"                                     
    01 - 85          = "01-85 years"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP306X                                                               
    1                = "One thing"                                            
    2                = "More than one thing"                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP309X                                                               
    1                = "Often"                                                
    2                = "Sometimes"                                            
    3                = "Rarely"                                               
    4                = "Never"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP323X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Volunteered: 'was not in life-threatening sit'"       
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP325X                                                               
    001 - 994        = "1-994 attacks"                                        
    995              = "995+ attacks"                                         
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP327X                                                               
    1998 - 1999      = "1998-1999"                                            
    9997             = "Refused"                                              
    9998             = "Not ascertained"                                      
    9999             = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
                                                                              
  VALUE SAP335X                                                               
    0                = "Had job last week"                                    
    1                = "No job last week, had job past 12 m"                  
    2                = "No job last week, no job past 12 m"                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP336X                                                               
    000              = "None"                                                 
    001 - 366        = "1-366 days"                                           
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP337X                                                               
    000              = "None"                                                 
    001 - 366        = "1-366 days"                                           
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP338X                                                               
    1                = "Better"                                               
    2                = "Worse"                                                
    3                = "About the same"                                       
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP340X                                                               
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
  VALUE SAP352X                                                               
    1                = "Limited in any way"                                   
    2                = "Not limited in any way"                               
    3                = "Unknown if limited"                                   
   ;                                                                          
  VALUE SAP353X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    6                = "No condition at all"                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP354X                                                               
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused *"                                            
    98               = "Not ascertained"                                      
    99               = "Don't know *"                                         
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP355X                                                               
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
  VALUE SAP356X                                                               
    00               = "Less than 1 year"                                     
    01 - 84          = "01-84 years"                                          
    85 - 96          = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP357X                                                               
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
  VALUE SAP414X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP509X                                                               
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    96               = "Since birth **"                                       
    97               = "Refused *"                                            
    98               = "Not ascertained"                                      
    99               = "Don't know *"                                         
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP510X                                                               
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
  VALUE SAP528X                                                               
    1                = "Chronic"                                              
    2                = "Not chronic"                                          
    9                = "Unknown if chronic"                                   
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP563X                                                               
    1                = "At least one chronic cond causes functl lim"          
    2                = "No chronic condition causes functl lim"               
    9                = "Unknown if any chronic cond causes functl lim"        
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP564X                                                               
    0                = "Not limited in any way (incl unk if limited)"         
    1                = "Limited; caused by at least one chronic cond"         
    2                = "Limited; not caused by chronic cond"                  
    3                = "Limited; unk if cond causing LA is chronic"           
   ;                                                                          
  VALUE SAP566X                                                               
    06 - 84          = "6-84 years"                                           
    85               = "85 years or older"                                    
    96               = "Never smoked regularly"                               
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP567X                                                               
    1                = "Every day"                                            
    2                = "Some days"                                            
    3                = "Not at all"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP568X                                                               
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP570X                                                               
    00               = "Less than 1 year"                                     
    01 - 69          = "1-69 years"                                           
    70 - 96          = "70+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP572X                                                               
    01 - 94          = "1-94 cigarettes"                                      
    95               = "95+ cigarettes"                                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't Know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP573X                                                               
    00               = "None"                                                 
    01 - 30          = "1-30 days"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP576X                                                               
    1                = "Current"                                              
    2                = "Former"                                               
    3                = "Never"                                                
    4                = "Smoker, current status unknown"                       
    9                = "Unknown if ever smoked"                               
   ;                                                                          
  VALUE SAP577X                                                               
    1                = "Current every day smoker"                             
    2                = "Current some day smoker"                              
    3                = "Former smoker"                                        
    4                = "Never  smoker"                                        
    5                = "Smoker, current status unknown"                       
    9                = "Unknown if ever smoked"                               
   ;                                                                          
  VALUE SAP578X                                                               
    1                = "Current  every day smoker"                            
    2                = "Current some day smoker (1+ days past mo)"            
    3                = "Current some day smoker (0 days past mo)"             
    4                = "Current some day smoker (unknown days past mo)"       
    5                = "Former smoker"                                        
    6                = "Never smoker"                                         
    7                = "Smoker, current status unknown"                       
    9                = "Unknown if ever smoked"                               
   ;                                                                          
  VALUE SAP580X                                                               
    000              = "Never"                                                
    001 - 995        = "1-995 times per"                                      
    996              = "Unable to do this type activity"                      
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP581X                                                               
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
  VALUE SAP582X                                                               
    00               = "Less than once per week"                              
    01 - 28          = "1-28 times per week"                                  
    95               = "Never"                                                
    96               = "Unable to do vig activity"                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP583X                                                               
    001 - 720        = "1-720 (minutes/hours)"                                
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP584X                                                               
    1                = "Minutes"                                              
    2                = "Hours"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP585X                                                               
    010 - 720        = "10-720 minutes"                                       
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP586X                                                               
    1                = "Less than 20 minutes"                                 
    2                = "20 minutes or more"                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE SAP587X                                                               
    000              = "Never"                                                
    001 - 995        = "1-995 times"                                          
    996              = "Unable to do this type activity"                      
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP589X                                                               
    00               = "Less than once per week"                              
    01 - 28          = "1-28 times per week"                                  
    95               = "Never"                                                
    96               = "Unable to do moderate activity"                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP596X                                                               
    00               = "Less than once per week"                              
    01 - 28          = "1-28 times per week"                                  
    95               = "Never"                                                
    96               = "Unable to do strength activity"                       
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP599X                                                               
    000              = "Never"                                                
    001 - 365        = "1-365 days per"                                       
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP600X                                                               
    0                = "Never/None"                                           
    1                = "Week"                                                 
    2                = "Month"                                                
    3                = "Year"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP601X                                                               
    00               = "Less than once a month"                               
    01 - 30          = "1-30 days per month"                                  
    95               = "Did not drink in past year"                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP602X                                                               
    00               = "Less than one day per week"                           
    01 - 07          = "1-7 days per week"                                    
    95               = "Did not drink in past year"                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP603X                                                               
    000              = "Never/none"                                           
    001 - 365        = "1-365 days"                                           
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP604X                                                               
    01 - 94          = "1-94 drinks"                                          
    95               = "95+ drinks"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP605X                                                               
    000              = "Never/None"                                           
    001 - 365        = "1-365 days per"                                       
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP608X                                                               
    1                = "Lifetime abstainer [<12 drinks in lifetime]"          
    2                = "Former drinker [No drinks in past year]"              
    3                = "Current drinker [1+ drinks in past year]"             
    9                = "Drinking status unknown"                              
   ;                                                                          
  VALUE SAP609X                                                               
    1                = "Metric height measurement volunteered"                
    2                = "Not reported in metric units"                         
   ;                                                                          
  VALUE SAP610X                                                               
    1                = "Metric weight measurement volunteered"                
    2                = "Not reported in metric units"                         
   ;                                                                          
  VALUE SAP611X                                                               
    59 - 76          = "59-76 inches"                                         
    96               = "Not available"                                        
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
   ;                                                                          
  VALUE SAP612X                                                               
    099 - 285        = "99-285 pounds"                                        
    996              = "Not available"                                        
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
   ;                                                                          
  VALUE SAP613X                                                               
    1                = "10% or more below desirable weight"                   
    2                = "5-9% below desirable weight"                          
    3                = "4.9% (+/-) of desirable body weight"                  
    4                = "5-9.9% above desirable body weight"                   
    5                = "10-19.9% above desirable body weight"                 
    6                = "20-29.9 % above desirable body weight"                
    7                = "30% + above desirable body weight"                    
    9                = "Unknown"                                              
   ;                                                                          
  VALUE SAP614X                                                               
    00.01 - 99.94    = "00.01-99.94"                                          
    99.95            = "99.95+"                                               
    99.99            = "Unknown"                                              
   ;                                                                          
                                                                              
  VALUE SAP615X                                                               
    1                = "Yes"                                                  
    2                = "There is NO place"                                    
    3                = "There is MORE THAN ONE place"                         
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP616X                                                               
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
  VALUE SAP617X                                                               
    1                = "1 year or less"                                       
    2                = "More than 1 yr but not more than 3 yrs"               
    3                = "More than 3 years"                                    
    4                = "Hasn't been there yet"                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP619X                                                               
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
  VALUE SAP620X                                                               
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
  VALUE SAP622X                                                               
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
  VALUE SAP624X                                                               
    1                = "General doctor treats a variety of illnesses"         
    2                = "Dr specializes med dis/prob (not ob/gyn)"             
    3                = "Some other kind of doctor"                            
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP626X                                                               
    1                = "Adults with a single source of medical care"          
    2                = "Adults with no known single source of med care"       
    3                = "Undefined"                                            
   ;                                                                          
  VALUE SAP628X                                                               
    00 - 10          = "0-10"                                                 
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP629X                                                               
    01               = "Seldom or never gets sick"                            
    02               = "Recently moved into the area"                         
    03               = "Don't know where to go for care"                      
    04               = "Usual source of care in area not avail"               
    05               = "Can't find provider who speaks lang"                  
    06               = "Like to go diffnt pls for h/care needs"               
    07               = "Just changed insurance plans"                         
    08               = "Don't use doctors/treat myself"                       
    09               = "Cost of medical care"                                 
    10               = "Other reason"                                         
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP631X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Provider open 24 hours"                               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP632X                                                               
    1                = "No appointment necessary"                             
    2                = "A day or two"                                         
    3                = "More than 2 days, but not more than 1 wk"             
    4                = "More than 1 wk, but not more than 2 wks"              
    5                = "More than 2 wks, but not more than 1 mo"              
    6                = "More than 1 month"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP633X                                                               
    0                = "No appointment necessary"                             
    1                = "Scheduled appointment well in advance"                
    2                = "A day or two"                                         
    3                = "More than 2 days, but not more than 1 wk"             
    4                = "More than 1 wk, but not more than 2 wks"              
    5                = "More than 2 wks, but not more than 1 mo"              
    6                = "More than 1 month"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP634X                                                               
    1                = "30 minutes or less"                                   
    2                = "More than 30 min, but not more than 1 hr"             
    3                = "More than an hour"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP635X                                                               
    00 - 10          = "0-10"                                                 
    96               = "No prof staff/provider works alone"                   
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP649X                                                               
    00               = "Less than one year  *"                                
    01 - 94          = "01-94"                                                
    95               = "95+"                                                  
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP651X                                                               
    00               = "Less than 1 year"                                     
    01 - 84          = "01-84 years"                                          
    85               = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP652X                                                               
    1                = "Time interval given was imputed"                      
    0                = "Time interval not imputed"                            
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE SAP653X                                                               
    1                = "A year ago or less"                                   
    2                = "More than 1 yr but not more than 2 yrs"               
    3                = "More than 2 yrs but not more than 3 yrs"              
    4                = "More than 3 yrs but not more than 5 yrs"              
    5                = "Over 5 years ago"                                     
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP673X                                                               
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
  VALUE SAP674X                                                               
    1                = "Went on own for checkup/exam/cleaning"                
    2                = "Called by dentist for checkup/exam/cleaning"          
    3                = "Something wrong/bothering/hurting"                    
    4                = "Treat cond found at prev checkup/exam"                
    5                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP687X                                                               
    01 - 94          = "1-94 visits"                                          
    95               = "95+ visits"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP689X                                                               
    01 - 40          = "1-40 two week dental visits"                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP701X                                                               
    0                = "None"                                                 
    1                = "1"                                                    
    2                = "2-3"                                                  
    3                = "4-9"                                                  
    4                = "10-12"                                                
    5                = "13 or more"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP702X                                                               
    01               = "You don't need an appointment there"                  
    02               = "Didn't know where else to go"                         
    03               = "They won't turn anyone away"                          
    04               = "No other place was open at that time"                 
    05               = "A doctor said to go there"                            
    06               = "Life or death situation"                              
    07               = "Other reason"                                         
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP704X                                                               
    01 - 12          = "01-12 months"                                         
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP705X                                                               
    1                = "1"                                                    
    2                = "2-3"                                                  
    3                = "4-9"                                                  
    4                = "10-12"                                                
    5                = "13 or more"                                           
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP708X                                                               
    01 - 94          = "1-94 Times"                                           
    95               = "95+ Times"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP727X                                                               
    0                = "Yes, not specified"                                   
    1                = "Yes"                                                  
    2                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP737X                                                               
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
  VALUE SAP738X                                                               
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
  VALUE SAP740X                                                               
    00               = "Less than 1 year"                                     
    01 - 34          = "01-34 years"                                          
    35               = "35 or more years"                                     
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP741X                                                               
    1                = "One year or less"                                     
    2                = "More than one year"                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP745X                                                               
    1                = "Employee only"                                        
    2                = "Self-employed only"                                   
    3                = "Both"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP774X                                                               
    01               = "AIDS clinic/counseling/testing site"                  
    02               = "Community health clinic"                              
    03               = "Clinic run by employer"                               
    04               = "STD clinic"                                           
    05               = "Family planning"                                      
    06               = "Prenatal clinic"                                      
    07               = "Other clinic"                                         
    08               = "Doctor/HMO"                                           
    09               = "Hospital/emergency room/outpatient clinic"            
    10               = "Military induction/separation/military site"          
    11               = "Immigration site"                                     
    12               = "At home/home visits by nurse/health worker"           
    13               = "At home - self testing kit"                           
    14               = "Other location - specify"                             
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP775X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    3                = "Only notified if there was a problem"                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP777X                                                               
    1                = "In person"                                            
    2                = "By telephone"                                         
    3                = "By mail"                                              
    4                = "In some other way"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP791X                                                               
    01               = "AIDS clinic/counseling/testing site"                  
    02               = "Community health clinic"                              
    03               = "Clinic run by employer"                               
    04               = "STD clinic"                                           
    05               = "Family planning"                                      
    06               = "Prenatal clinic"                                      
    07               = "Other clinic"                                         
    08               = "Doctor/HMO"                                           
    09               = "Hospital/emergency room/outpatient clinic"            
    10               = "Military induction/separation/military site"          
    11               = "Red cross/blood bank/blood drive"                     
    12               = "At home/home visit by nurse/hlth practitioner"        
    13               = "At home - self testing kit"                           
    14               = "Other location - specify"                             
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE SAP792X                                                               
    1                = "High/Already have AIDS/AIDS virus"                    
    2                = "Medium"                                               
    3                = "Low"                                                  
    4                = "None"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE SAP793X                                                               
    1                = "Yes to at least one statement"                        
    2                = "No to all statements"                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
                                                                              
DATA NHIS.SAMADULT_1999;                                                           
   * CREATE A SAS DATA SET;                                                   
   INFILE "C:\DATA\NHIS\1999\da3397.sadult.sas" PAD LRECL=1229;                                               
                                                                              
   * DEFINE LENGTH OF ALL VARIABLES;                                          
                                                                              
   LENGTH                                                                     
      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2               
      PX       $ 2   INTV_QRT   3   SEX        3   AGE_P      3               
      ORIGIN     3   HISPANCR   3   RACDET_P   3   RC_SUM_P   3               
      RACER_P    3   RCIMPFGR   3   MRACER_P   3   MRACBR_P   3               
      RACERECR   3   HISPCODR   3   EDUC       3   AB_BL20K   3               
      RAT_CAT    3   R_MARITL   3   FM_SIZE    3   REGION     3               
      MSASIZEP   3   WTIA_SA    8   WTFA_SA    8   STRATUM    4               
      PSU        3                                                            
                                                                              
      HYPEV      3   HYPDIFV    3   HYPMEDEV   3   HYPMED     3               
      HYBPCKNO   3   HYBPCKTP   3   HYBPCKYR   3   HYBPLEV    3               
      CHDEV      3   ANGEV      3   MIEV       3   MIAGE      3               
      HRTEV      3   CON        3   STREV      3   EPHEV      3               
      OST        3   PAR        3   AASMEV     3   AASMYR     3               
      AASMERYR   3   AASMHOS    3   AASHONT    3   AASMOTC    3               
      AASMPMED   3   AASMCAN    3   AASCLASS   3   AWZ        3               
      AWZNUM     3   AWZSLP     3   AWZSPL     3   AWZEX      3               
      AWZSPC     3   AWZERYR    4   AWZLA      3   AWZMSWK    3               
      ULCEV      3   ULCERAGE   3   ULCYR      3   ULCCOLEV   3               
      CHRONAGE   3   ULCCOLYR   3   CANEV      3   CNKIND1    3               
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
      DIBEV      3   DIBAGE     3   DIFAGE     3   DIB12MO    3               
      DIB3MO     3   INSLN      3   DIBPILL    3   DIBCLASS   3               
      DIBA1CKN   3   DIBA1CCK   3   DIBFTCK    3   DIBEYCKL   3               
      AHAYFYR    3   SINYR      3   CBRCHYR    3   KIDWKYR    3               
      LIVYR      3   KSTYR      3   CTSYR      3   JNTYR      3               
      JNTMO      3   JNTIJ      3   JNTIJLN    3   JNTIJLT    3               
      JNTIJLM    3   JNTYR1     3   JNTYR2     3   JNTYR3     3               
      JNTYR4     3   JNTYR5     3   JNTYR6     3   JNTYR7     3               
      JNTYR8     3   JNTYR9     3   JNTYR10    3   JNTYR11    3               
      JNTYR12    3   JNTYR13    3   JNTYR14    3   JNTYR15    3               
      JNTYR16    3   JNTYR17    3   JNT_RH     3   JNT_OST    3               
      JNT_OA     3   JNT_GOUT   3   JNT_BURS   3   JNT_OC     3               
      JTSTERYR   3   JTSTERMO   3   PAINECK    3   PAINLB     3               
      PAINLEG    3   PAINFACE   3   AMIGR      3   ACOLD2W    3               
      ACLD2WMD   3   AINTIL2W   3   AINTILMD   3   PREGNOW    3               
      MNYR       3   MN3MO      3   MNREG      3   MNFLOW     3               
      MENAGE     3   MNAGE2     3   MNHYST     3   HYSTAGE    3               
      MNOVAR     3   OVARYAGE   3   MNHTFLSH   3   MNHMRPMD   3               
      MNESTEV    3   MNESTNOW   3   MNESTLNO   3   MNESTLTP   3               
      MNESTLYR   3   ESTROAGE   3   ESTFLG     3   MNPGSEV    3               
      MNPGSNOW   3   MNPGSLNO   3   MNPGSLTP   3   MNPGSLYR   3               
      PROGEAGE   3   PROGFLG    3   HEARAID    3   AHEARST    3               
      HEARLFT    3   HEARLAGE   3   HEARRGT    3   HEARRAGE   3               
      HEARDAGE   3   HEARWHIS   3   HEARVOIC   3   HEARSHT    3               
      HEARSKLD   3   AVISCAT    3   AVISGLAU   3   AVISMACD   3               
      AVISION    3   ABLIND     3   NWS        3   CLS        3               
      NIT        3   DRV        3   PER        3   CRD        3               
      LUPPRT     3   SAD        3   NERVOUS    3   RESTLESS   3               
      HOPELESS   3   EFFORT     3   WORTHLS    3   MHFEMO     3               
      MHFEMOMR   3   MHFEMOLS   3   MHAMTMO    3   MHFENWK    3               
      MHFECDA    3   MHDSAD2W   3   MHDSADDY   3   MHDSADLO   3               
      MHDSADLI   3   MHDSADTD   3   MHDSADWT   3   MHDSADWC   4               
      MHDSADLB   3   MHDSADSP   3   MHDSADNT   3   MHDSADCN   3               
      MHDSADWR   3   MHDSADDE   3   MHDSADWY   3   MHDSAD_M   3               
      MHDSAD_Y   4   MHDSADMD   3   MHDSADHP   3   MHDSADAC   3               
      MHDSADIA   3   MHDINT2W   3   MHDINTDY   3   MHDINTLO   3               
      MHDINTTD   3   MHDINTWT   3   MHDINTWC   4   MHDINTLB   3               
      MHDINTSP   3   MHDINTNT   3   MHDINTCN   3   MHDINTWR   3               
      MHDINTDE   3   MHDINTWY   3   MHDINT_M   3   MHDINT_Y   4               
      MHDINTMD   3   MHDINTHP   3   MHDINTAC   3   MHDINTIA   3               
      MHAXEVYR   3   MHAXMO     3   MHAXL      3   MHAXENNO   3               
      MHAXENTP   3   MHAXENYR   3   MHAXLNNO   3   MHAXLNTP   3               
      MHAXLNYR   3   MHAX6MO    3   MHAXWST    3   MHAXWDYS   3               
      MHAXWI     3   MHAXDST    3   MHAXW2     3   MHAXWSTR   3               
      MHAXWCNT   3   MHAX_RST   3   MHAX_EDG   3   MHAX_IRR   3               
      MHAX_HTP   3   MHAX_WTD   3   MHAX_WSP   3   MHAX_WLH   3               
      MHAXWMD    3   MHAXWHP    3   MHAXWAC    3   MHAXWITF   3               
      MHPEVYR    3   MHPLFTH    3   MHPNLFTH   3   MHPANYR    4               
      MHPANDTM   3   MHPANDTY   4   MHPNODAN   3   MHPA_AHP   3               
      MHPA_CST   3   MHPA_SWT   3   MHPA_SHK   3   MHPA_FLA   3               
      MHPA_UNR   3                                                            
                                                                              
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
      ALANTR90   3   ALCNDR1    3   ALCNDR2    3   ALCNDR3    3               
      ALCNDR4    3   ALCNDR5    3   ALCNDR6    3   ALCNDR7    3               
      ALCNDR8    3   ALCNDR9    3   ALCNDR10   3   ALCNDR11   3               
      ALCNDR12   3   ALCNDR13   3   ALCNDR14   3   ALCNDR15   3               
      ALCNDR16   3   ALCNDR17   3   ALCNDR18   3   ALCNDR19   3               
      ALCNDR20   3   ALCNDR21   3   ALCNDR22   3   ALCNDR23   3               
      ALCNDR24   3   ALCNDR25   3   ALCNDR26   3   ALCNDR27   3               
      ALCNDR28   3   ALCNDR29   3   ALCNDR30   3   ALCNDR31   3               
      ALCNDR32   3   ALCNDR33   3   ALCNDR34   3   ALCNDR90   3               
      ALCNDRT    3   ALCHRONR   3                                             
                                                                              
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
                                                                              
      AUSUALPL   3   APLKIND    3   AQUSL      3   AHCPLROU   3               
      AHCPLKND   3   SOURCELA   3   AQHP       3   AQHPKIND   3               
      AQMDGYN    3   AQMDGS     3   AQMDCA     3   ONESRCEA   3               
      AQHPVI     3   AQHPRAT    3   AQWHYNOT   3   AQHPNHR    3               
      AQHPTEL    3   AQHPSINJ   3   AQHPRT     3   AQHPWAIT   3               
      AQUSCSAT   3   AQPREMED   3   AHCCHGYR   3   AHCCHGHI   3               
      AHCDLYR1   3   AHCDLYR2   3   AHCDLYR3   3   AHCDLYR4   3               
      AHCDLYR5   3   AHCAFYR1   3   AHCAFYR2   3   AHCAFYR3   3               
      AHCAFYR4   3   PAP        3   RPAP1NO    3   RPAP1TP    3               
      RPAP1Y     3   PAPFLG     3   RPAP2      3   BEX        3               
      RBEX1NO    3   RBEX1TP    3   RBEX1Y     3   BEXFLG     3               
      RBEX2      3   MAM        3   RMAM1NO    3   RMAM1TP    3               
      RMAM1Y     3   MAMFLG     3   RMAM2      3   PSAHRD     3               
      PSAEV      3   RPSA1NO    3   RPSA1TP    3   RPSA1Y     3               
      PSAFLG     3   RPSA2      3   ADNLONGR   3   ADENREAS   3               
      ADENNO01   3   ADENNO02   3   ADENNO03   3   ADENNO04   3               
      ADENNO05   3   ADENNO06   3   ADENNO07   3   ADENNO08   3               
      ADENNO09   3   ADENNO10   3   ADENNO11   3   ADENNO12   3               
      ADENVIS    3   ADEN2W     3   ADEN2WNO   3   ADENINS    3               
      AHCSYR1    3   AHCSYR2    3   AHCSYR3    3   AHCSYR4    3               
      AHCSYR5    3   AHCSYR6    3   AHCSYR7    3   AHCSYR8    3               
      AHCSYR9    3   AHCSYR10   3   AHERNOYR   3   AHERREAS   3               
      AHCHYR     3   AHCHMOYR   3   AHCHNOYR   3   AHCNOYR    3               
      ASRGYR     3   ASRGNOYR   3   APMED3MO   3   APMEDREG   3               
      AMDLONGR   3   AQOVHC     3   SHTFLUYR   3   SHTPNUYR   3               
      SHTTETYR   3   AHCACU     3   AHCREL     3   AHCMT      3               
      AHCIMA     3   AHCSPI     3   AHCLSD     3   AHCHM      3               
      AHCHOME    3   AHCENE     3   AHCBIO     3   AHCHYP     3               
      AHCOTH     3   ALTH1    $ 30  ALTH2    $ 30  ALTH3    $ 30              
      ALTH4    $ 30  ALTH5    $ 30                                            
                                                                              
      INDSTRY1   3   INDSTRY2   3   OCCUP1     3   OCCUP2     3               
      WRKCAT     3   LOCALLNO   3   LOCPRTNO   3   YRSWRK_P   3               
      WRKLONGD   3   HOURPD     3   PDSICK     3   ONEJOB     3               
      WRKCATOT   3   BUSINC     3                                             
                                                                              
      BLDGV      3   BLDG12M    3   AIDSTST    3   WHYTSU01   3               
      WHYTSU02   3   WHYTSU03   3   WHYTSU04   3   WHYTSU05   3               
      WHYTSU06   3   WHYTSU07   3   WHYTSU08   3   WHYTSU09   3               
      WHYTSU10   3   TST12M     3   REATOT01   3   REATOT02   3               
      REATOT03   3   REATOT04   3   REATOT05   3   REATOT06   3               
      REATOT07   3   REATOT08   3   REATOT09   3   REATOT10   3               
      REATOT11   3   REATOT12   3   REATOT13   3   LASTST     3               
      ALTST      3   TALKHP     3   RSGVN      3   EXTST12M   3               
      WHY12U01   3   WHY12U02   3   WHY12U03   3   WHY12U04   3               
      WHY12U05   3   WHY12U06   3   WHY12U07   3   WHY12U08   3               
      WHY12U09   3   WHY12U10   3   WHY12U11   3   WHY12U12   3               
      WHERTST    3   CHNSADSP   3   STMTRU     3 ;                            
                                                                              
   * INPUT ALL VARIABLES;                                                     
                                                                              
   INPUT                                                                      
      RECTYPE       1 -   2    SRVY_YR       3 -   6                          
      HHX      $    7 -  12    FMX      $   13 -  14                          
      PX       $   15 -  16    INTV_QRT     17 -  17                          
      SEX          18 -  18    AGE_P        19 -  20                          
      ORIGIN       21 -  21    HISPANCR     22 -  23                          
      RACDET_P     24 -  25    RC_SUM_P     26 -  27                          
      RACER_P      28 -  29    RCIMPFGR     30 -  30                          
      MRACER_P     31 -  32    MRACBR_P     33 -  34                          
      RACERECR     35 -  35    HISPCODR     36 -  36                          
      EDUC         37 -  38    AB_BL20K     39 -  39                          
      RAT_CAT      40 -  41    R_MARITL     42 -  42                          
      FM_SIZE      43 -  44    REGION       45 -  45                          
      MSASIZEP     46 -  46    WTIA_SA      47 -  52 .1                       
      WTFA_SA      53 -  58    STRATUM      59 -  61                          
      PSU          62 -  62                                                   
                                                                              
      HYPEV        63 -  63    HYPDIFV      64 -  64                          
      HYPMEDEV     65 -  65    HYPMED       66 -  66                          
      HYBPCKNO     67 -  68    HYBPCKTP     69 -  69                          
      HYBPCKYR     70 -  71    HYBPLEV      72 -  72                          
      CHDEV        73 -  73    ANGEV        74 -  74                          
      MIEV         75 -  75    MIAGE        76 -  77                          
      HRTEV        78 -  78    CON          79 -  79                          
      STREV        80 -  80    EPHEV        81 -  81                          
      OST          82 -  82    PAR          83 -  83                          
      AASMEV       84 -  84    AASMYR       85 -  85                          
      AASMERYR     86 -  86    AASMHOS      87 -  87                          
      AASHONT      88 -  88    AASMOTC      89 -  89                          
      AASMPMED     90 -  90    AASMCAN      91 -  92                          
      AASCLASS     93 -  93    AWZ          94 -  94                          
      AWZNUM       95 -  96    AWZSLP       97 -  97                          
      AWZSPL       98 -  98    AWZEX        99 -  99                          
      AWZSPC      100 - 100    AWZERYR     101 - 103                          
      AWZLA       104 - 104    AWZMSWK     105 - 105                          
      ULCEV       106 - 106    ULCERAGE    107 - 108                          
      ULCYR       109 - 109    ULCCOLEV    110 - 110                          
      CHRONAGE    111 - 112    ULCCOLYR    113 - 113                          
      CANEV       114 - 114    CNKIND1     115 - 115                          
      CANAGE1     116 - 117    CNKIND2     118 - 118                          
      CANAGE2     119 - 120    CNKIND3     121 - 121                          
      CANAGE3     122 - 123    CNKIND4     124 - 124                          
      CANAGE4     125 - 126    CNKIND5     127 - 127                          
      CANAGE5     128 - 129    CNKIND6     130 - 130                          
      CANAGE6     131 - 132    CNKIND7     133 - 133                          
      CANAGE7     134 - 135    CNKIND8     136 - 136                          
      CANAGE8     137 - 138    CNKIND9     139 - 139                          
      CANAGE9     140 - 141    CNKIND10    142 - 142                          
      CANAGE10    143 - 144    CNKIND11    145 - 145                          
      CANAGE11    146 - 147    CNKIND12    148 - 148                          
      CANAGE12    149 - 150    CNKIND13    151 - 151                          
      CANAGE13    152 - 153    CNKIND14    154 - 154                          
      CANAGE14    155 - 156    CNKIND15    157 - 157                          
      CANAGE15    158 - 159    CNKIND16    160 - 160                          
      CANAGE16    161 - 162    CNKIND17    163 - 163                          
      CANAGE17    164 - 165    CNKIND18    166 - 166                          
      CANAGE18    167 - 168    CNKIND19    169 - 169                          
      CANAGE19    170 - 171    CNKIND20    172 - 172                          
      CANAGE20    173 - 174    CNKIND21    175 - 175                          
      CANAGE21    176 - 177    CNKIND22    178 - 178                          
      CANAGE22    179 - 180    CNKIND23    181 - 181                          
      CANAGE23    182 - 183    CNKIND24    184 - 184                          
      CANAGE24    185 - 186    CNKIND25    187 - 187                          
      CANAGE25    188 - 189    CNKIND26    190 - 190                          
      CANAGE26    191 - 192    CNKIND27    193 - 193                          
      CANAGE27    194 - 195    CNKIND28    196 - 196                          
      CANAGE28    197 - 198    CNKIND29    199 - 199                          
      CANAGE29    200 - 201    CNKIND30    202 - 202                          
      CANAGE30    203 - 204    CNKIND31    205 - 205                          
      DIBEV       206 - 206    DIBAGE      207 - 208                          
      DIFAGE      209 - 210    DIB12MO     211 - 211                          
      DIB3MO      212 - 212    INSLN       213 - 213                          
      DIBPILL     214 - 214    DIBCLASS    215 - 215                          
      DIBA1CKN    216 - 216    DIBA1CCK    217 - 218                          
      DIBFTCK     219 - 220    DIBEYCKL    221 - 221                          
      AHAYFYR     222 - 222    SINYR       223 - 223                          
      CBRCHYR     224 - 224    KIDWKYR     225 - 225                          
      LIVYR       226 - 226    KSTYR       227 - 227                          
      CTSYR       228 - 228    JNTYR       229 - 229                          
      JNTMO       230 - 230    JNTIJ       231 - 231                          
      JNTIJLN     232 - 233    JNTIJLT     234 - 234                          
      JNTIJLM     235 - 236    JNTYR1      237 - 237                          
      JNTYR2      238 - 238    JNTYR3      239 - 239                          
      JNTYR4      240 - 240    JNTYR5      241 - 241                          
      JNTYR6      242 - 242    JNTYR7      243 - 243                          
      JNTYR8      244 - 244    JNTYR9      245 - 245                          
      JNTYR10     246 - 246    JNTYR11     247 - 247                          
      JNTYR12     248 - 248    JNTYR13     249 - 249                          
      JNTYR14     250 - 250    JNTYR15     251 - 251                          
      JNTYR16     252 - 252    JNTYR17     253 - 253                          
      JNT_RH      254 - 254    JNT_OST     255 - 255                          
      JNT_OA      256 - 256    JNT_GOUT    257 - 257                          
      JNT_BURS    258 - 258    JNT_OC      259 - 259                          
      JTSTERYR    260 - 260    JTSTERMO    261 - 261                          
      PAINECK     262 - 262    PAINLB      263 - 263                          
      PAINLEG     264 - 264    PAINFACE    265 - 265                          
      AMIGR       266 - 266    ACOLD2W     267 - 267                          
      ACLD2WMD    268 - 268    AINTIL2W    269 - 269                          
      AINTILMD    270 - 270    PREGNOW     271 - 271                          
      MNYR        272 - 272    MN3MO       273 - 273                          
      MNREG       274 - 274    MNFLOW      275 - 275                          
      MENAGE      276 - 277    MNAGE2      278 - 279                          
      MNHYST      280 - 280    HYSTAGE     281 - 282                          
      MNOVAR      283 - 283    OVARYAGE    284 - 285                          
      MNHTFLSH    286 - 286    MNHMRPMD    287 - 287                          
      MNESTEV     288 - 288    MNESTNOW    289 - 289                          
      MNESTLNO    290 - 291    MNESTLTP    292 - 292                          
      MNESTLYR    293 - 294    ESTROAGE    295 - 296                          
      ESTFLG      297 - 297    MNPGSEV     298 - 298                          
      MNPGSNOW    299 - 299    MNPGSLNO    300 - 301                          
      MNPGSLTP    302 - 302    MNPGSLYR    303 - 304                          
      PROGEAGE    305 - 306    PROGFLG     307 - 307                          
      HEARAID     308 - 308    AHEARST     309 - 309                          
      HEARLFT     310 - 310    HEARLAGE    311 - 311                          
      HEARRGT     312 - 312    HEARRAGE    313 - 313                          
      HEARDAGE    314 - 314    HEARWHIS    315 - 315                          
      HEARVOIC    316 - 316    HEARSHT     317 - 317                          
      HEARSKLD    318 - 318    AVISCAT     319 - 319                          
      AVISGLAU    320 - 320    AVISMACD    321 - 321                          
      AVISION     322 - 322    ABLIND      323 - 323                          
      NWS         324 - 324    CLS         325 - 325                          
      NIT         326 - 326    DRV         327 - 327                          
      PER         328 - 328    CRD         329 - 329                          
      LUPPRT      330 - 330    SAD         331 - 331                          
      NERVOUS     332 - 332    RESTLESS    333 - 333                          
      HOPELESS    334 - 334    EFFORT      335 - 335                          
      WORTHLS     336 - 336    MHFEMO      337 - 337                          
      MHFEMOMR    338 - 338    MHFEMOLS    339 - 339                          
      MHAMTMO     340 - 340    MHFENWK     341 - 342                          
      MHFECDA     343 - 344    MHDSAD2W    345 - 345                          
      MHDSADDY    346 - 346    MHDSADLO    347 - 347                          
      MHDSADLI    348 - 348    MHDSADTD    349 - 349                          
      MHDSADWT    350 - 350    MHDSADWC    351 - 353                          
      MHDSADLB    354 - 354    MHDSADSP    355 - 355                          
      MHDSADNT    356 - 356    MHDSADCN    357 - 357                          
      MHDSADWR    358 - 358    MHDSADDE    359 - 359                          
      MHDSADWY    360 - 361    MHDSAD_M    362 - 363                          
      MHDSAD_Y    364 - 367    MHDSADMD    368 - 368                          
      MHDSADHP    369 - 369    MHDSADAC    370 - 370                          
      MHDSADIA    371 - 371    MHDINT2W    372 - 372                          
      MHDINTDY    373 - 373    MHDINTLO    374 - 374                          
      MHDINTTD    375 - 375    MHDINTWT    376 - 376                          
      MHDINTWC    377 - 379    MHDINTLB    380 - 380                          
      MHDINTSP    381 - 381    MHDINTNT    382 - 382                          
      MHDINTCN    383 - 383    MHDINTWR    384 - 384                          
      MHDINTDE    385 - 385    MHDINTWY    386 - 387                          
      MHDINT_M    388 - 389    MHDINT_Y    390 - 393                          
      MHDINTMD    394 - 394    MHDINTHP    395 - 395                          
      MHDINTAC    396 - 396    MHDINTIA    397 - 397                          
      MHAXEVYR    398 - 398    MHAXMO      399 - 399                          
      MHAXL       400 - 400    MHAXENNO    401 - 402                          
      MHAXENTP    403 - 403    MHAXENYR    404 - 405                          
      MHAXLNNO    406 - 407    MHAXLNTP    408 - 408                          
      MHAXLNYR    409 - 410    MHAX6MO     411 - 411                          
      MHAXWST     412 - 412    MHAXWDYS    413 - 413                          
      MHAXWI      414 - 414    MHAXDST     415 - 415                          
      MHAXW2      416 - 416    MHAXWSTR    417 - 417                          
      MHAXWCNT    418 - 418    MHAX_RST    419 - 419                          
      MHAX_EDG    420 - 420    MHAX_IRR    421 - 421                          
      MHAX_HTP    422 - 422    MHAX_WTD    423 - 423                          
      MHAX_WSP    424 - 424    MHAX_WLH    425 - 425                          
      MHAXWMD     426 - 426    MHAXWHP     427 - 427                          
      MHAXWAC     428 - 428    MHAXWITF    429 - 429                          
      MHPEVYR     430 - 430    MHPLFTH     431 - 431                          
      MHPNLFTH    432 - 432    MHPANYR     433 - 435                          
      MHPANDTM    436 - 437    MHPANDTY    438 - 441                          
      MHPNODAN    442 - 442    MHPA_AHP    443 - 443                          
      MHPA_CST    444 - 444    MHPA_SWT    445 - 445                          
      MHPA_SHK    446 - 446    MHPA_FLA    447 - 447                          
      MHPA_UNR    448 - 448                                                   
                                                                              
      WRKLYR2     449 - 449    WKDAYR      450 - 452                          
      BEDDAYR     453 - 455    AHSTATYR    456 - 456                          
      SPECEQ      457 - 457    FLWALK      458 - 458                          
      FLCLIMB     459 - 459    FLSTAND     460 - 460                          
      FLSIT       461 - 461    FLSTOOP     462 - 462                          
      FLREACH     463 - 463    FLGRASP     464 - 464                          
      FLCARRY     465 - 465    FLPUSH      466 - 466                          
      FLSHOP      467 - 467    FLSOCL      468 - 468                          
      FLRELAX     469 - 469    FLA1AR      470 - 470                          
      AFLHCA1     471 - 471    ALHCLN1     472 - 473                          
      ALHCLT1     474 - 474    ALHCLY1     475 - 476                          
      ALANTR1     477 - 478    AFLHCA2     479 - 479                          
      ALHCLN2     480 - 481    ALHCLT2     482 - 482                          
      ALHCLY2     483 - 484    ALANTR2     485 - 486                          
      AFLHCA3     487 - 487    ALHCLN3     488 - 489                          
      ALHCLT3     490 - 490    ALHCLY3     491 - 492                          
      ALANTR3     493 - 494    AFLHCA4     495 - 495                          
      ALHCLN4     496 - 497    ALHCLT4     498 - 498                          
      ALHCLY4     499 - 500    ALANTR4     501 - 502                          
      AFLHCA5     503 - 503    ALHCLN5     504 - 505                          
      ALHCLT5     506 - 506    ALHCLY5     507 - 508                          
      ALANTR5     509 - 510    AFLHCA6     511 - 511                          
      ALHCLN6     512 - 513    ALHCLT6     514 - 514                          
      ALHCLY6     515 - 516    ALANTR6     517 - 518                          
      AFLHCA7     519 - 519    ALHCLN7     520 - 521                          
      ALHCLT7     522 - 522    ALHCLY7     523 - 524                          
      ALANTR7     525 - 526    AFLHCA8     527 - 527                          
      ALHCLN8     528 - 529    ALHCLT8     530 - 530                          
      ALHCLY8     531 - 532    ALANTR8     533 - 534                          
      AFLHCA9     535 - 535    ALHCLN9     536 - 537                          
      ALHCLT9     538 - 538    ALHCLY9     539 - 540                          
      ALANTR9     541 - 542    AFLHCA10    543 - 543                          
      ALHCLN10    544 - 545    ALHCLT10    546 - 546                          
      ALHCLY10    547 - 548    ALANTR10    549 - 550                          
      AFLHCA11    551 - 551    ALHCLN11    552 - 553                          
      ALHCLT11    554 - 554    ALHCLY11    555 - 556                          
      ALANTR11    557 - 558    AFLHCA12    559 - 559                          
      ALHCLN12    560 - 561    ALHCLT12    562 - 562                          
      ALHCLY12    563 - 564    ALANTR12    565 - 566                          
      AFLHCA13    567 - 567    ALHCLN13    568 - 569                          
      ALHCLT13    570 - 570    ALHCLY13    571 - 572                          
      ALANTR13    573 - 574    AFLHCA14    575 - 575                          
      ALHCLN14    576 - 577    ALHCLT14    578 - 578                          
      ALHCLY14    579 - 580    ALANTR14    581 - 582                          
      AFLHCA15    583 - 583    ALHCLN15    584 - 585                          
      ALHCLT15    586 - 586    ALHCLY15    587 - 588                          
      ALANTR15    589 - 590    AFLHCA16    591 - 591                          
      ALHCLN16    592 - 593    ALHCLT16    594 - 594                          
      ALHCLY16    595 - 596    ALANTR16    597 - 598                          
      AFLHCA17    599 - 599    ALHCLN17    600 - 601                          
      ALHCLT17    602 - 602    ALHCLY17    603 - 604                          
      ALANTR17    605 - 606    AFLHCA18    607 - 607                          
      ALHCLN18    608 - 609    ALHCLT18    610 - 610                          
      ALHCLY18    611 - 612    ALANTR18    613 - 614                          
      AFLHCA19    615 - 615    ALHCLN19    616 - 617                          
      ALHCLT19    618 - 618    ALHCLY19    619 - 620                          
      ALANTR19    621 - 622    AFLHCA20    623 - 623                          
      ALHCLN20    624 - 625    ALHCLT20    626 - 626                          
      ALHCLY20    627 - 628    ALANTR20    629 - 630                          
      AFLHCA21    631 - 631    ALHCLN21    632 - 633                          
      ALHCLT21    634 - 634    ALHCLY21    635 - 636                          
      ALANTR21    637 - 638    AFLHCA22    639 - 639                          
      ALHCLN22    640 - 641    ALHCLT22    642 - 642                          
      ALHCLY22    643 - 644    ALANTR22    645 - 646                          
      AFLHCA23    647 - 647    ALHCLN23    648 - 649                          
      ALHCLT23    650 - 650    ALHCLY23    651 - 652                          
      ALANTR23    653 - 654    AFLHCA24    655 - 655                          
      ALHCLN24    656 - 657    ALHCLT24    658 - 658                          
      ALHCLY24    659 - 660    ALANTR24    661 - 662                          
      AFLHCA25    663 - 663    ALHCLN25    664 - 665                          
      ALHCLT25    666 - 666    ALHCLY25    667 - 668                          
      ALANTR25    669 - 670    AFLHCA26    671 - 671                          
      ALHCLN26    672 - 673    ALHCLT26    674 - 674                          
      ALHCLY26    675 - 676    ALANTR26    677 - 678                          
      AFLHCA27    679 - 679    ALHCLN27    680 - 681                          
      ALHCLT27    682 - 682    ALHCLY27    683 - 684                          
      ALANTR27    685 - 686    AFLHCA28    687 - 687                          
      ALHCLN28    688 - 689    ALHCLT28    690 - 690                          
      ALHCLY28    691 - 692    ALANTR28    693 - 694                          
      AFLHCA29    695 - 695    ALHCLN29    696 - 697                          
      ALHCLT29    698 - 698    ALHCLY29    699 - 700                          
      ALANTR29    701 - 702    AFLHCA30    703 - 703                          
      ALHCLN30    704 - 705    ALHCLT30    706 - 706                          
      ALHCLY30    707 - 708    ALANTR30    709 - 710                          
      AFLHCA31    711 - 711    ALHCLN31    712 - 713                          
      ALHCLT31    714 - 714    ALHCLY31    715 - 716                          
      ALANTR31    717 - 718    AFLHCA32    719 - 719                          
      ALHCLN32    720 - 721    ALHCLT32    722 - 722                          
      ALHCLY32    723 - 724    ALANTR32    725 - 726                          
      AFLHCA33    727 - 727    ALHCLN33    728 - 729                          
      ALHCLT33    730 - 730    ALHCLY33    731 - 732                          
      ALANTR33    733 - 734    AFLHCA34    735 - 735                          
      ALHCLN34    736 - 737    ALHCLT34    738 - 738                          
      ALHCLY34    739 - 740    ALANTR34    741 - 742                          
      AFLHCA90    743 - 743    ALHCLN90    744 - 745                          
      ALHCLT90    746 - 746    ALHCLY90    747 - 748                          
      ALANTR90    749 - 750    ALCNDR1     751 - 751                          
      ALCNDR2     752 - 752    ALCNDR3     753 - 753                          
      ALCNDR4     754 - 754    ALCNDR5     755 - 755                          
      ALCNDR6     756 - 756    ALCNDR7     757 - 757                          
      ALCNDR8     758 - 758    ALCNDR9     759 - 759                          
      ALCNDR10    760 - 760    ALCNDR11    761 - 761                          
      ALCNDR12    762 - 762    ALCNDR13    763 - 763                          
      ALCNDR14    764 - 764    ALCNDR15    765 - 765                          
      ALCNDR16    766 - 766    ALCNDR17    767 - 767                          
      ALCNDR18    768 - 768    ALCNDR19    769 - 769                          
      ALCNDR20    770 - 770    ALCNDR21    771 - 771                          
      ALCNDR22    772 - 772    ALCNDR23    773 - 773                          
      ALCNDR24    774 - 774    ALCNDR25    775 - 775                          
      ALCNDR26    776 - 776    ALCNDR27    777 - 777                          
      ALCNDR28    778 - 778    ALCNDR29    779 - 779                          
      ALCNDR30    780 - 780    ALCNDR31    781 - 781                          
      ALCNDR32    782 - 782    ALCNDR33    783 - 783                          
      ALCNDR34    784 - 784    ALCNDR90    785 - 785                          
      ALCNDRT     786 - 786    ALCHRONR    787 - 787                          
                                                                              
      SMKEV       788 - 788    SMKREG      789 - 790                          
      SMKNOW      791 - 791    SMKQTNO     792 - 793                          
      SMKQTTP     794 - 794    SMKQTY      795 - 796                          
      SMKQTD      797 - 797    CIGSDA1     798 - 799                          
      CIGDAMO     800 - 801    CIGSDA2     802 - 803                          
      CIGSDAY     804 - 805    SMKSTAT1    806 - 806                          
      SMKSTAT2    807 - 807    SMKSTAT3    808 - 808                          
      CIGQTYR     809 - 809    VIGNO       810 - 812                          
      VIGTP       813 - 813    VIGFREQW    814 - 815                          
      VIGLNGNO    816 - 818    VIGLNGTP    819 - 819                          
      VIGMIN      820 - 822    VIGLONGD    823 - 823                          
      MODNO       824 - 826    MODTP       827 - 827                          
      MODFREQW    828 - 829    MODLNGNO    830 - 832                          
      MODLNGTP    833 - 833    MODMIN      834 - 836                          
      MODLONGD    837 - 837    STRNGNO     838 - 840                          
      STRNGTP     841 - 841    STRFREQW    842 - 843                          
      ALC1YR      844 - 844    ALCLIFE     845 - 845                          
      ALC12MNO    846 - 848    ALC12MTP    849 - 849                          
      ALC12MMO    850 - 851    ALC12MWK    852 - 853                          
      ALC12MYR    854 - 856    ALCAMT      857 - 858                          
      ALC5UPNO    859 - 861    ALC5UPTP    862 - 862                          
      ALC5UPYR    863 - 865    ALCSTAT1    866 - 866                          
      MET_FLG1    867 - 867    MET_FLG2    868 - 868                          
      AHEIGHT     869 - 870    AWEIGHTP    871 - 873                          
      DESIREWT    874 - 874    BMI         875 - 878 .2                       
                                                                              
      AUSUALPL    879 - 879    APLKIND     880 - 880                          
      AQUSL       881 - 881    AHCPLROU    882 - 882                          
      AHCPLKND    883 - 883    SOURCELA    884 - 885                          
      AQHP        886 - 886    AQHPKIND    887 - 887                          
      AQMDGYN     888 - 888    AQMDGS      889 - 889                          
      AQMDCA      890 - 890    ONESRCEA    891 - 891                          
      AQHPVI      892 - 892    AQHPRAT     893 - 894                          
      AQWHYNOT    895 - 896    AQHPNHR     897 - 897                          
      AQHPTEL     898 - 898    AQHPSINJ    899 - 899                          
      AQHPRT      900 - 900    AQHPWAIT    901 - 901                          
      AQUSCSAT    902 - 903    AQPREMED    904 - 904                          
      AHCCHGYR    905 - 905    AHCCHGHI    906 - 906                          
      AHCDLYR1    907 - 907    AHCDLYR2    908 - 908                          
      AHCDLYR3    909 - 909    AHCDLYR4    910 - 910                          
      AHCDLYR5    911 - 911    AHCAFYR1    912 - 912                          
      AHCAFYR2    913 - 913    AHCAFYR3    914 - 914                          
      AHCAFYR4    915 - 915    PAP         916 - 916                          
      RPAP1NO     917 - 918    RPAP1TP     919 - 919                          
      RPAP1Y      920 - 921    PAPFLG      922 - 922                          
      RPAP2       923 - 923    BEX         924 - 924                          
      RBEX1NO     925 - 926    RBEX1TP     927 - 927                          
      RBEX1Y      928 - 929    BEXFLG      930 - 930                          
      RBEX2       931 - 931    MAM         932 - 932                          
      RMAM1NO     933 - 934    RMAM1TP     935 - 935                          
      RMAM1Y      936 - 937    MAMFLG      938 - 938                          
      RMAM2       939 - 939    PSAHRD      940 - 940                          
      PSAEV       941 - 941    RPSA1NO     942 - 943                          
      RPSA1TP     944 - 944    RPSA1Y      945 - 946                          
      PSAFLG      947 - 947    RPSA2       948 - 948                          
      ADNLONGR    949 - 949    ADENREAS    950 - 950                          
      ADENNO01    951 - 951    ADENNO02    952 - 952                          
      ADENNO03    953 - 953    ADENNO04    954 - 954                          
      ADENNO05    955 - 955    ADENNO06    956 - 956                          
      ADENNO07    957 - 957    ADENNO08    958 - 958                          
      ADENNO09    959 - 959    ADENNO10    960 - 960                          
      ADENNO11    961 - 961    ADENNO12    962 - 962                          
      ADENVIS     963 - 964    ADEN2W      965 - 965                          
      ADEN2WNO    966 - 967    ADENINS     968 - 968                          
      AHCSYR1     969 - 969    AHCSYR2     970 - 970                          
      AHCSYR3     971 - 971    AHCSYR4     972 - 972                          
      AHCSYR5     973 - 973    AHCSYR6     974 - 974                          
      AHCSYR7     975 - 975    AHCSYR8     976 - 976                          
      AHCSYR9     977 - 977    AHCSYR10    978 - 978                          
      AHERNOYR    979 - 979    AHERREAS    980 - 981                          
      AHCHYR      982 - 982    AHCHMOYR    983 - 984                          
      AHCHNOYR    985 - 985    AHCNOYR     986 - 986                          
      ASRGYR      987 - 987    ASRGNOYR    988 - 989                          
      APMED3MO    990 - 990    APMEDREG    991 - 991                          
      AMDLONGR    992 - 992    AQOVHC      993 - 994                          
      SHTFLUYR    995 - 995    SHTPNUYR    996 - 996                          
      SHTTETYR    997 - 997    AHCACU      998 - 998                          
      AHCREL      999 - 999    AHCMT      1000 -1000                          
      AHCIMA     1001 -1001    AHCSPI     1002 -1002                          
      AHCLSD     1003 -1003    AHCHM      1004 -1004                          
      AHCHOME    1005 -1005    AHCENE     1006 -1006                          
      AHCBIO     1007 -1007    AHCHYP     1008 -1008                          
      AHCOTH     1009 -1009    ALTH1    $ 1010 -1039                          
      ALTH2    $ 1040 -1069    ALTH3    $ 1070 -1099                          
      ALTH4    $ 1100 -1129    ALTH5    $ 1130 -1159                          
                                                                              
      INDSTRY1   1160 -1161    INDSTRY2   1162 -1163                          
      OCCUP1     1164 -1165    OCCUP2     1166 -1167                          
      WRKCAT     1168 -1168    LOCALLNO   1169 -1170                          
      LOCPRTNO   1171 -1172    YRSWRK_P   1173 -1174                          
      WRKLONGD   1175 -1175    HOURPD     1176 -1176                          
      PDSICK     1177 -1177    ONEJOB     1178 -1178                          
      WRKCATOT   1179 -1179    BUSINC     1180 -1180                          
                                                                              
      BLDGV      1181 -1181    BLDG12M    1182 -1182                          
      AIDSTST    1183 -1183    WHYTSU01   1184 -1184                          
      WHYTSU02   1185 -1185    WHYTSU03   1186 -1186                          
      WHYTSU04   1187 -1187    WHYTSU05   1188 -1188                          
      WHYTSU06   1189 -1189    WHYTSU07   1190 -1190                          
      WHYTSU08   1191 -1191    WHYTSU09   1192 -1192                          
      WHYTSU10   1193 -1193    TST12M     1194 -1194                          
      REATOT01   1195 -1195    REATOT02   1196 -1196                          
      REATOT03   1197 -1197    REATOT04   1198 -1198                          
      REATOT05   1199 -1199    REATOT06   1200 -1200                          
      REATOT07   1201 -1201    REATOT08   1202 -1202                          
      REATOT09   1203 -1203    REATOT10   1204 -1204                          
      REATOT11   1205 -1205    REATOT12   1206 -1206                          
      REATOT13   1207 -1207    LASTST     1208 -1209                          
      ALTST      1210 -1210    TALKHP     1211 -1211                          
      RSGVN      1212 -1212    EXTST12M   1213 -1213                          
      WHY12U01   1214 -1214    WHY12U02   1215 -1215                          
      WHY12U03   1216 -1216    WHY12U04   1217 -1217                          
      WHY12U05   1218 -1218    WHY12U06   1219 -1219                          
      WHY12U07   1220 -1220    WHY12U08   1221 -1221                          
      WHY12U09   1222 -1222    WHY12U10   1223 -1223                          
      WHY12U11   1224 -1224    WHY12U12   1225 -1225                          
      WHERTST    1226 -1227    CHNSADSP   1228 -1228                          
      STMTRU     1229 -1229;                                                  
                                                                              
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
      ORIGIN   ="Hispanic Ethnicity"                                          
      HISPANCR ="Hispanic subgroup detail"                                    
      RACDET_P ="Race coded to single/multiple race group"                    
      RC_SUM_P ="Race summary detail for single/multiple"                     
      RACER_P  ="OMB groups w/multiple race"                                  
      RCIMPFGR ="Race Imputation Flag"                                        
      MRACER_P ="Race coded to a single race group"                           
      MRACBR_P ="Race coded to a single race group"                           
      RACERECR ="Race Recode"                                                 
      HISPCODR ="Combined race/ethnicity recode"                              
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
                                                                              
      HYPEV    ="Ever been told you had hypertension"                         
      HYPDIFV  ="Ever told had hypertension on 2+ visits"                     
      HYPMEDEV ="Ever prescribed med to lower bp"                             
      HYPMED   ="Now taking prescribed med to lower bp"                       
      HYBPCKNO ="Most recent bp screening: # units"                           
      HYBPCKTP ="Most recent bp screening: time unit"                         
      HYBPCKYR ="Most recent bp screening:  years"                            
      HYBPLEV  ="Level of blood pressure"                                     
      CHDEV    ="Ever told you had coronary heart disease"                    
      ANGEV    ="Ever been told you had angina pectoris"                      
      MIEV     ="Ever been told you had a heart attack"                       
      MIAGE    ="Age first diagnosed w/heart attack"                          
      HRTEV    ="Ever told you had a heart cond/disease"                      
      CON      ="Ever told you had heart failure"                             
      STREV    ="Ever been told you had a stroke"                             
      EPHEV    ="Ever been told you had emphysema"                            
      OST      ="Ever told you had osteoporosis"                              
      PAR      ="Ever told you had Parkinson's"                               
      AASMEV   ="Ever been told you had asthma"                               
      AASMYR   ="Had an asthma episode/attack, past 12 m"                     
      AASMERYR ="Had visit to ER due to asthma, past 12 m"                    
      AASMHOS  ="Had hospital stay b/c of asthma,pst 12m"                     
      AASHONT  ="# ovrngt hosp stay due to asthma,pst 12m"                    
      AASMOTC  ="Used otc meds for asthma,past 12 m"                          
      AASMPMED ="Used presc inhalers for asthma, past 3m"                     
      AASMCAN  ="# canisters pres inhalers used, past 3m"                     
      AASCLASS ="Ever taken class on managing asthma"                         
      AWZ      ="Had wheez/wstle in chest, past 12m"                          
      AWZNUM   ="# wheez/whistle attacks, past 12m"                           
      AWZSLP   ="Wheez/whistle disturb sleep, past 12m"                       
      AWZSPL   ="# times wz/wstl disturb sleep, past 12m"                     
      AWZEX    ="Chest sound wheezy after exer, past 12m"                     
      AWZSPC   ="Wheezing limit speech, past 12m"                             
      AWZERYR  ="# dr/hosp visits b/c whz/wstl, pst 12m"                      
      AWZLA    ="How much ltd acts bc wz/wstle, past 12m"                     
      AWZMSWK  ="# days missed due to whz/wstl, past 12m"                     
      ULCEV    ="Ever been told you had an ulcer"                             
      ULCERAGE ="Age diagnosed with ulcer"                                    
      ULCYR    ="Had an ulcer in past 12 months"                              
      ULCCOLEV ="Ev diag w/Crohn's or ulcerative colitis"                     
      CHRONAGE ="Age diag w/Crohn's or ulcerative colitis"                    
      ULCCOLYR ="Had Crohn's or ulcerative colitis sympt"                     
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
      DIFAGE   ="Years since first diagnosed w/diabetes"                      
      DIB12MO  ="Diabetes diagnosed, past 12 m"                               
      DIB3MO   ="When was diabetes diagnosed"                                 
      INSLN    ="Are you NOW taking insulin"                                  
      DIBPILL  ="Are you now taking diabetic pills"                           
      DIBCLASS ="Ev taken class/course on diabetes mngmt"                     
      DIBA1CKN ="Ever heard of hemoglobin A1C"                                
      DIBA1CCK ="# exams for hemoglobin A1C, past 12m"                        
      DIBFTCK  ="# exams for foot sores, past 12m"                            
      DIBEYCKL ="Last eye exam where pupils were dilated"                     
      AHAYFYR  ="Told that you had hayfever, past 12 m"                       
      SINYR    ="Told that you had sinusitis, past 12 m"                      
      CBRCHYR  ="Told you had chronic bronchitis, 12 m"                       
      KIDWKYR  ="Told you had weak/failing kidneys, 12 m"                     
      LIVYR    ="Told you had liver condition, past 12 m"                     
      KSTYR    ="Told you had kidney stones, past 12 m"                       
      CTSYR    ="Told you had carpal tunnel syn, past 12m"                    
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
      JNT_RH   ="Joint symptoms due to rheumatoid arth"                       
      JNT_OST  ="Joint symptoms due to osteo/degen arth"                      
      JNT_OA   ="Joint symptoms due to other arth"                            
      JNT_GOUT ="Joint symptoms due to gout"                                  
      JNT_BURS ="Joint symptoms due to bursitis"                              
      JNT_OC   ="Joint symptoms due to other cond"                            
      JTSTERYR ="Taken joint meds w/ steroids, past 12m"                      
      JTSTERMO ="Taken joint meds w/ steroids 30+ days"                       
      PAINECK  ="Had neck pain, past 3 months"                                
      PAINLB   ="Had low back pain, past 3 months"                            
      PAINLEG  ="Pain spread down leg/below knees"                            
      PAINFACE ="Had pain in jaw/front of ear, past 3 m"                      
      AMIGR    ="Had severe headache/migraine, past 3 m"                      
      ACOLD2W  ="Had a head/chest cold past 2 weeks"                          
      ACLD2WMD ="Seen dr for head/chest cold, past 2 wks"                     
      AINTIL2W ="Had stomach prob w/vomit/diarrhea, 2 w"                      
      AINTILMD ="Seen dr for vomiting/diarrhea,past 2wks"                     
      PREGNOW  ="Are you currently pregnant"                                  
      MNYR     ="Had natural menstrual period, past 12 m"                     
      MN3MO    ="Had natural menstrual period, past 3 m"                      
      MNREG    ="Regularity between periods, past 12 m"                       
      MNFLOW   ="Flow of current periods, past 12 m"                          
      MENAGE   ="Age at last menstrual period"                                
      MNAGE2   ="Age range at last menstrual period"                          
      MNHYST   ="Had hysterectomy"                                            
      HYSTAGE  ="Age had hysterectomy"                                        
      MNOVAR   ="Had both ovaries removed"                                    
      OVARYAGE ="Age had 2nd ovary removed"                                   
      MNHTFLSH ="Now have hot flashes"                                        
      MNHMRPMD ="Dr discussed hormone repl therapy"                           
      MNESTEV  ="Ever taken medication w/estrogen"                            
      MNESTNOW ="Now taking medication w/estrogen"                            
      MNESTLNO ="Duration taking estrogen: # units"                           
      MNESTLTP ="Duration taking estrogen: time unit"                         
      MNESTLYR ="Time since taken estrogen (in years)"                        
      ESTROAGE ="Age began taking estrogen"                                   
      ESTFLG   ="Inconsistency flag for HRT treatment"                        
      MNPGSEV  ="Ever taken medication w/progestin"                           
      MNPGSNOW ="Now taking medication w/progestin"                           
      MNPGSLNO ="Duration taking progestin: # units"                          
      MNPGSLTP ="Duration taking progestin: time unit"                        
      MNPGSLYR ="Time since taken progestin (in years)"                       
      PROGEAGE ="Age began taking progestin"                                  
      PROGFLG  ="Inconsistency flag for HRT treatment"                        
      HEARAID  ="Had ever worn a hearing aid"                                 
      AHEARST  ="Description of hearing w/o hearing aid"                      
      HEARLFT  ="Hearing w/o hearing aid, left ear"                           
      HEARLAGE ="Age of hearing loss, left ear"                               
      HEARRGT  ="Hearing w/o hearing aid, right ear"                          
      HEARRAGE ="Age of hearing loss, right ear"                              
      HEARDAGE ="Age of hearing loss"                                         
      HEARWHIS ="Hears/Understands whispers across room"                      
      HEARVOIC ="Hears/Understands normal talks across rm"                    
      HEARSHT  ="Hears/Understands shouts across room"                        
      HEARSKLD ="Hears/Undrstnds loud spkng in better ear"                    
      AVISCAT  ="Ever told you had cataracts"                                 
      AVISGLAU ="Ever told you had glaucoma"                                  
      AVISMACD ="Ever told you had macular degeneration"                      
      AVISION  ="Trouble seeing even w/glasses/lenses"                        
      ABLIND   ="Are you blind or unable to see at all"                       
      NWS      ="How difficult to read due to eyesight"                       
      CLS      ="How diff seeing up close b/c of eyesight"                    
      NIT      ="How diff steping down at night b/c sight"                    
      DRV      ="Difficulty driving due to eyesight"                          
      PER      ="Diff noticing objects due to eyesight"                       
      CRD      ="Diff finding shelved obj b/c of sight"                       
      LUPPRT   ="Lost all upper & lower natural teeth"                        
      SAD      ="How often felt sad, past 30 days"                            
      NERVOUS  ="How often felt nervous, past 30 days"                        
      RESTLESS ="How often restless/fidgety, past 30 days"                    
      HOPELESS ="How often felt hopeless, past 30 days"                       
      EFFORT   ="Felt everything was an effort, past 30 d"                    
      WORTHLS  ="How often felt worthless, past 30 days"                      
      MHFEMO   ="How often had these feelings,pst 30 days"                    
      MHFEMOMR ="How much more often had feelings,pst 30d"                    
      MHFEMOLS ="How much less often had feelings,pst 30d"                    
      MHAMTMO  ="Feelings interfered w/life, past 30 days"                    
      MHFENWK  ="# days unable to do work/acts, past 30d"                     
      MHFECDA  ="# days limited work, past 30 days"                           
      MHDSAD2W ="Ev felt depressed in 2wk period, pst 12m"                    
      MHDSADDY ="Dur felt depressed in 2wk period,pst 12m"                    
      MHDSADLO ="How often felt sad/blue/depressed"                           
      MHDSADLI ="Lost interest in most things"                                
      MHDSADTD ="Felt lethargic"                                              
      MHDSADWT ="Any unplanned weight changes"                                
      MHDSADWC ="Amount weight loss/gain"                                     
      MHDSADLB ="Weight change by 10+ pounds"                                 
      MHDSADSP ="Have trouble falling asleep"                                 
      MHDSADNT ="How often had trouble falling asleep"                        
      MHDSADCN ="Have trouble concentrating"                                  
      MHDSADWR ="Felt worthless or no good"                                   
      MHDSADDE ="Think about death often"                                     
      MHDSADWY ="Tot # weeks had these feelings, past 12m"                    
      MHDSAD_M ="Mth/yr of last 2w pd of these feelings"                      
      MHDSAD_Y ="Mth/yr of last 2w pd of these feelings"                      
      MHDSADMD ="Consulted doctor about these problems"                       
      MHDSADHP ="Consulted otr hlth prof about problems"                      
      MHDSADAC ="Used drugs or alcohol to cope w/problems"                    
      MHDSADIA ="How much did prob interfere w/life/acts"                     
      MHDINT2W ="Lost intrst in most acts for 2w,past 12m"                    
      MHDINTDY ="Dur exp loss of interest in work/acts"                       
      MHDINTLO ="How often felt depressed"                                    
      MHDINTTD ="Felt more lethargic during 2 wk period"                      
      MHDINTWT ="Any unplanned weight changes, 2 wk pd"                       
      MHDINTWC ="Amount weight loss/gain"                                     
      MHDINTLB ="Weight change by 10+ pounds"                                 
      MHDINTSP ="Trouble sleeping, 2 wk period"                               
      MHDINTNT ="How often had trouble falling asleep"                        
      MHDINTCN ="Had trouble concentrating, 2wk pd"                           
      MHDINTWR ="Felt worthless, 2 wk period"                                 
      MHDINTDE ="Think about death often, 2w pd"                              
      MHDINTWY ="# weeks exp these feelings, past 12m"                        
      MHDINT_M ="Mnth/Yr of last 2wk pd of these problems"                    
      MHDINT_Y ="Mnth/Yr of last 2wk pd of these problems"                    
      MHDINTMD ="Consulted Dr about these feelings"                           
      MHDINTHP ="Consulted hlth prof about these feelings"                    
      MHDINTAC ="Feelings resulted in drug/alcohol use"                       
      MHDINTIA ="Amt prob interfered with life/activities"                    
      MHAXEVYR ="Ever felt anxious in 1m pd, pst 12m"                         
      MHAXMO   ="Worry more than most people, past 12m"                       
      MHAXL    ="Has anxiety period ended"                                    
      MHAXENNO ="# mnths/yrs before anx ended: # units"                       
      MHAXENTP ="# mnths/yrs before anx ended: time unit"                     
      MHAXENYR ="Time since worried (in years)"                               
      MHAXLNNO ="# months/yrs had pd of anx: # units"                         
      MHAXLNTP ="# months/yrs had pd of anx: time unit"                       
      MHAXLNYR ="Time since worried (in years)"                               
      MHAX6MO  ="Period of anxiety at least 6 m"                              
      MHAXWST  ="Worry stronger than others"                                  
      MHAXWDYS ="Worry most days"                                             
      MHAXWI   ="Worry about one particular thing"                            
      MHAXDST  ="Difficult to stop worrying"                                  
      MHAXW2   ="Have different worries at once"                              
      MHAXWSTR ="Can't put worries out of mind"                               
      MHAXWCNT ="Can't control worries"                                       
      MHAX_RST ="Worried and restless"                                        
      MHAX_EDG ="Worried and on the edge"                                     
      MHAX_IRR ="Worried and irritable"                                       
      MHAX_HTP ="Worried and heart raced"                                     
      MHAX_WTD ="Worried and easily tired"                                    
      MHAX_WSP ="Worried and having prob sleeping"                            
      MHAX_WLH ="Worried and dizzy"                                           
      MHAXWMD  ="Told a doctor about your worries"                            
      MHAXWHP  ="Told health prof about worries"                              
      MHAXWAC  ="Used drugs or alcohol due to prob"                           
      MHAXWITF ="How much does worry interfere w/life"                        
      MHPEVYR  ="Ever had panic attack, past 12m"                             
      MHPLFTH  ="Panic attk occur in life threatening sit"                    
      MHPNLFTH ="Panic attk in non life threatening sit"                      
      MHPANYR  ="# panic attacks, past 12 m"                                  
      MHPANDTM ="Mth & Yr exp most recent panic attack"                       
      MHPANDTY ="Mth & Yr exp most recent panic attack"                       
      MHPNODAN ="Panic attk occur in non dangerous sit"                       
      MHPA_AHP ="Heart pounds w/ attacks"                                     
      MHPA_CST ="Chest/stomach discomfort w/ attacks"                         
      MHPA_SWT ="Sweat w/ attacks"                                            
      MHPA_SHK ="Tremble w/ attacks"                                          
      MHPA_FLA ="Hot flashes or chills w/ attacks"                            
      MHPA_UNR ="Surroundings seem unreal w/ attacks"                         
                                                                              
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
      AQUSL    ="How long going to place for health care"                     
      AHCPLROU ="USUALLY go there for routine/prev care"                      
      AHCPLKND ="Place usually go for routine prev care"                      
      SOURCELA ="Source of medical care recode"                               
      AQHP     ="Usually see particular hlth care prof"                       
      AQHPKIND ="Kind of health prof usually seen"                            
      AQMDGYN  ="Doctor is an OB/GYN"                                         
      AQMDGS   ="Doctor is GP, specialist, or other"                          
      AQMDCA   ="Doctor treats children and adults"                           
      ONESRCEA ="Summary source of medical care recode"                       
      AQHPVI   ="Visit health care place/provider, 12 mo"                     
      AQHPRAT  ="Rating of health care provider"                              
      AQWHYNOT ="Reason no usual health care source"                          
      AQHPNHR  ="Night or weekend office hours"                               
      AQHPTEL  ="Hlth care advice avail after hrs (phone)"                    
      AQHPSINJ ="How long wait for appt when sick"                            
      AQHPRT   ="How long for appt reg/rout care, 12 mo"                      
      AQHPWAIT ="How long in waiting room w/ appt."                           
      AQUSCSAT ="Rating of provider's professional staff"                     
      AQPREMED ="Does Dr ask presc med/treatment history"                     
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
      PAP      ="Ever had a pap smear test"                                   
      RPAP1NO  ="Most recent Pap test: # of units"                            
      RPAP1TP  ="Most recent Pap test: time unit"                             
      RPAP1Y   ="Most recent Pap test (in years)"                             
      PAPFLG   ="Most recent Pap test (in years) FLAG"                        
      RPAP2    ="Most recent pap test (unspecified time)"                     
      BEX      ="Ever had a breast physical exam"                             
      RBEX1NO  ="Most recent breast exam: # of units"                         
      RBEX1TP  ="Most recent breast exam: time unit"                          
      RBEX1Y   ="Most recent breast exam (in years)"                          
      BEXFLG   ="Most recent breast exam (in years) FLAG"                     
      RBEX2    ="Most recent breast exam (unspec. time)"                      
      MAM      ="Ever had a mammogram"                                        
      RMAM1NO  ="Most recent mammogram: # of units"                           
      RMAM1TP  ="Most recent mammogram: time unit"                            
      RMAM1Y   ="Most recent mammogram (in years)"                            
      MAMFLG   ="Most recent mammogram (in years) FLAG"                       
      RMAM2    ="Most recent mammogram (unspecified time)"                    
      PSAHRD   ="Ever heard of a PSA test"                                    
      PSAEV    ="Ever had a PSA test"                                         
      RPSA1NO  ="Most recent PSA test: # of units"                            
      RPSA1TP  ="Most recent PSA test: time unit"                             
      RPSA1Y   ="Most recent PSA test (in years)"                             
      PSAFLG   ="Most recent PSA test (in years) FLAG"                        
      RPSA2    ="Most recent PSA test (unspecified time)"                     
      ADNLONGR ="Time since last saw/talked to dentist"                       
      ADENREAS ="Reason for last dental visit, past 12 mo"                    
      ADENNO01 ="Reason no dental visit...afraid"                             
      ADENNO02 ="Reason no dental visit...nervous"                            
      ADENNO03 ="Reason no dental visit...needles"                            
      ADENNO04 ="Reason no dental vst...cost/no insurance"                    
      ADENNO05 ="Reason no dental vst..don't know dentist"                    
      ADENNO06 ="Reason no dental visit...dentist too far"                    
      ADENNO07 ="Reason no dental visit...can't get there"                    
      ADENNO08 ="Reason no dental visit...no problems"                        
      ADENNO09 ="Reason no dental visit...no teeth"                           
      ADENNO10 ="Reason no dental visit...not important"                      
      ADENNO11 ="Reason no dental vst..didn't think of it"                    
      ADENNO12 ="Reason no dental visit...other"                              
      ADENVIS  ="# dental visits, past yr"                                    
      ADEN2W   ="Visited dentist, past 2 wks"                                 
      ADEN2WNO ="# Visits to dentist, past 2 wks"                             
      ADENINS  ="Private insurance pay any dental cost"                       
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
      AHERNOYR ="# times in ER/ED, past 12 mo"                                
      AHERREAS ="Reason for last ER visit"                                    
      AHCHYR   ="Get home care from hlth prof, past 12 mo"                    
      AHCHMOYR ="How many months of home care, past 12 mo"                    
      AHCHNOYR ="Total number of home visits"                                 
      AHCNOYR  ="Total number of office visits, past 12 m"                    
      ASRGYR   ="Had surgery in the past 12 mo"                               
      ASRGNOYR ="Total # of surgeries in the past 12 mo"                      
      APMED3MO ="Taken prescription medication, last 3 mo"                    
      APMEDREG ="Have you taken these presc meds for 3 mo"                    
      AMDLONGR ="Time since last saw/talked to hlth prof"                     
      AQOVHC   ="Rate your health care, past 12 mo"                           
      SHTFLUYR ="Had flu shot past 12 mo"                                     
      SHTPNUYR ="Ever had pneumonia vaccination"                              
      SHTTETYR ="Had tetanus shot, past 10 yrs"                               
      AHCACU   ="Used acupuncture, past 12 mos"                               
      AHCREL   ="Used relaxation techniques, past 12 mos"                     
      AHCMT    ="Used massage therapy, past 12 mos"                           
      AHCIMA   ="Used imagery, past 12 mos"                                   
      AHCSPI   ="Used spiritual healing/prayer, past 12 m"                    
      AHCLSD   ="Used lifestyle diets, past 12 mos"                           
      AHCHM    ="Used herbal medicine, past 12 mos"                           
      AHCHOME  ="Used homeopathic treatment, past 12 mos"                     
      AHCENE   ="Used energy healing, past 12 mos"                            
      AHCBIO   ="Used biofeedback, past 12 mos"                               
      AHCHYP   ="Used hypnosis, past 12 mos"                                  
      AHCOTH   ="Used other alternative therapy, past 12"                     
      ALTH1    ='"Other" alternative therapy/treatment #1'                    
      ALTH2    ='"Other" alternative therapy/treatment #2'                    
      ALTH3    ='"Other" alternative therapy/treatment #3'                    
      ALTH4    ='"Other" alternative therapy/treatment #4'                    
      ALTH5    ='"Other" alternative therapy/treatment #5'                    
                                                                              
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
                                                                              
      BLDGV    ="Given blood since March 1985"                                
      BLDG12M  ="Donated blood past 12 m"                                     
      AIDSTST  ="Ever tested for AIDS virus infection"                        
      WHYTSU01 ="Why not tested...no reason"                                  
      WHYTSU02 ="Why not tested...consider self no risk"                      
      WHYTSU03 ="Why not tested...dr. did not recommend"                      
      WHYTSU04 ="Why not tested...believe test inaccurate"                    
      WHYTSU05 ="Why not tested... nothing done if pos."                      
      WHYTSU06 ="Why not tested...don't like needles"                         
      WHYTSU07 ="Why not tested...distrust rslts confdntl"                    
      WHYTSU08 ="Why not tested...afraid of losing job"                       
      WHYTSU09 ="Why not tested...other reason (1)"                           
      WHYTSU10 ="Why not tested...other reason (2)"                           
      TST12M   ="Tested for AIDS virus infect past 12 m"                      
      REATOT01 ="Reason for test...Find out if infected"                      
      REATOT02 ="Reason for test...Dr's request"                              
      REATOT03 ="Reason for test...Hlth Dept's request"                       
      REATOT04 ="Reason for test...Sex partner's request"                     
      REATOT05 ="Reason for test...Hosp/Surg procedure"                       
      REATOT06 ="Reason for test...For hlth/life ins"                         
      REATOT07 ="Reason for test...Guidline for hlth wkrs"                    
      REATOT08 ="Reason for test...Apply for a new job"                       
      REATOT09 ="Reason for test...Military purposes"                         
      REATOT10 ="Reason for test...Immigration"                               
      REATOT11 ="Reason for test...Because of pregnancy"                      
      REATOT12 ="Reason for test...Other reason (1)"                          
      REATOT13 ="Reason for test...Other reason (2)"                          
      LASTST   ="Location of last test for AIDS virus"                        
      ALTST    ="Get results of last test"                                    
      TALKHP   ="Hlth prof talk to you about AIDS"                            
      RSGVN    ="Given results by person/phone/mail/otr"                      
      EXTST12M ="AIDS virus infection test, next 12 m"                        
      WHY12U01 ="Why next 12 m...Find out if infected"                        
      WHY12U02 ="Why next 12 m...Hosp/Surg procedure"                         
      WHY12U03 ="Why next 12 m...Apply for life/hlth ins"                     
      WHY12U04 ="Why next 12 m...Apply for a job"                             
      WHY12U05 ="Why next 12 m...Join the military"                           
      WHY12U06 ="Why next 12 m...Guidelines for hlth wkrs"                    
      WHY12U07 ="Why next 12 m...Req incl auto AIDS test"                     
      WHY12U08 ="Why next 12 m...Req in non-hlth employ"                      
      WHY12U09 ="Why next 12 m...Sexual relationship"                         
      WHY12U10 ="Why next 12 m...Planned pregnancy"                           
      WHY12U11 ="Why next 12 m...Other reason (1)"                            
      WHY12U12 ="Why next 12 m...Other reason (2)"                            
      WHERTST  ="Location where you will have AIDS test"                      
      CHNSADSP ="Chances of getting AIDS virus"                               
      STMTRU   ="Are any of these statements true"                            
   ;                                                                          
                                                                              
   * ASSOCIATE VARIABLES WITH FORMAT VALUES;                                  
                                                                              
   FORMAT                                                                     
      RECTYPE  SAP001X.    SRVY_YR  SAP002X.    FMX      $SAP004X.            
      PX       $SAP005X.   INTV_QRT SAP006X.    SEX      SAP007X.             
      AGE_P    SAP008X.    ORIGIN   SAP009X.    HISPANCR SAP010X.             
      RACDET_P SAP011X.    RC_SUM_P SAP012X.    RACER_P  SAP013X.             
      RCIMPFGR SAP014X.    MRACER_P SAP015X.    MRACBR_P SAP016X.             
      RACERECR SAP017X.    HISPCODR SAP018X.    EDUC     SAP019X.             
      AB_BL20K SAP020X.    RAT_CAT  SAP021X.    R_MARITL SAP022X.             
      FM_SIZE  SAP023X.    REGION   SAP024X.    MSASIZEP SAP025X.             
                                                                              
      HYPEV    SAP009X.    HYPDIFV  SAP031X.    HYPMEDEV SAP031X.             
      HYPMED   SAP031X.    HYBPCKNO SAP034X.    HYBPCKTP SAP035X.             
      HYBPCKYR SAP036X.    HYBPLEV  SAP037X.    CHDEV    SAP009X.             
      ANGEV    SAP009X.    MIEV     SAP009X.    MIAGE    SAP041X.             
      HRTEV    SAP009X.    CON      SAP009X.    STREV    SAP009X.             
      EPHEV    SAP009X.    OST      SAP009X.    PAR      SAP009X.             
      AASMEV   SAP009X.    AASMYR   SAP031X.    AASMERYR SAP031X.             
      AASMHOS  SAP031X.    AASHONT  SAP052X.    AASMOTC  SAP031X.             
      AASMPMED SAP031X.    AASMCAN  SAP055X.    AASCLASS SAP031X.             
      AWZ      SAP009X.    AWZNUM   SAP058X.    AWZSLP   SAP031X.             
      AWZSPL   SAP060X.    AWZEX    SAP031X.    AWZSPC   SAP031X.             
      AWZERYR  SAP063X.    AWZLA    SAP064X.    AWZMSWK  SAP065X.             
      ULCEV    SAP009X.    ULCERAGE SAP041X.    ULCYR    SAP031X.             
      ULCCOLEV SAP009X.    CHRONAGE SAP041X.    ULCCOLYR SAP031X.             
      CANEV    SAP009X.    CNKIND1  SAP073X.    CANAGE1  SAP041X.             
      CNKIND2  SAP073X.    CANAGE2  SAP041X.    CNKIND3  SAP073X.             
      CANAGE3  SAP041X.    CNKIND4  SAP073X.    CANAGE4  SAP041X.             
      CNKIND5  SAP073X.    CANAGE5  SAP041X.    CNKIND6  SAP073X.             
      CANAGE6  SAP041X.    CNKIND7  SAP073X.    CANAGE7  SAP041X.             
      CNKIND8  SAP073X.    CANAGE8  SAP041X.    CNKIND9  SAP073X.             
      CANAGE9  SAP041X.    CNKIND10 SAP073X.    CANAGE10 SAP041X.             
      CNKIND11 SAP073X.    CANAGE11 SAP041X.    CNKIND12 SAP073X.             
      CANAGE12 SAP041X.    CNKIND13 SAP073X.    CANAGE13 SAP041X.             
      CNKIND14 SAP073X.    CANAGE14 SAP041X.    CNKIND15 SAP073X.             
      CANAGE15 SAP041X.    CNKIND16 SAP073X.    CANAGE16 SAP041X.             
      CNKIND17 SAP073X.    CANAGE17 SAP041X.    CNKIND18 SAP073X.             
      CANAGE18 SAP041X.    CNKIND19 SAP073X.    CANAGE19 SAP041X.             
      CNKIND20 SAP073X.    CANAGE20 SAP041X.    CNKIND21 SAP073X.             
      CANAGE21 SAP041X.    CNKIND22 SAP073X.    CANAGE22 SAP041X.             
      CNKIND23 SAP073X.    CANAGE23 SAP041X.    CNKIND24 SAP073X.             
      CANAGE24 SAP041X.    CNKIND25 SAP073X.    CANAGE25 SAP041X.             
      CNKIND26 SAP073X.    CANAGE26 SAP041X.    CNKIND27 SAP073X.             
      CANAGE27 SAP041X.    CNKIND28 SAP073X.    CANAGE28 SAP041X.             
      CNKIND29 SAP073X.    CANAGE29 SAP041X.    CNKIND30 SAP073X.             
      CANAGE30 SAP041X.    CNKIND31 SAP073X.    DIBEV    SAP134X.             
      DIBAGE   SAP135X.    DIFAGE   SAP136X.    DIB12MO  SAP031X.             
      DIB3MO   SAP138X.    INSLN    SAP031X.    DIBPILL  SAP031X.             
      DIBCLASS SAP031X.    DIBA1CKN SAP031X.    DIBA1CCK SAP143X.             
      DIBFTCK  SAP143X.    DIBEYCKL SAP145X.    AHAYFYR  SAP009X.             
      SINYR    SAP009X.    CBRCHYR  SAP009X.    KIDWKYR  SAP009X.             
      LIVYR    SAP009X.    KSTYR    SAP009X.    CTSYR    SAP009X.             
      JNTYR    SAP009X.    JNTMO    SAP031X.    JNTIJ    SAP031X.             
      JNTIJLN  SAP156X.    JNTIJLT  SAP157X.    JNTIJLM  SAP158X.             
      JNTYR1   SAP073X.    JNTYR2   SAP073X.    JNTYR3   SAP073X.             
      JNTYR4   SAP073X.    JNTYR5   SAP073X.    JNTYR6   SAP073X.             
      JNTYR7   SAP073X.    JNTYR8   SAP073X.    JNTYR9   SAP073X.             
      JNTYR10  SAP073X.    JNTYR11  SAP073X.    JNTYR12  SAP073X.             
      JNTYR13  SAP073X.    JNTYR14  SAP073X.    JNTYR15  SAP073X.             
      JNTYR16  SAP073X.    JNTYR17  SAP073X.    JNT_RH   SAP031X.             
      JNT_OST  SAP031X.    JNT_OA   SAP031X.    JNT_GOUT SAP031X.             
      JNT_BURS SAP031X.    JNT_OC   SAP031X.    JTSTERYR SAP031X.             
      JTSTERMO SAP031X.    PAINECK  SAP009X.    PAINLB   SAP009X.             
      PAINLEG  SAP031X.    PAINFACE SAP009X.    AMIGR    SAP009X.             
      ACOLD2W  SAP009X.    ACLD2WMD SAP031X.    AINTIL2W SAP009X.             
      AINTILMD SAP031X.    PREGNOW  SAP031X.    MNYR     SAP194X.             
      MN3MO    SAP031X.    MNREG    SAP196X.    MNFLOW   SAP197X.             
      MENAGE   SAP198X.    MNAGE2   SAP199X.    MNHYST   SAP031X.             
      HYSTAGE  SAP201X.    MNOVAR   SAP031X.    OVARYAGE SAP201X.             
      MNHTFLSH SAP031X.    MNHMRPMD SAP031X.    MNESTEV  SAP031X.             
      MNESTNOW SAP031X.    MNESTLNO SAP208X.    MNESTLTP SAP209X.             
      MNESTLYR SAP210X.    ESTROAGE SAP211X.    ESTFLG   SAP212X.             
      MNPGSEV  SAP031X.    MNPGSNOW SAP031X.    MNPGSLNO SAP208X.             
      MNPGSLTP SAP209X.    MNPGSLYR SAP210X.    PROGEAGE SAP211X.             
      PROGFLG  SAP219X.    HEARAID  SAP009X.    AHEARST  SAP221X.             
      HEARLFT  SAP222X.    HEARLAGE SAP223X.    HEARRGT  SAP222X.             
      HEARRAGE SAP223X.    HEARDAGE SAP223X.    HEARWHIS SAP031X.             
      HEARVOIC SAP031X.    HEARSHT  SAP031X.    HEARSKLD SAP031X.             
      AVISCAT  SAP009X.    AVISGLAU SAP009X.    AVISMACD SAP009X.             
      AVISION  SAP009X.    ABLIND   SAP031X.    NWS      SAP236X.             
      CLS      SAP236X.    NIT      SAP236X.    DRV      SAP236X.             
      PER      SAP236X.    CRD      SAP236X.    LUPPRT   SAP009X.             
      SAD      SAP243X.    NERVOUS  SAP243X.    RESTLESS SAP243X.             
      HOPELESS SAP243X.    EFFORT   SAP243X.    WORTHLS  SAP243X.             
      MHFEMO   SAP249X.    MHFEMOMR SAP250X.    MHFEMOLS SAP251X.             
      MHAMTMO  SAP252X.    MHFENWK  SAP253X.    MHFECDA  SAP253X.             
      MHDSAD2W SAP255X.    MHDSADDY SAP256X.    MHDSADLO SAP257X.             
      MHDSADLI SAP031X.    MHDSADTD SAP031X.    MHDSADWT SAP260X.             
      MHDSADWC SAP261X.    MHDSADLB SAP031X.    MHDSADSP SAP031X.             
      MHDSADNT SAP264X.    MHDSADCN SAP031X.    MHDSADWR SAP031X.             
      MHDSADDE SAP031X.    MHDSADWY SAP268X.    MHDSAD_M SAP269X.             
      MHDSAD_Y SAP270X.    MHDSADMD SAP031X.    MHDSADHP SAP031X.             
      MHDSADAC SAP031X.    MHDSADIA SAP252X.    MHDINT2W SAP275X.             
      MHDINTDY SAP256X.    MHDINTLO SAP257X.    MHDINTTD SAP031X.             
      MHDINTWT SAP279X.    MHDINTWC SAP261X.    MHDINTLB SAP031X.             
      MHDINTSP SAP031X.    MHDINTNT SAP264X.    MHDINTCN SAP031X.             
      MHDINTWR SAP031X.    MHDINTDE SAP031X.    MHDINTWY SAP268X.             
      MHDINT_M SAP269X.    MHDINT_Y SAP270X.    MHDINTMD SAP031X.             
      MHDINTHP SAP031X.    MHDINTAC SAP031X.    MHDINTIA SAP252X.             
      MHAXEVYR SAP009X.    MHAXMO   SAP031X.    MHAXL    SAP296X.             
      MHAXENNO SAP297X.    MHAXENTP SAP298X.    MHAXENYR SAP299X.             
      MHAXLNNO SAP297X.    MHAXLNTP SAP298X.    MHAXLNYR SAP299X.             
      MHAX6MO  SAP031X.    MHAXWST  SAP031X.    MHAXWDYS SAP031X.             
      MHAXWI   SAP306X.    MHAXDST  SAP031X.    MHAXW2   SAP031X.             
      MHAXWSTR SAP309X.    MHAXWCNT SAP309X.    MHAX_RST SAP031X.             
      MHAX_EDG SAP031X.    MHAX_IRR SAP031X.    MHAX_HTP SAP031X.             
      MHAX_WTD SAP031X.    MHAX_WSP SAP031X.    MHAX_WLH SAP031X.             
      MHAXWMD  SAP031X.    MHAXWHP  SAP031X.    MHAXWAC  SAP031X.             
      MHAXWITF SAP252X.    MHPEVYR  SAP009X.    MHPLFTH  SAP323X.             
      MHPNLFTH SAP031X.    MHPANYR  SAP325X.    MHPANDTM SAP269X.             
      MHPANDTY SAP327X.    MHPNODAN SAP031X.    MHPA_AHP SAP031X.             
      MHPA_CST SAP031X.    MHPA_SWT SAP031X.    MHPA_SHK SAP031X.             
      MHPA_FLA SAP031X.    MHPA_UNR SAP031X.                                  
                                                                              
      WRKLYR2  SAP335X.    WKDAYR   SAP336X.    BEDDAYR  SAP337X.             
      AHSTATYR SAP338X.    SPECEQ   SAP009X.    FLWALK   SAP340X.             
      FLCLIMB  SAP340X.    FLSTAND  SAP340X.    FLSIT    SAP340X.             
      FLSTOOP  SAP340X.    FLREACH  SAP340X.    FLGRASP  SAP340X.             
      FLCARRY  SAP340X.    FLPUSH   SAP340X.    FLSHOP   SAP340X.             
      FLSOCL   SAP340X.    FLRELAX  SAP340X.    FLA1AR   SAP352X.             
      AFLHCA1  SAP353X.    ALHCLN1  SAP354X.    ALHCLT1  SAP355X.             
      ALHCLY1  SAP356X.    ALANTR1  SAP357X.    AFLHCA2  SAP353X.             
      ALHCLN2  SAP354X.    ALHCLT2  SAP355X.    ALHCLY2  SAP356X.             
      ALANTR2  SAP357X.    AFLHCA3  SAP353X.    ALHCLN3  SAP354X.             
      ALHCLT3  SAP355X.    ALHCLY3  SAP356X.    ALANTR3  SAP357X.             
      AFLHCA4  SAP353X.    ALHCLN4  SAP354X.    ALHCLT4  SAP355X.             
      ALHCLY4  SAP356X.    ALANTR4  SAP357X.    AFLHCA5  SAP353X.             
      ALHCLN5  SAP354X.    ALHCLT5  SAP355X.    ALHCLY5  SAP356X.             
      ALANTR5  SAP357X.    AFLHCA6  SAP353X.    ALHCLN6  SAP354X.             
      ALHCLT6  SAP355X.    ALHCLY6  SAP356X.    ALANTR6  SAP357X.             
      AFLHCA7  SAP353X.    ALHCLN7  SAP354X.    ALHCLT7  SAP355X.             
      ALHCLY7  SAP356X.    ALANTR7  SAP357X.    AFLHCA8  SAP353X.             
      ALHCLN8  SAP354X.    ALHCLT8  SAP355X.    ALHCLY8  SAP356X.             
      ALANTR8  SAP357X.    AFLHCA9  SAP353X.    ALHCLN9  SAP354X.             
      ALHCLT9  SAP355X.    ALHCLY9  SAP356X.    ALANTR9  SAP357X.             
      AFLHCA10 SAP353X.    ALHCLN10 SAP354X.    ALHCLT10 SAP355X.             
      ALHCLY10 SAP356X.    ALANTR10 SAP357X.    AFLHCA11 SAP353X.             
      ALHCLN11 SAP354X.    ALHCLT11 SAP355X.    ALHCLY11 SAP356X.             
      ALANTR11 SAP357X.    AFLHCA12 SAP353X.    ALHCLN12 SAP354X.             
      ALHCLT12 SAP355X.    ALHCLY12 SAP356X.    ALANTR12 SAP357X.             
      AFLHCA13 SAP353X.    ALHCLN13 SAP414X.    ALHCLT13 SAP355X.             
      ALHCLY13 SAP356X.    ALANTR13 SAP357X.    AFLHCA14 SAP353X.             
      ALHCLN14 SAP354X.    ALHCLT14 SAP355X.    ALHCLY14 SAP356X.             
      ALANTR14 SAP357X.    AFLHCA15 SAP353X.    ALHCLN15 SAP354X.             
      ALHCLT15 SAP355X.    ALHCLY15 SAP356X.    ALANTR15 SAP357X.             
      AFLHCA16 SAP353X.    ALHCLN16 SAP354X.    ALHCLT16 SAP355X.             
      ALHCLY16 SAP356X.    ALANTR16 SAP357X.    AFLHCA17 SAP353X.             
      ALHCLN17 SAP354X.    ALHCLT17 SAP355X.    ALHCLY17 SAP356X.             
      ALANTR17 SAP357X.    AFLHCA18 SAP353X.    ALHCLN18 SAP354X.             
      ALHCLT18 SAP355X.    ALHCLY18 SAP356X.    ALANTR18 SAP357X.             
      AFLHCA19 SAP353X.    ALHCLN19 SAP354X.    ALHCLT19 SAP355X.             
      ALHCLY19 SAP356X.    ALANTR19 SAP357X.    AFLHCA20 SAP353X.             
      ALHCLN20 SAP354X.    ALHCLT20 SAP355X.    ALHCLY20 SAP356X.             
      ALANTR20 SAP357X.    AFLHCA21 SAP353X.    ALHCLN21 SAP354X.             
      ALHCLT21 SAP355X.    ALHCLY21 SAP356X.    ALANTR21 SAP357X.             
      AFLHCA22 SAP353X.    ALHCLN22 SAP354X.    ALHCLT22 SAP355X.             
      ALHCLY22 SAP356X.    ALANTR22 SAP357X.    AFLHCA23 SAP353X.             
      ALHCLN23 SAP354X.    ALHCLT23 SAP355X.    ALHCLY23 SAP356X.             
      ALANTR23 SAP357X.    AFLHCA24 SAP353X.    ALHCLN24 SAP354X.             
      ALHCLT24 SAP355X.    ALHCLY24 SAP356X.    ALANTR24 SAP357X.             
      AFLHCA25 SAP353X.    ALHCLN25 SAP354X.    ALHCLT25 SAP355X.             
      ALHCLY25 SAP356X.    ALANTR25 SAP357X.    AFLHCA26 SAP353X.             
      ALHCLN26 SAP354X.    ALHCLT26 SAP355X.    ALHCLY26 SAP356X.             
      ALANTR26 SAP357X.    AFLHCA27 SAP353X.    ALHCLN27 SAP354X.             
      ALHCLT27 SAP355X.    ALHCLY27 SAP356X.    ALANTR27 SAP357X.             
      AFLHCA28 SAP353X.    ALHCLN28 SAP354X.    ALHCLT28 SAP355X.             
      ALHCLY28 SAP356X.    ALANTR28 SAP357X.    AFLHCA29 SAP353X.             
      ALHCLN29 SAP354X.    ALHCLT29 SAP355X.    ALHCLY29 SAP356X.             
      ALANTR29 SAP357X.    AFLHCA30 SAP353X.    ALHCLN30 SAP354X.             
      ALHCLT30 SAP355X.    ALHCLY30 SAP356X.    ALANTR30 SAP357X.             
      AFLHCA31 SAP353X.    ALHCLN31 SAP354X.    ALHCLT31 SAP355X.             
      ALHCLY31 SAP356X.    ALANTR31 SAP357X.    AFLHCA32 SAP353X.             
      ALHCLN32 SAP509X.    ALHCLT32 SAP510X.    ALHCLY32 SAP356X.             
      ALANTR32 SAP357X.    AFLHCA33 SAP353X.    ALHCLN33 SAP354X.             
      ALHCLT33 SAP355X.    ALHCLY33 SAP356X.    ALANTR33 SAP357X.             
      AFLHCA34 SAP353X.    ALHCLN34 SAP354X.    ALHCLT34 SAP355X.             
      ALHCLY34 SAP356X.    ALANTR34 SAP357X.    AFLHCA90 SAP353X.             
      ALHCLN90 SAP354X.    ALHCLT90 SAP355X.    ALHCLY90 SAP356X.             
      ALANTR90 SAP357X.    ALCNDR1  SAP528X.    ALCNDR2  SAP528X.             
      ALCNDR3  SAP528X.    ALCNDR4  SAP528X.    ALCNDR5  SAP528X.             
      ALCNDR6  SAP528X.    ALCNDR7  SAP528X.    ALCNDR8  SAP528X.             
      ALCNDR9  SAP528X.    ALCNDR10 SAP528X.    ALCNDR11 SAP528X.             
      ALCNDR12 SAP528X.    ALCNDR13 SAP528X.    ALCNDR14 SAP528X.             
      ALCNDR15 SAP528X.    ALCNDR16 SAP528X.    ALCNDR17 SAP528X.             
      ALCNDR18 SAP528X.    ALCNDR19 SAP528X.    ALCNDR20 SAP528X.             
      ALCNDR21 SAP528X.    ALCNDR22 SAP528X.    ALCNDR23 SAP528X.             
      ALCNDR24 SAP528X.    ALCNDR25 SAP528X.    ALCNDR26 SAP528X.             
      ALCNDR27 SAP528X.    ALCNDR28 SAP528X.    ALCNDR29 SAP528X.             
      ALCNDR30 SAP528X.    ALCNDR31 SAP528X.    ALCNDR32 SAP528X.             
      ALCNDR33 SAP528X.    ALCNDR34 SAP528X.    ALCNDR90 SAP528X.             
      ALCNDRT  SAP563X.    ALCHRONR SAP564X.                                  
                                                                              
      SMKEV    SAP009X.    SMKREG   SAP566X.    SMKNOW   SAP567X.             
      SMKQTNO  SAP568X.    SMKQTTP  SAP209X.    SMKQTY   SAP570X.             
      SMKQTD   SAP031X.    CIGSDA1  SAP572X.    CIGDAMO  SAP573X.             
      CIGSDA2  SAP572X.    CIGSDAY  SAP572X.    SMKSTAT1 SAP576X.             
      SMKSTAT2 SAP577X.    SMKSTAT3 SAP578X.    CIGQTYR  SAP031X.             
      VIGNO    SAP580X.    VIGTP    SAP581X.    VIGFREQW SAP582X.             
      VIGLNGNO SAP583X.    VIGLNGTP SAP584X.    VIGMIN   SAP585X.             
      VIGLONGD SAP586X.    MODNO    SAP587X.    MODTP    SAP581X.             
      MODFREQW SAP589X.    MODLNGNO SAP583X.    MODLNGTP SAP584X.             
      MODMIN   SAP585X.    MODLONGD SAP586X.    STRNGNO  SAP580X.             
      STRNGTP  SAP581X.    STRFREQW SAP596X.    ALC1YR   SAP009X.             
      ALCLIFE  SAP031X.    ALC12MNO SAP599X.    ALC12MTP SAP600X.             
      ALC12MMO SAP601X.    ALC12MWK SAP602X.    ALC12MYR SAP603X.             
      ALCAMT   SAP604X.    ALC5UPNO SAP605X.    ALC5UPTP SAP600X.             
      ALC5UPYR SAP603X.    ALCSTAT1 SAP608X.    MET_FLG1 SAP609X.             
      MET_FLG2 SAP610X.    AHEIGHT  SAP611X.    AWEIGHTP SAP612X.             
      DESIREWT SAP613X.    BMI      SAP614X.                                  
                                                                              
      AUSUALPL SAP615X.    APLKIND  SAP616X.    AQUSL    SAP617X.             
      AHCPLROU SAP031X.    AHCPLKND SAP619X.    SOURCELA SAP620X.             
      AQHP     SAP009X.    AQHPKIND SAP622X.    AQMDGYN  SAP031X.             
      AQMDGS   SAP624X.    AQMDCA   SAP031X.    ONESRCEA SAP626X.             
      AQHPVI   SAP031X.    AQHPRAT  SAP628X.    AQWHYNOT SAP629X.             
      AQHPNHR  SAP031X.    AQHPTEL  SAP631X.    AQHPSINJ SAP632X.             
      AQHPRT   SAP633X.    AQHPWAIT SAP634X.    AQUSCSAT SAP635X.             
      AQPREMED SAP031X.    AHCCHGYR SAP031X.    AHCCHGHI SAP031X.             
      AHCDLYR1 SAP009X.    AHCDLYR2 SAP009X.    AHCDLYR3 SAP009X.             
      AHCDLYR4 SAP009X.    AHCDLYR5 SAP009X.    AHCAFYR1 SAP009X.             
      AHCAFYR2 SAP009X.    AHCAFYR3 SAP009X.    AHCAFYR4 SAP009X.             
      PAP      SAP031X.    RPAP1NO  SAP649X.    RPAP1TP  SAP209X.             
      RPAP1Y   SAP651X.    PAPFLG   SAP652X.    RPAP2    SAP653X.             
      BEX      SAP031X.    RBEX1NO  SAP649X.    RBEX1TP  SAP209X.             
      RBEX1Y   SAP651X.    BEXFLG   SAP652X.    RBEX2    SAP653X.             
      MAM      SAP031X.    RMAM1NO  SAP649X.    RMAM1TP  SAP209X.             
      RMAM1Y   SAP651X.    MAMFLG   SAP652X.    RMAM2    SAP653X.             
      PSAHRD   SAP031X.    PSAEV    SAP031X.    RPSA1NO  SAP649X.             
      RPSA1TP  SAP209X.    RPSA1Y   SAP651X.    PSAFLG   SAP652X.             
      RPSA2    SAP653X.    ADNLONGR SAP673X.    ADENREAS SAP674X.             
      ADENNO01 SAP073X.    ADENNO02 SAP073X.    ADENNO03 SAP073X.             
      ADENNO04 SAP073X.    ADENNO05 SAP073X.    ADENNO06 SAP073X.             
      ADENNO07 SAP073X.    ADENNO08 SAP073X.    ADENNO09 SAP073X.             
      ADENNO10 SAP073X.    ADENNO11 SAP073X.    ADENNO12 SAP073X.             
      ADENVIS  SAP687X.    ADEN2W   SAP031X.    ADEN2WNO SAP689X.             
      ADENINS  SAP031X.    AHCSYR1  SAP009X.    AHCSYR2  SAP009X.             
      AHCSYR3  SAP009X.    AHCSYR4  SAP009X.    AHCSYR5  SAP009X.             
      AHCSYR6  SAP009X.    AHCSYR7  SAP031X.    AHCSYR8  SAP009X.             
      AHCSYR9  SAP009X.    AHCSYR10 SAP031X.    AHERNOYR SAP701X.             
      AHERREAS SAP702X.    AHCHYR   SAP009X.    AHCHMOYR SAP704X.             
      AHCHNOYR SAP705X.    AHCNOYR  SAP701X.    ASRGYR   SAP009X.             
      ASRGNOYR SAP708X.    APMED3MO SAP009X.    APMEDREG SAP031X.             
      AMDLONGR SAP673X.    AQOVHC   SAP628X.    SHTFLUYR SAP009X.             
      SHTPNUYR SAP009X.    SHTTETYR SAP009X.    AHCACU   SAP009X.             
      AHCREL   SAP009X.    AHCMT    SAP009X.    AHCIMA   SAP009X.             
      AHCSPI   SAP009X.    AHCLSD   SAP009X.    AHCHM    SAP009X.             
      AHCHOME  SAP009X.    AHCENE   SAP009X.    AHCBIO   SAP009X.             
      AHCHYP   SAP009X.    AHCOTH   SAP727X.                                  
                                                                              
      WRKCAT   SAP737X.    LOCALLNO SAP738X.    LOCPRTNO SAP738X.             
      YRSWRK_P SAP740X.    WRKLONGD SAP741X.    HOURPD   SAP031X.             
      PDSICK   SAP031X.    ONEJOB   SAP031X.    WRKCATOT SAP745X.             
      BUSINC   SAP031X.                                                       
                                                                              
      BLDGV    SAP009X.    BLDG12M  SAP031X.    AIDSTST  SAP009X.             
      WHYTSU01 SAP073X.    WHYTSU02 SAP073X.    WHYTSU03 SAP073X.             
      WHYTSU04 SAP073X.    WHYTSU05 SAP073X.    WHYTSU06 SAP073X.             
      WHYTSU07 SAP073X.    WHYTSU08 SAP073X.    WHYTSU09 SAP073X.             
      WHYTSU10 SAP073X.    TST12M   SAP031X.    REATOT01 SAP073X.             
      REATOT02 SAP073X.    REATOT03 SAP073X.    REATOT04 SAP073X.             
      REATOT05 SAP073X.    REATOT06 SAP073X.    REATOT07 SAP073X.             
      REATOT08 SAP073X.    REATOT09 SAP073X.    REATOT10 SAP073X.             
      REATOT11 SAP073X.    REATOT12 SAP073X.    REATOT13 SAP073X.             
      LASTST   SAP774X.    ALTST    SAP775X.    TALKHP   SAP031X.             
      RSGVN    SAP777X.    EXTST12M SAP009X.    WHY12U01 SAP073X.             
      WHY12U02 SAP073X.    WHY12U03 SAP073X.    WHY12U04 SAP073X.             
      WHY12U05 SAP073X.    WHY12U06 SAP073X.    WHY12U07 SAP073X.             
      WHY12U08 SAP073X.    WHY12U09 SAP073X.    WHY12U10 SAP073X.             
      WHY12U11 SAP073X.    WHY12U12 SAP073X.    WHERTST  SAP791X.             
      CHNSADSP SAP792X.    STMTRU   SAP793X.;                                 
                                                                              
PROC CONTENTS DATA=NHIS.SAMADULT_1999;                                             
   TITLE1 'CONTENTS OF THE 1999 NHIS SAMADULT FILE';                          
                                                                              
PROC FREQ DATA=NHIS.SAMADULT_1999;                                                 
   TITLE1 'FREQUENCY REPORT FOR 1999 NHIS SAMADULT FILE';                     
   TITLE2 '(WEIGHTED)';                                                       
   TABLES EDUC * SEX/LIST MISSING;                                            
   WEIGHT WTFA_SA ;                                                           
                                                                              
PROC FREQ DATA=NHIS.SAMADULT_1999;                                                 
   TITLE1 'FREQUENCY REPORT FOR 1999 NHIS SAMADULT FILE';                     
   TITLE2 '(UNWEIGHTED)';                                                     
   TABLES EDUC * SEX/LIST MISSING;                                            
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE                 
        STATEMENT: FORMAT _ALL_;                                              
RUN;                                                                          
