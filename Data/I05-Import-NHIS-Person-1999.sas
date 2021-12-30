                                                                              
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
 JANUARY 15, 2002                                                             
                                                                              
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS                       
 FILE FROM THE 1999 NHIS PUBLIC USE PERSONSX.DAT ASCII FILE                   
                                                                              
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN                      
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                         
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                           
       DOCUMENTATION                                                          
                                                                              
 THIS IS STORED IN PERSONSX.SAS                                               
*********************************************************************;        
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;                
                                                                              
LIBNAME NHIS    'C:\DATA\NHIS\';                                               
LIBNAME LIBRARY 'C:\DATA\NHIS\1999';                                               
                                                                              
* DEFINE VARIABLE VALUES FOR REPORTS;                                         
                                                                              
PROC FORMAT LIBRARY=LIBRARY;                                                  
  VALUE PEP001X                                                               
    20               = "Person"                                               
   ;                                                                          
  VALUE PEP002X                                                               
    1999             = "1999"                                                 
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
    "1915"           = "1915 or before"                                       
    "1916" - "2000"  = "1916-2000"                                            
    "9997"           = "Refused"                                              
    "9998"           = "Not ascertained"                                      
    "9999"           = "Don't know"                                           
   ;                                                                          
  VALUE PEP013X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP014X                                                               
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
  VALUE PEP015X                                                               
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
  VALUE PEP016X                                                               
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
  VALUE PEP017X                                                               
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
  VALUE PEP018X                                                               
    1                = "Race imputed"                                         
    2                = "Race given by respondent/proxy"                       
   ;                                                                          
  VALUE PEP019X                                                               
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
  VALUE PEP020X                                                               
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
  VALUE PEP021X                                                               
    1                = "White"                                                
    2                = "Black"                                                
    3                = "Other"                                                
   ;                                                                          
  VALUE PEP022X                                                               
    1                = "Hispanic"                                             
    2                = "Non-Hispanic White"                                   
    3                = "Non-Hispanic Black"                                   
    4                = "Non-Hispanic Other"                                   
   ;                                                                          
  VALUE PEP023X                                                               
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
  VALUE PEP024X                                                               
    1                = "Yes"                                                  
    2                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP025X                                                               
    1                = "Married"                                              
    2                = "Widowed"                                              
    3                = "Divorced"                                             
    4                = "Separated"                                            
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP026X                                                               
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
  VALUE PEP027X                                                               
    1                = "Separated"                                            
    2                = "Divorced"                                             
    3                = "Married"                                              
    4                = "Single/never married"                                 
    5                = "Widowed"                                              
    9                = "Unknown marital status"                               
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP028X                                                               
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
  VALUE $PEP029X                                                              
    "01" - "30"      = "Person number 1 thru 30"                              
    "98"             = "Not ascertained"                                      
   ;                                                                          
  VALUE $PEP030X                                                              
    "P"              = "HH Reference person"                                  
    "8"              = "Not ascertained"                                      
    " "              = "<Blank:  Not reference person>"                       
   ;                                                                          
  VALUE PEP031X                                                               
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
    13               = "Housemate/roommate"                                   
    14               = "Roomer/Boarder"                                       
    15               = "Other nonrelative"                                    
    16               = "Legal guardian"                                       
    17               = "Ward"                                                 
    97               = "Refused"                                              
    99               = "Don't know"                                           
   ;                                                                          
  VALUE $PEP033X                                                              
    "P"              = "Family reference person"                              
    "8"              = "Not ascertained"                                      
    " "              = "<Blank:  Not reference person>"                       
   ;                                                                          
  VALUE PEP034X                                                               
    01 - 30          = "Person number 1 thru 30"                              
    98               = "Not ascertained"                                      
   ;                                                                          
  VALUE $PEP035X                                                              
    "B"              = "Family respondent"                                    
    "8"              = "Not ascertained"                                      
    " "              = "<Blank:  Not family respondent>"                      
   ;                                                                          
  VALUE PEP036X                                                               
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
  VALUE $PEP037X                                                              
    "00"             = "No mother in the household"                           
    "01" - "30"      = "Person number (of mother)"                            
    "96"             = "Has legal guardian"                                   
    "97"             = "Refused"                                              
    "98"             = "Not ascertained"                                      
    "99"             = "Don't know"                                           
   ;                                                                          
  VALUE PEP038X                                                               
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
  VALUE $PEP039X                                                              
    "00"             = "No father in the household"                           
    "01" - "30"      = "Person number (of father)"                            
    "96"             = "Has legal guardian"                                   
    "97"             = "Refused"                                              
    "98"             = "Not ascertained"                                      
    "99"             = "Don't know"                                           
   ;                                                                          
  VALUE $PEP041X                                                              
    "00"             = "Guardian is not a household member"                   
    "01" - "30"      = "Person number of guardian"                            
    "97"             = "Refused"                                              
    "98"             = "Not ascertained"                                      
    "99"             = "Don't know"                                           
    " "              = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP042X                                                               
    1                = "Mother, no father"                                    
    2                = "Father, no mother"                                    
    3                = "Mother and father"                                    
    4                = "Neither mother nor father"                            
    9                = "Unknown"                                              
   ;                                                                          
  VALUE PEP043X                                                               
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
  VALUE PEP045X                                                               
    01 - 30          = "01-30 persons"                                        
   ;                                                                          
  VALUE PEP046X                                                               
    1                = "One adult, no child(ren) under 18"                    
    2                = "Multiple adults, no child(ren) under 18"              
    3                = "One adult, 1+ child(ren) under 18"                    
    4                = "Multiple adults, 1+ child(ren) under 18"              
    9                = "Unknown"                                              
   ;                                                                          
  VALUE PEP048X                                                               
    1                = "Armed Forces"                                         
    2                = "Not Armed Forces"                                     
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP049X                                                               
    0                = "Sample Adult - no record"                             
    1                = "Sample Adult - has record"                            
    2                = "Not selected as Sample Adult"                         
    3                = "No one selected as Sample Adult"                      
    4                = "Armed Force member"                                   
    5                = "Armed Force member - selected as Sample Adult"        
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP050X                                                               
    0                = "Sample Child - no record"                             
    1                = "Sample Child - has record"                            
    2                = "Not selected as Sample Child"                         
    3                = "No one selected as Sample Child"                      
    4                = "Emancipated Minor"                                    
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP051X                                                               
    0                = "Immunization Child - no record"                       
    1                = "Immunization Child - has record"                      
    2                = "Not eligible for immunization questions"              
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP052X                                                               
    1                = "Northeast"                                            
    2                = "Midwest"                                              
    3                = "South"                                                
    4                = "West"                                                 
   ;                                                                          
  VALUE PEP053X                                                               
    1                = "5,000,000 or more"                                    
    2                = "2,500,000 - 4,999,999"                                
    3                = "1,000,000 - 2,499,999"                                
    4                = "500,000 - 999,999"                                    
    5                = "250,000 - 499,999"                                    
    6                = "Under 250,000"                                        
    7                = "Non-MSA"                                              
   ;                                                                          
  VALUE PEP070X                                                               
    0                = "Unable to work"                                       
    1                = "Limited in work"                                      
    2                = "Not limited in work"                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP073X                                                               
    0                = "Limitation previously mentioned"                      
    1                = "Yes, limited in some other way"                       
    2                = "Not limited in any way"                               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP074X                                                               
    1                = "Limited in any way"                                   
    2                = "Not limited in any way"                               
    3                = "Unknown if limited"                                   
   ;                                                                          
  VALUE PEP075X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    6                = "No condition at all"                                  
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP076X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused*"                                             
    98               = "Not ascertained"                                      
    99               = "Don't know*"                                          
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP077X                                                               
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
  VALUE PEP078X                                                               
    00               = "Less than 1 year"                                     
    01 - 17          = "01-17 years"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP092X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP130X                                                               
    00               = "Less than 1 year"                                     
    01 - 84          = "01-84 years"                                          
    85               = "85+ years"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP252X                                                               
    01 - 94          = "1-94"                                                 
    95               = "95+"                                                  
    96               = "Since birth **"                                       
    97               = "Refused*"                                             
    98               = "Not ascertained"                                      
    99               = "Don't know*"                                          
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP253X                                                               
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
  VALUE PEP271X                                                               
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
  VALUE PEP284X                                                               
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
  VALUE PEP320X                                                               
    1                = "Chronic"                                              
    2                = "Not chronic"                                          
    9                = "Unknown if chronic"                                   
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP369X                                                               
    1                = "At least one condition causing LA is chronic"         
    2                = "No condition causing LA is chronic"                   
    9                = "Unknown if any condition causing LA is chronic"       
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
  VALUE PEP370X                                                               
    0                = "Not limited in any way (incl unk if limited)"         
    1                = "Limited; caused by at least one chronic cond"         
    2                = "Limited; not caused by chronic cond"                  
    3                = "Limited; unk if cond causing LA is chronic"           
   ;                                                                          
  VALUE PEP371X                                                               
    1                = "Excellent"                                            
    2                = "Very good"                                            
    3                = "Good"                                                 
    4                = "Fair"                                                 
    5                = "Poor"                                                 
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP373X                                                               
    1                = "1 injury episode"                                     
    2                = "2 injury episodes"                                    
    3                = "3 injury episodes"                                    
    4                = "4 injury episodes"                                    
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP374X                                                               
    01               = "1 injury condition"                                   
    02               = "2 injury conditions"                                  
    03               = "3 injury conditions"                                  
    04               = "4 injury conditions"                                  
    05               = "5 injury conditions"                                  
    06               = "6 injury conditions"                                  
    07               = "7 injury conditions"                                  
    08               = "8 injury conditions"                                  
    09               = "9 injury conditions"                                  
    10               = "10 injury conditions"                                 
    11               = "11 injury conditions"                                 
    12               = "12 injury conditions"                                 
    13               = "13 injury conditions"                                 
    14               = "14 injury conditions"                                 
    15               = "15 injury conditions"                                 
    16               = "16 injury conditions"                                 
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP375X                                                               
    00               = "No natural cause conditions"                          
    01               = "1 natural cause condition"                            
    02               = "2 natural cause conditions"                           
    03               = "3 natural cause conditions"                           
    04               = "4 natural cause conditions"                           
    05               = "5 natural cause conditions"                           
    06               = "6 natural cause conditions"                           
    07               = "7 natural cause conditions"                           
    08               = "8 natural cause conditions"                           
    09               = "9 natural cause conditions"                           
    10               = "10 natural cause conditions"                          
    11               = "11 natural cause conditions"                          
    12               = "12 natural cause conditions"                          
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP376X                                                               
    0                = "None"                                                 
    1                = "1 time"                                               
    2                = "2 times"                                              
    3                = "3 times"                                              
    4                = "4 times"                                              
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP415X                                                               
    1                = "1 poison episode"                                     
    2                = "2 poison episodes"                                    
    3                = "3 poison episodes"                                    
    4                = "4 poison episodes"                                    
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP419X                                                               
    001 - 365        = "1-365 times"                                          
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP420X                                                               
    001 - 365        = "1-365 nights"                                         
    997              = "Refused"                                              
    998              = "Not ascertained"                                      
    999              = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP422X                                                               
    01 - 50          = "1-50 visits"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP424X                                                               
    01 - 50          = "1-50 calls"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP426X                                                               
    01 - 50          = "1-50 times"                                           
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP429X                                                               
    1                = "Mentioned"                                            
    2                = "Not mentioned"                                        
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP442X                                                               
    1                = "Yes, information"                                     
    2                = "Yes, but no information"                              
    3                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP443X                                                               
    1                = "Part A - Hospital Only"                               
    2                = "Part B - Medical Only"                                
    3                = "Both Part A and Part B"                               
    4                = "Card Not Available"                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP448X                                                               
    1                = "Any doctor"                                           
    2                = "Select from a book/list"                              
    3                = "Doctor is assigned"                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP451X                                                               
    1                = "Yes with detail"                                      
    2                = "Yes with no detail"                                   
    3                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP465X                                                               
    01 - 92          = "Refer to Health Insurance Plan Appendix"              
    98               = "Not ascertained"                                      
    99               = "Unknown"                                              
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP466X                                                               
    1                = "In own name"                                          
    2                = "Someone else in family"                               
    3                = "Person not in household"                              
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP467X                                                               
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
  VALUE PEP475X                                                               
    00001 - 19999    = "$1-$19996"                                            
    20000            = "$20000 or more"                                       
    99997            = "Refused"                                              
    99998            = "Not ascertained"                                      
    99999            = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP476X                                                               
    1                = "HMO/IPA"                                              
    2                = "PPO"                                                  
    3                = "POS"                                                  
    4                = "Other"                                                
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP477X                                                               
    1                = "Any doctor"                                           
    2                = "Select from group/list"                               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP491X                                                               
    00001 - 19999    = "$1-$19999"                                            
    20000            = "$20000 or more"                                       
    99997            = "Refused"                                              
    99998            = "Not ascertained"                                      
    99999            = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP530X                                                               
    1                = "Yes, Military/VA only"                                
    2                = "Yes, CHAMPUS/TRICARE/CHAMP-VA only"                   
    3                = "Yes Both Military/VA + CHAMPUS/TRICARE/CHAMP-VA"      
    4                = "Yes unknown type"                                     
    5                = "No"                                                   
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP534X                                                               
    1                = "Not covered"                                          
    2                = "Covered"                                              
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP535X                                                               
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
  VALUE PEP552X                                                               
    01 - 12          = "1-12 months"                                          
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in universe>"                            
   ;                                                                          
  VALUE PEP553X                                                               
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
  VALUE PEP555X                                                               
    1                = "Less than 1 year"                                     
    2                = "1 yr., less than 5 yrs."                              
    3                = "5 yrs., less than 10 yrs."                            
    4                = "10 yrs., less than 15 yrs."                           
    5                = "15 years or more"                                     
    9                = "Unknown"                                              
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP556X                                                               
    1                = "Yes, citizen of the United States"                    
    2                = "No, not a citizen of the United States"               
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP559X                                                               
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
  VALUE PEP560X                                                               
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
  VALUE PEP562X                                                               
    1                = "Working at a job or business"                         
    2                = "With a job or business but not at work"               
    3                = "Looking for work"                                     
    4                = "Not working at a job or business"                     
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP563X                                                               
    01 - 94          = "1-94 hours"                                           
    95               = "95+ hours"                                            
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank: Not in Universe>"                             
   ;                                                                          
  VALUE PEP565X                                                               
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
  VALUE PEP568X                                                               
    1                = "Working at a job or business"                         
    2                = "Keeping house"                                        
    3                = "Going to school"                                      
    4                = "Something else"                                       
    5                = "Unknown"                                              
    .                = "<Blank: Not in universe>"                             
   ;                                                                          
  VALUE PEP569X                                                               
    01               = "$1-$4999"                                             
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
  VALUE PEP586X                                                               
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
  VALUE PEP587X                                                               
    1                = "$20,000 or more"                                      
    2                = "Less than $20,000"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP588X                                                               
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
  VALUE PEP589X                                                               
    1                = "Owned or being bought"                                
    2                = "Rented"                                               
    3                = "Other arrangement"                                    
    7                = "Refused"                                              
    8                = "Not ascertained"                                      
    9                = "Don't know"                                           
   ;                                                                          
  VALUE PEP593X                                                               
    01 - 12          = "01-12 months"                                         
    97               = "Refused"                                              
    98               = "Not ascertained"                                      
    99               = "Don't know"                                           
    .                = "<Blank:  Not in Universe>"                            
   ;                                                                          
                                                                              
