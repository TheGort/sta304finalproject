/*                                                                           
 *-------------------------------------------------------------------------* 
 |              SAS DATA DEFINITION STATEMENTS FOR ICPSR 3107              | 
 |                 NATIONAL HEALTH INTERVIEW SURVEY, 1998                  | 
 |                                                                         | 
 |                               PERSON DATA                               | 
 |                                                                         | 
 | NOTE: THESE STATEMENTS HAVE BEEN PROVIDED BY NCHS.                      | 
 |        Users should modify these data definition statements to suit     | 
 |        their specific needs.                                            | 
 *-------------------------------------------------------------------------* 
 */                                                                          
                                                                             
                                                                             
*********************************************************************        
 20OCT2000:11:58:38                                                          
                                                                             
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS                      
 FILE FROM THE NHIS 1998 PERSONSX.DAT ASCII FILE                             
                                                                             
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN                     
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                        
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                          
       DOCUMENTATION                                                         
                                                                             
 THIS IS STORED IN PERSONSX.SAS                                              
*********************************************************************;       
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;               
                                                                             
LIBNAME NHIS    'C:\DATA\NHIS\';                                              
LIBNAME LIBRARY 'C:\DATA\NHIS\1998';                                              
                                                                             
* DEFINE VARIABLE VALUES FOR REPORTS;                                        
                                                                             
