                                                             
*********************************************************************   
 03JAN2001:14:28:30                                                     
                                                                        
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS                 
 FILE FROM THE NHIS 1997 PERSONSX.DAT ASCII FILE                        
                                                                        
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN                
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                   
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                     
       DOCUMENTATION                                                    
                                                                        
 THIS IS STORED IN PERSONSX.SAS                                         
*********************************************************************;  
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;          
     
options compress = yes obs = max;
 
LIBNAME NHIS    'C:\DATA\NHIS\';                                          
LIBNAME LIBRARY 'C:\DATA\NHIS\1997';                                         
                                                                        
* DEFINE VARIABLE VALUES FOR REPORTS;                                   
   
PROC FORMAT LIBRARY=LIBRARY;                                            
  VALUE PEP001X                                                         
    20              = "Person"                                          
   ;                                                                    
  VALUE PEP002X                                                         
    1997            = "1997"                                            
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
  VALUE PEP011X                                                         
    01              = "January"                                         
    02              = "February"                                        
    03              = "March"                                           
    04              = "April"                                           
    05              = "May"                                             
    06              = "June"                                            
    07              = "July"                                            
    08              = "August"                                          
    09              = "September"                                       
    10              = "October"                                         
    11              = "November"                                        
    12              = "December"                                        
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
   ;                                                                    
  VALUE PEP012X                                                         
    1913            = "1913 or before"                                  
    1914 - 1998     = "1914-1998"                                       
    9997            = "Refused"                                         
    9998            = "Not ascertained"                                 
    9999            = "Don't know"                                      
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
  VALUE PEP019X                                                         
    1               = "Yes"                                             
    2               = "No"                                              
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank:  Not in Universe>"                       
   ;                                                                    
  VALUE PEP020X                                                         
    1               = "Married"                                         
    2               = "Widowed"                                         
    3               = "Divorced"                                        
    4               = "Separated"                                       
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank:  Not in Universe>"                       
   ;                                                                    
  VALUE PEP021X                                                         
    1               = "Separated"                                       
    2               = "Divorced"                                        
    3               = "Married"                                         
    4               = "Single/never married"                            
    5               = "Widowed"                                         
    9               = "Unknown marital status"                          
    .               = "<Blank: Not in Universe>"                        
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
    .               = "<Blank:  Not in Universe>"                       
   ;                                                                    
  VALUE PEP023X                                                         
    01              = "Reference person"                                
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
  VALUE PEP024X                                                         
    01 - 30         = "Person number 1 thru 30"                         
    98              = "Not ascertained"                                 
   ;                                                                    
  VALUE $PEP025X                                                        
    "P"             = "Reference person"                                
    "8"             = "Not ascertained"                                 
    " "             = "<Blank:  Not reference person>"                  
   ;                                                                    
  VALUE PEP026X                                                         
    1               = "Armed Forces"                                    
    2               = "Not Armed Forces"                                
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank:  Not in Universe>"                       
   ;                                                                    
  VALUE PEP027X                                                         
    0               = "Sample Adult - no record"                        
    1               = "Sample Adult - has record"                       
    2               = "Not selected as Sample Adult"                    
    3               = "No one selected as Sample Adult"                 
    4               = "Armed Force member"                              
    5               = "Armed Force member - selected as Sample Adult"   
    .               = "<Blank:  Not in Universe>"                       
   ;                                                                    
  VALUE PEP028X                                                         
    0               = "Sample Child - no record"                        
    1               = "Sample Child - has record"                       
    2               = "Not selected as Sample Child"                    
    3               = "No one selected as Sample Child"                 
    4               = "Emancipated Minor"                               
    5               = "Military, not selected as Sample Child"          
    .               = "<Blank:  Not in Universe>"                       
   ;                                                                    
  VALUE PEP029X                                                         
    0               = "Immunization Child - no record"                  
    1               = "Immunization Child - has record"                 
    2               = "Not eligible for immunization questions"         
    .               = "<Blank:  Not in Universe>"                       
   ;                                                                    
  VALUE PEP030X                                                         
    01 - 30         = "01-30 persons"                                   
   ;                                                                    
  VALUE PEP031X                                                         
    1               = "Northeast"                                       
    2               = "Midwest"                                         
    3               = "South"                                           
    4               = "West"                                            
   ;                                                                    
  VALUE PEP032X                                                         
    1               = "5,000,000 or more"                               
    2               = "2,500,000 - 4,999,999"                           
    3               = "1,000,000 - 2,499,999"                           
    4               = "500,000 - 999,999"                               
    5               = "250,000 - 499,999"                               
    6               = "Under 250,000"                                   
    7               = "Non-MSA"                                         
   ;                                                                    
  VALUE PEP049X                                                         
    0               = "Unable to work"                                  
    1               = "Limited in work"                                 
    2               = "Not limited in work"                             
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
  VALUE PEP052X                                                         
    0               = "Limitation previously mentioned"                 
    1               = "Yes, limited in some other way"                  
    2               = "Not limited in any way"                          
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
   ;                                                                    
  VALUE PEP053X                                                         
    1               = "Limited in any way"                              
    2               = "Not limited in any way (includes unk)"           
   ;                                                                    
  VALUE PEP054X                                                         
    1               = "Mentioned"                                       
    2               = "Not mentioned"                                   
    6               = "No condition at all"                             
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank: Not in Universe>"                        
   ;                                                                    
  VALUE PEP055X                                                         
    01 - 94         = "1-94"                                            
    95              = "95+"                                             
    96              = "Since birth"                                     
    97              = "Refused*"                                        
    98              = "Not ascertained"                                 
    99              = "Don't know*"                                     
    .               = "<Blank: Not in Universe>"                        
   ;                                                                    
  VALUE PEP056X                                                         
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
  VALUE PEP057X                                                         
    00              = "Less than 1 year"                                
    01 - 17         = "01-17 years"                                     
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
    .               = "<Blank: Not in Universe>"                        
   ;                                                                    
  VALUE PEP061X                                                         
    00              = "Less than 1 year"                                
    01 - 17         = "1-17 years"                                      
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
    .               = "<Blank: Not in Universe>"                        
   ;                                                                    
  VALUE PEP071X                                                         
    01 - 94         = "1-94"                                            
    95              = "95+"                                             
    96              = "Since birth"                                     
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
    .               = "<Blank: Not in Universe>"                        
   ;                                                                    
  VALUE PEP109X                                                         
    00              = "Less than 1 year"                                
    01 - 84         = "01-84 years"                                     
    85              = "85+ years"                                       
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
    .               = "<Blank: Not in Universe>"                        
   ;                                                                    
  VALUE PEP250X                                                         
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
  VALUE PEP263X                                                         
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
  VALUE PEP299X                                                         
    1               = "Chronic"                                         
    2               = "Not chronic"                                     
    9               = "Unknown if chronic"                              
    .               = "<Blank:  Not in Universe>"                       
   ;                                                                    
  VALUE PEP348X                                                         
    1               = "At least one condition causing LA is chronic"    
    2               = "No condition causing LA is chronic"              
    9               = "Unknown if any condition causing LA is chronic"  
    .               = "<Blank:  Not in Universe>"                       
   ;                                                                    
  VALUE PEP349X                                                         
    0               = "Not limited in any way (incl unk if limited)"    
    1               = "Limited; caused by at least one chronic cond"    
    2               = "Limited; not caused by chronic cond"             
    3               = "Limited; unk if cond causing LA is chronic"      
   ;                                                                    
  VALUE PEP350X                                                         
    1               = "Excellent"                                       
    2               = "Very good"                                       
    3               = "Good"                                            
    4               = "Fair"                                            
    5               = "Poor"                                            
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
   ;                                                                    
  VALUE PEP352X                                                         
    1               = "1 injury episode"                                
    2               = "2 injury episodes"                               
    3               = "3 injury episodes"                               
    4               = "4 injury episodes"                               
    .               = "<Blank: Not in Universe>"                        
   ;                                                                    
  VALUE PEP353X                                                         
    0               = "None"                                            
    1               = "1 time"                                          
    2               = "2 times"                                         
    3               = "3 times"                                         
    4               = "4 times"                                         
    .               = "<Blank: Not in Universe>"                        
   ;                                                                    
  VALUE PEP392X                                                         
    1               = "1 poison episode"                                
    2               = "2 poison episodes"                               
    3               = "3 poison episodes"                               
    4               = "4 poison episodes"                               
    .               = "<Blank: Not in Universe>"                        
   ;                                                                    
  VALUE PEP396X                                                         
    001 - 365       = "1-365 times"                                     
    997             = "Refused"                                         
    998             = "Not ascertained"                                 
    999             = "Don't know"                                      
    .               = "<Blank:  Not in universe)"                       
   ;                                                                    
  VALUE PEP397X                                                         
    001 - 365       = "1-365 nights"                                    
    997             = "Refused"                                         
    998             = "Not ascertained"                                 
    999             = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
  VALUE PEP399X                                                         
    01 - 49         = "1-49 visits"                                     
    50              = "50+  visits"                                     
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
  VALUE PEP401X                                                         
    01 - 49         = "1-49 calls"                                      
    50              = "50+ calls"                                       
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
  VALUE PEP403X                                                         
    01 - 49         = "1-49 times"                                      
    50              = "50+ times"                                       
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
  VALUE PEP406X                                                         
    1               = "Mentioned"                                       
    2               = "Not mentioned"                                   
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank: Not in universe>"                        
   ;                                                                    
  VALUE PEP416X                                                         
    1               = "Yes, information"                                
    2               = "Yes, but no information"                         
    3               = "No"                                              
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
  VALUE PEP417X                                                         
    1               = "Part A - Hospital Only"                          
    2               = "Part B - Medical Only"                           
    3               = "Both Part A and Part B"                          
    4               = "Card Not Available"                              
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
  VALUE PEP420X                                                         
    1               = "Any doctor"                                      
    2               = "Select from a book/list"                         
    3               = "Doctor is assigned"                              
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
  VALUE PEP424X                                                         
    01 - 92         = "Refer to Health Insurance Plan Appendix"         
    98              = "Not ascertained"                                 
    99              = "Unknown"                                         
    .               = "<Blank: Not in universe>"                        
   ;                                                                    
  VALUE PEP425X                                                         
    1               = "In own name"                                     
    2               = "Someone else in family"                          
    3               = "Person not in household"                         
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
  VALUE PEP426X                                                         
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
  VALUE PEP433X                                                         
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
  VALUE PEP434X                                                         
    1               = "HMO/IPA"                                         
    2               = "PPO"                                             
    3               = "Other"                                           
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
  VALUE PEP469X                                                         
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
  VALUE PEP472X                                                         
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
  VALUE PEP488X                                                         
    01 - 12         = "1-12 months"                                     
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
  VALUE PEP489X                                                         
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
  VALUE PEP493X                                                         
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
  VALUE PEP494X                                                         
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
  VALUE PEP496X                                                         
    1               = "Working at a job or business"                    
    2               = "With a job or business but not at work"          
    3               = "Looking for work"                                
    4               = "Not working at a job or business"                
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
    .               = "<Blank: Not in universe>"                        
   ;                                                                    
  VALUE PEP497X                                                         
    01 - 94         = "1-94 hours"                                      
    95              = "95+ hours"                                       
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
    .               = "<Blank: Not in Universe>"                        
   ;                                                                    
  VALUE PEP499X                                                         
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
  VALUE PEP502X                                                         
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
  VALUE PEP509X                                                         
    1               = "Yes"                                             
    2               = "No"                                              
    3               = "Ineligible due to age (65+)"                     
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
   ;                                                                    
  VALUE PEP515X                                                         
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
  VALUE PEP516X                                                         
    01              = "$20,000 or more"                                 
    02              = "Less than $20,000"                               
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
   ;                                                                    
  VALUE PEP517X                                                         
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
  VALUE PEP518X                                                         
    1               = "Owned"                                           
    2               = "Being bought"                                    
    3               = "Rented"                                          
    4               = "Other arrangement"                               
    7               = "Refused"                                         
    8               = "Not ascertained"                                 
    9               = "Don't know"                                      
   ;                                                                    
  VALUE PEP523X                                                         
    01 - 12         = "01-12 months"                                    
    97              = "Refused"                                         
    98              = "Not ascertained"                                 
    99              = "Don't know"                                      
    .               = "<Blank:  Not in universe>"                       
   ;                                                                    
                                                                        
  VALUE $PEP526X                                                        
    "B"             = "Family respondent"                               
    "8"             = "Not ascertained"                                 
    " "             = "<Blank:  Not family respondent>"                 
   ;                                                                    
                                                                     