DATA NHIS.PERSON_1999;                                                           
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1999\';                         
   INFILE 'C:\DATA\NHIS\1999\da3397.person.sas'  MISSOVER TRUNCOVER LRECL=829;                          
                                                                              
   * DEFINE LENGTH OF ALL VARIABLES;                                          
                                                                              
   LENGTH                                                                     
      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2               
      PX       $ 2   INTV_QRT   3   SEX        3   AGE_P      3               
      R_AGE1     3   R_AGE2     3   DOB_M    $ 2   DOB_Y_P  $ 4               
      ORIGIN     3   HISPANCR   3   RACDET_P   3   RC_SUM_P   3               
      RACER_P    3   RCIMPFGR   3   MRACER_P   3   MRACBR_P   3               
      RACERECR   3   HISPCODR   3   R_MARITL   3   COHAB1     3               
      COHAB2     3   LG_MSTAT   3   CDCMSTAT   3   RRP        3               
      HH_REF   $ 2   HHREFLG  $ 1   FRRP       3   FM_REF   $ 2               
      FMREFLG  $ 1   FM_RESP    3   FMRPFLG  $ 1   SIB_DEG    3               
      MOTHER   $ 2   MOM_DEG    3   FATHER   $ 2   DAD_DEG    3               
      GUARD    $ 2   PARENTS    3   MOM_ED     3   DAD_ED     3               
      FM_SIZE    3   FM_TYPE    3   FM_STRP    3   NOWAF      3               
      ASTATFLG   3   CSTATFLG   3   IMMUNFLG   3   REGION     3               
      MSASIZEP   3   WTIA       8   WTFA       8   STRATUM    4               
      PSU        3                                                            
                                                                              
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
                                                                              
      PINJ3MR    3   INJCT      3   ICD9CT     3   ICD9CTNI   3               
      ECAUS1CT   3   ECAUS2CT   3   ECAUS3CT   3   ECAUS4CT   3               
      ECAUS5CT   3   ECAUS6CT   3   ECAUS7CT   3   ECAUS8CT   3               
      ECAUS9CT   3   WHAT1CT    3   WHAT2CT    3   WHAT3CT    3               
      WHAT4CT    3   WHAT5CT    3   WHAT6CT    3   WHAT7CT    3               
      WHAT8CT    3   WHAT9CT    3   WHAT10CT   3   WHAT11CT   3               
      WHER1CT    3   WHER2CT    3   WHER3CT    3   WHER4CT    3               
      WHER5CT    3   WHER6CT    3   WHER7CT    3   WHER8CT    3               
      WHER9CT    3   WHER10CT   3   WHER11CT   3   WHER12CT   3               
      WHER13CT   3   WHER14CT   3   WHER15CT   3   WHER16CT   3               
      WHER17CT   3   WHER18CT   3   PPOIS3MR   3   POICT      3               
                                                                              
      PDMED12M   3   PNMED12M   3   PHOSPYR    3   HOSPNO     4               
      HPNITE     4   PHCHM2W    3   PHCHMN2W   3   PHCPH2W    3               
      PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3   P10DVYR    3               
                                                                              
      PHICOV     3   HIKINDA    3   HIKINDB    3   HIKINDC    3               
      HIKINDD    3   HIKINDE    3   HIKINDF    3   HIKINDG    3               
      HIKINDH    3   HIKINDI    3   HIKINDJ    3   HIKINDK    3               
      HIKINDL    3   HIKINDM    3   MEDICARE   3   MCPART     3               
      MCHMO      3   MCREF      3   MCPAYPRE   3   MEDICAID   3               
      MACHMD     3   MAPCMD     3   MAREF      3   SINGLE     3               
      SSTYPEA    3   SSTYPEB    3   SSTYPEC    3   SSTYPED    3               
      SSTYPEE    3   SSTYPEF    3   SSTYPEG    3   SSTYPEH    3               
      SSTYPEI    3   SSTYPEJ    3   SSTYPEK    3   SSTYPEL    3               
      PRIVATE    3   HITYPE1    3   WHONAM1    3   PLNWRK1    3               
      PLNPAY11   3   PLNPAY21   3   PLNPAY31   3   PLNPAY41   3               
      PLNPAY51   3   PLNPAY61   3   PLNPAY71   3   HICOSTR1   4               
      PLNMGD1    3   MGCHMD1    3   MGPRMD1    3   MGPYMD1    3               
      MGPREF1    3   HITYPE2    3   WHONAM2    3   PLNWRK2    3               
      PLNPAY12   3   PLNPAY22   3   PLNPAY32   3   PLNPAY42   3               
      PLNPAY52   3   PLNPAY62   3   PLNPAY72   3   HICOSTR2   4               
      PLNMGD2    3   MGCHMD2    3   MGPRMD2    3   MGPYMD2    3               
      MGPREF2    3   HITYPE3    3   WHONAM3    3   PLNWRK3    3               
      PLNPAY13   3   PLNPAY23   3   PLNPAY33   3   PLNPAY43   3               
      PLNPAY53   3   PLNPAY63   3   PLNPAY73   3   HICOSTR3   4               
      PLNMGD3    3   MGCHMD3    3   MGPRMD3    3   MGPYMD3    3               
      MGPREF3    3   HITYPE4    3   WHONAM4    3   PLNWRK4    3               
      PLNPAY14   3   PLNPAY24   3   PLNPAY34   3   PLNPAY44   3               
      PLNPAY54   3   PLNPAY64   3   PLNPAY74   3   HICOSTR4   4               
      PLNMGD4    3   MGCHMD4    3   MGPRMD4    3   MGPYMD4    3               
      MGPREF4    3   IHS        3   MILITARY   3   CHIP       3               
      OTHERPUB   3   OTHERGOV   3   NOTCOV     3   HILAST     3               
      HISTOP1    3   HISTOP2    3   HISTOP3    3   HISTOP4    3               
      HISTOP5    3   HISTOP6    3   HISTOP7    3   HISTOP8    3               
      HISTOP9    3   HISTOP10   3   HISTOP11   3   HISTOP12   3               
      HISTOP13   3   HISTOP14   3   HISTOP15   3   HINOTYR    3               
      HINOTMYR   3   HCSPFYR    3                                             
                                                                              
      USBORN_P   3   YRSINUS    3   CITIZENP   3   HEADST     3               
      HEADSTEV   3   EDUC       3   EDUC_R1    3   MILTRYDS   3               
      DOINGLW    3   WRKHRS     3   WRKFTALL   3   WHYNOWRK   3               
      WRKLYR     3   WRKMYR     3   MAJR_ACT   3   ERNYR_P    3               
      HIEMPOF    3                                                            
                                                                              
      PSAL       3   PSEINC     3   PSSRR      3   PSSRRDB    3               
      PSSRRD     3   PPENS      3   POPENS     3   PSSI       3               
      PSSID      3   PTANF      3   POWBEN     3   PINTRST    3               
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
      ORIGIN       29 -  29    HISPANCR     30 -  31                          
      RACDET_P     32 -  33    RC_SUM_P     34 -  35                          
      RACER_P      36 -  37    RCIMPFGR     38 -  38                          
      MRACER_P     39 -  40    MRACBR_P     41 -  42                          
      RACERECR     43 -  43    HISPCODR     44 -  44                          
      R_MARITL     45 -  45    COHAB1       46 -  46                          
      COHAB2       47 -  47    LG_MSTAT     48 -  48                          
      CDCMSTAT     49 -  49    RRP          50 -  51                          
      HH_REF   $   52 -  53    HHREFLG  $   54 -  54                          
      FRRP         55 -  56    FM_REF   $   57 -  58                          
      FMREFLG  $   59 -  59    FM_RESP      60 -  61                          
      FMRPFLG  $   62 -  62    SIB_DEG      63 -  63                          
      MOTHER   $   64 -  65    MOM_DEG      66 -  66                          
      FATHER   $   67 -  68    DAD_DEG      69 -  69                          
      GUARD    $   70 -  71    PARENTS      72 -  72                          
      MOM_ED       73 -  74    DAD_ED       75 -  76                          
      FM_SIZE      77 -  78    FM_TYPE      79 -  79                          
      FM_STRP      80 -  81    NOWAF        82 -  82                          
      ASTATFLG     83 -  83    CSTATFLG     84 -  84                          
      IMMUNFLG     85 -  85    REGION       86 -  86                          
      MSASIZEP     87 -  87    WTIA         88 -  93 .1                       
      WTFA         94 -  99    STRATUM     100 - 102                          
      PSU         103 - 103                                                   
                                                                              
      PLAPLYLM    104 - 104    PLAPLYUN    105 - 105                          
      PSPEDEIS    106 - 106    PLAADL      107 - 107                          
      LABATH      108 - 108    LADRESS     109 - 109                          
      LAEAT       110 - 110    LABED       111 - 111                          
      LATOILT     112 - 112    LAHOME      113 - 113                          
      PLAIADL     114 - 114    PLAWKNOW    115 - 115                          
      PLAWKLIM    116 - 116    PLAWALK     117 - 117                          
      PLAREMEM    118 - 118    PLIMANY     119 - 119                          
      LA1AR       120 - 120    LAHCC1      121 - 121                          
      LHCCLN1     122 - 123    LHCCLT1     124 - 124                          
      LHCCLY1     125 - 126    LAHCC2      127 - 127                          
      LHCCLN2     128 - 129    LHCCLT2     130 - 130                          
      LHCCLY2     131 - 132    LAHCC3      133 - 133                          
      LHCCLN3     134 - 135    LHCCLT3     136 - 136                          
      LHCCLY3     137 - 138    LAHCC4      139 - 139                          
      LHCCLN4     140 - 141    LHCCLT4     142 - 142                          
      LHCCLY4     143 - 144    LAHCC5      145 - 145                          
      LHCCLN5     146 - 147    LHCCLT5     148 - 148                          
      LHCCLY5     149 - 150    LAHCC6      151 - 151                          
      LHCCLN6     152 - 153    LHCCLT6     154 - 154                          
      LHCCLY6     155 - 156    LAHCC7      157 - 157                          
      LHCCLN7     158 - 159    LHCCLT7     160 - 160                          
      LHCCLY7     161 - 162    LAHCC8      163 - 163                          
      LHCCLN8     164 - 165    LHCCLT8     166 - 166                          
      LHCCLY8     167 - 168    LAHCC9      169 - 169                          
      LHCCLN9     170 - 171    LHCCLT9     172 - 172                          
      LHCCLY9     173 - 174    LAHCC10     175 - 175                          
      LHCCLN10    176 - 177    LHCCLT10    178 - 178                          
      LHCCLY10    179 - 180    LAHCC11     181 - 181                          
      LHCCLN11    182 - 183    LHCCLT11    184 - 184                          
      LHCCLY11    185 - 186    LAHCC90     187 - 187                          
      LHCCLN90    188 - 189    LHCCLT90    190 - 190                          
      LHCCLY90    191 - 192    LAHCC91     193 - 193                          
      LHCCLN91    194 - 195    LHCCLT91    196 - 196                          
      LHCCLY91    197 - 198    LAHCA1      199 - 199                          
      LHCALN1     200 - 201    LHCALT1     202 - 202                          
      LHCALY1     203 - 204    LAHCA2      205 - 205                          
      LHCALN2     206 - 207    LHCALT2     208 - 208                          
      LHCALY2     209 - 210    LAHCA3      211 - 211                          
      LHCALN3     212 - 213    LHCALT3     214 - 214                          
      LHCALY3     215 - 216    LAHCA4      217 - 217                          
      LHCALN4     218 - 219    LHCALT4     220 - 220                          
      LHCALY4     221 - 222    LAHCA5      223 - 223                          
      LHCALN5     224 - 225    LHCALT5     226 - 226                          
      LHCALY5     227 - 228    LAHCA6      229 - 229                          
      LHCALN6     230 - 231    LHCALT6     232 - 232                          
      LHCALY6     233 - 234    LAHCA7      235 - 235                          
      LHCALN7     236 - 237    LHCALT7     238 - 238                          
      LHCALY7     239 - 240    LAHCA8      241 - 241                          
      LHCALN8     242 - 243    LHCALT8     244 - 244                          
      LHCALY8     245 - 246    LAHCA9      247 - 247                          
      LHCALN9     248 - 249    LHCALT9     250 - 250                          
      LHCALY9     251 - 252    LAHCA10     253 - 253                          
      LHCALN10    254 - 255    LHCALT10    256 - 256                          
      LHCALY10    257 - 258    LAHCA11     259 - 259                          
      LHCALN11    260 - 261    LHCALT11    262 - 262                          
      LHCALY11    263 - 264    LAHCA12     265 - 265                          
      LHCALN12    266 - 267    LHCALT12    268 - 268                          
      LHCALY12    269 - 270    LAHCA13     271 - 271                          
      LHCALN13    272 - 273    LHCALT13    274 - 274                          
      LHCALY13    275 - 276    LAHCA14     277 - 277                          
      LHCALN14    278 - 279    LHCALT14    280 - 280                          
      LHCALY14    281 - 282    LAHCA15     283 - 283                          
      LHCALN15    284 - 285    LHCALT15    286 - 286                          
      LHCALY15    287 - 288    LAHCA16     289 - 289                          
      LHCALN16    290 - 291    LHCALT16    292 - 292                          
      LHCALY16    293 - 294    LAHCA17     295 - 295                          
      LHCALN17    296 - 297    LHCALT17    298 - 298                          
      LHCALY17    299 - 300    LAHCA18     301 - 301                          
      LHCALN18    302 - 303    LHCALT18    304 - 304                          
      LHCALY18    305 - 306    LAHCA19     307 - 307                          
      LHCALN19    308 - 309    LHCALT19    310 - 310                          
      LHCALY19    311 - 312    LAHCA20     313 - 313                          
      LHCALN20    314 - 315    LHCALT20    316 - 316                          
      LHCALY20    317 - 318    LAHCA21     319 - 319                          
      LHCALN21    320 - 321    LHCALT21    322 - 322                          
      LHCALY21    323 - 324    LAHCA22     325 - 325                          
      LHCALN22    326 - 327    LHCALT22    328 - 328                          
      LHCALY22    329 - 330    LAHCA23     331 - 331                          
      LHCALN23    332 - 333    LHCALT23    334 - 334                          
      LHCALY23    335 - 336    LAHCA24     337 - 337                          
      LHCALN24    338 - 339    LHCALT24    340 - 340                          
      LHCALY24    341 - 342    LAHCA25     343 - 343                          
      LHCALN25    344 - 345    LHCALT25    346 - 346                          
      LHCALY25    347 - 348    LAHCA26     349 - 349                          
      LHCALN26    350 - 351    LHCALT26    352 - 352                          
      LHCALY26    353 - 354    LAHCA27     355 - 355                          
      LHCALN27    356 - 357    LHCALT27    358 - 358                          
      LHCALY27    359 - 360    LAHCA28     361 - 361                          
      LHCALN28    362 - 363    LHCALT28    364 - 364                          
      LHCALY28    365 - 366    LAHCA29     367 - 367                          
      LHCALN29    368 - 369    LHCALT29    370 - 370                          
      LHCALY29    371 - 372    LAHCA30     373 - 373                          
      LHCALN30    374 - 375    LHCALT30    376 - 376                          
      LHCALY30    377 - 378    LAHCA31     379 - 379                          
      LHCALN31    380 - 381    LHCALT31    382 - 382                          
      LHCALY31    383 - 384    LAHCA32     385 - 385                          
      LHCALN32    386 - 387    LHCALT32    388 - 388                          
      LHCALY32    389 - 390    LAHCA33     391 - 391                          
      LHCALN33    392 - 393    LHCALT33    394 - 394                          
      LHCALY33    395 - 396    LAHCA34     397 - 397                          
      LHCALN34    398 - 399    LHCALT34    400 - 400                          
      LHCALY34    401 - 402    LAHCA90     403 - 403                          
      LHCALN90    404 - 405    LHCALT90    406 - 406                          
      LHCALY90    407 - 408    LAHCA91     409 - 409                          
      LHCALN91    410 - 411    LHCALT91    412 - 412                          
      LHCALY91    413 - 414    LACNTR1     415 - 416                          
      LACNTR2     417 - 418    LACNTR3     419 - 420                          
      LACNTR4     421 - 422    LACNTR5     423 - 424                          
      LACNTR6     425 - 426    LACNTR7     427 - 428                          
      LACNTR8     429 - 430    LACNTR9     431 - 432                          
      LACNTR10    433 - 434    LACNTR11    435 - 436                          
      LACNTR90    437 - 438    LACNTR91    439 - 440                          
      LAANTR1     441 - 442    LAANTR2     443 - 444                          
      LAANTR3     445 - 446    LAANTR4     447 - 448                          
      LAANTR5     449 - 450    LAANTR6     451 - 452                          
      LAANTR7     453 - 454    LAANTR8     455 - 456                          
      LAANTR9     457 - 458    LAANTR10    459 - 460                          
      LAANTR11    461 - 462    LAANTR12    463 - 464                          
      LAANTR13    465 - 466    LAANTR14    467 - 468                          
      LAANTR15    469 - 470    LAANTR16    471 - 472                          
      LAANTR17    473 - 474    LAANTR18    475 - 476                          
      LAANTR19    477 - 478    LAANTR20    479 - 480                          
      LAANTR21    481 - 482    LAANTR22    483 - 484                          
      LAANTR23    485 - 486    LAANTR24    487 - 488                          
      LAANTR25    489 - 490    LAANTR26    491 - 492                          
      LAANTR27    493 - 494    LAANTR28    495 - 496                          
      LAANTR29    497 - 498    LAANTR30    499 - 500                          
      LAANTR31    501 - 502    LAANTR32    503 - 504                          
      LAANTR33    505 - 506    LAANTR34    507 - 508                          
      LAANTR90    509 - 510    LAANTR91    511 - 512                          
      LCCNDR1     513 - 513    LCCNDR2     514 - 514                          
      LCCNDR3     515 - 515    LCCNDR4     516 - 516                          
      LCCNDR5     517 - 517    LCCNDR6     518 - 518                          
      LCCNDR7     519 - 519    LCCNDR8     520 - 520                          
      LCCNDR9     521 - 521    LCCNDR10    522 - 522                          
      LCCNDR11    523 - 523    LCCNDR90    524 - 524                          
      LCCNDR91    525 - 525    LACNDR1     526 - 526                          
      LACNDR2     527 - 527    LACNDR3     528 - 528                          
      LACNDR4     529 - 529    LACNDR5     530 - 530                          
      LACNDR6     531 - 531    LACNDR7     532 - 532                          
      LACNDR8     533 - 533    LACNDR9     534 - 534                          
      LACNDR10    535 - 535    LACNDR11    536 - 536                          
      LACNDR12    537 - 537    LACNDR13    538 - 538                          
      LACNDR14    539 - 539    LACNDR15    540 - 540                          
      LACNDR16    541 - 541    LACNDR17    542 - 542                          
      LACNDR18    543 - 543    LACNDR19    544 - 544                          
      LACNDR20    545 - 545    LACNDR21    546 - 546                          
      LACNDR22    547 - 547    LACNDR23    548 - 548                          
      LACNDR24    549 - 549    LACNDR25    550 - 550                          
      LACNDR26    551 - 551    LACNDR27    552 - 552                          
      LACNDR28    553 - 553    LACNDR29    554 - 554                          
      LACNDR30    555 - 555    LACNDR31    556 - 556                          
      LACNDR32    557 - 557    LACNDR33    558 - 558                          
      LACNDR34    559 - 559    LACNDR90    560 - 560                          
      LACNDR91    561 - 561    LCONDRT     562 - 562                          
      LACHRONR    563 - 563    PHSTAT      564 - 564                          
                                                                              
      PINJ3MR     565 - 565    INJCT       566 - 566                          
      ICD9CT      567 - 568    ICD9CTNI    569 - 570                          
      ECAUS1CT    571 - 571    ECAUS2CT    572 - 572                          
      ECAUS3CT    573 - 573    ECAUS4CT    574 - 574                          
      ECAUS5CT    575 - 575    ECAUS6CT    576 - 576                          
      ECAUS7CT    577 - 577    ECAUS8CT    578 - 578                          
      ECAUS9CT    579 - 579    WHAT1CT     580 - 580                          
      WHAT2CT     581 - 581    WHAT3CT     582 - 582                          
      WHAT4CT     583 - 583    WHAT5CT     584 - 584                          
      WHAT6CT     585 - 585    WHAT7CT     586 - 586                          
      WHAT8CT     587 - 587    WHAT9CT     588 - 588                          
      WHAT10CT    589 - 589    WHAT11CT    590 - 590                          
      WHER1CT     591 - 591    WHER2CT     592 - 592                          
      WHER3CT     593 - 593    WHER4CT     594 - 594                          
      WHER5CT     595 - 595    WHER6CT     596 - 596                          
      WHER7CT     597 - 597    WHER8CT     598 - 598                          
      WHER9CT     599 - 599    WHER10CT    600 - 600                          
      WHER11CT    601 - 601    WHER12CT    602 - 602                          
      WHER13CT    603 - 603    WHER14CT    604 - 604                          
      WHER15CT    605 - 605    WHER16CT    606 - 606                          
      WHER17CT    607 - 607    WHER18CT    608 - 608                          
      PPOIS3MR    609 - 609    POICT       610 - 610                          
                                                                              
      PDMED12M    611 - 611    PNMED12M    612 - 612                          
      PHOSPYR     613 - 613    HOSPNO      614 - 616                          
      HPNITE      617 - 619    PHCHM2W     620 - 620                          
      PHCHMN2W    621 - 622    PHCPH2W     623 - 623                          
      PHCPHN2W    624 - 625    PHCDV2W     626 - 626                          
      PHCDVN2W    627 - 628    P10DVYR     629 - 629                          
                                                                              
      PHICOV      630 - 630    HIKINDA     631 - 631                          
      HIKINDB     632 - 632    HIKINDC     633 - 633                          
      HIKINDD     634 - 634    HIKINDE     635 - 635                          
      HIKINDF     636 - 636    HIKINDG     637 - 637                          
      HIKINDH     638 - 638    HIKINDI     639 - 639                          
      HIKINDJ     640 - 640    HIKINDK     641 - 641                          
      HIKINDL     642 - 642    HIKINDM     643 - 643                          
      MEDICARE    644 - 644    MCPART      645 - 645                          
      MCHMO       646 - 646    MCREF       647 - 647                          
      MCPAYPRE    648 - 648    MEDICAID    649 - 649                          
      MACHMD      650 - 650    MAPCMD      651 - 651                          
      MAREF       652 - 652    SINGLE      653 - 653                          
      SSTYPEA     654 - 654    SSTYPEB     655 - 655                          
      SSTYPEC     656 - 656    SSTYPED     657 - 657                          
      SSTYPEE     658 - 658    SSTYPEF     659 - 659                          
      SSTYPEG     660 - 660    SSTYPEH     661 - 661                          
      SSTYPEI     662 - 662    SSTYPEJ     663 - 663                          
      SSTYPEK     664 - 664    SSTYPEL     665 - 665                          
      PRIVATE     666 - 666    HITYPE1     667 - 668                          
      WHONAM1     669 - 669    PLNWRK1     670 - 670                          
      PLNPAY11    671 - 671    PLNPAY21    672 - 672                          
      PLNPAY31    673 - 673    PLNPAY41    674 - 674                          
      PLNPAY51    675 - 675    PLNPAY61    676 - 676                          
      PLNPAY71    677 - 677    HICOSTR1    678 - 682                          
      PLNMGD1     683 - 683    MGCHMD1     684 - 684                          
      MGPRMD1     685 - 685    MGPYMD1     686 - 686                          
      MGPREF1     687 - 687    HITYPE2     688 - 689                          
      WHONAM2     690 - 690    PLNWRK2     691 - 691                          
      PLNPAY12    692 - 692    PLNPAY22    693 - 693                          
      PLNPAY32    694 - 694    PLNPAY42    695 - 695                          
      PLNPAY52    696 - 696    PLNPAY62    697 - 697                          
      PLNPAY72    698 - 698    HICOSTR2    699 - 703                          
      PLNMGD2     704 - 704    MGCHMD2     705 - 705                          
      MGPRMD2     706 - 706    MGPYMD2     707 - 707                          
      MGPREF2     708 - 708    HITYPE3     709 - 710                          
      WHONAM3     711 - 711    PLNWRK3     712 - 712                          
      PLNPAY13    713 - 713    PLNPAY23    714 - 714                          
      PLNPAY33    715 - 715    PLNPAY43    716 - 716                          
      PLNPAY53    717 - 717    PLNPAY63    718 - 718                          
      PLNPAY73    719 - 719    HICOSTR3    720 - 724                          
      PLNMGD3     725 - 725    MGCHMD3     726 - 726                          
      MGPRMD3     727 - 727    MGPYMD3     728 - 728                          
      MGPREF3     729 - 729    HITYPE4     730 - 731                          
      WHONAM4     732 - 732    PLNWRK4     733 - 733                          
      PLNPAY14    734 - 734    PLNPAY24    735 - 735                          
      PLNPAY34    736 - 736    PLNPAY44    737 - 737                          
      PLNPAY54    738 - 738    PLNPAY64    739 - 739                          
      PLNPAY74    740 - 740    HICOSTR4    741 - 745                          
      PLNMGD4     746 - 746    MGCHMD4     747 - 747                          
      MGPRMD4     748 - 748    MGPYMD4     749 - 749                          
      MGPREF4     750 - 750    IHS         751 - 751                          
      MILITARY    752 - 752    CHIP        753 - 753                          
      OTHERPUB    754 - 754    OTHERGOV    755 - 755                          
      NOTCOV      756 - 756    HILAST      757 - 757                          
      HISTOP1     758 - 758    HISTOP2     759 - 759                          
      HISTOP3     760 - 760    HISTOP4     761 - 761                          
      HISTOP5     762 - 762    HISTOP6     763 - 763                          
      HISTOP7     764 - 764    HISTOP8     765 - 765                          
      HISTOP9     766 - 766    HISTOP10    767 - 767                          
      HISTOP11    768 - 768    HISTOP12    769 - 769                          
      HISTOP13    770 - 770    HISTOP14    771 - 771                          
      HISTOP15    772 - 772    HINOTYR     773 - 773                          
      HINOTMYR    774 - 775    HCSPFYR     776 - 776                          
                                                                              
      USBORN_P    777 - 777    YRSINUS     778 - 778                          
      CITIZENP    779 - 779    HEADST      780 - 780                          
      HEADSTEV    781 - 781    EDUC        782 - 783                          
      EDUC_R1     784 - 785    MILTRYDS    786 - 786                          
      DOINGLW     787 - 787    WRKHRS      788 - 789                          
      WRKFTALL    790 - 790    WHYNOWRK    791 - 792                          
      WRKLYR      793 - 793    WRKMYR      794 - 795                          
      MAJR_ACT    796 - 796    ERNYR_P     797 - 798                          
      HIEMPOF     799 - 799                                                   
                                                                              
      PSAL        800 - 800    PSEINC      801 - 801                          
      PSSRR       802 - 802    PSSRRDB     803 - 803                          
      PSSRRD      804 - 804    PPENS       805 - 805                          
      POPENS      806 - 806    PSSI        807 - 807                          
      PSSID       808 - 808    PTANF       809 - 809                          
      POWBEN      810 - 810    PINTRST     811 - 811                          
      PDIVD       812 - 812    PCHLDSP     813 - 813                          
      PINCOT      814 - 814    INCGRP      815 - 816                          
      AB_BL20K    817 - 817    RAT_CAT     818 - 819                          
      HOUSEOWN    820 - 820    FGAH        821 - 821                          
      PSSAPL      822 - 822    PSDAPL      823 - 823                          
      TANFMYR     824 - 825    PFSTP       826 - 826                          
      FSTPMYR     827 - 828    PWIC        829 - 829;                         
                                                                              
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
                                                                              
      PLAPLYLM ="Is -- limited in kind/amount play?"                          
      PLAPLYUN ="Is -- able to play AT ALL?"                                  
      PSPEDEIS ="Does -- receive Spec Ed or EIS?"                             
      PLAADL   ="Does -- need help w/ADL?"                                    
      LABATH   ="Does -- need help w/ bathing?"                               
      LADRESS  ="Does -- need help with dressing?"                            
      LAEAT    ="Does -- need help w/ eating?"                                
      LABED    ="Does -- need help in/out of bed/chair?"                      
      LATOILT  ="Need help using the toilet"                                  
      LAHOME   ="Does -- need help getting around home?"                      
      PLAIADL  ="Need help with IADL"                                         
      PLAWKNOW ="Is -- unable to work due to health prob?"                    
      PLAWKLIM ="Is -- limited kind/amt of work (health)?"                    
      PLAWALK  ="Does -- have dif walking w/o equip?"                         
      PLAREMEM ="Is -- limited by dif remembering?"                           
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
                                                                              
      PINJ3MR  ="Person injured during past 3 months"                         
      INJCT    ="Number of injury episodes"                                   
      ICD9CT   ="Number of injury conditions"                                 
      ICD9CTNI ="Number of natural cause conditions"                          
      ECAUS1CT ="# of times injured by transportation"                        
      ECAUS2CT ="# of times injured by burn/scald"                            
      ECAUS3CT ="# of times injured by fall"                                  
      ECAUS4CT ="# of times injured by overexertion"                          
      ECAUS5CT ="# of times injured by being struck"                          
      ECAUS6CT ="# of times injured by animal/insect"                         
      ECAUS7CT ="# of times injured by cut/pierce"                            
      ECAUS8CT ="# of times injured by machinery"                             
      ECAUS9CT ="# of times injured by other"                                 
      WHAT1CT  ="# times injured driving/riding in MV"                        
      WHAT2CT  ="# times injured working at paid job"                         
      WHAT3CT  ="# times injured working around house"                        
      WHAT4CT  ="# times injured attending school"                            
      WHAT5CT  ="# times injured doing unpaid work"                           
      WHAT6CT  ="# times injured playing sports"                              
      WHAT7CT  ="# times injured during leisure activity"                     
      WHAT8CT  ="# times injured resting, eating"                             
      WHAT9CT  ="# times injured cooking"                                     
      WHAT10CT ="# times injured being cared for"                             
      WHAT11CT ="# times injured doing other things"                          
      WHER1CT  ="# times injured inside home"                                 
      WHER2CT  ="# times injured outside home"                                
      WHER3CT  ="# times injured at school"                                   
      WHER4CT  ="# times injured at child care center"                        
      WHER5CT  ="# times injured in residential facility"                     
      WHER6CT  ="# times injured in health care facility"                     
      WHER7CT  ="# times injured on street/highway"                           
      WHER8CT  ="# times injured in parking lot"                              
      WHER9CT  ="# times injured at sport facility"                           
      WHER10CT ="# times injured at trade/service areas"                      
      WHER11CT ="# times injured on farm"                                     
      WHER12CT ="# times injured at park/recreation area"                     
      WHER13CT ="# times injured at river/lake/ocean"                         
      WHER14CT ="# times injured at swimming pool"                            
      WHER15CT ="# times injured at construction area"                        
      WHER16CT ="# times injured in mine or quarry"                           
      WHER17CT ="# times injured in otr public building"                      
      WHER18CT ="# times injured in other place"                              
      PPOIS3MR ="Person poisoned during past 3 months"                        
      POICT    ="Number of poison episodes"                                   
                                                                              
      PDMED12M ="Was med care delayed for - - (cost), 12m"                    
      PNMED12M ="Did - - NOT get medical care (cost), 12m"                    
      PHOSPYR  ="Was - - in a hospital OVERNIGHT, 12m"                        
      HOSPNO   ="Number of times in hosp overnight, 12m"                      
      HPNITE   ="Number of nights in hospital, 12m"                           
      PHCHM2W  ="Did - - rec HOME care by hlth prof, 2 wk"                    
      PHCHMN2W ="Number of HOME visits by hlth prof, 2wk"                     
      PHCPH2W  ="Did - - have a CALL to hlth prof, 2 wk"                      
      PHCPHN2W ="Number of PHONE calls to hlth prof, 2wk"                     
      PHCDV2W  ="Did - - see hlth prof in office etc, 2wk"                    
      PHCDVN2W ="Number of times VISITED hlth prof, 2wk"                      
      P10DVYR  ="Did - - receive care 10+ times, 12m"                         
                                                                              
      PHICOV   ="Does - -  have health care coverage?"                        
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
      MEDICARE ="Medicare coverage recode"                                    
      MCPART   ="Type of Medicare coverage"                                   
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
      PLNWRK1  ="Originally thrgh work or union (Plan 1)"                     
      PLNPAY11 ="Paid for by self or family (Plan 1)"                         
      PLNPAY21 ="Paid for by empoyer or union (Plan 1)"                       
      PLNPAY31 ="Paid by someone outside household Plan 1"                    
      PLNPAY41 ="Paid for by Medicare (Plan 1)"                               
      PLNPAY51 ="Paid for by Medicaid (Plan 1)"                               
      PLNPAY61 ="Paid for by CHIP (Plan 1)"                                   
      PLNPAY71 ="Paid for by government program (Plan 1)"                     
      HICOSTR1 ="Out-of-pocket premium cost (Plan 1)"                         
      PLNMGD1  ="Type of plan (Plan 1)"                                       
      MGCHMD1  ="Doctor choice (Plan 1)"                                      
      MGPRMD1  ="Preferred list (Plan 1)"                                     
      MGPYMD1  ="Out of plan use(Plan 1)"                                     
      MGPREF1  ="Private referral (plan 1)"                                   
      HITYPE2  ="Name of plan (Plan 2)"                                       
      WHONAM2  ="Plan in whose name (Plan 2)"                                 
      PLNWRK2  ="Originally thrgh work or union (Plan 2)"                     
      PLNPAY12 ="Paid for by self or family (Plan 2)"                         
      PLNPAY22 ="Paid for by empoyer or union (Plan 2)"                       
      PLNPAY32 ="Paid by someone outside household Plan 2"                    
      PLNPAY42 ="Paid for by Medicare (Plan 2)"                               
      PLNPAY52 ="Paid for by Medicaid (Plan 2)"                               
      PLNPAY62 ="Paid for by CHIP (Plan 2)"                                   
      PLNPAY72 ="Paid for by government program (Plan 2)"                     
      HICOSTR2 ="Out-of-pocket premium cost(Plan 2)"                          
      PLNMGD2  ="Type of plan (Plan 2)"                                       
      MGCHMD2  ="Doctor choice (Plan 2)"                                      
      MGPRMD2  ="Preferred list (Plan 2)"                                     
      MGPYMD2  ="Out of plan use(Plan 2)"                                     
      MGPREF2  ="Private referral (plan 2)"                                   
      HITYPE3  ="Name of plan (Plan 3)"                                       
      WHONAM3  ="Plan in whose name (Plan 3)"                                 
      PLNWRK3  ="Originally thrgh work or union (Plan 3)"                     
      PLNPAY13 ="Paid for by self or family (Plan 3)"                         
      PLNPAY23 ="Paid for by empoyer or union (Plan 3)"                       
      PLNPAY33 ="Paid by someone outside household Plan 3"                    
      PLNPAY43 ="Paid for by Medicare (Plan 3)"                               
      PLNPAY53 ="Paid for by Medicaid (Plan 3)"                               
      PLNPAY63 ="Paid for by CHIP (Plan 3)"                                   
      PLNPAY73 ="Paid for by government program (Plan 3)"                     
      HICOSTR3 ="Out-of-pocket premium cost (Plan 3)"                         
      PLNMGD3  ="Type of plan (Plan 3)"                                       
      MGCHMD3  ="Doctor choice (Plan 3)"                                      
      MGPRMD3  ="Preferred list (Plan 3)"                                     
      MGPYMD3  ="Out of plan use(Plan 3)"                                     
      MGPREF3  ="Private referral (plan 3)"                                   
      HITYPE4  ="Name of plan (Plan 4)"                                       
      WHONAM4  ="Plan in whose name (Plan 4)"                                 
      PLNWRK4  ="Originally thrgh work or union (Plan 4)"                     
      PLNPAY14 ="Paid for by self or family (Plan 4)"                         
      PLNPAY24 ="Paid for by empoyer or union (Plan 4)"                       
      PLNPAY34 ="Paid by someone outside household Plan 4"                    
      PLNPAY44 ="Paid for by Medicare (Plan 4)"                               
      PLNPAY54 ="Paid for by Medicaid (Plan 4)"                               
      PLNPAY64 ="Paid for by CHIP (Plan 4)"                                   
      PLNPAY74 ="Paid for by government program (Plan 4)"                     
      HICOSTR4 ="Out-of-pocket premium cost(Plan 4)"                          
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
      NOTCOV   ="Coverage status as used in Health United"                    
      HILAST   ="How long since last had hlth coverage"                       
      HISTOP1  ="lost job or changed employers"                               
      HISTOP2  ="divorce/separated/death of spouse or par"                    
      HISTOP3  ="ineligible because of age/left school"                       
      HISTOP4  ="Employer not offer cov/not eligible for"                     
      HISTOP5  ="Cost is too high"                                            
      HISTOP6  ="Insurance company refused coverage"                          
      HISTOP7  ="Medicaid/Medical plan stop after pregnan"                    
      HISTOP8  ="Lost Medicaid new job/increase in income"                    
      HISTOP9  ="Lost Medicaid (other)"                                       
      HISTOP10 ="Other"                                                       
      HISTOP11 ="Never had health insurance"                                  
      HISTOP12 ="moved from another county/state/country"                     
      HISTOP13 ="self-employed"                                               
      HISTOP14 ="No need for it/chooses not to have"                          
      HISTOP15 ="got married"                                                 
      HINOTYR  ="No hlth coverage during past 12 months"                      
      HINOTMYR ="Months without coverage in past 12 month"                    
      HCSPFYR  ="Amount family spent for medical care"                        
                                                                              
      USBORN_P ="Was -- born in U.S. (excl U.S. terr*)?"                      
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
      ERNYR_P  ="{Person's} total earnings in 1998"                           
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
      PINTRST  ="Rec'd int from sav/bank accounts"                            
      PDIVD    ="Rec'd div from stocks/funds/etc"                             
      PCHLDSP  ="Rec'd inc from child support"                                
      PINCOT   ="Rec'd inc from any other source"                             
      INCGRP   ="Total Combined Family Income (Grouped)"                      
      AB_BL20K ="Fam inc at/above vs. below $20,000"                          
      RAT_CAT  ="Ratio of fam inc to 1998 pov threshold"                      
      HOUSEOWN ="Home Tenure Status"                                          
      FGAH     ="Paying lower rent due to govt prgm"                          
      PSSAPL   ="Ever applied for SSI"                                        
      PSDAPL   ="Ever applied for SSDI"                                       
      TANFMYR  ="Months rec Welfare/TANF (last CY)"                           
      PFSTP    ="Person author to rec fd stmps (last CY)"                     
      FSTPMYR  ="Months rec food stamps (last CY)"                            
      PWIC     ="Rec'd WIC benefits (last CY)"                                
   ;                                                                          
                                                                              
   * ASSOCIATE VARIABLES WITH FORMAT VALUES;                                  
                                                                              
   FORMAT                                                                     
      RECTYPE  PEP001X.    SRVY_YR  PEP002X.    FMX      $PEP004X.            
      PX       $PEP005X.   INTV_QRT PEP006X.    SEX      PEP007X.             
      AGE_P    PEP008X.    R_AGE1   PEP009X.    R_AGE2   PEP010X.             
      DOB_M    $PEP011X.   DOB_Y_P  $PEP012X.   ORIGIN   PEP013X.             
      HISPANCR PEP014X.    RACDET_P PEP015X.    RC_SUM_P PEP016X.             
      RACER_P  PEP017X.    RCIMPFGR PEP018X.    MRACER_P PEP019X.             
      MRACBR_P PEP020X.    RACERECR PEP021X.    HISPCODR PEP022X.             
      R_MARITL PEP023X.    COHAB1   PEP024X.    COHAB2   PEP025X.             
      LG_MSTAT PEP026X.    CDCMSTAT PEP027X.    RRP      PEP028X.             
      HH_REF   $PEP029X.   HHREFLG  $PEP030X.   FRRP     PEP031X.             
      FM_REF   $PEP029X.   FMREFLG  $PEP033X.   FM_RESP  PEP034X.             
      FMRPFLG  $PEP035X.   SIB_DEG  PEP036X.    MOTHER   $PEP037X.            
      MOM_DEG  PEP038X.    FATHER   $PEP039X.   DAD_DEG  PEP038X.             
      GUARD    $PEP041X.   PARENTS  PEP042X.    MOM_ED   PEP043X.             
      DAD_ED   PEP043X.    FM_SIZE  PEP045X.    FM_TYPE  PEP046X.             
      NOWAF    PEP048X.    ASTATFLG PEP049X.    CSTATFLG PEP050X.             
      IMMUNFLG PEP051X.    REGION   PEP052X.    MSASIZEP PEP053X.             
                                                                              
      PLAPLYLM PEP024X.    PLAPLYUN PEP024X.    PSPEDEIS PEP024X.             
      PLAADL   PEP024X.    LABATH   PEP024X.    LADRESS  PEP024X.             
      LAEAT    PEP024X.    LABED    PEP024X.    LATOILT  PEP024X.             
      LAHOME   PEP024X.    PLAIADL  PEP024X.    PLAWKNOW PEP024X.             
      PLAWKLIM PEP070X.    PLAWALK  PEP013X.    PLAREMEM PEP013X.             
      PLIMANY  PEP073X.    LA1AR    PEP074X.    LAHCC1   PEP075X.             
      LHCCLN1  PEP076X.    LHCCLT1  PEP077X.    LHCCLY1  PEP078X.             
      LAHCC2   PEP075X.    LHCCLN2  PEP076X.    LHCCLT2  PEP077X.             
      LHCCLY2  PEP078X.    LAHCC3   PEP075X.    LHCCLN3  PEP076X.             
      LHCCLT3  PEP077X.    LHCCLY3  PEP078X.    LAHCC4   PEP075X.             
      LHCCLN4  PEP076X.    LHCCLT4  PEP077X.    LHCCLY4  PEP078X.             
      LAHCC5   PEP075X.    LHCCLN5  PEP092X.    LHCCLT5  PEP077X.             
      LHCCLY5  PEP078X.    LAHCC6   PEP075X.    LHCCLN6  PEP076X.             
      LHCCLT6  PEP077X.    LHCCLY6  PEP078X.    LAHCC7   PEP075X.             
      LHCCLN7  PEP076X.    LHCCLT7  PEP077X.    LHCCLY7  PEP078X.             
      LAHCC8   PEP075X.    LHCCLN8  PEP076X.    LHCCLT8  PEP077X.             
      LHCCLY8  PEP078X.    LAHCC9   PEP075X.    LHCCLN9  PEP076X.             
      LHCCLT9  PEP077X.    LHCCLY9  PEP078X.    LAHCC10  PEP075X.             
      LHCCLN10 PEP076X.    LHCCLT10 PEP077X.    LHCCLY10 PEP078X.             
      LAHCC11  PEP075X.    LHCCLN11 PEP076X.    LHCCLT11 PEP077X.             
      LHCCLY11 PEP078X.    LAHCC90  PEP075X.    LHCCLN90 PEP076X.             
      LHCCLT90 PEP077X.    LHCCLY90 PEP078X.    LAHCC91  PEP075X.             
      LHCCLN91 PEP076X.    LHCCLT91 PEP077X.    LHCCLY91 PEP078X.             
      LAHCA1   PEP075X.    LHCALN1  PEP076X.    LHCALT1  PEP077X.             
      LHCALY1  PEP130X.    LAHCA2   PEP075X.    LHCALN2  PEP076X.             
      LHCALT2  PEP077X.    LHCALY2  PEP130X.    LAHCA3   PEP075X.             
      LHCALN3  PEP076X.    LHCALT3  PEP077X.    LHCALY3  PEP130X.             
      LAHCA4   PEP075X.    LHCALN4  PEP076X.    LHCALT4  PEP077X.             
      LHCALY4  PEP130X.    LAHCA5   PEP075X.    LHCALN5  PEP076X.             
      LHCALT5  PEP077X.    LHCALY5  PEP130X.    LAHCA6   PEP075X.             
      LHCALN6  PEP076X.    LHCALT6  PEP077X.    LHCALY6  PEP130X.             
      LAHCA7   PEP075X.    LHCALN7  PEP076X.    LHCALT7  PEP077X.             
      LHCALY7  PEP130X.    LAHCA8   PEP075X.    LHCALN8  PEP076X.             
      LHCALT8  PEP077X.    LHCALY8  PEP130X.    LAHCA9   PEP075X.             
      LHCALN9  PEP076X.    LHCALT9  PEP077X.    LHCALY9  PEP130X.             
      LAHCA10  PEP075X.    LHCALN10 PEP076X.    LHCALT10 PEP077X.             
      LHCALY10 PEP130X.    LAHCA11  PEP075X.    LHCALN11 PEP076X.             
      LHCALT11 PEP077X.    LHCALY11 PEP130X.    LAHCA12  PEP075X.             
      LHCALN12 PEP076X.    LHCALT12 PEP077X.    LHCALY12 PEP130X.             
      LAHCA13  PEP075X.    LHCALN13 PEP092X.    LHCALT13 PEP077X.             
      LHCALY13 PEP130X.    LAHCA14  PEP075X.    LHCALN14 PEP076X.             
      LHCALT14 PEP077X.    LHCALY14 PEP130X.    LAHCA15  PEP075X.             
      LHCALN15 PEP076X.    LHCALT15 PEP077X.    LHCALY15 PEP130X.             
      LAHCA16  PEP075X.    LHCALN16 PEP076X.    LHCALT16 PEP077X.             
      LHCALY16 PEP130X.    LAHCA17  PEP075X.    LHCALN17 PEP076X.             
      LHCALT17 PEP077X.    LHCALY17 PEP130X.    LAHCA18  PEP075X.             
      LHCALN18 PEP076X.    LHCALT18 PEP077X.    LHCALY18 PEP130X.             
      LAHCA19  PEP075X.    LHCALN19 PEP076X.    LHCALT19 PEP077X.             
      LHCALY19 PEP130X.    LAHCA20  PEP075X.    LHCALN20 PEP076X.             
      LHCALT20 PEP077X.    LHCALY20 PEP130X.    LAHCA21  PEP075X.             
      LHCALN21 PEP076X.    LHCALT21 PEP077X.    LHCALY21 PEP130X.             
      LAHCA22  PEP075X.    LHCALN22 PEP076X.    LHCALT22 PEP077X.             
      LHCALY22 PEP130X.    LAHCA23  PEP075X.    LHCALN23 PEP076X.             
      LHCALT23 PEP077X.    LHCALY23 PEP130X.    LAHCA24  PEP075X.             
      LHCALN24 PEP076X.    LHCALT24 PEP077X.    LHCALY24 PEP130X.             
      LAHCA25  PEP075X.    LHCALN25 PEP076X.    LHCALT25 PEP077X.             
      LHCALY25 PEP130X.    LAHCA26  PEP075X.    LHCALN26 PEP076X.             
      LHCALT26 PEP077X.    LHCALY26 PEP130X.    LAHCA27  PEP075X.             
      LHCALN27 PEP076X.    LHCALT27 PEP077X.    LHCALY27 PEP130X.             
      LAHCA28  PEP075X.    LHCALN28 PEP076X.    LHCALT28 PEP077X.             
      LHCALY28 PEP130X.    LAHCA29  PEP075X.    LHCALN29 PEP076X.             
      LHCALT29 PEP077X.    LHCALY29 PEP130X.    LAHCA30  PEP075X.             
      LHCALN30 PEP076X.    LHCALT30 PEP077X.    LHCALY30 PEP130X.             
      LAHCA31  PEP075X.    LHCALN31 PEP076X.    LHCALT31 PEP077X.             
      LHCALY31 PEP130X.    LAHCA32  PEP075X.    LHCALN32 PEP252X.             
      LHCALT32 PEP253X.    LHCALY32 PEP130X.    LAHCA33  PEP075X.             
      LHCALN33 PEP076X.    LHCALT33 PEP077X.    LHCALY33 PEP130X.             
      LAHCA34  PEP075X.    LHCALN34 PEP076X.    LHCALT34 PEP077X.             
      LHCALY34 PEP130X.    LAHCA90  PEP075X.    LHCALN90 PEP076X.             
      LHCALT90 PEP077X.    LHCALY90 PEP130X.    LAHCA91  PEP075X.             
      LHCALN91 PEP076X.    LHCALT91 PEP077X.    LHCALY91 PEP130X.             
      LACNTR1  PEP271X.    LACNTR2  PEP271X.    LACNTR3  PEP271X.             
      LACNTR4  PEP271X.    LACNTR5  PEP271X.    LACNTR6  PEP271X.             
      LACNTR7  PEP271X.    LACNTR8  PEP271X.    LACNTR9  PEP271X.             
      LACNTR10 PEP271X.    LACNTR11 PEP271X.    LACNTR90 PEP271X.             
      LACNTR91 PEP271X.    LAANTR1  PEP284X.    LAANTR2  PEP284X.             
      LAANTR3  PEP284X.    LAANTR4  PEP284X.    LAANTR5  PEP284X.             
      LAANTR6  PEP284X.    LAANTR7  PEP284X.    LAANTR8  PEP284X.             
      LAANTR9  PEP284X.    LAANTR10 PEP284X.    LAANTR11 PEP284X.             
      LAANTR12 PEP284X.    LAANTR13 PEP284X.    LAANTR14 PEP284X.             
      LAANTR15 PEP284X.    LAANTR16 PEP284X.    LAANTR17 PEP284X.             
      LAANTR18 PEP284X.    LAANTR19 PEP284X.    LAANTR20 PEP284X.             
      LAANTR21 PEP284X.    LAANTR22 PEP284X.    LAANTR23 PEP284X.             
      LAANTR24 PEP284X.    LAANTR25 PEP284X.    LAANTR26 PEP284X.             
      LAANTR27 PEP284X.    LAANTR28 PEP284X.    LAANTR29 PEP284X.             
      LAANTR30 PEP284X.    LAANTR31 PEP284X.    LAANTR32 PEP284X.             
      LAANTR33 PEP284X.    LAANTR34 PEP284X.    LAANTR90 PEP284X.             
      LAANTR91 PEP284X.    LCCNDR1  PEP320X.    LCCNDR2  PEP320X.             
      LCCNDR3  PEP320X.    LCCNDR4  PEP320X.    LCCNDR5  PEP320X.             
      LCCNDR6  PEP320X.    LCCNDR7  PEP320X.    LCCNDR8  PEP320X.             
      LCCNDR9  PEP320X.    LCCNDR10 PEP320X.    LCCNDR11 PEP320X.             
      LCCNDR90 PEP320X.    LCCNDR91 PEP320X.    LACNDR1  PEP320X.             
      LACNDR2  PEP320X.    LACNDR3  PEP320X.    LACNDR4  PEP320X.             
      LACNDR5  PEP320X.    LACNDR6  PEP320X.    LACNDR7  PEP320X.             
      LACNDR8  PEP320X.    LACNDR9  PEP320X.    LACNDR10 PEP320X.             
      LACNDR11 PEP320X.    LACNDR12 PEP320X.    LACNDR13 PEP320X.             
      LACNDR14 PEP320X.    LACNDR15 PEP320X.    LACNDR16 PEP320X.             
      LACNDR17 PEP320X.    LACNDR18 PEP320X.    LACNDR19 PEP320X.             
      LACNDR20 PEP320X.    LACNDR21 PEP320X.    LACNDR22 PEP320X.             
      LACNDR23 PEP320X.    LACNDR24 PEP320X.    LACNDR25 PEP320X.             
      LACNDR26 PEP320X.    LACNDR27 PEP320X.    LACNDR28 PEP320X.             
      LACNDR29 PEP320X.    LACNDR30 PEP320X.    LACNDR31 PEP320X.             
      LACNDR32 PEP320X.    LACNDR33 PEP320X.    LACNDR34 PEP320X.             
      LACNDR90 PEP320X.    LACNDR91 PEP320X.    LCONDRT  PEP369X.             
      LACHRONR PEP370X.    PHSTAT   PEP371X.                                  
                                                                              
      PINJ3MR  PEP013X.    INJCT    PEP373X.    ICD9CT   PEP374X.             
      ICD9CTNI PEP375X.    ECAUS1CT PEP376X.    ECAUS2CT PEP376X.             
      ECAUS3CT PEP376X.    ECAUS4CT PEP376X.    ECAUS5CT PEP376X.             
      ECAUS6CT PEP376X.    ECAUS7CT PEP376X.    ECAUS8CT PEP376X.             
      ECAUS9CT PEP376X.    WHAT1CT  PEP376X.    WHAT2CT  PEP376X.             
      WHAT3CT  PEP376X.    WHAT4CT  PEP376X.    WHAT5CT  PEP376X.             
      WHAT6CT  PEP376X.    WHAT7CT  PEP376X.    WHAT8CT  PEP376X.             
      WHAT9CT  PEP376X.    WHAT10CT PEP376X.    WHAT11CT PEP376X.             
      WHER1CT  PEP376X.    WHER2CT  PEP376X.    WHER3CT  PEP376X.             
      WHER4CT  PEP376X.    WHER5CT  PEP376X.    WHER6CT  PEP376X.             
      WHER7CT  PEP376X.    WHER8CT  PEP376X.    WHER9CT  PEP376X.             
      WHER10CT PEP376X.    WHER11CT PEP376X.    WHER12CT PEP376X.             
      WHER13CT PEP376X.    WHER14CT PEP376X.    WHER15CT PEP376X.             
      WHER16CT PEP376X.    WHER17CT PEP376X.    WHER18CT PEP376X.             
      PPOIS3MR PEP013X.    POICT    PEP415X.                                  
                                                                              
      PDMED12M PEP013X.    PNMED12M PEP013X.    PHOSPYR  PEP013X.             
      HOSPNO   PEP419X.    HPNITE   PEP420X.    PHCHM2W  PEP013X.             
      PHCHMN2W PEP422X.    PHCPH2W  PEP013X.    PHCPHN2W PEP424X.             
      PHCDV2W  PEP013X.    PHCDVN2W PEP426X.    P10DVYR  PEP013X.             
                                                                              
      PHICOV   PEP013X.    HIKINDA  PEP429X.    HIKINDB  PEP429X.             
      HIKINDC  PEP429X.    HIKINDD  PEP429X.    HIKINDE  PEP429X.             
      HIKINDF  PEP429X.    HIKINDG  PEP429X.    HIKINDH  PEP429X.             
      HIKINDI  PEP429X.    HIKINDJ  PEP429X.    HIKINDK  PEP429X.             
      HIKINDL  PEP429X.    HIKINDM  PEP429X.    MEDICARE PEP442X.             
      MCPART   PEP443X.    MCHMO    PEP024X.    MCREF    PEP024X.             
      MCPAYPRE PEP024X.    MEDICAID PEP442X.    MACHMD   PEP448X.             
      MAPCMD   PEP024X.    MAREF    PEP024X.    SINGLE   PEP451X.             
      SSTYPEA  PEP429X.    SSTYPEB  PEP429X.    SSTYPEC  PEP429X.             
      SSTYPED  PEP429X.    SSTYPEE  PEP429X.    SSTYPEF  PEP429X.             
      SSTYPEG  PEP429X.    SSTYPEH  PEP429X.    SSTYPEI  PEP429X.             
      SSTYPEJ  PEP429X.    SSTYPEK  PEP429X.    SSTYPEL  PEP429X.             
      PRIVATE  PEP442X.    HITYPE1  PEP465X.    WHONAM1  PEP466X.             
      PLNWRK1  PEP467X.    PLNPAY11 PEP429X.    PLNPAY21 PEP429X.             
      PLNPAY31 PEP429X.    PLNPAY41 PEP429X.    PLNPAY51 PEP429X.             
      PLNPAY61 PEP429X.    PLNPAY71 PEP429X.    HICOSTR1 PEP475X.             
      PLNMGD1  PEP476X.    MGCHMD1  PEP477X.    MGPRMD1  PEP024X.             
      MGPYMD1  PEP024X.    MGPREF1  PEP024X.    HITYPE2  PEP465X.             
      WHONAM2  PEP466X.    PLNWRK2  PEP467X.    PLNPAY12 PEP429X.             
      PLNPAY22 PEP429X.    PLNPAY32 PEP429X.    PLNPAY42 PEP429X.             
      PLNPAY52 PEP429X.    PLNPAY62 PEP429X.    PLNPAY72 PEP429X.             
      HICOSTR2 PEP491X.    PLNMGD2  PEP476X.    MGCHMD2  PEP477X.             
      MGPRMD2  PEP024X.    MGPYMD2  PEP024X.    MGPREF2  PEP024X.             
      HITYPE3  PEP465X.    WHONAM3  PEP466X.    PLNWRK3  PEP467X.             
      PLNPAY13 PEP429X.    PLNPAY23 PEP429X.    PLNPAY33 PEP429X.             
      PLNPAY43 PEP429X.    PLNPAY53 PEP429X.    PLNPAY63 PEP429X.             
      PLNPAY73 PEP429X.    HICOSTR3 PEP491X.    PLNMGD3  PEP476X.             
      MGCHMD3  PEP477X.    MGPRMD3  PEP024X.    MGPYMD3  PEP024X.             
      MGPREF3  PEP024X.    HITYPE4  PEP465X.    WHONAM4  PEP466X.             
      PLNWRK4  PEP467X.    PLNPAY14 PEP429X.    PLNPAY24 PEP429X.             
      PLNPAY34 PEP429X.    PLNPAY44 PEP429X.    PLNPAY54 PEP429X.             
      PLNPAY64 PEP429X.    PLNPAY74 PEP429X.    HICOSTR4 PEP491X.             
      PLNMGD4  PEP476X.    MGCHMD4  PEP477X.    MGPRMD4  PEP024X.             
      MGPYMD4  PEP024X.    MGPREF4  PEP024X.    IHS      PEP013X.             
      MILITARY PEP530X.    CHIP     PEP013X.    OTHERPUB PEP013X.             
      OTHERGOV PEP013X.    NOTCOV   PEP534X.    HILAST   PEP535X.             
      HISTOP1  PEP429X.    HISTOP2  PEP429X.    HISTOP3  PEP429X.             
      HISTOP4  PEP429X.    HISTOP5  PEP429X.    HISTOP6  PEP429X.             
      HISTOP7  PEP429X.    HISTOP8  PEP429X.    HISTOP9  PEP429X.             
      HISTOP10 PEP429X.    HISTOP11 PEP429X.    HISTOP12 PEP429X.             
      HISTOP13 PEP429X.    HISTOP14 PEP429X.    HISTOP15 PEP429X.             
      HINOTYR  PEP024X.    HINOTMYR PEP552X.    HCSPFYR  PEP553X.             
                                                                              
      USBORN_P PEP013X.    YRSINUS  PEP555X.    CITIZENP PEP556X.             
      HEADST   PEP024X.    HEADSTEV PEP024X.    EDUC     PEP559X.             
      EDUC_R1  PEP560X.    MILTRYDS PEP024X.    DOINGLW  PEP562X.             
      WRKHRS   PEP563X.    WRKFTALL PEP024X.    WHYNOWRK PEP565X.             
      WRKLYR   PEP024X.    WRKMYR   PEP552X.    MAJR_ACT PEP568X.             
      ERNYR_P  PEP569X.    HIEMPOF  PEP024X.                                  
                                                                              
      PSAL     PEP024X.    PSEINC   PEP024X.    PSSRR    PEP013X.             
      PSSRRDB  PEP024X.    PSSRRD   PEP024X.    PPENS    PEP013X.             
      POPENS   PEP013X.    PSSI     PEP013X.    PSSID    PEP024X.             
      PTANF    PEP013X.    POWBEN   PEP024X.    PINTRST  PEP013X.             
      PDIVD    PEP013X.    PCHLDSP  PEP013X.    PINCOT   PEP013X.             
      INCGRP   PEP586X.    AB_BL20K PEP587X.    RAT_CAT  PEP588X.             
      HOUSEOWN PEP589X.    FGAH     PEP024X.    PSSAPL   PEP013X.             
      PSDAPL   PEP013X.    TANFMYR  PEP593X.    PFSTP    PEP013X.             
      FSTPMYR  PEP593X.    PWIC     PEP024X.;                                 
                                                                              
PROC CONTENTS DATA=NHIS.PERSON_1999;                                             
   TITLE1 'CONTENTS OF THE 1999 NHIS PERSONSX FILE';                          
                                                                              
PROC FREQ DATA=NHIS.PERSON_1999;                                                 
   TITLE1 'FREQUENCY REPORT FOR 1999 NHIS PERSONSX FILE';                     
   TITLE2 '(WEIGHTED)';                                                       
   TABLES EDUC * SEX/LIST MISSING;                                            
   WEIGHT WTFA ;                                                              
                                                                              
PROC FREQ DATA=NHIS.PERSON_1999;                                                 
   TITLE1 'FREQUENCY REPORT FOR 1999 NHIS PERSONSX FILE';                     
   TITLE2 '(UNWEIGHTED)';                                                     
   TABLES EDUC * SEX/LIST MISSING;                                            
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE                 
        STATEMENT: FORMAT _ALL_;                                              
RUN;                                                                          