PROC FORMAT LIBRARY=LIBRARY;                                                 
  VALUE PEP001X                                                              
    20              = "Person"                                               
   ;                                                                         
  VALUE PEP002X                                                              
    1998            = "1998"                                                 
   ;                                                                         
  VALUE $PEP004X                                                             
    "01" - "30"     = "Family number 1 thru 30"                              
   ;                                                                         
  VALUE $PEP005X                                                             
    "01" - "30"     = "Person number 1 thru 30"                              
   ;                                                                         
  VALUE PEP006X                                                              
    1               = "Quarter 1"                                            
    2               = "Quarter 2"                                            
    3               = "Quarter 3"                                            
    4               = "Quarter 4"                                            
   ;                                                                         
  VALUE PEP007X                                                              
    1               = "Male"                                                 
    2               = "Female"                                               
   ;                                                                         
  VALUE PEP008X                                                              
    00              = "Under 1 year"                                         
    01 - 84         = "1-84 years"                                           
    85              = "85+ years"                                            
   ;                                                                         
  VALUE PEP009X                                                              
    1               = "Under 5 years"                                        
    2               = "5-17 years"                                           
    3               = "18-24 years"                                          
    4               = "25-44 years"                                          
    5               = "45-64 years"                                          
    6               = "65-69 years"                                          
    7               = "70-74 years"                                          
    8               = "75 years and over"                                    
   ;                                                                         
  VALUE PEP010X                                                              
    1               = "Under 6 years"                                        
    2               = "6-16 years"                                           
    3               = "17-24 years"                                          
    4               = "25-34 years"                                          
    5               = "35-44 years"                                          
    6               = "45-54 years"                                          
    7               = "55-64 years"                                          
    8               = "65-74 years"                                          
    9               = "75 years and over"                                    
   ;                                                                         
  VALUE $PEP011X                                                             
    "01"            = "January"                                              
    "02"            = "February"                                             
    "03"            = "March"                                                
    "04"            = "April"                                                
    "05"            = "May"                                                  
    "06"            = "June"                                                 
    "07"            = "July"                                                 
    "08"            = "August"                                               
    "09"            = "September"                                            
    "10"            = "October"                                              
    "11"            = "November"                                             
    "12"            = "December"                                             
    "97"            = "Refused"                                              
    "98"            = "Not ascertained"                                      
    "99"            = "Don't know"                                           
   ;                                                                         
  VALUE $PEP012X                                                             
    "1914"          = "1914 or before"                                       
    "1915" - "1999" = "1915-1999"                                            
    "9997"          = "Refused"                                              
    "9998"          = "Not ascertained"                                      
    "9999"          = "Don't know"                                           
   ;                                                                         
  VALUE PEP013X                                                              
    1               = "Yes"                                                  
    2               = "No"                                                   
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
   ;                                                                         
  VALUE PEP014X                                                              
    00              = "Multiple Hispanic"                                    
    01              = "Puerto Rican"                                         
    03              = "Mexican-Mexicano"                                     
    04              = "Mexican-American (includes Chicano)"                  
    05              = "Cuban/Cuban-American"                                 
    06              = "Other Latin American"                                 
    07              = "Other Spanish"                                        
    08              = "Hispanic/Spanish, non-specific type"                  
    09              = "Hispanic/Spanish, type refused"                       
    10              = "Hispanic/Spanish, type not ascertained"               
    11              = "Hispanic/Spanish, type don't know"                    
    12              = "Not Hispanic/Spanish origin"                          
   ;                                                                         
  VALUE PEP015X                                                              
    01              = "White"                                                
    02              = "Black/African American"                               
    03              = "Indian (American) (includes Eskimo, Aleut)"           
    06              = "Chinese"                                              
    07              = "Filipino"                                             
    12              = "Asian Indian"                                         
    15              = "Other API*"                                           
    16              = "Other race"                                           
    17              = "Multiple race"                                        
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
   ;                                                                         
  VALUE PEP016X                                                              
    1               = "White"                                                
    2               = "Black"                                                
    3               = "Other"                                                
   ;                                                                         
  VALUE PEP017X                                                              
    1               = "White"                                                
    2               = "Black"                                                
    3               = "AIAN*"                                                
    4               = "API*"                                                 
    5               = "Other"                                                
    6               = "Multiple race"                                        
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
   ;                                                                         
  VALUE PEP018X                                                              
    1               = "Hispanic"                                             
    2               = "Non-Hispanic White"                                   
    3               = "Non-Hispanic Black"                                   
    4               = "Non-Hispanic Other"                                   
   ;                                                                         
  VALUE PEP019X                                                              
    0               = "Under 14 years"                                       
    1               = "Married - spouse in household"                        
    2               = "Married - spouse not in household"                    
    3               = "Married - spouse in household unknown"                
    4               = "Widowed"                                              
    5               = "Divorced"                                             
    6               = "Separated"                                            
    7               = "Never married"                                        
    8               = "Living with partner"                                  
    9               = "Unknown marital status"                               
   ;                                                                         
  VALUE PEP020X                                                              
    1               = "Yes"                                                  
    2               = "No"                                                   
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
  VALUE PEP021X                                                              
    1               = "Married"                                              
    2               = "Widowed"                                              
    3               = "Divorced"                                             
    4               = "Separated"                                            
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
  VALUE PEP022X                                                              
    1               = "Married, spouse in household"                         
    2               = "Married, spouse not in household"                     
    3               = "Married, spouse in household unknown"                 
    4               = "Widowed"                                              
    5               = "Divorced"                                             
    6               = "Separated"                                            
    7               = "Never Married"                                        
    9               = "Unknown marital status"                               
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP023X                                                              
    1               = "Separated"                                            
    2               = "Divorced"                                             
    3               = "Married"                                              
    4               = "Single/never married"                                 
    5               = "Widowed"                                              
    9               = "Unknown marital status"                               
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP024X                                                              
    01              = "Household reference person"                           
    02              = "Spouse (husband/wife)"                                
    03              = "Unmarried Partner"                                    
    04              = "Child (biological/adoptive/in-law/step/foster)"       
    05              = "Child of partner"                                     
    06              = "Grandchild"                                           
    07              = "Parent (bio./adoptive/in-law/step/foster)"            
    08              = "Brother/sister (bio./adop./in-law/step/foster)"       
    09              = "Grandparent (Grandmother/Grandfather)"                
    10              = "Aunt/Uncle"                                           
    11              = "Niece/Nephew"                                         
    12              = "Other relative"                                       
    13              = "Housemate/roommate"                                   
    14              = "Roomer/Boarder"                                       
    15              = "Other nonrelative"                                    
    16              = "Legal guardian"                                       
    17              = "Ward"                                                 
    97              = "Refused"                                              
    99              = "Don't know"                                           
   ;                                                                         
  VALUE $PEP025X                                                             
    "01" - "30"     = "Person number 1 thru 30"                              
    "98"            = "Not ascertained"                                      
   ;                                                                         
  VALUE $PEP026X                                                             
    "P"             = "HH Reference person"                                  
    "8"             = "Not ascertained"                                      
    " "             = "<Blank:  Not reference person>"                       
   ;                                                                         
  VALUE PEP027X                                                              
    01              = "Family reference person"                              
    02              = "Spouse (husband/wife)"                                
    03              = "Unmarried Partner"                                    
    04              = "Child (biological/adoptive/in-law/step/foster)"       
    05              = "Child of partner"                                     
    06              = "Grandchild"                                           
    07              = "Parent (bio./adoptive/in-law/step/foster)"            
    08              = "Brother/sister (bio./adop./in-law/step/foster)"       
    09              = "Grandparent (Grandmother/Grandfather)"                
    10              = "Aunt/Uncle"                                           
    11              = "Niece/Nephew"                                         
    12              = "Other relative"                                       
    13              = "Housemate/roommate"                                   
    14              = "Roomer/Boarder"                                       
    15              = "Other nonrelative"                                    
    16              = "Legal guardian"                                       
    17              = "Ward"                                                 
    97              = "Refused"                                              
    99              = "Don't know"                                           
   ;                                                                         
  VALUE $PEP029X                                                             
    "P"             = "Family reference person"                              
    "8"             = "Not ascertained"                                      
    " "             = "<Blank:  Not reference person>"                       
   ;                                                                         
  VALUE $PEP030X                                                             
    "B"             = "Family respondent"                                    
    "8"             = "Not ascertained"                                      
    " "             = "<Blank:  Not family respondent>"                      
   ;                                                                         
  VALUE PEP031X                                                              
    1               = "Full  {brother/sister}"                               
    2               = "Half {brother/sister}"                                
    3               = "Adopted {brother/sister}"                             
    4               = "Step {brother/sister}"                                
    5               = "Foster {brother/sister}"                              
    6               = "{brother/sister}-in-law"                              
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE $PEP032X                                                             
    "00"            = "No mother in the household"                           
    "01" - "30"     = "Person number (of mother)"                            
    "96"            = "Has legal guardian"                                   
    "97"            = "Refused"                                              
    "98"            = "Not ascertained"                                      
    "99"            = "Don't know"                                           
   ;                                                                         
  VALUE PEP033X                                                              
    1               = "Biological"                                           
    2               = "Step"                                                 
    3               = "Adoptive"                                             
    4               = "Foster"                                               
    5               = "In-law"                                               
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE $PEP034X                                                             
    "00"            = "No father in the household"                           
    "01" - "30"     = "Person number (of father)"                            
    "96"            = "Has legal guardian"                                   
    "97"            = "Refused"                                              
    "98"            = "Not ascertained"                                      
    "99"            = "Don't know"                                           
   ;                                                                         
  VALUE $PEP036X                                                             
    "00"            = "Guardian is not a household member"                   
    "01" - "30"     = "Person number of guardian"                            
    "97"            = "Refused"                                              
    "98"            = "Not ascertained"                                      
    "99"            = "Don't know"                                           
    " "             = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP037X                                                              
    1               = "Mother, no father"                                    
    2               = "Father, no mother"                                    
    3               = "Mother and father"                                    
    4               = "Neither mother nor father"                            
    9               = "Unknown"                                              
   ;                                                                         
  VALUE PEP038X                                                              
    01              = "Less/equal to 8th grade"                              
    02              = "9-12th grade, no high school diploma"                 
    03              = "High school graduate/GED recipient"                   
    04              = "Some college, no degree"                              
    05              = "AA degree, technical or vocational"                   
    06              = "AA degree, academic program"                          
    07              = "Bachelor's degree"                                    
    08              = "Master's, professional, or doctoral degree"           
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP040X                                                              
    01 - 30         = "01-30 persons"                                        
   ;                                                                         
  VALUE PEP041X                                                              
    1               = "One adult, no child(ren) under 18"                    
    2               = "Multiple adults, no child(ren) under 18"              
    3               = "One adult, 1+ child(ren) under 18"                    
    4               = "Multiple adults, 1+ child(ren) under 18"              
    9               = "Unknown"                                              
   ;                                                                         
  VALUE PEP043X                                                              
    1               = "Armed Forces"                                         
    2               = "Not Armed Forces"                                     
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
  VALUE PEP044X                                                              
    0               = "Sample Adult - no record"                             
    1               = "Sample Adult - has record"                            
    2               = "Not selected as Sample Adult"                         
    3               = "No one selected as Sample Adult"                      
    4               = "Armed Force member"                                   
    5               = "Armed Force member - selected as Sample Adult"        
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
  VALUE PEP045X                                                              
    0               = "Sample Child - no record"                             
    1               = "Sample Child - has record"                            
    2               = "Not selected as Sample Child"                         
    3               = "No one selected as Sample Child"                      
    4               = "Emancipated Minor"                                    
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
  VALUE PEP046X                                                              
    0               = "Immunization Child - no record"                       
    1               = "Immunization Child - has record"                      
    2               = "Not eligible for immunization questions"              
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
  VALUE PEP047X                                                              
    1               = "Northeast"                                            
    2               = "Midwest"                                              
    3               = "South"                                                
    4               = "West"                                                 
   ;                                                                         
  VALUE PEP048X                                                              
    1               = "5,000,000 or more"                                    
    2               = "2,500,000 - 4,999,999"                                
    3               = "1,000,000 - 2,499,999"                                
    4               = "500,000 - 999,999"                                    
    5               = "250,000 - 499,999"                                    
    6               = "Under 250,000"                                        
    7               = "Non-MSA"                                              
   ;                                                                         
  VALUE PEP065X                                                              
    0               = "Unable to work"                                       
    1               = "Limited in work"                                      
    2               = "Not limited in work"                                  
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
  VALUE PEP068X                                                              
    0               = "Limitation previously mentioned"                      
    1               = "Yes, limited in some other way"                       
    2               = "Not limited in any way"                               
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
   ;                                                                         
  VALUE PEP069X                                                              
    1               = "Limited in any way"                                   
    2               = "Not limited in any way (includes unk)"                
   ;                                                                         
  VALUE PEP070X                                                              
    1               = "Mentioned"                                            
    2               = "Not mentioned"                                        
    6               = "No condition at all"                                  
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP071X                                                              
    01 - 94         = "1-94"                                                 
    95              = "95+"                                                  
    96              = "Since birth"                                          
    97              = "Refused*"                                             
    98              = "Not ascertained"                                      
    99              = "Don't know*"                                          
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP072X                                                              
    1               = "Day(s)"                                               
    2               = "Week(s)"                                              
    3               = "Month(s)"                                             
    4               = "Year(s)"                                              
    6               = "Since birth"                                          
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP073X                                                              
    00              = "Less than 1 year"                                     
    01 - 17         = "01-17 years"                                          
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP087X                                                              
    01 - 94         = "1-94"                                                 
    95              = "95+"                                                  
    96              = "Since birth"                                          
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP125X                                                              
    00              = "Less than 1 year"                                     
    01 - 84         = "01-84 years"                                          
    85              = "85+ years"                                            
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP247X                                                              
    01 - 94         = "1-94"                                                 
    95              = "95+"                                                  
    96              = "Since birth **"                                       
    97              = "Refused*"                                             
    98              = "Not ascertained"                                      
    99              = "Don't know*"                                          
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP248X                                                              
    1               = "Day(s)"                                               
    2               = "Week(s)"                                              
    3               = "Month(s)"                                             
    4               = "Year(s)"                                              
    6               = "Since birth *"                                        
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP266X                                                              
    00              = "Since birth and child < 1 year of age"                
    01              = "Less than 3 months"                                   
    02              = "3 -  5 months"                                        
    03              = "6 - 12 months"                                        
    04              = "More than 1 year"                                     
    10              = "Unknown number of days"                               
    11              = "Unknown number of weeks"                              
    12              = "Unknown number of months"                             
    13              = "Unknown number of years"                              
    99              = "Unknown time with cond/impairment"                    
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
  VALUE PEP279X                                                              
    01              = "Less than 3 months"                                   
    02              = "3 -  5 months"                                        
    03              = "6 - 12 months"                                        
    04              = "More than 1 year"                                     
    10              = "Unknown number of days"                               
    11              = "Unknown number of weeks"                              
    12              = "Unknown number of months"                             
    13              = "Unknown number of years"                              
    99              = "Unknown time with cond/impairment"                    
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
  VALUE PEP315X                                                              
    1               = "Chronic"                                              
    2               = "Not chronic"                                          
    9               = "Unknown if chronic"                                   
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
  VALUE PEP364X                                                              
    1               = "At least one condition causing LA is chronic"         
    2               = "No condition causing LA is chronic"                   
    9               = "Unknown if any condition causing LA is chronic"       
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
  VALUE PEP365X                                                              
    0               = "Not limited in any way (incl unk if limited)"         
    1               = "Limited; caused by at least one chronic cond"         
    2               = "Limited; not caused by chronic cond"                  
    3               = "Limited; unk if cond causing LA is chronic"           
   ;                                                                         
  VALUE PEP366X                                                              
    1               = "Excellent"                                            
    2               = "Very good"                                            
    3               = "Good"                                                 
    4               = "Fair"                                                 
    5               = "Poor"                                                 
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
   ;                                                                         
  VALUE PEP368X                                                              
    1               = "1 injury episode"                                     
    2               = "2 injury episodes"                                    
    3               = "3 injury episodes"                                    
    4               = "4 injury episodes"                                    
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP369X                                                              
    01              = "1 injury condition"                                   
    02              = "2 injury conditions"                                  
    03              = "3 injury conditions"                                  
    04              = "4 injury conditions"                                  
    05              = "5 injury conditions"                                  
    06              = "6 injury conditions"                                  
    07              = "7 injury conditions"                                  
    08              = "8 injury conditions"                                  
    09              = "9 injury conditions"                                  
    10              = "10 injury conditions"                                 
    11              = "11 injury conditions"                                 
    12              = "12 injury conditions"                                 
    13              = "13 injury conditions"                                 
    14              = "14 injury conditions"                                 
    15              = "15 injury conditions"                                 
    16              = "16 injury conditions"                                 
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP370X                                                              
    0               = "None"                                                 
    1               = "1 time"                                               
    2               = "2 times"                                              
    3               = "3 times"                                              
    4               = "4 times"                                              
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP409X                                                              
    1               = "1 poison episode"                                     
    2               = "2 poison episodes"                                    
    3               = "3 poison episodes"                                    
    4               = "4 poison episodes"                                    
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP413X                                                              
    001 - 365       = "1-365 times"                                          
    997             = "Refused"                                              
    998             = "Not ascertained"                                      
    999             = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP414X                                                              
    001 - 365       = "1-365 nights"                                         
    997             = "Refused"                                              
    998             = "Not ascertained"                                      
    999             = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP416X                                                              
    01 - 49         = "1-49 visits"                                          
    50              = "50+  visits"                                          
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP418X                                                              
    01 - 49         = "1-49 calls"                                           
    50              = "50+ calls"                                            
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP420X                                                              
    01 - 49         = "1-49 times"                                           
    50              = "50+ times"                                            
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP423X                                                              
    1               = "Mentioned"                                            
    2               = "Not mentioned"                                        
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank: Not in universe>"                             
   ;                                                                         
  VALUE PEP434X                                                              
    1               = "Yes, information"                                     
    2               = "Yes, but no information"                              
    3               = "No"                                                   
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP435X                                                              
    1               = "Part A - Hospital Only"                               
    2               = "Part B - Medical Only"                                
    3               = "Both Part A and Part B"                               
    4               = "Card Not Available"                                   
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP438X                                                              
    1               = "Any doctor"                                           
    2               = "Select from a book/list"                              
    3               = "Doctor is assigned"                                   
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP442X                                                              
    01 - 92         = "Refer to Health Insurance Plan Appendix"              
    98              = "Not ascertained"                                      
    99              = "Unknown"                                              
    .               = "<Blank: Not in universe>"                             
   ;                                                                         
  VALUE PEP443X                                                              
    1               = "In own name"                                          
    2               = "Someone else in family"                               
    3               = "Person not in household"                              
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP444X                                                              
    1               = "Employer"                                             
    2               = "Union"                                                
    3               = "Through work, but DK if employer or union"            
    4               = "Through work, self-employ or prof assoc"              
    5               = "No"                                                   
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP451X                                                              
    1               = "Less than $500"                                       
    2               = "$500-$999"                                            
    3               = "$1,000-$1,999"                                        
    4               = "$2,000-$2,999"                                        
    5               = "$3,000 or more"                                       
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP452X                                                              
    1               = "HMO/IPA"                                              
    2               = "PPO"                                                  
    3               = "POS"                                                  
    4               = "Other"                                                
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP453X                                                              
    1               = "Any doctor"                                           
    2               = "Select from group/list"                               
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP499X                                                              
    1               = "Yes, Military/VA only"                                
    2               = "Yes, CHAMPUS/TRICARE/CHAMP-VA only"                   
    3               = "Yes Both Military/VA + CHAMPUS/TRICARE/CHAMP-VA"      
    4               = "Yes unknown type"                                     
    5               = "No"                                                   
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP502X                                                              
    1               = "Not covered"                                          
    2               = "Covered"                                              
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP503X                                                              
    1               = "6 months or less"                                     
    2               = "More than 6 months, but not more than 1 year ago"     
    3               = "More than 1 year, but not more than 3 years ago"      
    4               = "More than 3 years"                                    
    5               = "Never"                                                
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP520X                                                              
    01 - 12         = "1-12 months"                                          
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP521X                                                              
    0               = "Zero"                                                 
    1               = "Less than $500"                                       
    2               = "$500-$1,999"                                          
    3               = "$2,000-$2,999"                                        
    4               = "$3,000-$4,999"                                        
    5               = "$5,000 or more"                                       
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't Know"                                           
    .               = "<Blank:  Not in universe>"                            
   ;                                                                         
  VALUE PEP523X                                                              
    1               = "Less than 1 year"                                     
    2               = "1 yr., less than 5 yrs."                              
    3               = "5 yrs., less than 10 yrs."                            
    4               = "10 yrs., less than 15 yrs."                           
    5               = "15 years or more"                                     
    9               = "Unknown"                                              
    .               = "<Blank: Not in universe>"                             
   ;                                                                         
  VALUE PEP524X                                                              
    1               = "Yes, citizen of the United States"                    
    2               = "No, not a citizen of the United States"               
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
   ;                                                                         
  VALUE PEP527X                                                              
    00              = "Never attended/ kindergarten only"                    
    01 - 11         = "Grades 1 - 11"                                        
    12              = "12th grade, no diploma"                               
    13              = "HIGH SCHOOL GRADUATE"                                 
    14              = "GED or equivalent"                                    
    15              = "Some college, no degree"                              
    16              = "AA degree: technical or vocational"                   
    17              = "AA degree: academic program"                          
    18              = "Bachelor's degree (BA, AB, BS, BBA)"                  
    19              = "Master's degree (MA, MS, MEng, MEd, MBA)"             
    20              = "Professional degree (MD, DDS, DVM, JD)"               
    21              = "Doctoral degree (PhD, EdD)"                           
    96              = "Child under 5 years old"                              
    97              = "Refused"                                              
    98              = "Not Ascertained"                                      
    99              = "Don't know"                                           
   ;                                                                         
  VALUE PEP528X                                                              
    01              = "Less/equal to 8th grade"                              
    02              = "9-12th grade, no high school diploma"                 
    03              = "High school graduate"                                 
    04              = "GED recipient"                                        
    05              = "Some college, no degree"                              
    06              = "AA degree, technical or vocational"                   
    07              = "AA degree, academic program"                          
    08              = "Bachelor's degree (BA, BS, AB, BBA)"                  
    09              = "Master's, professional, or doctoral degree"           
    96              = "Child under 5 years of age"                           
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
   ;                                                                         
  VALUE PEP530X                                                              
    1               = "Working at a job or business"                         
    2               = "With a job or business but not at work"               
    3               = "Looking for work"                                     
    4               = "Not working at a job or business"                     
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank: Not in universe>"                             
   ;                                                                         
  VALUE PEP531X                                                              
    01 - 94         = "1-94 hours"                                           
    95              = "95+ hours"                                            
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP533X                                                              
    1               = "Keeping house"                                        
    2               = "Going to school"                                      
    3               = "Retired"                                              
    4               = "Unable to work for health reasons"                    
    5               = "On layoff"                                            
    6               = "Other"                                                
    7               = "Refused"                                              
    8               = "Not Ascertained"                                      
    9               = "Don't know"                                           
    .               = "<Blank: Not in Universe>"                             
   ;                                                                         
  VALUE PEP536X                                                              
    1               = "Working at a job or business"                         
    2               = "Keeping house"                                        
    3               = "Going to school"                                      
    4               = "Something else"                                       
    5               = "Unknown"                                              
    .               = "<Blank: Not in universe>"                             
   ;                                                                         
  VALUE PEP537X                                                              
    01              = "$1-$4999"                                             
    02              = "$5000-$9999"                                          
    03              = "$10000-$14999"                                        
    04              = "$15000-$19999"                                        
    05              = "$20000-$24999"                                        
    06              = "$25000-$34999"                                        
    07              = "$35000-$44999"                                        
    08              = "$45000-$54999"                                        
    09              = "$55000-$64999"                                        
    10              = "$65000-$74999"                                        
    11              = "$75000 and over"                                      
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
    .               = "<Blank: Not in universe>"                             
   ;                                                                         
  VALUE PEP555X                                                              
    01              = "0-$4999"                                              
    02              = "$5000-$9999"                                          
    03              = "$10000-$14999"                                        
    04              = "$15000-$19999"                                        
    05              = "$20000-$24999"                                        
    06              = "$25000-$34999"                                        
    07              = "$35000-$44999"                                        
    08              = "$45000-$54999"                                        
    09              = "$55000-$64999"                                        
    10              = "$65000-$74999"                                        
    11              = "$75000 and over"                                      
    12              = "$20000 or more (no detail)"                           
    13              = "Less than $20000 (no detail)"                         
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
   ;                                                                         
  VALUE PEP556X                                                              
    01              = "$20,000 or more"                                      
    02              = "Less than $20,000"                                    
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
   ;                                                                         
  VALUE PEP557X                                                              
    01              = "Under .50"                                            
    02              = ".50 to .74"                                           
    03              = ".75 to .99"                                           
    04              = "1.00 to 1.24"                                         
    05              = "1.25 to 1.49"                                         
    06              = "1.50 to 1.74"                                         
    07              = "1.75 to 1.99"                                         
    08              = "2.00 to 2.49"                                         
    09              = "2.50 to 2.99"                                         
    10              = "3.00 to 3.49"                                         
    11              = "3.50 to 3.99"                                         
    12              = "4.00 to 4.49"                                         
    13              = "4.50 to 4.99"                                         
    14              = "5.00 and over"                                        
    96              = "Undefinable"                                          
    99              = "Unknown"                                              
   ;                                                                         
  VALUE PEP558X                                                              
    1               = "Owned"                                                
    2               = "Being bought"                                         
    3               = "Rented"                                               
    4               = "Other arrangement"                                    
    7               = "Refused"                                              
    8               = "Not ascertained"                                      
    9               = "Don't know"                                           
   ;                                                                         
  VALUE PEP561X                                                              
    01 - 12         = "01-12 months"                                         
    97              = "Refused"                                              
    98              = "Not ascertained"                                      
    99              = "Don't know"                                           
    .               = "<Blank:  Not in Universe>"                            
   ;                                                                         
                                                                             