DATA NHIS.PERSON_1997;                                                     
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1997\';                   
   INFILE 'C:\DATA\NHIS\1997\da2954.person.sas' MISSOVER TRUNCOVER LRECL=728;      
                                                                        
   * DEFINE LENGTH OF ALL VARIABLES;                                    
                                                                        
   LENGTH                                                               
      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2         
      PX       $ 2   INTV_QRT   3   SEX        3   AGE_P      3         
      R_AGE1     3   R_AGE2     3   DOB_M      3   DOB_Y_P    4         
      ORIGIN     3   HISPAN_P   3   MRACE_P    3   RACEREC    3         
      RACE       3   R_MARITL   3   COHAB1     3   COHAB2     3         
      LG_MSTAT   3   TMPMSTAT   3   RRP        3   HH_REF     3         
      HHSTAT   $ 1   NOWAF      3   ASTATFLG   3   CSTATFLG   3         
      IMMUNFLG   3   FM_SIZE    3   REGION     3   MSASIZEP   3         
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
                                                                        
      PINJ3MR    3   INJCT      3   ECAUS1CT   3   ECAUS2CT   3         
      ECAUS3CT   3   ECAUS4CT   3   ECAUS5CT   3   ECAUS6CT   3         
      ECAUS7CT   3   ECAUS8CT   3   ECAUS9CT   3   WHAT1CT    3         
      WHAT2CT    3   WHAT3CT    3   WHAT4CT    3   WHAT5CT    3         
      WHAT6CT    3   WHAT7CT    3   WHAT8CT    3   WHAT9CT    3         
      WHAT10CT   3   WHAT11CT   3   WHER1CT    3   WHER2CT    3         
      WHER3CT    3   WHER4CT    3   WHER5CT    3   WHER6CT    3         
      WHER7CT    3   WHER8CT    3   WHER9CT    3   WHER10CT   3         
      WHER11CT   3   WHER12CT   3   WHER13CT   3   WHER14CT   3         
      WHER15CT   3   WHER16CT   3   WHER17CT   3   WHER18CT   3         
      PPOIS3MR   3   POICT      3                                       
                                                                        
      PDMED12M   3   PNMED12M   3   PHOSPYR    3   HOSPNO     4         
      HPNITE     4   PHCHM2W    3   PHCHMN2W   3   PHCPH2W    3         
      PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3   P10DVYR    3         
                                                                        
      PHICOV     3   HIKINDA    3   HIKINDB    3   HIKINDC    3         
      HIKINDD    3   HIKINDE    3   HIKINDF    3   HIKINDG    3         
      HIKINDH    3   HIKINDI    3   HIKINDJ    3   MEDICARE   3         
      MCPART     3   MCHMO      3   MEDICAID   3   MACHMD     3         
      MAPCMD     3   MAREF      3   PRIVATE    3   HITYPE1    3         
      WHONAM1    3   PLNWRK1    3   PLNPAY11   3   PLNPAY21   3         
      PLNPAY31   3   PLNPAY41   3   PLNPAY51   3   PLNPAY61   3         
      HICOST1    3   PLNMGD1    3   HITYPE2    3   WHONAM2    3         
      PLNWRK2    3   PLNPAY12   3   PLNPAY22   3   PLNPAY32   3         
      PLNPAY42   3   PLNPAY52   3   PLNPAY62   3   HICOST2    3         
      PLNMGD2    3   HITYPE3    3   WHONAM3    3   PLNWRK3    3         
      PLNPAY13   3   PLNPAY23   3   PLNPAY33   3   PLNPAY43   3         
      PLNPAY53   3   PLNPAY63   3   HICOST3    3   PLNMGD3    3         
      HITYPE4    3   WHONAM4    3   PLNWRK4    3   PLNPAY14   3         
      PLNPAY24   3   PLNPAY34   3   PLNPAY44   3   PLNPAY54   3         
      PLNPAY64   3   HICOST4    3   PLNMGD4    3   IHS        3         
      MILITARY   3   OTHERPUB   3   OTHERGOV   3   HILAST     3         
      HISTOP1    3   HISTOP2    3   HISTOP3    3   HISTOP4    3         
      HISTOP5    3   HISTOP6    3   HISTOP7    3   HISTOP8    3         
      HISTOP9    3   HISTOP10   3   HISTOP11   3   HISTOP12   3         
      HISTOP13   3   HISTOP14   3   HINOTYR    3   HINOTMYR   3         
      HCSPFYR    3                                                      
                                                                        
      USBORN_P   3   HEADST     3   HEADSTEV   3   EDUC       3         
      EDUC_R1    3   MILTRYDS   3   DOINGLW    3   WRKHRS     3         
      WRKFTALL   3   WHYNOWRK   3   WRKLYR     3   WRKMYR     3         
      ERNYR_P    3   HIEMPOF    3                                       
                                                                        
      PSAL       3   PSEINC     3   PSSRR      3   PPENS      3         
      PSSI       3   PSSDI      3   PAFDC      3   PINTRST    3         
      PDIVD      3   PCHLDSP    3   PINCOT     3   INCGRP     3         
      AB_BL20K   3   RAT_CAT    3   HOUSEOWN   3   SSPDISB    3         
      PSSAPL     3   SDPDISB    3   PSDAPL     3   AFDCMYR    3         
      PFSTP      3   FSTPMYR    3                                       
                                                                        
      FMRPFLG  $ 1 ;                                                    
                                                                        
   * INPUT ALL VARIABLES;                                               
                                                                        
   INPUT                                                                
      RECTYPE       1 -   2    SRVY_YR       3 -   6                    
      HHX      $    7 -  12    FMX      $   13 -  14                    
      PX       $   15 -  16    INTV_QRT     17 -  17                    
      SEX          18 -  18    AGE_P        19 -  20                    
      R_AGE1       21 -  21    R_AGE2       22 -  22                    
      DOB_M        23 -  24    DOB_Y_P      25 -  28                    
      ORIGIN       29 -  29    HISPAN_P     30 -  31                    
      MRACE_P      32 -  33    RACEREC      34 -  34                    
      RACE         35 -  35    R_MARITL     36 -  36                    
      COHAB1       37 -  37    COHAB2       38 -  38                    
      LG_MSTAT     39 -  39    TMPMSTAT     40 -  40                    
      RRP          41 -  42    HH_REF       43 -  44                    
      HHSTAT   $   45 -  45    NOWAF        46 -  46                    
      ASTATFLG     47 -  47    CSTATFLG     48 -  48                    
      IMMUNFLG     49 -  49    FM_SIZE      50 -  51                    
      REGION       52 -  52    MSASIZEP     53 -  53                    
      WTIA         54 -  59 .1 WTFA         60 -  65                    
      STRATUM      66 -  68    PSU          69 -  69                    
                                                                        
      PLAPLYLM     70 -  70    PLAPLYUN     71 -  71                    
      PSPEDEIS     72 -  72    PLAADL       73 -  73                    
      LABATH       74 -  74    LADRESS      75 -  75                    
      LAEAT        76 -  76    LABED        77 -  77                    
      LATOILT      78 -  78    LAHOME       79 -  79                    
      PLAIADL      80 -  80    PLAWKNOW     81 -  81                    
      PLAWKLIM     82 -  82    PLAWALK      83 -  83                    
      PLAREMEM     84 -  84    PLIMANY      85 -  85                    
      LA1AR        86 -  86    LAHCC1       87 -  87                    
      LHCCLN1      88 -  89    LHCCLT1      90 -  90                    
      LHCCLY1      91 -  92    LAHCC2       93 -  93                    
      LHCCLN2      94 -  95    LHCCLT2      96 -  96                    
      LHCCLY2      97 -  98    LAHCC3       99 -  99                    
      LHCCLN3     100 - 101    LHCCLT3     102 - 102                    
      LHCCLY3     103 - 104    LAHCC4      105 - 105                    
      LHCCLN4     106 - 107    LHCCLT4     108 - 108                    
      LHCCLY4     109 - 110    LAHCC5      111 - 111                    
      LHCCLN5     112 - 113    LHCCLT5     114 - 114                    
      LHCCLY5     115 - 116    LAHCC6      117 - 117                    
      LHCCLN6     118 - 119    LHCCLT6     120 - 120                    
      LHCCLY6     121 - 122    LAHCC7      123 - 123                    
      LHCCLN7     124 - 125    LHCCLT7     126 - 126                    
      LHCCLY7     127 - 128    LAHCC8      129 - 129                    
      LHCCLN8     130 - 131    LHCCLT8     132 - 132                    
      LHCCLY8     133 - 134    LAHCC9      135 - 135                    
      LHCCLN9     136 - 137    LHCCLT9     138 - 138                    
      LHCCLY9     139 - 140    LAHCC10     141 - 141                    
      LHCCLN10    142 - 143    LHCCLT10    144 - 144                    
      LHCCLY10    145 - 146    LAHCC11     147 - 147                    
      LHCCLN11    148 - 149    LHCCLT11    150 - 150                    
      LHCCLY11    151 - 152    LAHCC90     153 - 153                    
      LHCCLN90    154 - 155    LHCCLT90    156 - 156                    
      LHCCLY90    157 - 158    LAHCC91     159 - 159                    
      LHCCLN91    160 - 161    LHCCLT91    162 - 162                    
      LHCCLY91    163 - 164    LAHCA1      165 - 165                    
      LHCALN1     166 - 167    LHCALT1     168 - 168                    
      LHCALY1     169 - 170    LAHCA2      171 - 171                    
      LHCALN2     172 - 173    LHCALT2     174 - 174                    
      LHCALY2     175 - 176    LAHCA3      177 - 177                    
      LHCALN3     178 - 179    LHCALT3     180 - 180                    
      LHCALY3     181 - 182    LAHCA4      183 - 183                    
      LHCALN4     184 - 185    LHCALT4     186 - 186                    
      LHCALY4     187 - 188    LAHCA5      189 - 189                    
      LHCALN5     190 - 191    LHCALT5     192 - 192                    
      LHCALY5     193 - 194    LAHCA6      195 - 195                    
      LHCALN6     196 - 197    LHCALT6     198 - 198                    
      LHCALY6     199 - 200    LAHCA7      201 - 201                    
      LHCALN7     202 - 203    LHCALT7     204 - 204                    
      LHCALY7     205 - 206    LAHCA8      207 - 207                    
      LHCALN8     208 - 209    LHCALT8     210 - 210                    
      LHCALY8     211 - 212    LAHCA9      213 - 213                    
      LHCALN9     214 - 215    LHCALT9     216 - 216                    
      LHCALY9     217 - 218    LAHCA10     219 - 219                    
      LHCALN10    220 - 221    LHCALT10    222 - 222                    
      LHCALY10    223 - 224    LAHCA11     225 - 225                    
      LHCALN11    226 - 227    LHCALT11    228 - 228                    
      LHCALY11    229 - 230    LAHCA12     231 - 231                    
      LHCALN12    232 - 233    LHCALT12    234 - 234                    
      LHCALY12    235 - 236    LAHCA13     237 - 237                    
      LHCALN13    238 - 239    LHCALT13    240 - 240                    
      LHCALY13    241 - 242    LAHCA14     243 - 243                    
      LHCALN14    244 - 245    LHCALT14    246 - 246                    
      LHCALY14    247 - 248    LAHCA15     249 - 249                    
      LHCALN15    250 - 251    LHCALT15    252 - 252                    
      LHCALY15    253 - 254    LAHCA16     255 - 255                    
      LHCALN16    256 - 257    LHCALT16    258 - 258                    
      LHCALY16    259 - 260    LAHCA17     261 - 261                    
      LHCALN17    262 - 263    LHCALT17    264 - 264                    
      LHCALY17    265 - 266    LAHCA18     267 - 267                    
      LHCALN18    268 - 269    LHCALT18    270 - 270                    
      LHCALY18    271 - 272    LAHCA19     273 - 273                    
      LHCALN19    274 - 275    LHCALT19    276 - 276                    
      LHCALY19    277 - 278    LAHCA20     279 - 279                    
      LHCALN20    280 - 281    LHCALT20    282 - 282                    
      LHCALY20    283 - 284    LAHCA21     285 - 285                    
      LHCALN21    286 - 287    LHCALT21    288 - 288                    
      LHCALY21    289 - 290    LAHCA22     291 - 291                    
      LHCALN22    292 - 293    LHCALT22    294 - 294                    
      LHCALY22    295 - 296    LAHCA23     297 - 297                    
      LHCALN23    298 - 299    LHCALT23    300 - 300                    
      LHCALY23    301 - 302    LAHCA24     303 - 303                    
      LHCALN24    304 - 305    LHCALT24    306 - 306                    
      LHCALY24    307 - 308    LAHCA25     309 - 309                    
      LHCALN25    310 - 311    LHCALT25    312 - 312                    
      LHCALY25    313 - 314    LAHCA26     315 - 315                    
      LHCALN26    316 - 317    LHCALT26    318 - 318                    
      LHCALY26    319 - 320    LAHCA27     321 - 321                    
      LHCALN27    322 - 323    LHCALT27    324 - 324                    
      LHCALY27    325 - 326    LAHCA28     327 - 327                    
      LHCALN28    328 - 329    LHCALT28    330 - 330                    
      LHCALY28    331 - 332    LAHCA29     333 - 333                    
      LHCALN29    334 - 335    LHCALT29    336 - 336                    
      LHCALY29    337 - 338    LAHCA30     339 - 339                    
      LHCALN30    340 - 341    LHCALT30    342 - 342                    
      LHCALY30    343 - 344    LAHCA31     345 - 345                    
      LHCALN31    346 - 347    LHCALT31    348 - 348                    
      LHCALY31    349 - 350    LAHCA32     351 - 351                    
      LHCALN32    352 - 353    LHCALT32    354 - 354                    
      LHCALY32    355 - 356    LAHCA33     357 - 357                    
      LHCALN33    358 - 359    LHCALT33    360 - 360                    
      LHCALY33    361 - 362    LAHCA34     363 - 363                    
      LHCALN34    364 - 365    LHCALT34    366 - 366                    
      LHCALY34    367 - 368    LAHCA90     369 - 369                    
      LHCALN90    370 - 371    LHCALT90    372 - 372                    
      LHCALY90    373 - 374    LAHCA91     375 - 375                    
      LHCALN91    376 - 377    LHCALT91    378 - 378                    
      LHCALY91    379 - 380    LACNTR1     381 - 382                    
      LACNTR2     383 - 384    LACNTR3     385 - 386                    
      LACNTR4     387 - 388    LACNTR5     389 - 390                    
      LACNTR6     391 - 392    LACNTR7     393 - 394                    
      LACNTR8     395 - 396    LACNTR9     397 - 398                    
      LACNTR10    399 - 400    LACNTR11    401 - 402                    
      LACNTR90    403 - 404    LACNTR91    405 - 406                    
      LAANTR1     407 - 408    LAANTR2     409 - 410                    
      LAANTR3     411 - 412    LAANTR4     413 - 414                    
      LAANTR5     415 - 416    LAANTR6     417 - 418                    
      LAANTR7     419 - 420    LAANTR8     421 - 422                    
      LAANTR9     423 - 424    LAANTR10    425 - 426                    
      LAANTR11    427 - 428    LAANTR12    429 - 430                    
      LAANTR13    431 - 432    LAANTR14    433 - 434                    
      LAANTR15    435 - 436    LAANTR16    437 - 438                    
      LAANTR17    439 - 440    LAANTR18    441 - 442                    
      LAANTR19    443 - 444    LAANTR20    445 - 446                    
      LAANTR21    447 - 448    LAANTR22    449 - 450                    
      LAANTR23    451 - 452    LAANTR24    453 - 454                    
      LAANTR25    455 - 456    LAANTR26    457 - 458                    
      LAANTR27    459 - 460    LAANTR28    461 - 462                    
      LAANTR29    463 - 464    LAANTR30    465 - 466                    
      LAANTR31    467 - 468    LAANTR32    469 - 470                    
      LAANTR33    471 - 472    LAANTR34    473 - 474                    
      LAANTR90    475 - 476    LAANTR91    477 - 478                    
      LCCNDR1     479 - 479    LCCNDR2     480 - 480                    
      LCCNDR3     481 - 481    LCCNDR4     482 - 482                    
      LCCNDR5     483 - 483    LCCNDR6     484 - 484                    
      LCCNDR7     485 - 485    LCCNDR8     486 - 486                    
      LCCNDR9     487 - 487    LCCNDR10    488 - 488                    
      LCCNDR11    489 - 489    LCCNDR90    490 - 490                    
      LCCNDR91    491 - 491    LACNDR1     492 - 492                    
      LACNDR2     493 - 493    LACNDR3     494 - 494                    
      LACNDR4     495 - 495    LACNDR5     496 - 496                    
      LACNDR6     497 - 497    LACNDR7     498 - 498                    
      LACNDR8     499 - 499    LACNDR9     500 - 500                    
      LACNDR10    501 - 501    LACNDR11    502 - 502                    
      LACNDR12    503 - 503    LACNDR13    504 - 504                    
      LACNDR14    505 - 505    LACNDR15    506 - 506                    
      LACNDR16    507 - 507    LACNDR17    508 - 508                    
      LACNDR18    509 - 509    LACNDR19    510 - 510                    
      LACNDR20    511 - 511    LACNDR21    512 - 512                    
      LACNDR22    513 - 513    LACNDR23    514 - 514                    
      LACNDR24    515 - 515    LACNDR25    516 - 516                    
      LACNDR26    517 - 517    LACNDR27    518 - 518                    
      LACNDR28    519 - 519    LACNDR29    520 - 520                    
      LACNDR30    521 - 521    LACNDR31    522 - 522                    
      LACNDR32    523 - 523    LACNDR33    524 - 524                    
      LACNDR34    525 - 525    LACNDR90    526 - 526                    
      LACNDR91    527 - 527    LCONDRT     528 - 528                    
      LACHRONR    529 - 529    PHSTAT      530 - 530                    
                                                                        
      PINJ3MR     531 - 531    INJCT       532 - 532                    
      ECAUS1CT    533 - 533    ECAUS2CT    534 - 534                    
      ECAUS3CT    535 - 535    ECAUS4CT    536 - 536                    
      ECAUS5CT    537 - 537    ECAUS6CT    538 - 538                    
      ECAUS7CT    539 - 539    ECAUS8CT    540 - 540                    
      ECAUS9CT    541 - 541    WHAT1CT     542 - 542                    
      WHAT2CT     543 - 543    WHAT3CT     544 - 544                    
      WHAT4CT     545 - 545    WHAT5CT     546 - 546                    
      WHAT6CT     547 - 547    WHAT7CT     548 - 548                    
      WHAT8CT     549 - 549    WHAT9CT     550 - 550                    
      WHAT10CT    551 - 551    WHAT11CT    552 - 552                    
      WHER1CT     553 - 553    WHER2CT     554 - 554                    
      WHER3CT     555 - 555    WHER4CT     556 - 556                    
      WHER5CT     557 - 557    WHER6CT     558 - 558                    
      WHER7CT     559 - 559    WHER8CT     560 - 560                    
      WHER9CT     561 - 561    WHER10CT    562 - 562                    
      WHER11CT    563 - 563    WHER12CT    564 - 564                    
      WHER13CT    565 - 565    WHER14CT    566 - 566                    
      WHER15CT    567 - 567    WHER16CT    568 - 568                    
      WHER17CT    569 - 569    WHER18CT    570 - 570                    
      PPOIS3MR    571 - 571    POICT       572 - 572                    
                                                                        
      PDMED12M    573 - 573    PNMED12M    574 - 574                    
      PHOSPYR     575 - 575    HOSPNO      576 - 578                    
      HPNITE      579 - 581    PHCHM2W     582 - 582                    
      PHCHMN2W    583 - 584    PHCPH2W     585 - 585                    
      PHCPHN2W    586 - 587    PHCDV2W     588 - 588                    
      PHCDVN2W    589 - 590    P10DVYR     591 - 591                    
                                                                        
      PHICOV      592 - 592    HIKINDA     593 - 593                    
      HIKINDB     594 - 594    HIKINDC     595 - 595                    
      HIKINDD     596 - 596    HIKINDE     597 - 597                    
      HIKINDF     598 - 598    HIKINDG     599 - 599                    
      HIKINDH     600 - 600    HIKINDI     601 - 601                    
      HIKINDJ     602 - 602    MEDICARE    603 - 603                    
      MCPART      604 - 604    MCHMO       605 - 605                    
      MEDICAID    606 - 606    MACHMD      607 - 607                    
      MAPCMD      608 - 608    MAREF       609 - 609                    
      PRIVATE     610 - 610    HITYPE1     611 - 612                    
      WHONAM1     613 - 613    PLNWRK1     614 - 614                    
      PLNPAY11    615 - 615    PLNPAY21    616 - 616                    
      PLNPAY31    617 - 617    PLNPAY41    618 - 618                    
      PLNPAY51    619 - 619    PLNPAY61    620 - 620                    
      HICOST1     621 - 621    PLNMGD1     622 - 622                    
      HITYPE2     623 - 624    WHONAM2     625 - 625                    
      PLNWRK2     626 - 626    PLNPAY12    627 - 627                    
      PLNPAY22    628 - 628    PLNPAY32    629 - 629                    
      PLNPAY42    630 - 630    PLNPAY52    631 - 631                    
      PLNPAY62    632 - 632    HICOST2     633 - 633                    
      PLNMGD2     634 - 634    HITYPE3     635 - 636                    
      WHONAM3     637 - 637    PLNWRK3     638 - 638                    
      PLNPAY13    639 - 639    PLNPAY23    640 - 640                    
      PLNPAY33    641 - 641    PLNPAY43    642 - 642                    
      PLNPAY53    643 - 643    PLNPAY63    644 - 644                    
      HICOST3     645 - 645    PLNMGD3     646 - 646                    
      HITYPE4     647 - 648    WHONAM4     649 - 649                    
      PLNWRK4     650 - 650    PLNPAY14    651 - 651                    
      PLNPAY24    652 - 652    PLNPAY34    653 - 653                    
      PLNPAY44    654 - 654    PLNPAY54    655 - 655                    
      PLNPAY64    656 - 656    HICOST4     657 - 657                    
      PLNMGD4     658 - 658    IHS         659 - 659                    
      MILITARY    660 - 660    OTHERPUB    661 - 661                    
      OTHERGOV    662 - 662    HILAST      663 - 663                    
      HISTOP1     664 - 664    HISTOP2     665 - 665                    
      HISTOP3     666 - 666    HISTOP4     667 - 667                    
      HISTOP5     668 - 668    HISTOP6     669 - 669                    
      HISTOP7     670 - 670    HISTOP8     671 - 671                    
      HISTOP9     672 - 672    HISTOP10    673 - 673                    
      HISTOP11    674 - 674    HISTOP12    675 - 675                    
      HISTOP13    676 - 676    HISTOP14    677 - 677                    
      HINOTYR     678 - 678    HINOTMYR    679 - 680                    
      HCSPFYR     681 - 681                                             
                                                                        
      USBORN_P    682 - 682    HEADST      683 - 683                    
      HEADSTEV    684 - 684    EDUC        685 - 686                    
      EDUC_R1     687 - 688    MILTRYDS    689 - 689                    
      DOINGLW     690 - 690    WRKHRS      691 - 692                    
      WRKFTALL    693 - 693    WHYNOWRK    694 - 694                    
      WRKLYR      695 - 695    WRKMYR      696 - 697                    
      ERNYR_P     698 - 699    HIEMPOF     700 - 700                    
                                                                        
      PSAL        701 - 701    PSEINC      702 - 702                    
      PSSRR       703 - 703    PPENS       704 - 704                    
      PSSI        705 - 705    PSSDI       706 - 706                    
      PAFDC       707 - 707    PINTRST     708 - 708                    
      PDIVD       709 - 709    PCHLDSP     710 - 710                    
      PINCOT      711 - 711    INCGRP      712 - 713                    
      AB_BL20K    714 - 715    RAT_CAT     716 - 717                    
      HOUSEOWN    718 - 718    SSPDISB     719 - 719                    
      PSSAPL      720 - 720    SDPDISB     721 - 721                    
      PSDAPL      722 - 722    AFDCMYR     723 - 724                    
      PFSTP       725 - 725    FSTPMYR     726 - 727                    
                                                                        
      FMRPFLG  $  728 - 728;                                            
                                                                        
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
      R_MARITL ="Marital status"                                        
      COHAB1   ="Cohabitor ever married?"                               
      COHAB2   ="Legal marital status/cohab. respondent"                
      LG_MSTAT ="CDC standard for legal marital status"                 
      TMPMSTAT ="Legal marital status"                                  
      RRP      ="Relationship to reference person"                      
      HH_REF   ="Person # of reference person"                          
      HHSTAT   ="Reference Person Flag"                                 
      NOWAF    ="Armed Forces - active duty"                            
      ASTATFLG ="Sample Adult Flag"                                     
      CSTATFLG ="Sample Child Flag"                                     
      IMMUNFLG ="Child Immunization Flag"                               
      FM_SIZE  ="Number of persons in family"                           
      REGION   ="Region"                                                
      MSASIZEP ="Geographic Distribution - MSA size"                    
      WTIA     ="Weight - Interim Annual"                               
      WTFA     ="Weight - Final Annual"                                 
      STRATUM  ="Stratum for variance estimation"                       
      PSU      ="PSU for variance estimation"                           
                                                                        
      PLAPLYLM ="Is - - limited in kind/amt play"                       
      PLAPLYUN ="Is -- able to play AT ALL?"                            
      PSPEDEIS ="Does - - receive Spec Ed or EIS"                       
      PLAADL   ="Does -- need help w/ADL?"                              
      LABATH   ="Does -- need help w/ bathing?"                         
      LADRESS  ="Does -- need help with dressing?"                      
      LAEAT    ="Does -- need help w/ eating?"                          
      LABED    ="Does -- need help in/out of bed/chair?"                
      LATOILT  ="Does -- need help with toilet?"                        
      LAHOME   ="Does -- need help getting around home?"                
      PLAIADL  ="Does - - need help w/chores, shop, etc."               
      PLAWKNOW ="Is - - unable to work due to health prob"              
      PLAWKLIM ="Is - - limited kind/amt of work (health)"              
      PLAWALK  ="Does - - have dif walking w/o equip?"                  
      PLAREMEM ="Is -- limited by dif remembering?"                     
      PLIMANY  ="Is -- limited in ANY (other) WAY?"                     
      LA1AR    ="Any limitation: all persons, all conds"                
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
      LAHCC8   ="Other dev prob causes limitation"                      
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
      LHCCLN90 ="Duration otr, N.E.C. prob(1): # of units"              
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
      LAHCA15  ="Otr dev prob causes limitation"                        
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
      LAHCA20  ="Musculoskel. prob causes limitation"                   
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
      LAHCA34  ="Pregnancy causes limitation"                           
      LHCALN34 ="Duration of pregnancy: # of units"                     
      LHCALT34 ="Duration of pregnancy: Time unit"                      
      LHCALY34 ="Duration of pregnancy (in years)"                      
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
      LACNTR9  ="Duration of otr ment prob recode 2"                    
      LACNTR10 ="Duration of bone/joint prob recode 2"                  
      LACNTR11 ="Duration of epilepsy recode 2"                         
      LACNTR90 ="Duration of otr impair/prob(1) recode 2"               
      LACNTR91 ="Duration of otr impair/prob(2) recode 2"               
      LAANTR1  ="Duration of vision prob recode 2"                      
      LAANTR2  ="Duration of hearing prob recode 2"                     
      LAANTR3  ="Duration of arthritis/rheum recode 2"                  
      LAANTR4  ="Duration of back/neck prob recode 2"                   
      LAANTR5  ="Duration of fract/bone/joint inj rec 2"                
      LAANTR6  ="Duration of otr injury recode 2"                       
      LAANTR7  ="Duration of heart prob recode 2"                       
      LAANTR8  ="Duration of stroke recode 2"                           
      LAANTR9  ="Duration of hypertension recode 2"                     
      LAANTR10 ="Duration of diabetes recode 2"                         
      LAANTR11 ="Duration of lung/breath prob rec 2"                    
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
      LAANTR34 ="Duration of pregnancy recode 2"                        
      LAANTR90 ="Duration of otr impair/prob(1) recode 2"               
      LAANTR91 ="Duration of otr impair/prob(2) recode 2"               
      LCCNDR1  ="Vision problem condition status"                       
      LCCNDR2  ="Hearing problem condition status"                      
      LCCNDR3  ="Speech problem condition status"                       
      LCCNDR4  ="Asthma/breath prob condition status"                   
      LCCNDR5  ="Birth defect condition status"                         
      LCCNDR6  ="Injury condition status"                               
      LCCNDR7  ="Mental retardation condition status"                   
      LCCNDR8  ="Otr dev prob condition status"                         
      LCCNDR9  ="Otr mental/emot prob condition status"                 
      LCCNDR10 ="Bone/joint prob condition status"                      
      LCCNDR11 ="Epilepsy condition status"                             
      LCCNDR90 ="Otr imp/problem(1)condition status"                    
      LCCNDR91 ="Otr imp/problem(2) condition status"                   
      LACNDR1  ="Vision problem condition status"                       
      LACNDR2  ="Hearing problem condition status"                      
      LACNDR3  ="Arthritis/rheum condition status"                      
      LACNDR4  ="Back/neck problem condition status"                    
      LACNDR5  ="Fract/bone/joint inj condition status"                 
      LACNDR6  ="Otr injury condition status"                           
      LACNDR7  ="Heart problem condition status"                        
      LACNDR8  ="Stroke condition status"                               
      LACNDR9  ="Hypertension condition status"                         
      LACNDR10 ="Diabetes condition status"                             
      LACNDR11 ="Lung/breath prob condition status"                     
      LACNDR12 ="Cancer condition status"                               
      LACNDR13 ="Birth defect condition status"                         
      LACNDR14 ="Mental retardation condition status"                   
      LACNDR15 ="Otr dev prob condition status"                         
      LACNDR16 ="Senility condition status"                             
      LACNDR17 ="Dep/anx/emot prob condition status"                    
      LACNDR18 ="Weight prob condition status"                          
      LACNDR19 ="Amputee condition status"                              
      LACNDR20 ="Musculoskeletal condition status"                      
      LACNDR21 ="Circulatory condition status"                          
      LACNDR22 ="Endocrine prob condition status"                       
      LACNDR23 ="Nervous sys prob condition status"                     
      LACNDR24 ="Digestive prob condition status"                       
      LACNDR25 ="Genitourinary prob condition status"                   
      LACNDR26 ="Skin prob condition status"                            
      LACNDR27 ="Blood prob condition status"                           
      LACNDR28 ="Benign tumor condition status"                         
      LACNDR29 ="Alcohol or drug prob condition status"                 
      LACNDR30 ="Otr mental prob condition status"                      
      LACNDR31 ="Surgical after-effects condition status"               
      LACNDR32 ='"Old age" condition status'                            
      LACNDR33 ="Fatigue condition status"                              
      LACNDR34 ="Pregnancy condition status"                            
      LACNDR90 ="Otr imp/prob(1) condition status"                      
      LACNDR91 ="Otr imp/prob(2) condition status"                      
      LCONDRT  ="Chronic cond rec for person with LA"                   
      LACHRONR ="Overall lim of activ recode by cond stat"              
      PHSTAT   ="Reported health status"                                
                                                                        
      PINJ3MR  ="Person injured during past 3 months"                   
      INJCT    ="Number of injury episodes"                             
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
      HIKINDC  ="Medicare"                                              
      HIKINDD  ="Medi-Gap"                                              
      HIKINDE  ="Medicaid"                                              
      HIKINDF  ="Military hlth care/VA"                                 
      HIKINDG  ="CHAMPUS/TRICARE/CHAMP-VA"                              
      HIKINDH  ="Indian Health Service"                                 
      HIKINDI  ="State-sponsored health plan"                           
      HIKINDJ  ="Other government program"                              
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
      PLNPAY21 ="Paid for by empoyer or union (Plan 1)"                 
      PLNPAY31 ="Paid by someone outside household Plan 1"              
      PLNPAY41 ="Paid for by Medicare (Plan 1)"                         
      PLNPAY51 ="Paid for by Medicaid (Plan 1)"                         
      PLNPAY61 ="Paid for by government program (Plan 1)"               
      HICOST1  ="Out-of-pocket premium cost (Plan 1)"                   
      PLNMGD1  ="Type of plan (Plan 1)"                                 
      HITYPE2  ="Name of plan (Plan 2)"                                 
      WHONAM2  ="Plan in whose name (Plan 2)"                           
      PLNWRK2  ="Originally thrgh work or union (Plan 2)"               
      PLNPAY12 ="Paid for by self or family (Plan 2)"                   
      PLNPAY22 ="Paid for by empoyer or union (Plan 2)"                 
      PLNPAY32 ="Paid by someone outside household Plan 2"              
      PLNPAY42 ="Paid for by Medicare (Plan 2)"                         
      PLNPAY52 ="Paid for by Medicaid (Plan 2)"                         
      PLNPAY62 ="Paid for by government program (Plan 2)"               
      HICOST2  ="Out-of-pocket premium cost(Plan 2)"                    
      PLNMGD2  ="Type of plan (Plan 2)"                                 
      HITYPE3  ="Name of plan (Plan 3)"                                 
      WHONAM3  ="Plan in whose name (Plan 3)"                           
      PLNWRK3  ="Originally thrgh work or union (Plan 3)"               
      PLNPAY13 ="Paid for by self or family (Plan 3)"                   
      PLNPAY23 ="Paid for by empoyer or union (Plan 3)"                 
      PLNPAY33 ="Paid by someone outside household Plan 3"              
      PLNPAY43 ="Paid for by Medicare (Plan 3)"                         
      PLNPAY53 ="Paid for by Medicaid (Plan 3)"                         
      PLNPAY63 ="Paid for by government program (Plan 3)"               
      HICOST3  ="Out-of-pocket premium cost (Plan 3)"                   
      PLNMGD3  ="Type of plan (Plan 3)"                                 
      HITYPE4  ="Name of plan (Plan 4)"                                 
      WHONAM4  ="Plan in whose name (Plan 4)"                           
      PLNWRK4  ="Originally thrgh work or union (Plan 4)"               
      PLNPAY14 ="Paid for by self or family (Plan 4)"                   
      PLNPAY24 ="Paid for by empoyer or union (Plan 4)"                 
      PLNPAY34 ="Paid by someone outside household Plan 4"              
      PLNPAY44 ="Paid for by Medicare (Plan 4)"                         
      PLNPAY54 ="Paid for by Medicaid (Plan 4)"                         
      PLNPAY64 ="Paid for by government program (Plan 4)"               
      HICOST4  ="Out-of-pocket premium cost(Plan 4)"                    
      PLNMGD4  ="Type of plan (Plan 4)"                                 
      IHS      ="Indian Health Service Recode"                          
      MILITARY ="Military coverage recode"                              
      OTHERPUB ="Other State-Sponsored Health Plan Recode"              
      OTHERGOV ="Other government programs Recode"                      
      HILAST   ="How long since last had hlth coverage"                 
      HISTOP1  ="Lost job or changed employers"                         
      HISTOP2  ="Spouse/parent lost job or chgd employers"              
      HISTOP3  ="Divorce/separate/death spouse or parent"               
      HISTOP4  ="Ineligible because of age/left school"                 
      HISTOP5  ="Employer stopped offering coverage"                    
      HISTOP6  ="Cut back to part-time/became temp employ"              
      HISTOP7  ="Benefits from employer ran out"                        
      HISTOP8  ="Couldn't afford to pay premiums"                       
      HISTOP9  ="Insurance plan raised cost of premiums"                
      HISTOP10 ="Insurance company refused coverage"                    
      HISTOP11 ="Other"                                                 
      HISTOP12 ="Medicaid/Medical stopped after pregnancy"              
      HISTOP13 ="Lost Medicaid/Medical,new job/inc income"              
      HISTOP14 ="Lost Medicaid (other)"                                 
      HINOTYR  ="No hlth coverage during past 12 months"                
      HINOTMYR ="Months without coverage in past 12 month"              
      HCSPFYR  ="Amount family spent for medical care"                  
                                                                        
      USBORN_P ="Was - - born in U.S."                                  
      HEADST   ="Now attending Head Start"                              
      HEADSTEV ="Ever attended Head Start"                              
      EDUC     ="Highest level of school completed"                     
      EDUC_R1  ="Education Recode"                                      
      MILTRYDS ="Ever honorably discharged (active duty)"               
      DOINGLW  ="What was - - doing last week?"                         
      WRKHRS   ="Total hours worked LAST week (all jobs)"               
      WRKFTALL ="Does - - usually work full time"                       
      WHYNOWRK ="Main reason for not working last week"                 
      WRKLYR   ="Did - -  work for pay in last year"                    
      WRKMYR   ="Months in {last yr} person had 1+ jobs"                
      ERNYR_P  ="{Person's} total earnings in 1996"                     
      HIEMPOF  ="Was health ins offered thru workplace?"                
                                                                        
      PSAL     ="Did - - rec inc from wage/sal (last CY)"               
      PSEINC   ="Did - - rec inc from self-employ"                      
      PSSRR    ="Did - - rec Soc Sec, RR ret (last CY)"                 
      PPENS    ="Did - - rec inc from other pensions"                   
      PSSI     ="Did - - rec inc from SSI"                              
      PSSDI    ="Did -- rec inc from SSDI"                              
      PAFDC    ="Did - - rec inc from Wel/AFDC/Gen Assist"              
      PINTRST  ="Did - - rec int from sav/bank accounts"                
      PDIVD    ="Did - - rec div from stocks/funds/etc."                
      PCHLDSP  ="Did - - rec inc from child support"                    
      PINCOT   ="Did - - rec inc from any other source"                 
      INCGRP   ="Total Combined Family Income (Grouped)"                
      AB_BL20K ="Fam inc at/above vs. below $20,000"                    
      RAT_CAT  ="Ratio of fam inc to poverty threshold"                 
      HOUSEOWN ="Home Tenure Status"                                    
      SSPDISB  ="Did -- receive SSI due to a disability"                
      PSSAPL   ="Has -- ever applied for SSI"                           
      SDPDISB  ="Did -- receive SSDI due to a disability"               
      PSDAPL   ="Has -- ever applied for SSDI"                          
      AFDCMYR  ="Months rec AFDC/Gen Assist (last CY)"                  
      PFSTP    ="Was -- author to rec fd stmps (last CY)"               
      FSTPMYR  ="Months rec food stamps (last CY)"                      
                                                                        
      FMRPFLG  ="Family Respondent Flag"                                
   ;                                                                    
                                                                        
   * ASSOCIATE VARIABLES WITH FORMAT VALUES;                            
                                                                        
   FORMAT                                                               
      RECTYPE  PEP001X.    SRVY_YR  PEP002X.    FMX      $PEP004X.      
      PX       $PEP005X.   INTV_QRT PEP006X.    SEX      PEP007X.       
      AGE_P    PEP008X.    R_AGE1   PEP009X.    R_AGE2   PEP010X.       
      DOB_M    PEP011X.    DOB_Y_P  PEP012X.    ORIGIN   PEP013X.       
      HISPAN_P PEP014X.    MRACE_P  PEP015X.    RACEREC  PEP016X.       
      RACE     PEP017X.    R_MARITL PEP018X.    COHAB1   PEP019X.       
      COHAB2   PEP020X.    LG_MSTAT PEP021X.    TMPMSTAT PEP022X.       
      RRP      PEP023X.    HH_REF   PEP024X.    HHSTAT   $PEP025X.      
      NOWAF    PEP026X.    ASTATFLG PEP027X.    CSTATFLG PEP028X.       
      IMMUNFLG PEP029X.    FM_SIZE  PEP030X.    REGION   PEP031X.       
      MSASIZEP PEP032X.                                                 
                                                                        
      PLAPLYLM PEP019X.    PLAPLYUN PEP019X.    PSPEDEIS PEP019X.       
      PLAADL   PEP019X.    LABATH   PEP019X.    LADRESS  PEP019X.       
      LAEAT    PEP019X.    LABED    PEP019X.    LATOILT  PEP019X.       
      LAHOME   PEP019X.    PLAIADL  PEP019X.    PLAWKNOW PEP019X.       
      PLAWKLIM PEP049X.    PLAWALK  PEP013X.    PLAREMEM PEP013X.       
      PLIMANY  PEP052X.    LA1AR    PEP053X.    LAHCC1   PEP054X.       
      LHCCLN1  PEP055X.    LHCCLT1  PEP056X.    LHCCLY1  PEP057X.       
      LAHCC2   PEP054X.    LHCCLN2  PEP055X.    LHCCLT2  PEP056X.       
      LHCCLY2  PEP061X.    LAHCC3   PEP054X.    LHCCLN3  PEP055X.       
      LHCCLT3  PEP056X.    LHCCLY3  PEP061X.    LAHCC4   PEP054X.       
      LHCCLN4  PEP055X.    LHCCLT4  PEP056X.    LHCCLY4  PEP061X.       
      LAHCC5   PEP054X.    LHCCLN5  PEP071X.    LHCCLT5  PEP056X.       
      LHCCLY5  PEP061X.    LAHCC6   PEP054X.    LHCCLN6  PEP055X.       
      LHCCLT6  PEP056X.    LHCCLY6  PEP061X.    LAHCC7   PEP054X.       
      LHCCLN7  PEP055X.    LHCCLT7  PEP056X.    LHCCLY7  PEP061X.       
      LAHCC8   PEP054X.    LHCCLN8  PEP055X.    LHCCLT8  PEP056X.       
      LHCCLY8  PEP061X.    LAHCC9   PEP054X.    LHCCLN9  PEP055X.       
      LHCCLT9  PEP056X.    LHCCLY9  PEP061X.    LAHCC10  PEP054X.       
      LHCCLN10 PEP055X.    LHCCLT10 PEP056X.    LHCCLY10 PEP057X.       
      LAHCC11  PEP054X.    LHCCLN11 PEP055X.    LHCCLT11 PEP056X.       
      LHCCLY11 PEP061X.    LAHCC90  PEP054X.    LHCCLN90 PEP055X.       
      LHCCLT90 PEP056X.    LHCCLY90 PEP057X.    LAHCC91  PEP054X.       
      LHCCLN91 PEP055X.    LHCCLT91 PEP056X.    LHCCLY91 PEP057X.       
      LAHCA1   PEP054X.    LHCALN1  PEP055X.    LHCALT1  PEP056X.       
      LHCALY1  PEP109X.    LAHCA2   PEP054X.    LHCALN2  PEP055X.       
      LHCALT2  PEP056X.    LHCALY2  PEP109X.    LAHCA3   PEP054X.       
      LHCALN3  PEP055X.    LHCALT3  PEP056X.    LHCALY3  PEP109X.       
      LAHCA4   PEP054X.    LHCALN4  PEP055X.    LHCALT4  PEP056X.       
      LHCALY4  PEP109X.    LAHCA5   PEP054X.    LHCALN5  PEP055X.       
      LHCALT5  PEP056X.    LHCALY5  PEP109X.    LAHCA6   PEP054X.       
      LHCALN6  PEP055X.    LHCALT6  PEP056X.    LHCALY6  PEP109X.       
      LAHCA7   PEP054X.    LHCALN7  PEP055X.    LHCALT7  PEP056X.       
      LHCALY7  PEP109X.    LAHCA8   PEP054X.    LHCALN8  PEP055X.       
      LHCALT8  PEP056X.    LHCALY8  PEP109X.    LAHCA9   PEP054X.       
      LHCALN9  PEP055X.    LHCALT9  PEP056X.    LHCALY9  PEP109X.       
      LAHCA10  PEP054X.    LHCALN10 PEP055X.    LHCALT10 PEP056X.       
      LHCALY10 PEP109X.    LAHCA11  PEP054X.    LHCALN11 PEP055X.       
      LHCALT11 PEP056X.    LHCALY11 PEP109X.    LAHCA12  PEP054X.       
      LHCALN12 PEP055X.    LHCALT12 PEP056X.    LHCALY12 PEP109X.       
      LAHCA13  PEP054X.    LHCALN13 PEP071X.    LHCALT13 PEP056X.       
      LHCALY13 PEP109X.    LAHCA14  PEP054X.    LHCALN14 PEP055X.       
      LHCALT14 PEP056X.    LHCALY14 PEP109X.    LAHCA15  PEP054X.       
      LHCALN15 PEP055X.    LHCALT15 PEP056X.    LHCALY15 PEP109X.       
      LAHCA16  PEP054X.    LHCALN16 PEP055X.    LHCALT16 PEP056X.       
      LHCALY16 PEP109X.    LAHCA17  PEP054X.    LHCALN17 PEP055X.       
      LHCALT17 PEP056X.    LHCALY17 PEP109X.    LAHCA18  PEP054X.       
      LHCALN18 PEP055X.    LHCALT18 PEP056X.    LHCALY18 PEP109X.       
      LAHCA19  PEP054X.    LHCALN19 PEP055X.    LHCALT19 PEP056X.       
      LHCALY19 PEP109X.    LAHCA20  PEP054X.    LHCALN20 PEP055X.       
      LHCALT20 PEP056X.    LHCALY20 PEP109X.    LAHCA21  PEP054X.       
      LHCALN21 PEP055X.    LHCALT21 PEP056X.    LHCALY21 PEP109X.       
      LAHCA22  PEP054X.    LHCALN22 PEP055X.    LHCALT22 PEP056X.       
      LHCALY22 PEP109X.    LAHCA23  PEP054X.    LHCALN23 PEP055X.       
      LHCALT23 PEP056X.    LHCALY23 PEP109X.    LAHCA24  PEP054X.       
      LHCALN24 PEP055X.    LHCALT24 PEP056X.    LHCALY24 PEP109X.       
      LAHCA25  PEP054X.    LHCALN25 PEP055X.    LHCALT25 PEP056X.       
      LHCALY25 PEP109X.    LAHCA26  PEP054X.    LHCALN26 PEP055X.       
      LHCALT26 PEP056X.    LHCALY26 PEP109X.    LAHCA27  PEP054X.       
      LHCALN27 PEP055X.    LHCALT27 PEP056X.    LHCALY27 PEP109X.       
      LAHCA28  PEP054X.    LHCALN28 PEP055X.    LHCALT28 PEP056X.       
      LHCALY28 PEP109X.    LAHCA29  PEP054X.    LHCALN29 PEP055X.       
      LHCALT29 PEP056X.    LHCALY29 PEP109X.    LAHCA30  PEP054X.       
      LHCALN30 PEP055X.    LHCALT30 PEP056X.    LHCALY30 PEP109X.       
      LAHCA31  PEP054X.    LHCALN31 PEP055X.    LHCALT31 PEP056X.       
      LHCALY31 PEP109X.    LAHCA32  PEP054X.    LHCALN32 PEP055X.       
      LHCALT32 PEP056X.    LHCALY32 PEP109X.    LAHCA33  PEP054X.       
      LHCALN33 PEP055X.    LHCALT33 PEP056X.    LHCALY33 PEP109X.       
      LAHCA34  PEP054X.    LHCALN34 PEP055X.    LHCALT34 PEP056X.       
      LHCALY34 PEP109X.    LAHCA90  PEP054X.    LHCALN90 PEP055X.       
      LHCALT90 PEP056X.    LHCALY90 PEP109X.    LAHCA91  PEP054X.       
      LHCALN91 PEP055X.    LHCALT91 PEP056X.    LHCALY91 PEP109X.       
      LACNTR1  PEP250X.    LACNTR2  PEP250X.    LACNTR3  PEP250X.       
      LACNTR4  PEP250X.    LACNTR5  PEP250X.    LACNTR6  PEP250X.       
      LACNTR7  PEP250X.    LACNTR8  PEP250X.    LACNTR9  PEP250X.       
      LACNTR10 PEP250X.    LACNTR11 PEP250X.    LACNTR90 PEP250X.       
      LACNTR91 PEP250X.    LAANTR1  PEP263X.    LAANTR2  PEP263X.       
      LAANTR3  PEP263X.    LAANTR4  PEP263X.    LAANTR5  PEP263X.       
      LAANTR6  PEP263X.    LAANTR7  PEP263X.    LAANTR8  PEP263X.       
      LAANTR9  PEP263X.    LAANTR10 PEP263X.    LAANTR11 PEP263X.       
      LAANTR12 PEP263X.    LAANTR13 PEP263X.    LAANTR14 PEP263X.       
      LAANTR15 PEP263X.    LAANTR16 PEP263X.    LAANTR17 PEP263X.       
      LAANTR18 PEP263X.    LAANTR19 PEP263X.    LAANTR20 PEP263X.       
      LAANTR21 PEP263X.    LAANTR22 PEP263X.    LAANTR23 PEP263X.       
      LAANTR24 PEP263X.    LAANTR25 PEP263X.    LAANTR26 PEP263X.       
      LAANTR27 PEP263X.    LAANTR28 PEP263X.    LAANTR29 PEP263X.       
      LAANTR30 PEP263X.    LAANTR31 PEP263X.    LAANTR32 PEP263X.       
      LAANTR33 PEP263X.    LAANTR34 PEP263X.    LAANTR90 PEP263X.       
      LAANTR91 PEP263X.    LCCNDR1  PEP299X.    LCCNDR2  PEP299X.       
      LCCNDR3  PEP299X.    LCCNDR4  PEP299X.    LCCNDR5  PEP299X.       
      LCCNDR6  PEP299X.    LCCNDR7  PEP299X.    LCCNDR8  PEP299X.       
      LCCNDR9  PEP299X.    LCCNDR10 PEP299X.    LCCNDR11 PEP299X.       
      LCCNDR90 PEP299X.    LCCNDR91 PEP299X.    LACNDR1  PEP299X.       
      LACNDR2  PEP299X.    LACNDR3  PEP299X.    LACNDR4  PEP299X.       
      LACNDR5  PEP299X.    LACNDR6  PEP299X.    LACNDR7  PEP299X.       
      LACNDR8  PEP299X.    LACNDR9  PEP299X.    LACNDR10 PEP299X.       
      LACNDR11 PEP299X.    LACNDR12 PEP299X.    LACNDR13 PEP299X.       
      LACNDR14 PEP299X.    LACNDR15 PEP299X.    LACNDR16 PEP299X.       
      LACNDR17 PEP299X.    LACNDR18 PEP299X.    LACNDR19 PEP299X.       
      LACNDR20 PEP299X.    LACNDR21 PEP299X.    LACNDR22 PEP299X.       
      LACNDR23 PEP299X.    LACNDR24 PEP299X.    LACNDR25 PEP299X.       
      LACNDR26 PEP299X.    LACNDR27 PEP299X.    LACNDR28 PEP299X.       
      LACNDR29 PEP299X.    LACNDR30 PEP299X.    LACNDR31 PEP299X.       
      LACNDR32 PEP299X.    LACNDR33 PEP299X.    LACNDR34 PEP299X.       
      LACNDR90 PEP299X.    LACNDR91 PEP299X.    LCONDRT  PEP348X.       
      LACHRONR PEP349X.    PHSTAT   PEP350X.                            
                                                                        
      PINJ3MR  PEP013X.    INJCT    PEP352X.    ECAUS1CT PEP353X.       
      ECAUS2CT PEP353X.    ECAUS3CT PEP353X.    ECAUS4CT PEP353X.       
      ECAUS5CT PEP353X.    ECAUS6CT PEP353X.    ECAUS7CT PEP353X.       
      ECAUS8CT PEP353X.    ECAUS9CT PEP353X.    WHAT1CT  PEP353X.       
      WHAT2CT  PEP353X.    WHAT3CT  PEP353X.    WHAT4CT  PEP353X.       
      WHAT5CT  PEP353X.    WHAT6CT  PEP353X.    WHAT7CT  PEP353X.       
      WHAT8CT  PEP353X.    WHAT9CT  PEP353X.    WHAT10CT PEP353X.       
      WHAT11CT PEP353X.    WHER1CT  PEP353X.    WHER2CT  PEP353X.       
      WHER3CT  PEP353X.    WHER4CT  PEP353X.    WHER5CT  PEP353X.       
      WHER6CT  PEP353X.    WHER7CT  PEP353X.    WHER8CT  PEP353X.       
      WHER9CT  PEP353X.    WHER10CT PEP353X.    WHER11CT PEP353X.       
      WHER12CT PEP353X.    WHER13CT PEP353X.    WHER14CT PEP353X.       
      WHER15CT PEP353X.    WHER16CT PEP353X.    WHER17CT PEP353X.       
      WHER18CT PEP353X.    PPOIS3MR PEP013X.    POICT    PEP392X.       
                                                                        
      PDMED12M PEP013X.    PNMED12M PEP013X.    PHOSPYR  PEP013X.       
      HOSPNO   PEP396X.    HPNITE   PEP397X.    PHCHM2W  PEP013X.       
      PHCHMN2W PEP399X.    PHCPH2W  PEP013X.    PHCPHN2W PEP401X.       
      PHCDV2W  PEP013X.    PHCDVN2W PEP403X.    P10DVYR  PEP013X.       
                                                                        
      PHICOV   PEP013X.    HIKINDA  PEP406X.    HIKINDB  PEP406X.       
      HIKINDC  PEP406X.    HIKINDD  PEP406X.    HIKINDE  PEP406X.       
      HIKINDF  PEP406X.    HIKINDG  PEP406X.    HIKINDH  PEP406X.       
      HIKINDI  PEP406X.    HIKINDJ  PEP406X.    MEDICARE PEP416X.       
      MCPART   PEP417X.    MCHMO    PEP019X.    MEDICAID PEP416X.       
      MACHMD   PEP420X.    MAPCMD   PEP019X.    MAREF    PEP019X.       
      PRIVATE  PEP416X.    HITYPE1  PEP424X.    WHONAM1  PEP425X.       
      PLNWRK1  PEP426X.    PLNPAY11 PEP406X.    PLNPAY21 PEP406X.       
      PLNPAY31 PEP406X.    PLNPAY41 PEP406X.    PLNPAY51 PEP406X.       
      PLNPAY61 PEP406X.    HICOST1  PEP433X.    PLNMGD1  PEP434X.       
      HITYPE2  PEP424X.    WHONAM2  PEP425X.    PLNWRK2  PEP426X.       
      PLNPAY12 PEP406X.    PLNPAY22 PEP406X.    PLNPAY32 PEP406X.       
      PLNPAY42 PEP406X.    PLNPAY52 PEP406X.    PLNPAY62 PEP406X.       
      HICOST2  PEP433X.    PLNMGD2  PEP434X.    HITYPE3  PEP424X.       
      WHONAM3  PEP425X.    PLNWRK3  PEP426X.    PLNPAY13 PEP406X.       
      PLNPAY23 PEP406X.    PLNPAY33 PEP406X.    PLNPAY43 PEP406X.       
      PLNPAY53 PEP406X.    PLNPAY63 PEP406X.    HICOST3  PEP433X.       
      PLNMGD3  PEP434X.    HITYPE4  PEP424X.    WHONAM4  PEP425X.       
      PLNWRK4  PEP426X.    PLNPAY14 PEP406X.    PLNPAY24 PEP406X.       
      PLNPAY34 PEP406X.    PLNPAY44 PEP406X.    PLNPAY54 PEP406X.       
      PLNPAY64 PEP406X.    HICOST4  PEP433X.    PLNMGD4  PEP434X.       
      IHS      PEP019X.    MILITARY PEP469X.    OTHERPUB PEP019X.       
      OTHERGOV PEP019X.    HILAST   PEP472X.    HISTOP1  PEP406X.       
      HISTOP2  PEP406X.    HISTOP3  PEP406X.    HISTOP4  PEP406X.       
      HISTOP5  PEP406X.    HISTOP6  PEP406X.    HISTOP7  PEP406X.       
      HISTOP8  PEP406X.    HISTOP9  PEP406X.    HISTOP10 PEP406X.       
      HISTOP11 PEP406X.    HISTOP12 PEP406X.    HISTOP13 PEP406X.       
      HISTOP14 PEP406X.    HINOTYR  PEP019X.    HINOTMYR PEP488X.       
      HCSPFYR  PEP489X.                                                 
                                                                        
      USBORN_P PEP013X.    HEADST   PEP019X.    HEADSTEV PEP019X.       
      EDUC     PEP493X.    EDUC_R1  PEP494X.    MILTRYDS PEP019X.       
      DOINGLW  PEP496X.    WRKHRS   PEP497X.    WRKFTALL PEP019X.       
      WHYNOWRK PEP499X.    WRKLYR   PEP019X.    WRKMYR   PEP488X.       
      ERNYR_P  PEP502X.    HIEMPOF  PEP019X.                            
                                                                        
      PSAL     PEP019X.    PSEINC   PEP019X.    PSSRR    PEP013X.       
      PPENS    PEP013X.    PSSI     PEP013X.    PSSDI    PEP509X.       
      PAFDC    PEP013X.    PINTRST  PEP013X.    PDIVD    PEP013X.       
      PCHLDSP  PEP013X.    PINCOT   PEP013X.    INCGRP   PEP515X.       
      AB_BL20K PEP516X.    RAT_CAT  PEP517X.    HOUSEOWN PEP518X.       
      SSPDISB  PEP019X.    PSSAPL   PEP019X.    SDPDISB  PEP019X.       
      PSDAPL   PEP019X.    AFDCMYR  PEP523X.    PFSTP    PEP013X.       
      FSTPMYR  PEP523X.                                                 
                                                                        
      FMRPFLG  $PEP526X.;                                               
                                                                        
PROC CONTENTS DATA=NHIS.PERSON_1997;                                       
                                                                        
PROC FREQ DATA=NHIS.PERSON_1997;                                           
   TITLE1 'FREQUENCY REPORT FOR 1997 NHIS PERSONSX FILE';               
   TITLE2 '(WEIGHTED)';                                                 
   TABLES RACEREC * SEX/LIST MISSING;                                   
   WEIGHT WTFA ;                                                        
                                                                        
PROC FREQ DATA=NHIS.PERSON_1997;                                           
   TITLE1 'FREQUENCY REPORT FOR 1997 NHIS PERSONSX FILE';               
   TITLE2 '(UNWEIGHTED)';                                               
   TABLES RACEREC * SEX/LIST MISSING;                                   
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE           
        STATEMENT: FORMAT _ALL_;                                        
RUN;                                                                    