DATA NHIS.PERSON_1998;                                                          
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1998\';                        
   INFILE 'C:\DATA\NHIS\1998\da3107p.sas' MISSOVER TRUNCOVER LRECL=774;           
                                                                             
   * DEFINE LENGTH OF ALL VARIABLES;                                         
                                                                             
   LENGTH                                                                    
      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2              
      PX       $ 2   INTV_QRT   3   SEX        3   AGE_P      3              
      R_AGE1     3   R_AGE2     3   DOB_M    $ 2   DOB_Y_P  $ 4              
      ORIGIN     3   HISPAN_P   3   MRACE_P    3   RACEREC    3              
      RACE       3   HISPCODE   3   R_MARITL   3   COHAB1     3              
      COHAB2     3   LG_MSTAT   3   CDCMSTAT   3   RRP        3              
      HH_REF   $ 2   HHREFLG  $ 1   FRRP       3   FM_REF   $ 2              
      FMREFLG  $ 1   FMRPFLG  $ 1   SIB_DEG    3   MOTHER   $ 2              
      MOM_DEG    3   FATHER   $ 2   DAD_DEG    3   GUARD    $ 2              
      PARENTS    3   MOM_ED     3   DAD_ED     3   FM_SIZE    3              
      FM_TYPE    3   FM_STRCP   3   NOWAF      3   ASTATFLG   3              
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
                                                                             
      PINJ3MR    3   INJCT      3   ICD9CT     3   ECAUS1CT   3              
      ECAUS2CT   3   ECAUS3CT   3   ECAUS4CT   3   ECAUS5CT   3              
      ECAUS6CT   3   ECAUS7CT   3   ECAUS8CT   3   ECAUS9CT   3              
      WHAT1CT    3   WHAT2CT    3   WHAT3CT    3   WHAT4CT    3              
      WHAT5CT    3   WHAT6CT    3   WHAT7CT    3   WHAT8CT    3              
      WHAT9CT    3   WHAT10CT   3   WHAT11CT   3   WHER1CT    3              
      WHER2CT    3   WHER3CT    3   WHER4CT    3   WHER5CT    3              
      WHER6CT    3   WHER7CT    3   WHER8CT    3   WHER9CT    3              
      WHER10CT   3   WHER11CT   3   WHER12CT   3   WHER13CT   3              
      WHER14CT   3   WHER15CT   3   WHER16CT   3   WHER17CT   3              
      WHER18CT   3   PPOIS3MR   3   POICT      3                             
                                                                             
      PDMED12M   3   PNMED12M   3   PHOSPYR    3   HOSPNO     4              
      HPNITE     4   PHCHM2W    3   PHCHMN2W   3   PHCPH2W    3              
      PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3   P10DVYR    3              
                                                                             
      PHICOV     3   HIKINDA    3   HIKINDB    3   HIKINDC    3              
      HIKINDD    3   HIKINDE    3   HIKINDF    3   HIKINDG    3              
      HIKINDH    3   HIKINDI    3   HIKINDJ    3   HIKINDK    3              
      MEDICARE   3   MCPART     3   MCHMO      3   MEDICAID   3              
      MACHMD     3   MAPCMD     3   MAREF      3   PRIVATE    3              
      HITYPE1    3   WHONAM1    3   PLNWRK1    3   PLNPAY11   3              
      PLNPAY21   3   PLNPAY31   3   PLNPAY41   3   PLNPAY51   3              
      PLNPAY61   3   HICOST1    3   PLNMGD1    3   MGCHMD1    3              
      MGPRMD1    3   MGPYMD1    3   HITYPE2    3   WHONAM2    3              
      PLNWRK2    3   PLNPAY12   3   PLNPAY22   3   PLNPAY32   3              
      PLNPAY42   3   PLNPAY52   3   PLNPAY62   3   HICOST2    3              
      PLNMGD2    3   MGCHMD2    3   MGPRMD2    3   MGPYMD2    3              
      HITYPE3    3   WHONAM3    3   PLNWRK3    3   PLNPAY13   3              
      PLNPAY23   3   PLNPAY33   3   PLNPAY43   3   PLNPAY53   3              
      PLNPAY63   3   HICOST3    3   PLNMGD3    3   MGCHMD3    3              
      MGPRMD3    3   MGPYMD3    3   HITYPE4    3   WHONAM4    3              
      PLNWRK4    3   PLNPAY14   3   PLNPAY24   3   PLNPAY34   3              
      PLNPAY44   3   PLNPAY54   3   PLNPAY64   3   HICOST4    3              
      PLNMGD4    3   MGCHMD4    3   MGPRMD4    3   MGPYMD4    3              
      IHS        3   MILITARY   3   OTHERPUB   3   OTHERGOV   3              
      NOTCOV     3   HILAST     3   HISTOP1    3   HISTOP2    3              
      HISTOP3    3   HISTOP4    3   HISTOP5    3   HISTOP6    3              
      HISTOP7    3   HISTOP8    3   HISTOP9    3   HISTOP10   3              
      HISTOP11   3   HISTOP12   3   HISTOP13   3   HISTOP14   3              
      HISTOP15   3   HINOTYR    3   HINOTMYR   3   HCSPFYR    3              
                                                                             
      USBORN_P   3   YRSINUS    3   CITIZENP   3   HEADST     3              
      HEADSTEV   3   EDUC       3   EDUC_R1    3   MILTRYDS   3              
      DOINGLW    3   WRKHRS     3   WRKFTALL   3   WHYNOWRK   3              
      WRKLYR     3   WRKMYR     3   MAJR_ACT   3   ERNYR_P    3              
      HIEMPOF    3                                                           
                                                                             
      PSAL       3   PSEINC     3   PSSRR      3   PSSRRDB    3              
      PSSRRD     3   PPENS      3   POPENS     3   PSSI       3              
      PSSID      3   PTANF      3   FGAH       3   POWBEN     3              
      PINTRST    3   PDIVD      3   PCHLDSP    3   PINCOT     3              
      INCGRP     3   AB_BL20K   3   RAT_CAT    3   HOUSEOWN   3              
      PSSAPL     3   PSDAPL     3   TANFMYR    3   PFSTP      3              
      FSTPMYR    3 ;                                                         
                                                                             
   * INPUT ALL VARIABLES;                                                    
                                                                             
   INPUT                                                                     
      RECTYPE       1 -   2    SRVY_YR       3 -   6                         
      HHX      $    7 -  12    FMX      $   13 -  14                         
      PX       $   15 -  16    INTV_QRT     17 -  17                         
      SEX          18 -  18    AGE_P        19 -  20                         
      R_AGE1       21 -  21    R_AGE2       22 -  22                         
      DOB_M    $   23 -  24    DOB_Y_P  $   25 -  28                         
      ORIGIN       29 -  29    HISPAN_P     30 -  31                         
      MRACE_P      32 -  33    RACEREC      34 -  34                         
      RACE         35 -  35    HISPCODE     36 -  36                         
      R_MARITL     37 -  37    COHAB1       38 -  38                         
      COHAB2       39 -  39    LG_MSTAT     40 -  40                         
      CDCMSTAT     41 -  41    RRP          42 -  43                         
      HH_REF   $   44 -  45    HHREFLG  $   46 -  46                         
      FRRP         47 -  48    FM_REF   $   49 -  50                         
      FMREFLG  $   51 -  51    FMRPFLG  $   52 -  52                         
      SIB_DEG      53 -  53    MOTHER   $   54 -  55                         
      MOM_DEG      56 -  56    FATHER   $   57 -  58                         
      DAD_DEG      59 -  59    GUARD    $   60 -  61                         
      PARENTS      62 -  62    MOM_ED       63 -  64                         
      DAD_ED       65 -  66    FM_SIZE      67 -  68                         
      FM_TYPE      69 -  69    FM_STRCP     70 -  71                         
      NOWAF        72 -  72    ASTATFLG     73 -  73                         
      CSTATFLG     74 -  74    IMMUNFLG     75 -  75                         
      REGION       76 -  76    MSASIZEP     77 -  77                         
      WTIA         78 -  83 .1 WTFA         84 -  89                         
      STRATUM      90 -  92    PSU          93 -  93                         
                                                                             
      PLAPLYLM     94 -  94    PLAPLYUN     95 -  95                         
      PSPEDEIS     96 -  96    PLAADL       97 -  97                         
      LABATH       98 -  98    LADRESS      99 -  99                         
      LAEAT       100 - 100    LABED       101 - 101                         
      LATOILT     102 - 102    LAHOME      103 - 103                         
      PLAIADL     104 - 104    PLAWKNOW    105 - 105                         
      PLAWKLIM    106 - 106    PLAWALK     107 - 107                         
      PLAREMEM    108 - 108    PLIMANY     109 - 109                         
      LA1AR       110 - 110    LAHCC1      111 - 111                         
      LHCCLN1     112 - 113    LHCCLT1     114 - 114                         
      LHCCLY1     115 - 116    LAHCC2      117 - 117                         
      LHCCLN2     118 - 119    LHCCLT2     120 - 120                         
      LHCCLY2     121 - 122    LAHCC3      123 - 123                         
      LHCCLN3     124 - 125    LHCCLT3     126 - 126                         
      LHCCLY3     127 - 128    LAHCC4      129 - 129                         
      LHCCLN4     130 - 131    LHCCLT4     132 - 132                         
      LHCCLY4     133 - 134    LAHCC5      135 - 135                         
      LHCCLN5     136 - 137    LHCCLT5     138 - 138                         
      LHCCLY5     139 - 140    LAHCC6      141 - 141                         
      LHCCLN6     142 - 143    LHCCLT6     144 - 144                         
      LHCCLY6     145 - 146    LAHCC7      147 - 147                         
      LHCCLN7     148 - 149    LHCCLT7     150 - 150                         
      LHCCLY7     151 - 152    LAHCC8      153 - 153                         
      LHCCLN8     154 - 155    LHCCLT8     156 - 156                         
      LHCCLY8     157 - 158    LAHCC9      159 - 159                         
      LHCCLN9     160 - 161    LHCCLT9     162 - 162                         
      LHCCLY9     163 - 164    LAHCC10     165 - 165                         
      LHCCLN10    166 - 167    LHCCLT10    168 - 168                         
      LHCCLY10    169 - 170    LAHCC11     171 - 171                         
      LHCCLN11    172 - 173    LHCCLT11    174 - 174                         
      LHCCLY11    175 - 176    LAHCC90     177 - 177                         
      LHCCLN90    178 - 179    LHCCLT90    180 - 180                         
      LHCCLY90    181 - 182    LAHCC91     183 - 183                         
      LHCCLN91    184 - 185    LHCCLT91    186 - 186                         
      LHCCLY91    187 - 188    LAHCA1      189 - 189                         
      LHCALN1     190 - 191    LHCALT1     192 - 192                         
      LHCALY1     193 - 194    LAHCA2      195 - 195                         
      LHCALN2     196 - 197    LHCALT2     198 - 198                         
      LHCALY2     199 - 200    LAHCA3      201 - 201                         
      LHCALN3     202 - 203    LHCALT3     204 - 204                         
      LHCALY3     205 - 206    LAHCA4      207 - 207                         
      LHCALN4     208 - 209    LHCALT4     210 - 210                         
      LHCALY4     211 - 212    LAHCA5      213 - 213                         
      LHCALN5     214 - 215    LHCALT5     216 - 216                         
      LHCALY5     217 - 218    LAHCA6      219 - 219                         
      LHCALN6     220 - 221    LHCALT6     222 - 222                         
      LHCALY6     223 - 224    LAHCA7      225 - 225                         
      LHCALN7     226 - 227    LHCALT7     228 - 228                         
      LHCALY7     229 - 230    LAHCA8      231 - 231                         
      LHCALN8     232 - 233    LHCALT8     234 - 234                         
      LHCALY8     235 - 236    LAHCA9      237 - 237                         
      LHCALN9     238 - 239    LHCALT9     240 - 240                         
      LHCALY9     241 - 242    LAHCA10     243 - 243                         
      LHCALN10    244 - 245    LHCALT10    246 - 246                         
      LHCALY10    247 - 248    LAHCA11     249 - 249                         
      LHCALN11    250 - 251    LHCALT11    252 - 252                         
      LHCALY11    253 - 254    LAHCA12     255 - 255                         
      LHCALN12    256 - 257    LHCALT12    258 - 258                         
      LHCALY12    259 - 260    LAHCA13     261 - 261                         
      LHCALN13    262 - 263    LHCALT13    264 - 264                         
      LHCALY13    265 - 266    LAHCA14     267 - 267                         
      LHCALN14    268 - 269    LHCALT14    270 - 270                         
      LHCALY14    271 - 272    LAHCA15     273 - 273                         
      LHCALN15    274 - 275    LHCALT15    276 - 276                         
      LHCALY15    277 - 278    LAHCA16     279 - 279                         
      LHCALN16    280 - 281    LHCALT16    282 - 282                         
      LHCALY16    283 - 284    LAHCA17     285 - 285                         
      LHCALN17    286 - 287    LHCALT17    288 - 288                         
      LHCALY17    289 - 290    LAHCA18     291 - 291                         
      LHCALN18    292 - 293    LHCALT18    294 - 294                         
      LHCALY18    295 - 296    LAHCA19     297 - 297                         
      LHCALN19    298 - 299    LHCALT19    300 - 300                         
      LHCALY19    301 - 302    LAHCA20     303 - 303                         
      LHCALN20    304 - 305    LHCALT20    306 - 306                         
      LHCALY20    307 - 308    LAHCA21     309 - 309                         
      LHCALN21    310 - 311    LHCALT21    312 - 312                         
      LHCALY21    313 - 314    LAHCA22     315 - 315                         
      LHCALN22    316 - 317    LHCALT22    318 - 318                         
      LHCALY22    319 - 320    LAHCA23     321 - 321                         
      LHCALN23    322 - 323    LHCALT23    324 - 324                         
      LHCALY23    325 - 326    LAHCA24     327 - 327                         
      LHCALN24    328 - 329    LHCALT24    330 - 330                         
      LHCALY24    331 - 332    LAHCA25     333 - 333                         
      LHCALN25    334 - 335    LHCALT25    336 - 336                         
      LHCALY25    337 - 338    LAHCA26     339 - 339                         
      LHCALN26    340 - 341    LHCALT26    342 - 342                         
      LHCALY26    343 - 344    LAHCA27     345 - 345                         
      LHCALN27    346 - 347    LHCALT27    348 - 348                         
      LHCALY27    349 - 350    LAHCA28     351 - 351                         
      LHCALN28    352 - 353    LHCALT28    354 - 354                         
      LHCALY28    355 - 356    LAHCA29     357 - 357                         
      LHCALN29    358 - 359    LHCALT29    360 - 360                         
      LHCALY29    361 - 362    LAHCA30     363 - 363                         
      LHCALN30    364 - 365    LHCALT30    366 - 366                         
      LHCALY30    367 - 368    LAHCA31     369 - 369                         
      LHCALN31    370 - 371    LHCALT31    372 - 372                         
      LHCALY31    373 - 374    LAHCA32     375 - 375                         
      LHCALN32    376 - 377    LHCALT32    378 - 378                         
      LHCALY32    379 - 380    LAHCA33     381 - 381                         
      LHCALN33    382 - 383    LHCALT33    384 - 384                         
      LHCALY33    385 - 386    LAHCA34     387 - 387                         
      LHCALN34    388 - 389    LHCALT34    390 - 390                         
      LHCALY34    391 - 392    LAHCA90     393 - 393                         
      LHCALN90    394 - 395    LHCALT90    396 - 396                         
      LHCALY90    397 - 398    LAHCA91     399 - 399                         
      LHCALN91    400 - 401    LHCALT91    402 - 402                         
      LHCALY91    403 - 404    LACNTR1     405 - 406                         
      LACNTR2     407 - 408    LACNTR3     409 - 410                         
      LACNTR4     411 - 412    LACNTR5     413 - 414                         
      LACNTR6     415 - 416    LACNTR7     417 - 418                         
      LACNTR8     419 - 420    LACNTR9     421 - 422                         
      LACNTR10    423 - 424    LACNTR11    425 - 426                         
      LACNTR90    427 - 428    LACNTR91    429 - 430                         
      LAANTR1     431 - 432    LAANTR2     433 - 434                         
      LAANTR3     435 - 436    LAANTR4     437 - 438                         
      LAANTR5     439 - 440    LAANTR6     441 - 442                         
      LAANTR7     443 - 444    LAANTR8     445 - 446                         
      LAANTR9     447 - 448    LAANTR10    449 - 450                         
      LAANTR11    451 - 452    LAANTR12    453 - 454                         
      LAANTR13    455 - 456    LAANTR14    457 - 458                         
      LAANTR15    459 - 460    LAANTR16    461 - 462                         
      LAANTR17    463 - 464    LAANTR18    465 - 466                         
      LAANTR19    467 - 468    LAANTR20    469 - 470                         
      LAANTR21    471 - 472    LAANTR22    473 - 474                         
      LAANTR23    475 - 476    LAANTR24    477 - 478                         
      LAANTR25    479 - 480    LAANTR26    481 - 482                         
      LAANTR27    483 - 484    LAANTR28    485 - 486                         
      LAANTR29    487 - 488    LAANTR30    489 - 490                         
      LAANTR31    491 - 492    LAANTR32    493 - 494                         
      LAANTR33    495 - 496    LAANTR34    497 - 498                         
      LAANTR90    499 - 500    LAANTR91    501 - 502                         
      LCCNDR1     503 - 503    LCCNDR2     504 - 504                         
      LCCNDR3     505 - 505    LCCNDR4     506 - 506                         
      LCCNDR5     507 - 507    LCCNDR6     508 - 508                         
      LCCNDR7     509 - 509    LCCNDR8     510 - 510                         
      LCCNDR9     511 - 511    LCCNDR10    512 - 512                         
      LCCNDR11    513 - 513    LCCNDR90    514 - 514                         
      LCCNDR91    515 - 515    LACNDR1     516 - 516                         
      LACNDR2     517 - 517    LACNDR3     518 - 518                         
      LACNDR4     519 - 519    LACNDR5     520 - 520                         
      LACNDR6     521 - 521    LACNDR7     522 - 522                         
      LACNDR8     523 - 523    LACNDR9     524 - 524                         
      LACNDR10    525 - 525    LACNDR11    526 - 526                         
      LACNDR12    527 - 527    LACNDR13    528 - 528                         
      LACNDR14    529 - 529    LACNDR15    530 - 530                         
      LACNDR16    531 - 531    LACNDR17    532 - 532                         
      LACNDR18    533 - 533    LACNDR19    534 - 534                         
      LACNDR20    535 - 535    LACNDR21    536 - 536                         
      LACNDR22    537 - 537    LACNDR23    538 - 538                         
      LACNDR24    539 - 539    LACNDR25    540 - 540                         
      LACNDR26    541 - 541    LACNDR27    542 - 542                         
      LACNDR28    543 - 543    LACNDR29    544 - 544                         
      LACNDR30    545 - 545    LACNDR31    546 - 546                         
      LACNDR32    547 - 547    LACNDR33    548 - 548                         
      LACNDR34    549 - 549    LACNDR90    550 - 550                         
      LACNDR91    551 - 551    LCONDRT     552 - 552                         
      LACHRONR    553 - 553    PHSTAT      554 - 554                         
                                                                             
      PINJ3MR     555 - 555    INJCT       556 - 556                         
      ICD9CT      557 - 558    ECAUS1CT    559 - 559                         
      ECAUS2CT    560 - 560    ECAUS3CT    561 - 561                         
      ECAUS4CT    562 - 562    ECAUS5CT    563 - 563                         
      ECAUS6CT    564 - 564    ECAUS7CT    565 - 565                         
      ECAUS8CT    566 - 566    ECAUS9CT    567 - 567                         
      WHAT1CT     568 - 568    WHAT2CT     569 - 569                         
      WHAT3CT     570 - 570    WHAT4CT     571 - 571                         
      WHAT5CT     572 - 572    WHAT6CT     573 - 573                         
      WHAT7CT     574 - 574    WHAT8CT     575 - 575                         
      WHAT9CT     576 - 576    WHAT10CT    577 - 577                         
      WHAT11CT    578 - 578    WHER1CT     579 - 579                         
      WHER2CT     580 - 580    WHER3CT     581 - 581                         
      WHER4CT     582 - 582    WHER5CT     583 - 583                         
      WHER6CT     584 - 584    WHER7CT     585 - 585                         
      WHER8CT     586 - 586    WHER9CT     587 - 587                         
      WHER10CT    588 - 588    WHER11CT    589 - 589                         
      WHER12CT    590 - 590    WHER13CT    591 - 591                         
      WHER14CT    592 - 592    WHER15CT    593 - 593                         
      WHER16CT    594 - 594    WHER17CT    595 - 595                         
      WHER18CT    596 - 596    PPOIS3MR    597 - 597                         
      POICT       598 - 598                                                  
                                                                             
      PDMED12M    599 - 599    PNMED12M    600 - 600                         
      PHOSPYR     601 - 601    HOSPNO      602 - 604                         
      HPNITE      605 - 607    PHCHM2W     608 - 608                         
      PHCHMN2W    609 - 610    PHCPH2W     611 - 611                         
      PHCPHN2W    612 - 613    PHCDV2W     614 - 614                         
      PHCDVN2W    615 - 616    P10DVYR     617 - 617                         
                                                                             
      PHICOV      618 - 618    HIKINDA     619 - 619                         
      HIKINDB     620 - 620    HIKINDC     621 - 621                         
      HIKINDD     622 - 622    HIKINDE     623 - 623                         
      HIKINDF     624 - 624    HIKINDG     625 - 625                         
      HIKINDH     626 - 626    HIKINDI     627 - 627                         
      HIKINDJ     628 - 628    HIKINDK     629 - 629                         
      MEDICARE    630 - 630    MCPART      631 - 631                         
      MCHMO       632 - 632    MEDICAID    633 - 633                         
      MACHMD      634 - 634    MAPCMD      635 - 635                         
      MAREF       636 - 636    PRIVATE     637 - 637                         
      HITYPE1     638 - 639    WHONAM1     640 - 640                         
      PLNWRK1     641 - 641    PLNPAY11    642 - 642                         
      PLNPAY21    643 - 643    PLNPAY31    644 - 644                         
      PLNPAY41    645 - 645    PLNPAY51    646 - 646                         
      PLNPAY61    647 - 647    HICOST1     648 - 648                         
      PLNMGD1     649 - 649    MGCHMD1     650 - 650                         
      MGPRMD1     651 - 651    MGPYMD1     652 - 652                         
      HITYPE2     653 - 654    WHONAM2     655 - 655                         
      PLNWRK2     656 - 656    PLNPAY12    657 - 657                         
      PLNPAY22    658 - 658    PLNPAY32    659 - 659                         
      PLNPAY42    660 - 660    PLNPAY52    661 - 661                         
      PLNPAY62    662 - 662    HICOST2     663 - 663                         
      PLNMGD2     664 - 664    MGCHMD2     665 - 665                         
      MGPRMD2     666 - 666    MGPYMD2     667 - 667                         
      HITYPE3     668 - 669    WHONAM3     670 - 670                         
      PLNWRK3     671 - 671    PLNPAY13    672 - 672                         
      PLNPAY23    673 - 673    PLNPAY33    674 - 674                         
      PLNPAY43    675 - 675    PLNPAY53    676 - 676                         
      PLNPAY63    677 - 677    HICOST3     678 - 678                         
      PLNMGD3     679 - 679    MGCHMD3     680 - 680                         
      MGPRMD3     681 - 681    MGPYMD3     682 - 682                         
      HITYPE4     683 - 684    WHONAM4     685 - 685                         
      PLNWRK4     686 - 686    PLNPAY14    687 - 687                         
      PLNPAY24    688 - 688    PLNPAY34    689 - 689                         
      PLNPAY44    690 - 690    PLNPAY54    691 - 691                         
      PLNPAY64    692 - 692    HICOST4     693 - 693                         
      PLNMGD4     694 - 694    MGCHMD4     695 - 695                         
      MGPRMD4     696 - 696    MGPYMD4     697 - 697                         
      IHS         698 - 698    MILITARY    699 - 699                         
      OTHERPUB    700 - 700    OTHERGOV    701 - 701                         
      NOTCOV      702 - 702    HILAST      703 - 703                         
      HISTOP1     704 - 704    HISTOP2     705 - 705                         
      HISTOP3     706 - 706    HISTOP4     707 - 707                         
      HISTOP5     708 - 708    HISTOP6     709 - 709                         
      HISTOP7     710 - 710    HISTOP8     711 - 711                         
      HISTOP9     712 - 712    HISTOP10    713 - 713                         
      HISTOP11    714 - 714    HISTOP12    715 - 715                         
      HISTOP13    716 - 716    HISTOP14    717 - 717                         
      HISTOP15    718 - 718    HINOTYR     719 - 719                         
      HINOTMYR    720 - 721    HCSPFYR     722 - 722                         
                                                                             
      USBORN_P    723 - 723    YRSINUS     724 - 724                         
      CITIZENP    725 - 725    HEADST      726 - 726                         
      HEADSTEV    727 - 727    EDUC        728 - 729                         
      EDUC_R1     730 - 731    MILTRYDS    732 - 732                         
      DOINGLW     733 - 733    WRKHRS      734 - 735                         
      WRKFTALL    736 - 736    WHYNOWRK    737 - 737                         
      WRKLYR      738 - 738    WRKMYR      739 - 740                         
      MAJR_ACT    741 - 741    ERNYR_P     742 - 743                         
      HIEMPOF     744 - 744                                                  
                                                                             
      PSAL        745 - 745    PSEINC      746 - 746                         
      PSSRR       747 - 747    PSSRRDB     748 - 748                         
      PSSRRD      749 - 749    PPENS       750 - 750                         
      POPENS      751 - 751    PSSI        752 - 752                         
      PSSID       753 - 753    PTANF       754 - 754                         
      FGAH        755 - 755    POWBEN      756 - 756                         
      PINTRST     757 - 757    PDIVD       758 - 758                         
      PCHLDSP     759 - 759    PINCOT      760 - 760                         
      INCGRP      761 - 762    AB_BL20K    763 - 764                         
      RAT_CAT     765 - 766    HOUSEOWN    767 - 767                         
      PSSAPL      768 - 768    PSDAPL      769 - 769                         
      TANFMYR     770 - 771    PFSTP       772 - 772                         
      FSTPMYR     773 - 774;                                                 
                                                                             
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
      HISPAN_P ="Hispanic subgroup detail"                                   
      MRACE_P  ="Race coded to a single race group"                          
      RACEREC  ="Race Recode"                                                
      RACE     ="OMB groups w/multiple race"                                 
      HISPCODE ="Combined race/ethnicity recode"                             
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
      LATOILT  ="Does -- need help with toilet?"                             
      LAHOME   ="Does -- need help getting around home?"                     
      PLAIADL  ="Does -- need help w/chores, shop, etc.?"                    
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
      ECAUS1CT ="# of times injured by transportation"                       
      ECAUS2CT ="# of times injured by burn/scald"                           
      ECAUS3CT ="# of times injured by fall"                                 
      ECAUS4CT ="# of times injured by overexertion"                         
      ECAUS5CT ="# of times injured by being struck"                         
      ECAUS6CT ="# of times injured by animal/insect"                        
      ECAUS7CT ="# of times injured by cut/pierce"                           
      ECAUS8CT ="# of times injured by machinery"                            
      ECAUS9CT ="# of times injured by other"                                
      WHAT1CT  ="# times injured driving"                                    
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
      PHCPH2W  ="Did - - have a CALL to health prof, 2wk"                    
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
      HIKINDG  ="Military hlth care/VA"                                      
      HIKINDH  ="CHAMPUS/TRICARE/CHAMP-VA"                                   
      HIKINDI  ="Indian Health Service"                                      
      HIKINDJ  ="State-sponsored health plan"                                
      HIKINDK  ="Other government program"                                   
      MEDICARE ="Medicare coverage recode"                                   
      MCPART   ="Type of Medicare coverage"                                  
      MCHMO    ="Is - - signed up with an HMO?"                              
      MEDICAID ="Medicaid coverage recode"                                   
      MACHMD   ="Any doc, choose from list, doc assigned"                    
      MAPCMD   ="Primary care physician for routine care"                    
      MAREF    ="Need a referral for special care"                           
      PRIVATE  ="Private health insurance coverage recode"                   
      HITYPE1  ="Name of plan (Plan 1)"                                      
      WHONAM1  ="Plan in whose name (Plan 1)"                                
      PLNWRK1  ="Originally thrgh work or union (Plan 1)"                    
      PLNPAY11 ="Paid for by self or family (Plan 1)"                        
      PLNPAY21 ="Paid for by employer or union (Plan 1)"                     
      PLNPAY31 ="Paid by someone outside household Plan 1"                   
      PLNPAY41 ="Paid for by Medicare (Plan 1)"                              
      PLNPAY51 ="Paid for by Medicaid (Plan 1)"                              
      PLNPAY61 ="Paid for by government program (Plan 1)"                    
      HICOST1  ="Out-of-pocket premium cost (Plan 1)"                        
      PLNMGD1  ="Type of plan (Plan 1)"                                      
      MGCHMD1  ="Doctor choice (Plan 1)"                                     
      MGPRMD1  ="Preferred list (Plan 1)"                                    
      MGPYMD1  ="Out of plan use(Plan 1)"                                    
      HITYPE2  ="Name of plan (Plan 2)"                                      
      WHONAM2  ="Plan in whose name (Plan 2)"                                
      PLNWRK2  ="Originally thrgh work or union (Plan 2)"                    
      PLNPAY12 ="Paid for by self or family (Plan 2)"                        
      PLNPAY22 ="Paid for by employer or union (Plan 2)"                     
      PLNPAY32 ="Paid by someone outside household Plan 2"                   
      PLNPAY42 ="Paid for by Medicare (Plan 2)"                              
      PLNPAY52 ="Paid for by Medicaid (Plan 2)"                              
      PLNPAY62 ="Paid for by government program (Plan 2)"                    
      HICOST2  ="Out-of-pocket premium cost(Plan 2)"                         
      PLNMGD2  ="Type of plan (Plan 2)"                                      
      MGCHMD2  ="Doctor choice (Plan 2)"                                     
      MGPRMD2  ="Preferred list (Plan 2)"                                    
      MGPYMD2  ="Out of plan use(Plan 2)"                                    
      HITYPE3  ="Name of plan (Plan 3)"                                      
      WHONAM3  ="Plan in whose name (Plan 3)"                                
      PLNWRK3  ="Originally thrgh work or union (Plan 3)"                    
      PLNPAY13 ="Paid for by self or family (Plan 3)"                        
      PLNPAY23 ="Paid for by employer or union (Plan 3)"                     
      PLNPAY33 ="Paid by someone outside household Plan 3"                   
      PLNPAY43 ="Paid for by Medicare (Plan 3)"                              
      PLNPAY53 ="Paid for by Medicaid (Plan 3)"                              
      PLNPAY63 ="Paid for by government program (Plan 3)"                    
      HICOST3  ="Out-of-pocket premium cost (Plan 3)"                        
      PLNMGD3  ="Type of plan (Plan 3)"                                      
      MGCHMD3  ="Doctor choice (Plan 3)"                                     
      MGPRMD3  ="Preferred list (Plan 3)"                                    
      MGPYMD3  ="Out of plan use(Plan 3)"                                    
      HITYPE4  ="Name of plan (Plan 4)"                                      
      WHONAM4  ="Plan in whose name (Plan 4)"                                
      PLNWRK4  ="Originally thrgh work or union (Plan 4)"                    
      PLNPAY14 ="Paid for by self or family (Plan 4)"                        
      PLNPAY24 ="Paid for by employer or union (Plan 4)"                     
      PLNPAY34 ="Paid by someone outside household Plan 4"                   
      PLNPAY44 ="Paid for by Medicare (Plan 4)"                              
      PLNPAY54 ="Paid for by Medicaid (Plan 4)"                              
      PLNPAY64 ="Paid for by government program (Plan 4)"                    
      HICOST4  ="Out-of-pocket premium cost(Plan 4)"                         
      PLNMGD4  ="Type of plan (Plan 4)"                                      
      MGCHMD4  ="Doctor choice (Plan 4)"                                     
      MGPRMD4  ="Preferred list (Plan 4)"                                    
      MGPYMD4  ="Out of plan use(Plan 4)"                                    
      IHS      ="Indian Health Service Recode"                               
      MILITARY ="Military coverage recode"                                   
      OTHERPUB ="Other State-Sponsored Health Plan Recode"                   
      OTHERGOV ="Other government programs Recode"                           
      NOTCOV   ="Coverage status as used in Health US"                       
      HILAST   ="How long since last had hlth coverage"                      
      HISTOP1  ="Lost job or changed employers"                              
      HISTOP2  ="Divorce/separate/death spouse or parent"                    
      HISTOP3  ="Ineligible because of age/left school"                      
      HISTOP4  ="Employer doesn't offer coverage/not elig"                   
      HISTOP5  ="Cost is too high"                                           
      HISTOP6  ="Insurance company refused coverage"                         
      HISTOP7  ="Medicaid/Medical plan stopped after preg"                   
      HISTOP8  ="Lost Medicaid/Medical plan job or income"                   
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
      ERNYR_P  ="{Person's} total earnings in 1997"                          
      HIEMPOF  ="Was health ins offered thru workplace?"                     
                                                                             
      PSAL     ="Did -- rec inc from wage/sal (last CY)?"                    
      PSEINC   ="Did -- rec self-employ inc?"                                
      PSSRR    ="Did -- rec inc from Soc Sec, RR?"                           
      PSSRRDB  ="Was --'s Soc Sec or RR a dis benefit?"                      
      PSSRRD   ="Did -- rec SS/RR due to disability?"                        
      PPENS    ="Did -- rec disab pen otr than SS or RR?"                    
      POPENS   ="Did -- rec any otr surv or ret pensions?"                   
      PSSI     ="Did -- rec inc from SSI?"                                   
      PSSID    ="Did -- rec SSI due to a disability?"                        
      PTANF    ="Did -- rec inc from Wel/TANF?"                              
      FGAH     ="Did -- have lower rent due to govt prgm?"                   
      POWBEN   ="Did -- rec any otr assist from govt prog"                   
      PINTRST  ="Did -- rec int from sav/bank accounts?"                     
      PDIVD    ="Did -- rec div from stocks/funds/etc.?"                     
      PCHLDSP  ="Did -- rec inc from child support?"                         
      PINCOT   ="Did -- rec inc from any other source?"                      
      INCGRP   ="Total Combined Family Income (Grouped)"                     
      AB_BL20K ="Fam inc at/above vs. below $20,000"                         
      RAT_CAT  ="Ratio of fam inc to 1997 pov threshold"                     
      HOUSEOWN ="Home Tenure Status"                                         
      PSSAPL   ="Has -- ever applied for SSI?"                               
      PSDAPL   ="Has -- ever applied Soc Sec disab ben?"                     
      TANFMYR  ="Months rec Welfare/TANF (last CY)"                          
      PFSTP    ="Was -- author to rec fd stmps (last CY)?"                   
      FSTPMYR  ="Months rec food stamps (last CY)"                           
   ;                                                                         
                                                                             
   * ASSOCIATE VARIABLES WITH FORMAT VALUES;                                 
                                                                             
   FORMAT                                                                    
      RECTYPE  PEP001X.    SRVY_YR  PEP002X.    FMX      $PEP004X.           
      PX       $PEP005X.   INTV_QRT PEP006X.    SEX      PEP007X.            
      AGE_P    PEP008X.    R_AGE1   PEP009X.    R_AGE2   PEP010X.            
      DOB_M    $PEP011X.   DOB_Y_P  $PEP012X.   ORIGIN   PEP013X.            
      HISPAN_P PEP014X.    MRACE_P  PEP015X.    RACEREC  PEP016X.            
      RACE     PEP017X.    HISPCODE PEP018X.    R_MARITL PEP019X.            
      COHAB1   PEP020X.    COHAB2   PEP021X.    LG_MSTAT PEP022X.            
      CDCMSTAT PEP023X.    RRP      PEP024X.    HH_REF   $PEP025X.           
      HHREFLG  $PEP026X.   FRRP     PEP027X.    FM_REF   $PEP025X.           
      FMREFLG  $PEP029X.   FMRPFLG  $PEP030X.   SIB_DEG  PEP031X.            
      MOTHER   $PEP032X.   MOM_DEG  PEP033X.    FATHER   $PEP034X.           
      DAD_DEG  PEP033X.    GUARD    $PEP036X.   PARENTS  PEP037X.            
      MOM_ED   PEP038X.    DAD_ED   PEP038X.    FM_SIZE  PEP040X.            
      FM_TYPE  PEP041X.    NOWAF    PEP043X.    ASTATFLG PEP044X.            
      CSTATFLG PEP045X.    IMMUNFLG PEP046X.    REGION   PEP047X.            
      MSASIZEP PEP048X.                                                      
                                                                             
      PLAPLYLM PEP020X.    PLAPLYUN PEP020X.    PSPEDEIS PEP020X.            
      PLAADL   PEP020X.    LABATH   PEP020X.    LADRESS  PEP020X.            
      LAEAT    PEP020X.    LABED    PEP020X.    LATOILT  PEP020X.            
      LAHOME   PEP020X.    PLAIADL  PEP020X.    PLAWKNOW PEP020X.            
      PLAWKLIM PEP065X.    PLAWALK  PEP013X.    PLAREMEM PEP013X.            
      PLIMANY  PEP068X.    LA1AR    PEP069X.    LAHCC1   PEP070X.            
      LHCCLN1  PEP071X.    LHCCLT1  PEP072X.    LHCCLY1  PEP073X.            
      LAHCC2   PEP070X.    LHCCLN2  PEP071X.    LHCCLT2  PEP072X.            
      LHCCLY2  PEP073X.    LAHCC3   PEP070X.    LHCCLN3  PEP071X.            
      LHCCLT3  PEP072X.    LHCCLY3  PEP073X.    LAHCC4   PEP070X.            
      LHCCLN4  PEP071X.    LHCCLT4  PEP072X.    LHCCLY4  PEP073X.            
      LAHCC5   PEP070X.    LHCCLN5  PEP087X.    LHCCLT5  PEP072X.            
      LHCCLY5  PEP073X.    LAHCC6   PEP070X.    LHCCLN6  PEP071X.            
      LHCCLT6  PEP072X.    LHCCLY6  PEP073X.    LAHCC7   PEP070X.            
      LHCCLN7  PEP071X.    LHCCLT7  PEP072X.    LHCCLY7  PEP073X.            
      LAHCC8   PEP070X.    LHCCLN8  PEP071X.    LHCCLT8  PEP072X.            
      LHCCLY8  PEP073X.    LAHCC9   PEP070X.    LHCCLN9  PEP071X.            
      LHCCLT9  PEP072X.    LHCCLY9  PEP073X.    LAHCC10  PEP070X.            
      LHCCLN10 PEP071X.    LHCCLT10 PEP072X.    LHCCLY10 PEP073X.            
      LAHCC11  PEP070X.    LHCCLN11 PEP071X.    LHCCLT11 PEP072X.            
      LHCCLY11 PEP073X.    LAHCC90  PEP070X.    LHCCLN90 PEP071X.            
      LHCCLT90 PEP072X.    LHCCLY90 PEP073X.    LAHCC91  PEP070X.            
      LHCCLN91 PEP071X.    LHCCLT91 PEP072X.    LHCCLY91 PEP073X.            
      LAHCA1   PEP070X.    LHCALN1  PEP071X.    LHCALT1  PEP072X.            
      LHCALY1  PEP125X.    LAHCA2   PEP070X.    LHCALN2  PEP071X.            
      LHCALT2  PEP072X.    LHCALY2  PEP125X.    LAHCA3   PEP070X.            
      LHCALN3  PEP071X.    LHCALT3  PEP072X.    LHCALY3  PEP125X.            
      LAHCA4   PEP070X.    LHCALN4  PEP071X.    LHCALT4  PEP072X.            
      LHCALY4  PEP125X.    LAHCA5   PEP070X.    LHCALN5  PEP071X.            
      LHCALT5  PEP072X.    LHCALY5  PEP125X.    LAHCA6   PEP070X.            
      LHCALN6  PEP071X.    LHCALT6  PEP072X.    LHCALY6  PEP125X.            
      LAHCA7   PEP070X.    LHCALN7  PEP071X.    LHCALT7  PEP072X.            
      LHCALY7  PEP125X.    LAHCA8   PEP070X.    LHCALN8  PEP071X.            
      LHCALT8  PEP072X.    LHCALY8  PEP125X.    LAHCA9   PEP070X.            
      LHCALN9  PEP071X.    LHCALT9  PEP072X.    LHCALY9  PEP125X.            
      LAHCA10  PEP070X.    LHCALN10 PEP071X.    LHCALT10 PEP072X.            
      LHCALY10 PEP125X.    LAHCA11  PEP070X.    LHCALN11 PEP071X.            
      LHCALT11 PEP072X.    LHCALY11 PEP125X.    LAHCA12  PEP070X.            
      LHCALN12 PEP071X.    LHCALT12 PEP072X.    LHCALY12 PEP125X.            
      LAHCA13  PEP070X.    LHCALN13 PEP087X.    LHCALT13 PEP072X.            
      LHCALY13 PEP125X.    LAHCA14  PEP070X.    LHCALN14 PEP071X.            
      LHCALT14 PEP072X.    LHCALY14 PEP125X.    LAHCA15  PEP070X.            
      LHCALN15 PEP071X.    LHCALT15 PEP072X.    LHCALY15 PEP125X.            
      LAHCA16  PEP070X.    LHCALN16 PEP071X.    LHCALT16 PEP072X.            
      LHCALY16 PEP125X.    LAHCA17  PEP070X.    LHCALN17 PEP071X.            
      LHCALT17 PEP072X.    LHCALY17 PEP125X.    LAHCA18  PEP070X.            
      LHCALN18 PEP071X.    LHCALT18 PEP072X.    LHCALY18 PEP125X.            
      LAHCA19  PEP070X.    LHCALN19 PEP071X.    LHCALT19 PEP072X.            
      LHCALY19 PEP125X.    LAHCA20  PEP070X.    LHCALN20 PEP071X.            
      LHCALT20 PEP072X.    LHCALY20 PEP125X.    LAHCA21  PEP070X.            
      LHCALN21 PEP071X.    LHCALT21 PEP072X.    LHCALY21 PEP125X.            
      LAHCA22  PEP070X.    LHCALN22 PEP071X.    LHCALT22 PEP072X.            
      LHCALY22 PEP125X.    LAHCA23  PEP070X.    LHCALN23 PEP071X.            
      LHCALT23 PEP072X.    LHCALY23 PEP125X.    LAHCA24  PEP070X.            
      LHCALN24 PEP071X.    LHCALT24 PEP072X.    LHCALY24 PEP125X.            
      LAHCA25  PEP070X.    LHCALN25 PEP071X.    LHCALT25 PEP072X.            
      LHCALY25 PEP125X.    LAHCA26  PEP070X.    LHCALN26 PEP071X.            
      LHCALT26 PEP072X.    LHCALY26 PEP125X.    LAHCA27  PEP070X.            
      LHCALN27 PEP071X.    LHCALT27 PEP072X.    LHCALY27 PEP125X.            
      LAHCA28  PEP070X.    LHCALN28 PEP071X.    LHCALT28 PEP072X.            
      LHCALY28 PEP125X.    LAHCA29  PEP070X.    LHCALN29 PEP071X.            
      LHCALT29 PEP072X.    LHCALY29 PEP125X.    LAHCA30  PEP070X.            
      LHCALN30 PEP071X.    LHCALT30 PEP072X.    LHCALY30 PEP125X.            
      LAHCA31  PEP070X.    LHCALN31 PEP071X.    LHCALT31 PEP072X.            
      LHCALY31 PEP125X.    LAHCA32  PEP070X.    LHCALN32 PEP247X.            
      LHCALT32 PEP248X.    LHCALY32 PEP125X.    LAHCA33  PEP070X.            
      LHCALN33 PEP071X.    LHCALT33 PEP072X.    LHCALY33 PEP125X.            
      LAHCA34  PEP070X.    LHCALN34 PEP071X.    LHCALT34 PEP072X.            
      LHCALY34 PEP125X.    LAHCA90  PEP070X.    LHCALN90 PEP071X.            
      LHCALT90 PEP072X.    LHCALY90 PEP125X.    LAHCA91  PEP070X.            
      LHCALN91 PEP071X.    LHCALT91 PEP072X.    LHCALY91 PEP125X.            
      LACNTR1  PEP266X.    LACNTR2  PEP266X.    LACNTR3  PEP266X.            
      LACNTR4  PEP266X.    LACNTR5  PEP266X.    LACNTR6  PEP266X.            
      LACNTR7  PEP266X.    LACNTR8  PEP266X.    LACNTR9  PEP266X.            
      LACNTR10 PEP266X.    LACNTR11 PEP266X.    LACNTR90 PEP266X.            
      LACNTR91 PEP266X.    LAANTR1  PEP279X.    LAANTR2  PEP279X.            
      LAANTR3  PEP279X.    LAANTR4  PEP279X.    LAANTR5  PEP279X.            
      LAANTR6  PEP279X.    LAANTR7  PEP279X.    LAANTR8  PEP279X.            
      LAANTR9  PEP279X.    LAANTR10 PEP279X.    LAANTR11 PEP279X.            
      LAANTR12 PEP279X.    LAANTR13 PEP279X.    LAANTR14 PEP279X.            
      LAANTR15 PEP279X.    LAANTR16 PEP279X.    LAANTR17 PEP279X.            
      LAANTR18 PEP279X.    LAANTR19 PEP279X.    LAANTR20 PEP279X.            
      LAANTR21 PEP279X.    LAANTR22 PEP279X.    LAANTR23 PEP279X.            
      LAANTR24 PEP279X.    LAANTR25 PEP279X.    LAANTR26 PEP279X.            
      LAANTR27 PEP279X.    LAANTR28 PEP279X.    LAANTR29 PEP279X.            
      LAANTR30 PEP279X.    LAANTR31 PEP279X.    LAANTR32 PEP279X.            
      LAANTR33 PEP279X.    LAANTR34 PEP279X.    LAANTR90 PEP279X.            
      LAANTR91 PEP279X.    LCCNDR1  PEP315X.    LCCNDR2  PEP315X.            
      LCCNDR3  PEP315X.    LCCNDR4  PEP315X.    LCCNDR5  PEP315X.            
      LCCNDR6  PEP315X.    LCCNDR7  PEP315X.    LCCNDR8  PEP315X.            
      LCCNDR9  PEP315X.    LCCNDR10 PEP315X.    LCCNDR11 PEP315X.            
      LCCNDR90 PEP315X.    LCCNDR91 PEP315X.    LACNDR1  PEP315X.            
      LACNDR2  PEP315X.    LACNDR3  PEP315X.    LACNDR4  PEP315X.            
      LACNDR5  PEP315X.    LACNDR6  PEP315X.    LACNDR7  PEP315X.            
      LACNDR8  PEP315X.    LACNDR9  PEP315X.    LACNDR10 PEP315X.            
      LACNDR11 PEP315X.    LACNDR12 PEP315X.    LACNDR13 PEP315X.            
      LACNDR14 PEP315X.    LACNDR15 PEP315X.    LACNDR16 PEP315X.            
      LACNDR17 PEP315X.    LACNDR18 PEP315X.    LACNDR19 PEP315X.            
      LACNDR20 PEP315X.    LACNDR21 PEP315X.    LACNDR22 PEP315X.            
      LACNDR23 PEP315X.    LACNDR24 PEP315X.    LACNDR25 PEP315X.            
      LACNDR26 PEP315X.    LACNDR27 PEP315X.    LACNDR28 PEP315X.            
      LACNDR29 PEP315X.    LACNDR30 PEP315X.    LACNDR31 PEP315X.            
      LACNDR32 PEP315X.    LACNDR33 PEP315X.    LACNDR34 PEP315X.            
      LACNDR90 PEP315X.    LACNDR91 PEP315X.    LCONDRT  PEP364X.            
      LACHRONR PEP365X.    PHSTAT   PEP366X.                                 
                                                                             
      PINJ3MR  PEP013X.    INJCT    PEP368X.    ICD9CT   PEP369X.            
      ECAUS1CT PEP370X.    ECAUS2CT PEP370X.    ECAUS3CT PEP370X.            
      ECAUS4CT PEP370X.    ECAUS5CT PEP370X.    ECAUS6CT PEP370X.            
      ECAUS7CT PEP370X.    ECAUS8CT PEP370X.    ECAUS9CT PEP370X.            
      WHAT1CT  PEP370X.    WHAT2CT  PEP370X.    WHAT3CT  PEP370X.            
      WHAT4CT  PEP370X.    WHAT5CT  PEP370X.    WHAT6CT  PEP370X.            
      WHAT7CT  PEP370X.    WHAT8CT  PEP370X.    WHAT9CT  PEP370X.            
      WHAT10CT PEP370X.    WHAT11CT PEP370X.    WHER1CT  PEP370X.            
      WHER2CT  PEP370X.    WHER3CT  PEP370X.    WHER4CT  PEP370X.            
      WHER5CT  PEP370X.    WHER6CT  PEP370X.    WHER7CT  PEP370X.            
      WHER8CT  PEP370X.    WHER9CT  PEP370X.    WHER10CT PEP370X.            
      WHER11CT PEP370X.    WHER12CT PEP370X.    WHER13CT PEP370X.            
      WHER14CT PEP370X.    WHER15CT PEP370X.    WHER16CT PEP370X.            
      WHER17CT PEP370X.    WHER18CT PEP370X.    PPOIS3MR PEP013X.            
      POICT    PEP409X.                                                      
                                                                             
      PDMED12M PEP013X.    PNMED12M PEP013X.    PHOSPYR  PEP013X.            
      HOSPNO   PEP413X.    HPNITE   PEP414X.    PHCHM2W  PEP013X.            
      PHCHMN2W PEP416X.    PHCPH2W  PEP013X.    PHCPHN2W PEP418X.            
      PHCDV2W  PEP013X.    PHCDVN2W PEP420X.    P10DVYR  PEP013X.            
                                                                             
      PHICOV   PEP013X.    HIKINDA  PEP423X.    HIKINDB  PEP423X.            
      HIKINDC  PEP423X.    HIKINDD  PEP423X.    HIKINDE  PEP423X.            
      HIKINDF  PEP423X.    HIKINDG  PEP423X.    HIKINDH  PEP423X.            
      HIKINDI  PEP423X.    HIKINDJ  PEP423X.    HIKINDK  PEP423X.            
      MEDICARE PEP434X.    MCPART   PEP435X.    MCHMO    PEP020X.            
      MEDICAID PEP434X.    MACHMD   PEP438X.    MAPCMD   PEP020X.            
      MAREF    PEP020X.    PRIVATE  PEP434X.    HITYPE1  PEP442X.            
      WHONAM1  PEP443X.    PLNWRK1  PEP444X.    PLNPAY11 PEP423X.            
      PLNPAY21 PEP423X.    PLNPAY31 PEP423X.    PLNPAY41 PEP423X.            
      PLNPAY51 PEP423X.    PLNPAY61 PEP423X.    HICOST1  PEP451X.            
      PLNMGD1  PEP452X.    MGCHMD1  PEP453X.    MGPRMD1  PEP020X.            
      MGPYMD1  PEP020X.    HITYPE2  PEP442X.    WHONAM2  PEP443X.            
      PLNWRK2  PEP444X.    PLNPAY12 PEP423X.    PLNPAY22 PEP423X.            
      PLNPAY32 PEP423X.    PLNPAY42 PEP423X.    PLNPAY52 PEP423X.            
      PLNPAY62 PEP423X.    HICOST2  PEP451X.    PLNMGD2  PEP452X.            
      MGCHMD2  PEP453X.    MGPRMD2  PEP020X.    MGPYMD2  PEP020X.            
      HITYPE3  PEP442X.    WHONAM3  PEP443X.    PLNWRK3  PEP444X.            
      PLNPAY13 PEP423X.    PLNPAY23 PEP423X.    PLNPAY33 PEP423X.            
      PLNPAY43 PEP423X.    PLNPAY53 PEP423X.    PLNPAY63 PEP423X.            
      HICOST3  PEP451X.    PLNMGD3  PEP452X.    MGCHMD3  PEP453X.            
      MGPRMD3  PEP020X.    MGPYMD3  PEP020X.    HITYPE4  PEP442X.            
      WHONAM4  PEP443X.    PLNWRK4  PEP444X.    PLNPAY14 PEP423X.            
      PLNPAY24 PEP423X.    PLNPAY34 PEP423X.    PLNPAY44 PEP423X.            
      PLNPAY54 PEP423X.    PLNPAY64 PEP423X.    HICOST4  PEP451X.            
      PLNMGD4  PEP452X.    MGCHMD4  PEP453X.    MGPRMD4  PEP020X.            
      MGPYMD4  PEP020X.    IHS      PEP020X.    MILITARY PEP499X.            
      OTHERPUB PEP020X.    OTHERGOV PEP020X.    NOTCOV   PEP502X.            
      HILAST   PEP503X.    HISTOP1  PEP423X.    HISTOP2  PEP423X.            
      HISTOP3  PEP423X.    HISTOP4  PEP423X.    HISTOP5  PEP423X.            
      HISTOP6  PEP423X.    HISTOP7  PEP423X.    HISTOP8  PEP423X.            
      HISTOP9  PEP423X.    HISTOP10 PEP423X.    HISTOP11 PEP423X.            
      HISTOP12 PEP423X.    HISTOP13 PEP423X.    HISTOP14 PEP423X.            
      HISTOP15 PEP423X.    HINOTYR  PEP020X.    HINOTMYR PEP520X.            
      HCSPFYR  PEP521X.                                                      
                                                                             
      USBORN_P PEP013X.    YRSINUS  PEP523X.    CITIZENP PEP524X.            
      HEADST   PEP020X.    HEADSTEV PEP020X.    EDUC     PEP527X.            
      EDUC_R1  PEP528X.    MILTRYDS PEP020X.    DOINGLW  PEP530X.            
      WRKHRS   PEP531X.    WRKFTALL PEP020X.    WHYNOWRK PEP533X.            
      WRKLYR   PEP020X.    WRKMYR   PEP520X.    MAJR_ACT PEP536X.            
      ERNYR_P  PEP537X.    HIEMPOF  PEP020X.                                 
                                                                             
      PSAL     PEP020X.    PSEINC   PEP020X.    PSSRR    PEP013X.            
      PSSRRDB  PEP020X.    PSSRRD   PEP020X.    PPENS    PEP013X.            
      POPENS   PEP013X.    PSSI     PEP013X.    PSSID    PEP020X.            
      PTANF    PEP013X.    FGAH     PEP020X.    POWBEN   PEP020X.            
      PINTRST  PEP013X.    PDIVD    PEP013X.    PCHLDSP  PEP013X.            
      PINCOT   PEP013X.    INCGRP   PEP555X.    AB_BL20K PEP556X.            
      RAT_CAT  PEP557X.    HOUSEOWN PEP558X.    PSSAPL   PEP020X.            
      PSDAPL   PEP020X.    TANFMYR  PEP561X.    PFSTP    PEP013X.            
      FSTPMYR  PEP561X.;                                                     
                                                                             
PROC CONTENTS DATA=NHIS.PERSON_1998;                                            
                                                                             
PROC FREQ DATA=NHIS.PERSON_1998;                                                
   TITLE1 'FREQUENCY REPORT FOR 1998 NHIS PERSONSX FILE';                    
   TITLE2 '(WEIGHTED)';                                                      
   TABLES RACEREC * SEX/LIST MISSING;                                        
   WEIGHT WTFA ;                                                             
                                                                             
PROC FREQ DATA=NHIS.PERSON_1998;                                                
   TITLE1 'FREQUENCY REPORT FOR 1998 NHIS PERSONSX FILE';                    
   TITLE2 '(UNWEIGHTED)';                                                    
   TABLES RACEREC * SEX/LIST MISSING;                                        
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE                
        STATEMENT: FORMAT _ALL_;                                             
RUN;                                                                         
