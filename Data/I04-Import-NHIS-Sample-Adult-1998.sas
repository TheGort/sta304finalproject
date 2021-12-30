                                                                      
                                                                      
                                                                      
**NOTE:  These data definition statements have been provided by NCHS. 
         Users will need to modify them to suit their specific needs. 
                                                                      
********************************************************************* 
 14DEC2000                                                            
                                                                      
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS               
 FILE FROM THE NHIS 1998 SAMADULT.DAT ASCII FILE                      
                                                                      
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN              
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                 
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                   
       DOCUMENTATION                                                  
                                                                      
 THIS IS STORED IN SAMADULT.SAS                                       
*********************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;        
                                                                      
LIBNAME NHIS    'C:\DATA\NHIS\';                                       
LIBNAME LIBRARY 'C:\DATA\NHIS\1998';                                       
                                                                      
* DEFINE VARIABLE VALUES FOR REPORTS;                                 
                                                                      
PROC FORMAT LIBRARY=LIBRARY;                                          
  VALUE ADP001X                                                       
    30              = "Sample Adult"                                  
   ;                                                                  
  VALUE ADP002X                                                       
    1998            = "1998"                                          
   ;                                                                  
  VALUE $ADP004X                                                      
    "01" - "30"     = "Family number 1 thru 30"                       
   ;                                                                  
  VALUE $ADP005X                                                      
    "01" - "30"     = "Person number 1 thru 30"                       
   ;                                                                  
  VALUE ADP006X                                                       
    1               = "Quarter 1"                                     
    2               = "Quarter 2"                                     
    3               = "Quarter 3"                                     
    4               = "Quarter 4"                                     
   ;                                                                  
  VALUE ADP007X                                                       
    1               = "Male"                                          
    2               = "Female"                                        
   ;                                                                  
  VALUE ADP008X                                                       
    18 - 84         = "18-84 years"                                   
    85              = "85+ years"                                     
   ;                                                                  
  VALUE ADP009X                                                       
    1               = "Yes"                                           
    2               = "No"                                            
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP010X                                                       
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
  VALUE ADP011X                                                       
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
  VALUE ADP012X                                                       
    1               = "White"                                         
    2               = "Black"                                         
    3               = "Other"                                         
   ;                                                                  
  VALUE ADP013X                                                       
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
  VALUE ADP014X                                                       
    1               = "Hispanic"                                      
    2               = "Non-Hispanic White"                            
    3               = "Non-Hispanic Black"                            
    4               = "Non-Hispanic Other"                            
   ;                                                                  
  VALUE ADP015X                                                       
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
  VALUE ADP016X                                                       
    01              = "$20,000 or more"                               
    02              = "Less than $20,000"                             
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
   ;                                                                  
  VALUE ADP017X                                                       
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
  VALUE ADP018X                                                       
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
  VALUE ADP019X                                                       
    01 - 30         = "01-30 persons"                                 
   ;                                                                  
  VALUE ADP020X                                                       
    1               = "Northeast"                                     
    2               = "Midwest"                                       
    3               = "South"                                         
    4               = "West"                                          
   ;                                                                  
  VALUE ADP021X                                                       
    1               = "5,000,000 or more"                             
    2               = "2,500,000 - 4,999,999"                         
    3               = "1,000,000 - 2,499,999"                         
    4               = "500,000 - 999,999"                             
    5               = "250,000 - 499,999"                             
    6               = "Under 250,000"                                 
    7               = "Non-MSA"                                       
   ;                                                                  
  VALUE ADP026X                                                       
    1               = "Dummy record"                                  
    0               = "Not a dummy record"                            
   ;                                                                  
  VALUE ADP028X                                                       
    1               = "Yes"                                           
    2               = "No"                                            
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP041X                                                       
    1               = "Mentioned"                                     
    2               = "Not mentioned"                                 
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP072X                                                       
    01 - 84         = "1-84 Years"                                    
    85              = "85+ years"                                     
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't Know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP102X                                                       
    1               = "Yes"                                           
    2               = "No"                                            
    3               = "Borderline"                                    
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP114X                                                       
    01 - 52         = "1-52 Units"                                    
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP115X                                                       
    1               = "Week(s)"                                       
    2               = "Month(s)"                                      
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP116X                                                       
    00              = "Less than 1 month"                             
    01 - 12         = "1-12 months"                                   
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP143X                                                       
    1               = "Good"                                          
    2               = "Little trouble"                                
    3               = "Lot of trouble"                                
    4               = "Deaf"                                          
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP148X                                                       
    1               = "ALL of the time"                               
    2               = "MOST of the time"                              
    3               = "SOME of the time"                              
    4               = "A LITTLE of the time"                          
    5               = "NONE of the time"                              
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP154X                                                       
    1               = "A lot"                                         
    2               = "Some"                                          
    3               = "A little"                                      
    4               = "Not at all"                                    
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
                                                                      
  VALUE ADP155X                                                       
    0               = "Had job last week"                             
    1               = "No job last week, had job past 12 m"           
    2               = "No job last week, no job past 12 m"            
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP156X                                                       
    000             = "None"                                          
    001 - 366       = "1-366 days"                                    
    997             = "Refused"                                       
    998             = "Not ascertained"                               
    999             = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP157X                                                       
    000             = "None"                                          
    001 - 366       = "1-366 days"                                    
    997             = "Refused"                                       
    998             = "Not ascertained"                               
    999             = "Don't know"                                    
   ;                                                                  
  VALUE ADP158X                                                       
    1               = "Better"                                        
    2               = "Worse"                                         
    3               = "About the same"                                
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP160X                                                       
    0               = "Not at all difficult"                          
    1               = "Only a little difficult"                       
    2               = "Somewhat difficult"                            
    3               = "Very difficult"                                
    4               = "Can't do at all"                               
    6               = "Do not do this activity"                       
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP172X                                                       
    1               = "Limited in any way"                            
    2               = "Not limited in any way"                        
    3               = "Unknown if limited"                            
   ;                                                                  
  VALUE ADP173X                                                       
    1               = "Mentioned"                                     
    2               = "Not mentioned"                                 
    6               = "No condition at all"                           
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP174X                                                       
    01 - 94         = "01-94"                                         
    95              = "95+"                                           
    96              = "Since birth"                                   
    97              = "Refused *"                                     
    98              = "Not ascertained"                               
    99              = "Don't know *"                                  
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP175X                                                       
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
  VALUE ADP176X                                                       
    00              = "Less than 1 year"                              
    01 - 84         = "01-84 years"                                   
    85 - 96         = "85+ years"                                     
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP177X                                                       
    01              = "Less than 3 months"                            
    02              = "3 - 5 months"                                  
    03              = "6 - 12 months"                                 
    04              = "More than 1 year"                              
    10              = "Unknown number of days"                        
    11              = "Unknown number of weeks"                       
    12              = "Unknown number of months"                      
    13              = "Unknown number of years"                       
    99              = "Unknown time with cond/impairment"             
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP234X                                                       
    01 - 94         = "1-94"                                          
    95              = "95+"                                           
    96              = "Since birth"                                   
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP329X                                                       
    01 - 94         = "01-94"                                         
    95              = "95+"                                           
    96              = "Since birth **"                                
    97              = "Refused *"                                     
    98              = "Not ascertained"                               
    99              = "Don't know *"                                  
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP330X                                                       
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
  VALUE ADP353X                                                       
    1               = "Chronic"                                       
    2               = "Not chronic"                                   
    9               = "Unknown if chronic"                            
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP389X                                                       
    1               = "At least one chronic cond causes functl lim"   
    2               = "No chronic condition causes functl lim"        
    9               = "Unknown if any chronic cond causes functl lim" 
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP390X                                                       
    0               = "Not limited in any way (incl unk if limited)"  
    1               = "Limited; caused by at least one chronic cond"  
    2               = "Limited; not caused by chronic cond"           
    3               = "Limited; unk if cond causing LA is chronic"    
   ;                                                                  
  VALUE ADP392X                                                       
    06 - 84         = "6-84  years"                                   
    85              = "85 years or older"                             
    96              = "Never smoked regularly"                        
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP393X                                                       
    1               = "Every day"                                     
    2               = "Some days"                                     
    3               = "Not at all"                                    
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP394X                                                       
    01 - 94         = "01-94"                                         
    95              = "95+"                                           
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP395X                                                       
    1               = "Days"                                          
    2               = "Weeks"                                         
    3               = "Months"                                        
    4               = "Years"                                         
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP396X                                                       
    00              = "Less than 1 year"                              
    01 - 69         = "1-69 years"                                    
    70              = "70+ years"                                     
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP398X                                                       
    01 - 94         = "1-94 cigarettes"                               
    95              = "95+ cigarettes"                                
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't Know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP399X                                                       
    00              = "None"                                          
    01 - 30         = "1-30 days"                                     
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP402X                                                       
    1               = "Current"                                       
    2               = "Former"                                        
    3               = "Never"                                         
    4               = "Smoker, current status unknown"                
    9               = "Unknown if ever smoked"                        
   ;                                                                  
  VALUE ADP403X                                                       
    1               = "Current every day smoker"                      
    2               = "Current some day smoker"                       
    3               = "Former smoker"                                 
    4               = "Never  smoker"                                 
    5               = "Smoker, current status unknown"                
    9               = "Unknown if ever smoked"                        
   ;                                                                  
  VALUE ADP404X                                                       
    1               = "Current  every day smoker"                     
    2               = "Current some day smoker (1+ days past mo)"     
    3               = "Current some day smoker (0 days past mo)"      
    4               = "Current some day smoker (unknown days past mo)"
    5               = "Former smoker"                                 
    6               = "Never smoker"                                  
    7               = "Smoker, current status unknown"                
    9               = "Unknown if ever smoked"                        
   ;                                                                  
  VALUE ADP406X                                                       
    000             = "Never"                                         
    001 - 995       = "1-995 times per"                               
    996             = "Unable to do this type activity"               
    997             = "Refused"                                       
    998             = "Not ascertained"                               
    999             = "Don't know"                                    
   ;                                                                  
  VALUE ADP407X                                                       
    0               = "Never"                                         
    1               = "Day"                                           
    2               = "Week"                                          
    3               = "Month"                                         
    4               = "Year"                                          
    6               = "Unable to do this activity"                    
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP408X                                                       
    00              = "Less than once per week"                       
    01 - 28         = "1-28 times per week"                           
    95              = "Never"                                         
    96              = "Unable to do vig activity"                     
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
   ;                                                                  
  VALUE ADP409X                                                       
    001 - 720       = "1-720 (minutes/hours)"                         
    997             = "Refused"                                       
    998             = "Not ascertained"                               
    999             = "Don't know"                                    
    .               = "<Blank: Not in universe>"                      
   ;                                                                  
  VALUE ADP410X                                                       
    1               = "Minutes"                                       
    2               = "Hours"                                         
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank: Not in universe>"                      
   ;                                                                  
  VALUE ADP411X                                                       
    010 - 720       = "10-720 minutes"                                
    997             = "Refused"                                       
    998             = "Not ascertained"                               
    999             = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP412X                                                       
    1               = "Less than 20 minutes"                          
    2               = "20 minutes or more"                            
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank: Not in universe>"                      
   ;                                                                  
  VALUE ADP413X                                                       
    000             = "Never"                                         
    001 - 995       = "1-995 times"                                   
    996             = "Unable to do this type activity"               
    997             = "Refused"                                       
    998             = "Not ascertained"                               
    999             = "Don't know"                                    
   ;                                                                  
  VALUE ADP415X                                                       
    00              = "Less than once per week"                       
    01 - 28         = "1-28 times per week"                           
    95              = "Never"                                         
    96              = "Unable to do moderate activity"                
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
   ;                                                                  
  VALUE ADP422X                                                       
    00              = "Less than once per week"                       
    01 - 28         = "1-28 times per week"                           
    95              = "Never"                                         
    96              = "Unable to do strength activity"                
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
   ;                                                                  
  VALUE ADP425X                                                       
    000             = "Never"                                         
    001 - 365       = "1-365 days per"                                
    997             = "Refused"                                       
    998             = "Not ascertained"                               
    999             = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP426X                                                       
    0               = "Never/None"                                    
    1               = "Week"                                          
    2               = "Month"                                         
    3               = "Year"                                          
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP427X                                                       
    00              = "Less than once a month"                        
    01 - 30         = "1-30 days per month"                           
    95              = "Did not drink in past year"                    
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP428X                                                       
    00              = "Less than one day per week"                    
    01 - 07         = "1-7 days per week"                             
    95              = "Did not drink in past year"                    
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP429X                                                       
    000 - 365       = "0-365 days"                                    
    997             = "Refused"                                       
    998             = "Not ascertained"                               
    999             = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP430X                                                       
    01 - 94         = "1-94 drinks"                                   
    95              = "95+ drinks"                                    
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP431X                                                       
    000             = "Never/None"                                    
    001 - 365       = "1-365 days per"                                
    997             = "Refused"                                       
    998             = "Not ascertained"                               
    999             = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP433X                                                       
    000             = "Never/None"                                    
    001 - 365       = "1-365 days"                                    
    997             = "Refused"                                       
    998             = "Not ascertained"                               
    999             = "Don't know"                                    
    .               = "<Blank: Not in Universe>"                      
   ;                                                                  
  VALUE ADP434X                                                       
    1               = "Lifetime abstainer [<12 drinks in lifetime]"   
    2               = "Former drinker [No drinks in past year]"       
    3               = "Current drinker [1+ drinks in past year]"      
    9               = "Drinking status unknown"                       
   ;                                                                  
  VALUE ADP435X                                                       
    59 - 76         = "59-76 inches"                                  
    96              = "Not available"                                 
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
   ;                                                                  
  VALUE ADP436X                                                       
    099 - 285       = "99-285 pounds"                                 
    996             = "Not available"                                 
    997             = "Refused"                                       
    998             = "Not ascertained"                               
    999             = "Don't know"                                    
   ;                                                                  
  VALUE ADP437X                                                       
    1               = "10% or more below desirable weight"            
    2               = "5-9% below desirable weight"                   
    3               = "4.9% (+/-) of desirable body weight"           
    4               = "5-9.9% above desirable body weight"            
    5               = "10-19.9% above desirable body weight"          
    6               = "20-29.9 % above desirable body weight"         
    7               = "30% + above desirable body weight"             
    9               = "Unknown"                                       
   ;                                                                  
  VALUE ADP438X                                                       
    00.01 - 99.94   = "00.01-99.94"                                   
    99.95           = "99.95+"                                        
    99.99           = "Unknown"                                       
   ;                                                                  
                                                                      
  VALUE ADP439X                                                       
    1               = "Yes"                                           
    2               = "There is NO place"                             
    3               = "There is MORE THAN ONE place"                  
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP440X                                                       
    1               = "Clinic or health center"                       
    2               = "Doctor's office or HMO"                        
    3               = "Hospital emergency room"                       
    4               = "Hospital outpatient department"                
    5               = "Some other place"                              
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP441X                                                       
    1               = "Yes"                                           
    2               = "No"                                            
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "< Blank.  Not in universe>"                    
   ;                                                                  
  VALUE ADP442X                                                       
    0               = "Doesn't get preventive care anywhere"          
    1               = "Clinic or health center"                       
    2               = "Doctor's office or HMO"                        
    3               = "Hospital emergency room"                       
    4               = "Hospital outpatient department"                
    5               = "Some other place"                              
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP443X                                                       
    01              = "Same sorc sk care & rout care"                 
    02              = "Sorc sk care, no sorc rout care"               
    03              = "Sorc sk & rout care, no/unk same sorc"         
    04              = "Sorc sk care, unk sorc rout care"              
    05              = "GE2 sorc sk care, 1 is sorc rout care"         
    06              = "GE2 sorc sk care, no sorc rout care"           
    07              = "GE2 sorc sk & rout care, no/unk if same"       
    08              = "GE2 sorc sk care, unk sorc rout care"          
    09              = "No sorc sk care or rout care"                  
    10              = "No sorc sk care, has sorc rout care"           
    11              = "No sorc sk care, unk sorc rout care"           
    12              = "Unk sorc sk care, no sorc rout care"           
    13              = "Unk sorc sk care, has sorc rout care"          
    14              = "Unk sorc sk care or sorc rout care"            
    99              = "Unknown other"                                 
   ;                                                                  
  VALUE ADP445X                                                       
    1               = "Yes"                                           
    2               = "No"                                            
    7               = "Refused"                                       
    9               = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP454X                                                       
    1               = "6 Months or less"                              
    2               = "More than 6 mos, but not more than 1 yr ago"   
    3               = "More than 1 yr, but not more than 3 yrs ago"   
    4               = "More than 3 years"                             
    5               = "Never"                                         
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP465X                                                       
    0               = "None"                                          
    1               = "1"                                             
    2               = "2-3"                                           
    3               = "4-9"                                           
    4               = "10-12"                                         
    5               = "13 or more"                                    
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP467X                                                       
    01 - 12         = "01-12 months"                                  
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP468X                                                       
    1               = "1"                                             
    2               = "2-3"                                           
    3               = "4-9"                                           
    4               = "10-12"                                         
    5               = "13 or more"                                    
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP471X                                                       
    01 - 94         = "1-94 Times"                                    
    95              = "95+ Times"                                     
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP479X                                                       
    1               = "Employee of a PRIVATE company for wages"       
    2               = "A FEDERAL government employee"                 
    3               = "A STATE government employee"                   
    4               = "A LOCAL government employee"                   
    5               = "Self-emp in OWN business/prof practice/farm"   
    6               = "Working WITHOUT PAY in fam business/farm"      
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "< Blank:  Not in universe>"                    
   ;                                                                  
  VALUE ADP480X                                                       
    01              = "1-9 employees"                                 
    02              = "10-24 employees"                               
    03              = "25-49 employees"                               
    04              = "50-99 employees"                               
    05              = "100-249 employees"                             
    06              = "250-499 employees"                             
    07              = "500-999 employees"                             
    08              = "1000 employees or more"                        
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP482X                                                       
    00              = "Less than 1 year"                              
    01 - 34         = "01-34 years"                                   
    35              = "35 or more years"                              
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP483X                                                       
    1               = "One year or less"                              
    2               = "More than one year"                            
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP487X                                                       
    1               = "Employee only"                                 
    2               = "Self-employed only"                            
    3               = "Both"                                          
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP516X                                                       
    01              = "AIDS clinic/counseling/testing site"           
    02              = "Community health clinic"                       
    03              = "Clinic run by employer"                        
    04              = "STD clinic"                                    
    05              = "Family planning"                               
    06              = "Prenatal clinic"                               
    07              = "Other clinic"                                  
    08              = "Doctor/HMO"                                    
    09              = "Hospital/emergency room/outpatient clinic"     
    10              = "Military induction/separation/military site"   
    11              = "Immigration site"                              
    12              = "At home/home visits by nurse/health worker"    
    13              = "At home - self testing kit"                    
    14              = "Other location - specify"                      
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP517X                                                       
    1               = "Yes"                                           
    2               = "No"                                            
    3               = "Only notified if there was a problem"          
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP519X                                                       
    1               = "In person"                                     
    2               = "By telephone"                                  
    3               = "By mail"                                       
    4               = "In some other way"                             
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP533X                                                       
    01              = "AIDS clinic/counseling/testing site"           
    02              = "Community health clinic"                       
    03              = "Clinic run by employer"                        
    04              = "STD clinic"                                    
    05              = "Family planning"                               
    06              = "Prenatal clinic"                               
    07              = "Other clinic"                                  
    08              = "Doctor/HMO"                                    
    09              = "Hospital/emergency room/outpatient clinic"     
    10              = "Military induction/separation/military site"   
    11              = "Red cross/blood bank/blood drive"              
    12              = "At home/home visit by nurse/hlth practitioner" 
    13              = "At home - self testing kit"                    
    14              = "Other location - specify"                      
    97              = "Refused"                                       
    98              = "Not ascertained"                               
    99              = "Don't know"                                    
    .               = "<Blank:  Not in Universe>"                     
   ;                                                                  
  VALUE ADP534X                                                       
    1               = "High/Already have AIDS/AIDS virus"             
    2               = "Medium"                                        
    3               = "Low"                                           
    4               = "None"                                          
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
  VALUE ADP535X                                                       
    1               = "Yes to at least one statement"                 
    2               = "No to all statements"                          
    7               = "Refused"                                       
    8               = "Not ascertained"                               
    9               = "Don't know"                                    
   ;                                                                  
                                                                      
DATA NHIS.SAMADULT_1998;                                                   
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1998\';                 
   INFILE 'C:\DATA\NHIS\1998\da3107sa.sas' MISSOVER TRUNCOVER LRECL=763;    
                                                                      
   * DEFINE LENGTH OF ALL VARIABLES;                                  
                                                                      
   LENGTH                                                             
      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2       
      PX       $ 2   INTV_QRT   3   SEX        3   AGE_P      3       
      ORIGIN     3   HISPAN_P   3   MRACE_P    3   RACEREC    3       
      RACE       3   HISPCODE   3   EDUC       3   AB_BL20K   3       
      RAT_CAT    3   R_MARITL   3   FM_SIZE    3   REGION     3       
      MSASIZEP   3   WTIA_SA    8   WTFA_SA    8   STRATUM    4       
      PSU        3   DUMMY_AP   3                                     
                                                                      
      HYPEV      3   HYPDIFV    3   CHDEV      3   ANGEV      3       
      MIEV       3   HRTEV      3   STREV      3   EPHEV      3       
      AASMEV     3   AASMYR     3   AASMERYR   3   ULCEV      3       
      ULCYR      3   CANEV      3   CNKIND1    3   CNKIND2    3       
      CNKIND3    3   CNKIND4    3   CNKIND5    3   CNKIND6    3       
      CNKIND7    3   CNKIND8    3   CNKIND9    3   CNKIND10   3       
      CNKIND11   3   CNKIND12   3   CNKIND13   3   CNKIND14   3       
      CNKIND15   3   CNKIND16   3   CNKIND17   3   CNKIND18   3       
      CNKIND19   3   CNKIND20   3   CNKIND21   3   CNKIND22   3       
      CNKIND23   3   CNKIND24   3   CNKIND25   3   CNKIND26   3       
      CNKIND27   3   CNKIND28   3   CNKIND29   3   CNKIND30   3       
      CNKIND31   3   CANAGE1    3   CANAGE2    3   CANAGE3    3       
      CANAGE4    3   CANAGE5    3   CANAGE6    3   CANAGE7    3       
      CANAGE8    3   CANAGE9    3   CANAGE10   3   CANAGE11   3       
      CANAGE12   3   CANAGE13   3   CANAGE14   3   CANAGE15   3       
      CANAGE16   3   CANAGE17   3   CANAGE18   3   CANAGE19   3       
      CANAGE20   3   CANAGE21   3   CANAGE22   3   CANAGE23   3       
      CANAGE24   3   CANAGE25   3   CANAGE26   3   CANAGE27   3       
      CANAGE28   3   CANAGE29   3   CANAGE30   3   DIBEV      3       
      DIBAGE     3   INSLN      3   DIBPILL    3   AHAYFYR    3       
      SINYR      3   CBRCHYR    3   KIDWKYR    3   LIVYR      3       
      JNTYR      3   JNTMO      3   JNTIJ      3   JNTIJLN    3       
      JNTIJLT    3   JNTIJLM    3   JNTYR1     3   JNTYR2     3       
      JNTYR3     3   JNTYR4     3   JNTYR5     3   JNTYR6     3       
      JNTYR7     3   JNTYR8     3   JNTYR9     3   JNTYR10    3       
      JNTYR11    3   JNTYR12    3   JNTYR13    3   JNTYR14    3       
      JNTYR15    3   JNTYR16    3   JNTYR17    3   PAINECK    3       
      PAINLB     3   PAINLEG    3   PAINFACE   3   AMIGR      3       
      ACOLD2W    3   AINTIL2W   3   PREGNOW    3   HEARAID    3       
      AHEARST    3   AVISION    3   ABLIND     3   UPPERT     3       
      LOWERT     3   SAD        3   NERVOUS    3   RESTLESS   3       
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
      AHEIGHT    3   AWEIGHTP   4   DESIREWT   3   BMI        8       
                                                                      
      AUSUALPL   3   APLKIND    3   AHCPLROU   3   AHCPLKND   3       
      SOURCELA   3   AHCCHGYR   3   AHCCHGHI   3   AHCDLYR1   3       
      AHCDLYR2   3   AHCDLYR3   3   AHCDLYR4   3   AHCDLYR5   3       
      AHCAFYR1   3   AHCAFYR2   3   AHCAFYR3   3   ADENLONG   3       
      AHCSYR1    3   AHCSYR2    3   AHCSYR3    3   AHCSYR4    3       
      AHCSYR5    3   AHCSYR6    3   AHCSYR7    3   AHCSYR8    3       
      AHCSYR9    3   AHCSYR10   3   AHERNOYR   3   AHCHYR     3       
      AHCHMOYR   3   AHCHNOYR   3   AHCNOYR    3   ASRGYR     3       
      ASRGNOYR   3   AMDLONG    3   SHTFLUYR   3   SHTPNUYR   3       
                                                                      
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
      ORIGIN       21 -  21    HISPAN_P     22 -  23                  
      MRACE_P      24 -  25    RACEREC      26 -  26                  
      RACE         27 -  27    HISPCODE     28 -  28                  
      EDUC         29 -  30    AB_BL20K     31 -  32                  
      RAT_CAT      33 -  34    R_MARITL     35 -  35                  
      FM_SIZE      36 -  37    REGION       38 -  38                  
      MSASIZEP     39 -  39    WTIA_SA      40 -  45 .1               
      WTFA_SA      46 -  51    STRATUM      52 -  54                  
      PSU          55 -  55    DUMMY_AP     56 -  56                  
                                                                      
      HYPEV        57 -  57    HYPDIFV      58 -  58                  
      CHDEV        59 -  59    ANGEV        60 -  60                  
      MIEV         61 -  61    HRTEV        62 -  62                  
      STREV        63 -  63    EPHEV        64 -  64                  
      AASMEV       65 -  65    AASMYR       66 -  66                  
      AASMERYR     67 -  67    ULCEV        68 -  68                  
      ULCYR        69 -  69    CANEV        70 -  70                  
      CNKIND1      71 -  71    CNKIND2      72 -  72                  
      CNKIND3      73 -  73    CNKIND4      74 -  74                  
      CNKIND5      75 -  75    CNKIND6      76 -  76                  
      CNKIND7      77 -  77    CNKIND8      78 -  78                  
      CNKIND9      79 -  79    CNKIND10     80 -  80                  
      CNKIND11     81 -  81    CNKIND12     82 -  82                  
      CNKIND13     83 -  83    CNKIND14     84 -  84                  
      CNKIND15     85 -  85    CNKIND16     86 -  86                  
      CNKIND17     87 -  87    CNKIND18     88 -  88                  
      CNKIND19     89 -  89    CNKIND20     90 -  90                  
      CNKIND21     91 -  91    CNKIND22     92 -  92                  
      CNKIND23     93 -  93    CNKIND24     94 -  94                  
      CNKIND25     95 -  95    CNKIND26     96 -  96                  
      CNKIND27     97 -  97    CNKIND28     98 -  98                  
      CNKIND29     99 -  99    CNKIND30    100 - 100                  
      CNKIND31    101 - 101    CANAGE1     102 - 103                  
      CANAGE2     104 - 105    CANAGE3     106 - 107                  
      CANAGE4     108 - 109    CANAGE5     110 - 111                  
      CANAGE6     112 - 113    CANAGE7     114 - 115                  
      CANAGE8     116 - 117    CANAGE9     118 - 119                  
      CANAGE10    120 - 121    CANAGE11    122 - 123                  
      CANAGE12    124 - 125    CANAGE13    126 - 127                  
      CANAGE14    128 - 129    CANAGE15    130 - 131                  
      CANAGE16    132 - 133    CANAGE17    134 - 135                  
      CANAGE18    136 - 137    CANAGE19    138 - 139                  
      CANAGE20    140 - 141    CANAGE21    142 - 143                  
      CANAGE22    144 - 145    CANAGE23    146 - 147                  
      CANAGE24    148 - 149    CANAGE25    150 - 151                  
      CANAGE26    152 - 153    CANAGE27    154 - 155                  
      CANAGE28    156 - 157    CANAGE29    158 - 159                  
      CANAGE30    160 - 161    DIBEV       162 - 162                  
      DIBAGE      163 - 164    INSLN       165 - 165                  
      DIBPILL     166 - 166    AHAYFYR     167 - 167                  
      SINYR       168 - 168    CBRCHYR     169 - 169                  
      KIDWKYR     170 - 170    LIVYR       171 - 171                  
      JNTYR       172 - 172    JNTMO       173 - 173                  
      JNTIJ       174 - 174    JNTIJLN     175 - 176                  
      JNTIJLT     177 - 177    JNTIJLM     178 - 179                  
      JNTYR1      180 - 180    JNTYR2      181 - 181                  
      JNTYR3      182 - 182    JNTYR4      183 - 183                  
      JNTYR5      184 - 184    JNTYR6      185 - 185                  
      JNTYR7      186 - 186    JNTYR8      187 - 187                  
      JNTYR9      188 - 188    JNTYR10     189 - 189                  
      JNTYR11     190 - 190    JNTYR12     191 - 191                  
      JNTYR13     192 - 192    JNTYR14     193 - 193                  
      JNTYR15     194 - 194    JNTYR16     195 - 195                  
      JNTYR17     196 - 196    PAINECK     197 - 197                  
      PAINLB      198 - 198    PAINLEG     199 - 199                  
      PAINFACE    200 - 200    AMIGR       201 - 201                  
      ACOLD2W     202 - 202    AINTIL2W    203 - 203                  
      PREGNOW     204 - 204    HEARAID     205 - 205                  
      AHEARST     206 - 206    AVISION     207 - 207                  
      ABLIND      208 - 208    UPPERT      209 - 209                  
      LOWERT      210 - 210    SAD         211 - 211                  
      NERVOUS     212 - 212    RESTLESS    213 - 213                  
      HOPELESS    214 - 214    EFFORT      215 - 215                  
      WORTHLS     216 - 216    MHAMTMO     217 - 217                  
                                                                      
      WRKLYR2     218 - 218    WKDAYR      219 - 221                  
      BEDDAYR     222 - 224    AHSTATYR    225 - 225                  
      SPECEQ      226 - 226    FLWALK      227 - 227                  
      FLCLIMB     228 - 228    FLSTAND     229 - 229                  
      FLSIT       230 - 230    FLSTOOP     231 - 231                  
      FLREACH     232 - 232    FLGRASP     233 - 233                  
      FLCARRY     234 - 234    FLPUSH      235 - 235                  
      FLSHOP      236 - 236    FLSOCL      237 - 237                  
      FLRELAX     238 - 238    FLA1AR      239 - 239                  
      AFLHCA1     240 - 240    ALHCLN1     241 - 242                  
      ALHCLT1     243 - 243    ALHCLY1     244 - 245                  
      ALANTR1     246 - 247    AFLHCA2     248 - 248                  
      ALHCLN2     249 - 250    ALHCLT2     251 - 251                  
      ALHCLY2     252 - 253    ALANTR2     254 - 255                  
      AFLHCA3     256 - 256    ALHCLN3     257 - 258                  
      ALHCLT3     259 - 259    ALHCLY3     260 - 261                  
      ALANTR3     262 - 263    AFLHCA4     264 - 264                  
      ALHCLN4     265 - 266    ALHCLT4     267 - 267                  
      ALHCLY4     268 - 269    ALANTR4     270 - 271                  
      AFLHCA5     272 - 272    ALHCLN5     273 - 274                  
      ALHCLT5     275 - 275    ALHCLY5     276 - 277                  
      ALANTR5     278 - 279    AFLHCA6     280 - 280                  
      ALHCLN6     281 - 282    ALHCLT6     283 - 283                  
      ALHCLY6     284 - 285    ALANTR6     286 - 287                  
      AFLHCA7     288 - 288    ALHCLN7     289 - 290                  
      ALHCLT7     291 - 291    ALHCLY7     292 - 293                  
      ALANTR7     294 - 295    AFLHCA8     296 - 296                  
      ALHCLN8     297 - 298    ALHCLT8     299 - 299                  
      ALHCLY8     300 - 301    ALANTR8     302 - 303                  
      AFLHCA9     304 - 304    ALHCLN9     305 - 306                  
      ALHCLT9     307 - 307    ALHCLY9     308 - 309                  
      ALANTR9     310 - 311    AFLHCA10    312 - 312                  
      ALHCLN10    313 - 314    ALHCLT10    315 - 315                  
      ALHCLY10    316 - 317    ALANTR10    318 - 319                  
      AFLHCA11    320 - 320    ALHCLN11    321 - 322                  
      ALHCLT11    323 - 323    ALHCLY11    324 - 325                  
      ALANTR11    326 - 327    AFLHCA12    328 - 328                  
      ALHCLN12    329 - 330    ALHCLT12    331 - 331                  
      ALHCLY12    332 - 333    ALANTR12    334 - 335                  
      AFLHCA13    336 - 336    ALHCLN13    337 - 338                  
      ALHCLT13    339 - 339    ALHCLY13    340 - 341                  
      ALANTR13    342 - 343    AFLHCA14    344 - 344                  
      ALHCLN14    345 - 346    ALHCLT14    347 - 347                  
      ALHCLY14    348 - 349    ALANTR14    350 - 351                  
      AFLHCA15    352 - 352    ALHCLN15    353 - 354                  
      ALHCLT15    355 - 355    ALHCLY15    356 - 357                  
      ALANTR15    358 - 359    AFLHCA16    360 - 360                  
      ALHCLN16    361 - 362    ALHCLT16    363 - 363                  
      ALHCLY16    364 - 365    ALANTR16    366 - 367                  
      AFLHCA17    368 - 368    ALHCLN17    369 - 370                  
      ALHCLT17    371 - 371    ALHCLY17    372 - 373                  
      ALANTR17    374 - 375    AFLHCA18    376 - 376                  
      ALHCLN18    377 - 378    ALHCLT18    379 - 379                  
      ALHCLY18    380 - 381    ALANTR18    382 - 383                  
      AFLHCA19    384 - 384    ALHCLN19    385 - 386                  
      ALHCLT19    387 - 387    ALHCLY19    388 - 389                  
      ALANTR19    390 - 391    AFLHCA20    392 - 392                  
      ALHCLN20    393 - 394    ALHCLT20    395 - 395                  
      ALHCLY20    396 - 397    ALANTR20    398 - 399                  
      AFLHCA21    400 - 400    ALHCLN21    401 - 402                  
      ALHCLT21    403 - 403    ALHCLY21    404 - 405                  
      ALANTR21    406 - 407    AFLHCA22    408 - 408                  
      ALHCLN22    409 - 410    ALHCLT22    411 - 411                  
      ALHCLY22    412 - 413    ALANTR22    414 - 415                  
      AFLHCA23    416 - 416    ALHCLN23    417 - 418                  
      ALHCLT23    419 - 419    ALHCLY23    420 - 421                  
      ALANTR23    422 - 423    AFLHCA24    424 - 424                  
      ALHCLN24    425 - 426    ALHCLT24    427 - 427                  
      ALHCLY24    428 - 429    ALANTR24    430 - 431                  
      AFLHCA25    432 - 432    ALHCLN25    433 - 434                  
      ALHCLT25    435 - 435    ALHCLY25    436 - 437                  
      ALANTR25    438 - 439    AFLHCA26    440 - 440                  
      ALHCLN26    441 - 442    ALHCLT26    443 - 443                  
      ALHCLY26    444 - 445    ALANTR26    446 - 447                  
      AFLHCA27    448 - 448    ALHCLN27    449 - 450                  
      ALHCLT27    451 - 451    ALHCLY27    452 - 453                  
      ALANTR27    454 - 455    AFLHCA28    456 - 456                  
      ALHCLN28    457 - 458    ALHCLT28    459 - 459                  
      ALHCLY28    460 - 461    ALANTR28    462 - 463                  
      AFLHCA29    464 - 464    ALHCLN29    465 - 466                  
      ALHCLT29    467 - 467    ALHCLY29    468 - 469                  
      ALANTR29    470 - 471    AFLHCA30    472 - 472                  
      ALHCLN30    473 - 474    ALHCLT30    475 - 475                  
      ALHCLY30    476 - 477    ALANTR30    478 - 479                  
      AFLHCA31    480 - 480    ALHCLN31    481 - 482                  
      ALHCLT31    483 - 483    ALHCLY31    484 - 485                  
      ALANTR31    486 - 487    AFLHCA32    488 - 488                  
      ALHCLN32    489 - 490    ALHCLT32    491 - 491                  
      ALHCLY32    492 - 493    ALANTR32    494 - 495                  
      AFLHCA33    496 - 496    ALHCLN33    497 - 498                  
      ALHCLT33    499 - 499    ALHCLY33    500 - 501                  
      ALANTR33    502 - 503    AFLHCA34    504 - 504                  
      ALHCLN34    505 - 506    ALHCLT34    507 - 507                  
      ALHCLY34    508 - 509    ALANTR34    510 - 511                  
      AFLHCA90    512 - 512    ALHCLN90    513 - 514                  
      ALHCLT90    515 - 515    ALHCLY90    516 - 517                  
      ALANTR90    518 - 519    AFLHCA91    520 - 520                  
      ALHCLN91    521 - 522    ALHCLT91    523 - 523                  
      ALHCLY91    524 - 525    ALANTR91    526 - 527                  
      ALCNDR1     528 - 528    ALCNDR2     529 - 529                  
      ALCNDR3     530 - 530    ALCNDR4     531 - 531                  
      ALCNDR5     532 - 532    ALCNDR6     533 - 533                  
      ALCNDR7     534 - 534    ALCNDR8     535 - 535                  
      ALCNDR9     536 - 536    ALCNDR10    537 - 537                  
      ALCNDR11    538 - 538    ALCNDR12    539 - 539                  
      ALCNDR13    540 - 540    ALCNDR14    541 - 541                  
      ALCNDR15    542 - 542    ALCNDR16    543 - 543                  
      ALCNDR17    544 - 544    ALCNDR18    545 - 545                  
      ALCNDR19    546 - 546    ALCNDR20    547 - 547                  
      ALCNDR21    548 - 548    ALCNDR22    549 - 549                  
      ALCNDR23    550 - 550    ALCNDR24    551 - 551                  
      ALCNDR25    552 - 552    ALCNDR26    553 - 553                  
      ALCNDR27    554 - 554    ALCNDR28    555 - 555                  
      ALCNDR29    556 - 556    ALCNDR30    557 - 557                  
      ALCNDR31    558 - 558    ALCNDR32    559 - 559                  
      ALCNDR33    560 - 560    ALCNDR34    561 - 561                  
      ALCNDR90    562 - 562    ALCNDR91    563 - 563                  
      ALCNDRT     564 - 564    ALCHRONR    565 - 565                  
                                                                      
      SMKEV       566 - 566    SMKREG      567 - 568                  
      SMKNOW      569 - 569    SMKQTNO     570 - 571                  
      SMKQTTP     572 - 572    SMKQTY      573 - 574                  
      SMKQTD      575 - 575    CIGSDA1     576 - 577                  
      CIGDAMO     578 - 579    CIGSDA2     580 - 581                  
      CIGSDAY     582 - 583    SMKSTAT1    584 - 584                  
      SMKSTAT2    585 - 585    SMKSTAT3    586 - 586                  
      CIGQTYR     587 - 587    VIGNO       588 - 590                  
      VIGTP       591 - 591    VIGFREQW    592 - 593                  
      VIGLNGNO    594 - 596    VIGLNGTP    597 - 597                  
      VIGMIN      598 - 600    VIGLONGD    601 - 601                  
      MODNO       602 - 604    MODTP       605 - 605                  
      MODFREQW    606 - 607    MODLNGNO    608 - 610                  
      MODLNGTP    611 - 611    MODMIN      612 - 614                  
      MODLONGD    615 - 615    STRNGNO     616 - 618                  
      STRNGTP     619 - 619    STRFREQW    620 - 621                  
      ALC1YR      622 - 622    ALCLIFE     623 - 623                  
      ALC12MNO    624 - 626    ALC12MTP    627 - 627                  
      ALC12MMO    628 - 629    ALC12MWK    630 - 631                  
      ALC12MYR    632 - 634    ALCAMT      635 - 636                  
      ALC5UPNO    637 - 639    ALC5UPTP    640 - 640                  
      ALC5UPYR    641 - 643    ALCSTAT1    644 - 644                  
      AHEIGHT     645 - 646    AWEIGHTP    647 - 649                  
      DESIREWT    650 - 650    BMI         651 - 654 .2               
                                                                      
      AUSUALPL    655 - 655    APLKIND     656 - 656                  
      AHCPLROU    657 - 657    AHCPLKND    658 - 658                  
      SOURCELA    659 - 660    AHCCHGYR    661 - 661                  
      AHCCHGHI    662 - 662    AHCDLYR1    663 - 663                  
      AHCDLYR2    664 - 664    AHCDLYR3    665 - 665                  
      AHCDLYR4    666 - 666    AHCDLYR5    667 - 667                  
      AHCAFYR1    668 - 668    AHCAFYR2    669 - 669                  
      AHCAFYR3    670 - 670    ADENLONG    671 - 671                  
      AHCSYR1     672 - 672    AHCSYR2     673 - 673                  
      AHCSYR3     674 - 674    AHCSYR4     675 - 675                  
      AHCSYR5     676 - 676    AHCSYR6     677 - 677                  
      AHCSYR7     678 - 678    AHCSYR8     679 - 679                  
      AHCSYR9     680 - 680    AHCSYR10    681 - 681                  
      AHERNOYR    682 - 682    AHCHYR      683 - 683                  
      AHCHMOYR    684 - 685    AHCHNOYR    686 - 686                  
      AHCNOYR     687 - 687    ASRGYR      688 - 688                  
      ASRGNOYR    689 - 690    AMDLONG     691 - 691                  
      SHTFLUYR    692 - 692    SHTPNUYR    693 - 693                  
                                                                      
      INDSTRY1    694 - 695    INDSTRY2    696 - 697                  
      OCCUP1      698 - 699    OCCUP2      700 - 701                  
      WRKCAT      702 - 702    LOCALLNO    703 - 704                  
      LOCPRTNO    705 - 706    YRSWRK_P    707 - 708                  
      WRKLONGD    709 - 709    HOURPD      710 - 710                  
      PDSICK      711 - 711    ONEJOB      712 - 712                  
      WRKCATOT    713 - 713    BUSINC      714 - 714                  
                                                                      
      BLDGV       715 - 715    BLDG12M     716 - 716                  
      AIDSTST     717 - 717    WHYTSU01    718 - 718                  
      WHYTSU02    719 - 719    WHYTSU03    720 - 720                  
      WHYTSU04    721 - 721    WHYTSU05    722 - 722                  
      WHYTSU06    723 - 723    WHYTSU07    724 - 724                  
      WHYTSU08    725 - 725    WHYTSU09    726 - 726                  
      WHYTSU10    727 - 727    TST12M      728 - 728                  
      REATOT01    729 - 729    REATOT02    730 - 730                  
      REATOT03    731 - 731    REATOT04    732 - 732                  
      REATOT05    733 - 733    REATOT06    734 - 734                  
      REATOT07    735 - 735    REATOT08    736 - 736                  
      REATOT09    737 - 737    REATOT10    738 - 738                  
      REATOT11    739 - 739    REATOT12    740 - 740                  
      REATOT13    741 - 741    LASTST      742 - 743                  
      ALTST       744 - 744    TALKHP      745 - 745                  
      RSGVN       746 - 746    EXTST12M    747 - 747                  
      WHY12U01    748 - 748    WHY12U02    749 - 749                  
      WHY12U03    750 - 750    WHY12U04    751 - 751                  
      WHY12U05    752 - 752    WHY12U06    753 - 753                  
      WHY12U07    754 - 754    WHY12U08    755 - 755                  
      WHY12U09    756 - 756    WHY12U10    757 - 757                  
      WHY12U11    758 - 758    WHY12U12    759 - 759                  
      WHERTST     760 - 761    CHNSADSP    762 - 762                  
      STMTRU      763 - 763;                                          
                                                                      
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
      HISPAN_P ="Hispanic subgroup detail"                            
      MRACE_P  ="Race coded to a single race group"                   
      RACEREC  ="Race Recode"                                         
      RACE     ="OMB groups w/multiple race"                          
      HISPCODE ="Combined race/ethnicity recode"                      
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
      DUMMY_AP ="Dummy Record Flag for Prevention Adult"              
                                                                      
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
      CNKIND2  ="What kind of cancer...blood"                         
      CNKIND3  ="What kind of cancer...bone"                          
      CNKIND4  ="What kind of cancer...brain"                         
      CNKIND5  ="What kind of cancer...breast"                        
      CNKIND6  ="What kind of cancer...cervix"                        
      CNKIND7  ="What kind of cancer...colon"                         
      CNKIND8  ="What kind of cancer...esophagus"                     
      CNKIND9  ="What kind of cancer...gallbladder"                   
      CNKIND10 ="What kind of cancer...kidney"                        
      CNKIND11 ="What kind of cancer...larynx-windpipe"               
      CNKIND12 ="What kind of cancer...leukemia"                      
      CNKIND13 ="What kind of cancer...liver"                         
      CNKIND14 ="What kind of cancer...lung"                          
      CNKIND15 ="What kind of cancer...lymphoma"                      
      CNKIND16 ="What kind of cancer...melanoma"                      
      CNKIND17 ="What kind of cancer...mouth/tongue/lip"              
      CNKIND18 ="What kind of cancer...ovarian"                       
      CNKIND19 ="What kind of cancer...pancreatic"                    
      CNKIND20 ="What kind of cancer...prostate"                      
      CNKIND21 ="What kind of cancer...rectum"                        
      CNKIND22 ="What kind of cancer..skin (non-melanoma)"            
      CNKIND23 ="What kind of cancer...skin (DK kind)"                
      CNKIND24 ="Type of cancer..soft tissue (muscle)"                
      CNKIND25 ="What kind of cancer...stomach"                       
      CNKIND26 ="What kind of cancer ... testicular"                  
      CNKIND27 ="What kind of cancer...throat-pharynx"                
      CNKIND28 ="What kind of cancer...thyroid"                       
      CNKIND29 ="What kind of cancer...uterine"                       
      CNKIND30 ="What kind of cancer...other"                         
      CNKIND31 ="What kind of cancer...more than 3 kinds"             
      CANAGE1  ="Age first diagnosed w/bladder cancer"                
      CANAGE2  ="Age first diagnosed w/cancer of blood"               
      CANAGE3  ="Age first diagnosed w/bone cancer"                   
      CANAGE4  ="Age first diagnosed w/ brain cancer"                 
      CANAGE5  ="Age first diagnosed w/breast cancer"                 
      CANAGE6  ="Age first diagnosed w/cervical cancer"               
      CANAGE7  ="Age first diagnosed w/colon cancer"                  
      CANAGE8  ="Age first diagnosed w/esophageal cancer"             
      CANAGE9  ="Age first diagnosed w/gallbladder cancer"            
      CANAGE10 ="Age first diagnosed w/kidney cancer"                 
      CANAGE11 ="Age first diag w/cancer: larynx-windpipe"            
      CANAGE12 ="Age first diagnosed w/leukemia"                      
      CANAGE13 ="Age first diagnosed w/liver cancer"                  
      CANAGE14 ="Age first diagnosed w/lung cancer"                   
      CANAGE15 ="Age first diagnosed w/lymphoma"                      
      CANAGE16 ="Age first diagnosed w/melanoma"                      
      CANAGE17 ="Age first diag w/mouth/tongue/lip cancer"            
      CANAGE18 ="Age first diagnosed w/ovarian cancer"                
      CANAGE19 ="Age first diagnosed w/pancreatic cancer"             
      CANAGE20 ="Age first diagnosed w/prostate cancer"               
      CANAGE21 ="Age first diagnosed w/cancer of rectum"              
      CANAGE22 ="Age first diag:skin cancer, non-melanoma"            
      CANAGE23 ="Age first diag w/skin cancer, DK kind"               
      CANAGE24 ="Age first diagnosed w/soft tissue cancer"            
      CANAGE25 ="Age first diagnosed w/stomach cancer"                
      CANAGE26 ="Age first diagnosed w/testicular cancer"             
      CANAGE27 ="Age first diag w/throat-pharynx cancer"              
      CANAGE28 ="Age first diagnosed w/thyroid cancer"                
      CANAGE29 ="Age first diagnosed w/uterine cancer"                
      CANAGE30 ="Age first diagnosed w/other cancer"                  
      DIBEV    ="Ever been told you had diabetes"                     
      DIBAGE   ="Age first diagnosed w/diabetes"                      
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
      UPPERT   ="Lost all of upper natural teeth"                     
      LOWERT   ="Lost all of lower natural teeth"                     
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
      AHEIGHT  ="Total height in inches"                              
      AWEIGHTP ="Weight w/o shoes (pounds)"                           
      DESIREWT ="Desirable Body Weight"                               
      BMI      ="Body Mass Index (BMI)"                               
                                                                      
      AUSUALPL ="Place USUALLY go when sick"                          
      APLKIND  ="Place to go when sick (most often)"                  
      AHCPLROU ="USUALLY go there for routine/prev care"              
      AHCPLKND ="Where do you go for routine prev care?"              
      SOURCELA ="Source of medical care recode"                       
      AHCCHGYR ="Change hlth care provider in past 12 m"              
      AHCCHGHI ="Change due to hlth insurance"                        
      AHCDLYR1 ="Couldn't get through on phone"                       
      AHCDLYR2 ="Couldn't get appt soon enough"                       
      AHCDLYR3 ="Wait too long in doctor's office"                    
      AHCDLYR4 ="Not open when you could go"                          
      AHCDLYR5 ="No transportation"                                   
      AHCAFYR1 ="Can't afford presc medicine"                         
      AHCAFYR2 ="Can't afford mental hlth care/counseling"            
      AHCAFYR3 ="Can't afford dental care"                            
      ADENLONG ="When did you last see/talk to dentist?"              
      AHCSYR1  ="Talk to mental hlth prof?"                           
      AHCSYR2  ="Talk to eye doctor?"                                 
      AHCSYR3  ="Talk to foot doctor?"                                
      AHCSYR4  ="Talk to a chiropractor?"                             
      AHCSYR5  ="Talk to therapist (PT, OT, RT etc)?"                 
      AHCSYR6  ="Talk to a RN/PA/midwife?"                            
      AHCSYR7  ="Spoke/seen OB/GYN past 12 m?"                        
      AHCSYR8  ="Past 12 m, seen a med specialist"                    
      AHCSYR9  ="Past 12 m, seen a general doctor"                    
      AHCSYR10 ="Does that Dr treat both kids and adults"             
      AHERNOYR ="# times in ER/ED past 12 m"                          
      AHCHYR   ="Past 12 m get home care from hlth prof"              
      AHCHMOYR ="How many months of home care?"                       
      AHCHNOYR ="Total number of home visits"                         
      AHCNOYR  ="Total number of office visits"                       
      ASRGYR   ="Had surgery in the past 12 m"                        
      ASRGNOYR ="Total # of surgeries in the past 12 m"               
      AMDLONG  ="Last time you saw/spoke to hlth prof"                
      SHTFLUYR ="Had flu shot past 12 m"                              
      SHTPNUYR ="Ever had pneumonia vaccination"                      
                                                                      
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
      AIDSTST  ="Blood tested for AIDS virus infection"               
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
      TST12M   ="Blood test in past 12 m"                             
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
      LASTST   ="Location of last AIDS blood test"                    
      ALTST    ="Get results of last blood test"                      
      TALKHP   ="Hlth prof talk to you about AIDS"                    
      RSGVN    ="Given results by person/phone/mail/otr"              
      EXTST12M ="Blood test in the next 12 m"                         
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
      WHERTST  ="Location for AIDS blood test"                        
      CHNSADSP ="Chances of getting AIDS virus"                       
      STMTRU   ="Are any of these statements true"                    
   ;                                                                  
                                                                      
   * ASSOCIATE VARIABLES WITH FORMAT VALUES;                          
                                                                      
   FORMAT                                                             
      RECTYPE  ADP001X.    SRVY_YR  ADP002X.    FMX      $ADP004X.    
      PX       $ADP005X.   INTV_QRT ADP006X.    SEX      ADP007X.     
      AGE_P    ADP008X.    ORIGIN   ADP009X.    HISPAN_P ADP010X.     
      MRACE_P  ADP011X.    RACEREC  ADP012X.    RACE     ADP013X.     
      HISPCODE ADP014X.    EDUC     ADP015X.    AB_BL20K ADP016X.     
      RAT_CAT  ADP017X.    R_MARITL ADP018X.    FM_SIZE  ADP019X.     
      REGION   ADP020X.    MSASIZEP ADP021X.    DUMMY_AP ADP026X.     
                                                                      
      HYPEV    ADP009X.    HYPDIFV  ADP028X.    CHDEV    ADP009X.     
      ANGEV    ADP009X.    MIEV     ADP009X.    HRTEV    ADP009X.     
      STREV    ADP009X.    EPHEV    ADP009X.    AASMEV   ADP009X.     
      AASMYR   ADP028X.    AASMERYR ADP028X.    ULCEV    ADP009X.     
      ULCYR    ADP028X.    CANEV    ADP009X.    CNKIND1  ADP041X.     
      CNKIND2  ADP041X.    CNKIND3  ADP041X.    CNKIND4  ADP041X.     
      CNKIND5  ADP041X.    CNKIND6  ADP041X.    CNKIND7  ADP041X.     
      CNKIND8  ADP041X.    CNKIND9  ADP041X.    CNKIND10 ADP041X.     
      CNKIND11 ADP041X.    CNKIND12 ADP041X.    CNKIND13 ADP041X.     
      CNKIND14 ADP041X.    CNKIND15 ADP041X.    CNKIND16 ADP041X.     
      CNKIND17 ADP041X.    CNKIND18 ADP041X.    CNKIND19 ADP041X.     
      CNKIND20 ADP041X.    CNKIND21 ADP041X.    CNKIND22 ADP041X.     
      CNKIND23 ADP041X.    CNKIND24 ADP041X.    CNKIND25 ADP041X.     
      CNKIND26 ADP041X.    CNKIND27 ADP041X.    CNKIND28 ADP041X.     
      CNKIND29 ADP041X.    CNKIND30 ADP041X.    CNKIND31 ADP041X.     
      CANAGE1  ADP072X.    CANAGE2  ADP072X.    CANAGE3  ADP072X.     
      CANAGE4  ADP072X.    CANAGE5  ADP072X.    CANAGE6  ADP072X.     
      CANAGE7  ADP072X.    CANAGE8  ADP072X.    CANAGE9  ADP072X.     
      CANAGE10 ADP072X.    CANAGE11 ADP072X.    CANAGE12 ADP072X.     
      CANAGE13 ADP072X.    CANAGE14 ADP072X.    CANAGE15 ADP072X.     
      CANAGE16 ADP072X.    CANAGE17 ADP072X.    CANAGE18 ADP072X.     
      CANAGE19 ADP072X.    CANAGE20 ADP072X.    CANAGE21 ADP072X.     
      CANAGE22 ADP072X.    CANAGE23 ADP072X.    CANAGE24 ADP072X.     
      CANAGE25 ADP072X.    CANAGE26 ADP072X.    CANAGE27 ADP072X.     
      CANAGE28 ADP072X.    CANAGE29 ADP072X.    CANAGE30 ADP072X.     
      DIBEV    ADP102X.    DIBAGE   ADP072X.    INSLN    ADP028X.     
      DIBPILL  ADP028X.    AHAYFYR  ADP009X.    SINYR    ADP009X.     
      CBRCHYR  ADP009X.    KIDWKYR  ADP009X.    LIVYR    ADP009X.     
      JNTYR    ADP009X.    JNTMO    ADP028X.    JNTIJ    ADP028X.     
      JNTIJLN  ADP114X.    JNTIJLT  ADP115X.    JNTIJLM  ADP116X.     
      JNTYR1   ADP041X.    JNTYR2   ADP041X.    JNTYR3   ADP041X.     
      JNTYR4   ADP041X.    JNTYR5   ADP041X.    JNTYR6   ADP041X.     
      JNTYR7   ADP041X.    JNTYR8   ADP041X.    JNTYR9   ADP041X.     
      JNTYR10  ADP041X.    JNTYR11  ADP041X.    JNTYR12  ADP041X.     
      JNTYR13  ADP041X.    JNTYR14  ADP041X.    JNTYR15  ADP041X.     
      JNTYR16  ADP041X.    JNTYR17  ADP041X.    PAINECK  ADP009X.     
      PAINLB   ADP009X.    PAINLEG  ADP028X.    PAINFACE ADP009X.     
      AMIGR    ADP009X.    ACOLD2W  ADP009X.    AINTIL2W ADP009X.     
      PREGNOW  ADP028X.    HEARAID  ADP009X.    AHEARST  ADP143X.     
      AVISION  ADP009X.    ABLIND   ADP028X.    UPPERT   ADP009X.     
      LOWERT   ADP009X.    SAD      ADP148X.    NERVOUS  ADP148X.     
      RESTLESS ADP148X.    HOPELESS ADP148X.    EFFORT   ADP148X.     
      WORTHLS  ADP148X.    MHAMTMO  ADP154X.                          
                                                                      
      WRKLYR2  ADP155X.    WKDAYR   ADP156X.    BEDDAYR  ADP157X.     
      AHSTATYR ADP158X.    SPECEQ   ADP009X.    FLWALK   ADP160X.     
      FLCLIMB  ADP160X.    FLSTAND  ADP160X.    FLSIT    ADP160X.     
      FLSTOOP  ADP160X.    FLREACH  ADP160X.    FLGRASP  ADP160X.     
      FLCARRY  ADP160X.    FLPUSH   ADP160X.    FLSHOP   ADP160X.     
      FLSOCL   ADP160X.    FLRELAX  ADP160X.    FLA1AR   ADP172X.     
      AFLHCA1  ADP173X.    ALHCLN1  ADP174X.    ALHCLT1  ADP175X.     
      ALHCLY1  ADP176X.    ALANTR1  ADP177X.    AFLHCA2  ADP173X.     
      ALHCLN2  ADP174X.    ALHCLT2  ADP175X.    ALHCLY2  ADP176X.     
      ALANTR2  ADP177X.    AFLHCA3  ADP173X.    ALHCLN3  ADP174X.     
      ALHCLT3  ADP175X.    ALHCLY3  ADP176X.    ALANTR3  ADP177X.     
      AFLHCA4  ADP173X.    ALHCLN4  ADP174X.    ALHCLT4  ADP175X.     
      ALHCLY4  ADP176X.    ALANTR4  ADP177X.    AFLHCA5  ADP173X.     
      ALHCLN5  ADP174X.    ALHCLT5  ADP175X.    ALHCLY5  ADP176X.     
      ALANTR5  ADP177X.    AFLHCA6  ADP173X.    ALHCLN6  ADP174X.     
      ALHCLT6  ADP175X.    ALHCLY6  ADP176X.    ALANTR6  ADP177X.     
      AFLHCA7  ADP173X.    ALHCLN7  ADP174X.    ALHCLT7  ADP175X.     
      ALHCLY7  ADP176X.    ALANTR7  ADP177X.    AFLHCA8  ADP173X.     
      ALHCLN8  ADP174X.    ALHCLT8  ADP175X.    ALHCLY8  ADP176X.     
      ALANTR8  ADP177X.    AFLHCA9  ADP173X.    ALHCLN9  ADP174X.     
      ALHCLT9  ADP175X.    ALHCLY9  ADP176X.    ALANTR9  ADP177X.     
      AFLHCA10 ADP173X.    ALHCLN10 ADP174X.    ALHCLT10 ADP175X.     
      ALHCLY10 ADP176X.    ALANTR10 ADP177X.    AFLHCA11 ADP173X.     
      ALHCLN11 ADP174X.    ALHCLT11 ADP175X.    ALHCLY11 ADP176X.     
      ALANTR11 ADP177X.    AFLHCA12 ADP173X.    ALHCLN12 ADP174X.     
      ALHCLT12 ADP175X.    ALHCLY12 ADP176X.    ALANTR12 ADP177X.     
      AFLHCA13 ADP173X.    ALHCLN13 ADP234X.    ALHCLT13 ADP175X.     
      ALHCLY13 ADP176X.    ALANTR13 ADP177X.    AFLHCA14 ADP173X.     
      ALHCLN14 ADP174X.    ALHCLT14 ADP175X.    ALHCLY14 ADP176X.     
      ALANTR14 ADP177X.    AFLHCA15 ADP173X.    ALHCLN15 ADP174X.     
      ALHCLT15 ADP175X.    ALHCLY15 ADP176X.    ALANTR15 ADP177X.     
      AFLHCA16 ADP173X.    ALHCLN16 ADP174X.    ALHCLT16 ADP175X.     
      ALHCLY16 ADP176X.    ALANTR16 ADP177X.    AFLHCA17 ADP173X.     
      ALHCLN17 ADP174X.    ALHCLT17 ADP175X.    ALHCLY17 ADP176X.     
      ALANTR17 ADP177X.    AFLHCA18 ADP173X.    ALHCLN18 ADP174X.     
      ALHCLT18 ADP175X.    ALHCLY18 ADP176X.    ALANTR18 ADP177X.     
      AFLHCA19 ADP173X.    ALHCLN19 ADP174X.    ALHCLT19 ADP175X.     
      ALHCLY19 ADP176X.    ALANTR19 ADP177X.    AFLHCA20 ADP173X.     
      ALHCLN20 ADP174X.    ALHCLT20 ADP175X.    ALHCLY20 ADP176X.     
      ALANTR20 ADP177X.    AFLHCA21 ADP173X.    ALHCLN21 ADP174X.     
      ALHCLT21 ADP175X.    ALHCLY21 ADP176X.    ALANTR21 ADP177X.     
      AFLHCA22 ADP173X.    ALHCLN22 ADP174X.    ALHCLT22 ADP175X.     
      ALHCLY22 ADP176X.    ALANTR22 ADP177X.    AFLHCA23 ADP173X.     
      ALHCLN23 ADP174X.    ALHCLT23 ADP175X.    ALHCLY23 ADP176X.     
      ALANTR23 ADP177X.    AFLHCA24 ADP173X.    ALHCLN24 ADP174X.     
      ALHCLT24 ADP175X.    ALHCLY24 ADP176X.    ALANTR24 ADP177X.     
      AFLHCA25 ADP173X.    ALHCLN25 ADP174X.    ALHCLT25 ADP175X.     
      ALHCLY25 ADP176X.    ALANTR25 ADP177X.    AFLHCA26 ADP173X.     
      ALHCLN26 ADP174X.    ALHCLT26 ADP175X.    ALHCLY26 ADP176X.     
      ALANTR26 ADP177X.    AFLHCA27 ADP173X.    ALHCLN27 ADP174X.     
      ALHCLT27 ADP175X.    ALHCLY27 ADP176X.    ALANTR27 ADP177X.     
      AFLHCA28 ADP173X.    ALHCLN28 ADP174X.    ALHCLT28 ADP175X.     
      ALHCLY28 ADP176X.    ALANTR28 ADP177X.    AFLHCA29 ADP173X.     
      ALHCLN29 ADP174X.    ALHCLT29 ADP175X.    ALHCLY29 ADP176X.     
      ALANTR29 ADP177X.    AFLHCA30 ADP173X.    ALHCLN30 ADP174X.     
      ALHCLT30 ADP175X.    ALHCLY30 ADP176X.    ALANTR30 ADP177X.     
      AFLHCA31 ADP173X.    ALHCLN31 ADP174X.    ALHCLT31 ADP175X.     
      ALHCLY31 ADP176X.    ALANTR31 ADP177X.    AFLHCA32 ADP173X.     
      ALHCLN32 ADP329X.    ALHCLT32 ADP330X.    ALHCLY32 ADP176X.     
      ALANTR32 ADP177X.    AFLHCA33 ADP173X.    ALHCLN33 ADP174X.     
      ALHCLT33 ADP175X.    ALHCLY33 ADP176X.    ALANTR33 ADP177X.     
      AFLHCA34 ADP173X.    ALHCLN34 ADP174X.    ALHCLT34 ADP175X.     
      ALHCLY34 ADP176X.    ALANTR34 ADP177X.    AFLHCA90 ADP173X.     
      ALHCLN90 ADP174X.    ALHCLT90 ADP175X.    ALHCLY90 ADP176X.     
      ALANTR90 ADP177X.    AFLHCA91 ADP173X.    ALHCLN91 ADP174X.     
      ALHCLT91 ADP175X.    ALHCLY91 ADP176X.    ALANTR91 ADP177X.     
      ALCNDR1  ADP353X.    ALCNDR2  ADP353X.    ALCNDR3  ADP353X.     
      ALCNDR4  ADP353X.    ALCNDR5  ADP353X.    ALCNDR6  ADP353X.     
      ALCNDR7  ADP353X.    ALCNDR8  ADP353X.    ALCNDR9  ADP353X.     
      ALCNDR10 ADP353X.    ALCNDR11 ADP353X.    ALCNDR12 ADP353X.     
      ALCNDR13 ADP353X.    ALCNDR14 ADP353X.    ALCNDR15 ADP353X.     
      ALCNDR16 ADP353X.    ALCNDR17 ADP353X.    ALCNDR18 ADP353X.     
      ALCNDR19 ADP353X.    ALCNDR20 ADP353X.    ALCNDR21 ADP353X.     
      ALCNDR22 ADP353X.    ALCNDR23 ADP353X.    ALCNDR24 ADP353X.     
      ALCNDR25 ADP353X.    ALCNDR26 ADP353X.    ALCNDR27 ADP353X.     
      ALCNDR28 ADP353X.    ALCNDR29 ADP353X.    ALCNDR30 ADP353X.     
      ALCNDR31 ADP353X.    ALCNDR32 ADP353X.    ALCNDR33 ADP353X.     
      ALCNDR34 ADP353X.    ALCNDR90 ADP353X.    ALCNDR91 ADP353X.     
      ALCNDRT  ADP389X.    ALCHRONR ADP390X.                          
                                                                      
      SMKEV    ADP009X.    SMKREG   ADP392X.    SMKNOW   ADP393X.     
      SMKQTNO  ADP394X.    SMKQTTP  ADP395X.    SMKQTY   ADP396X.     
      SMKQTD   ADP028X.    CIGSDA1  ADP398X.    CIGDAMO  ADP399X.     
      CIGSDA2  ADP398X.    CIGSDAY  ADP398X.    SMKSTAT1 ADP402X.     
      SMKSTAT2 ADP403X.    SMKSTAT3 ADP404X.    CIGQTYR  ADP028X.     
      VIGNO    ADP406X.    VIGTP    ADP407X.    VIGFREQW ADP408X.     
      VIGLNGNO ADP409X.    VIGLNGTP ADP410X.    VIGMIN   ADP411X.     
      VIGLONGD ADP412X.    MODNO    ADP413X.    MODTP    ADP407X.     
      MODFREQW ADP415X.    MODLNGNO ADP409X.    MODLNGTP ADP410X.     
      MODMIN   ADP411X.    MODLONGD ADP412X.    STRNGNO  ADP406X.     
      STRNGTP  ADP407X.    STRFREQW ADP422X.    ALC1YR   ADP009X.     
      ALCLIFE  ADP028X.    ALC12MNO ADP425X.    ALC12MTP ADP426X.     
      ALC12MMO ADP427X.    ALC12MWK ADP428X.    ALC12MYR ADP429X.     
      ALCAMT   ADP430X.    ALC5UPNO ADP431X.    ALC5UPTP ADP426X.     
      ALC5UPYR ADP433X.    ALCSTAT1 ADP434X.    AHEIGHT  ADP435X.     
      AWEIGHTP ADP436X.    DESIREWT ADP437X.    BMI      ADP438X.     
                                                                      
      AUSUALPL ADP439X.    APLKIND  ADP440X.    AHCPLROU ADP441X.     
      AHCPLKND ADP442X.    SOURCELA ADP443X.    AHCCHGYR ADP028X.     
      AHCCHGHI ADP445X.    AHCDLYR1 ADP009X.    AHCDLYR2 ADP009X.     
      AHCDLYR3 ADP009X.    AHCDLYR4 ADP009X.    AHCDLYR5 ADP009X.     
      AHCAFYR1 ADP009X.    AHCAFYR2 ADP009X.    AHCAFYR3 ADP009X.     
      ADENLONG ADP454X.    AHCSYR1  ADP009X.    AHCSYR2  ADP009X.     
      AHCSYR3  ADP009X.    AHCSYR4  ADP009X.    AHCSYR5  ADP009X.     
      AHCSYR6  ADP009X.    AHCSYR7  ADP028X.    AHCSYR8  ADP009X.     
      AHCSYR9  ADP009X.    AHCSYR10 ADP028X.    AHERNOYR ADP465X.     
      AHCHYR   ADP009X.    AHCHMOYR ADP467X.    AHCHNOYR ADP468X.     
      AHCNOYR  ADP465X.    ASRGYR   ADP009X.    ASRGNOYR ADP471X.     
      AMDLONG  ADP454X.    SHTFLUYR ADP009X.    SHTPNUYR ADP009X.     
                                                                      
      WRKCAT   ADP479X.    LOCALLNO ADP480X.    LOCPRTNO ADP480X.     
      YRSWRK_P ADP482X.    WRKLONGD ADP483X.    HOURPD   ADP028X.     
      PDSICK   ADP028X.    ONEJOB   ADP028X.    WRKCATOT ADP487X.     
      BUSINC   ADP028X.                                               
                                                                      
      BLDGV    ADP009X.    BLDG12M  ADP028X.    AIDSTST  ADP009X.     
      WHYTSU01 ADP041X.    WHYTSU02 ADP041X.    WHYTSU03 ADP041X.     
      WHYTSU04 ADP041X.    WHYTSU05 ADP041X.    WHYTSU06 ADP041X.     
      WHYTSU07 ADP041X.    WHYTSU08 ADP041X.    WHYTSU09 ADP041X.     
      WHYTSU10 ADP041X.    TST12M   ADP028X.    REATOT01 ADP041X.     
      REATOT02 ADP041X.    REATOT03 ADP041X.    REATOT04 ADP041X.     
      REATOT05 ADP041X.    REATOT06 ADP041X.    REATOT07 ADP041X.     
      REATOT08 ADP041X.    REATOT09 ADP041X.    REATOT10 ADP041X.     
      REATOT11 ADP041X.    REATOT12 ADP041X.    REATOT13 ADP041X.     
      LASTST   ADP516X.    ALTST    ADP517X.    TALKHP   ADP028X.     
      RSGVN    ADP519X.    EXTST12M ADP009X.    WHY12U01 ADP041X.     
      WHY12U02 ADP041X.    WHY12U03 ADP041X.    WHY12U04 ADP041X.     
      WHY12U05 ADP041X.    WHY12U06 ADP041X.    WHY12U07 ADP041X.     
      WHY12U08 ADP041X.    WHY12U09 ADP041X.    WHY12U10 ADP041X.     
      WHY12U11 ADP041X.    WHY12U12 ADP041X.    WHERTST  ADP533X.     
      CHNSADSP ADP534X.    STMTRU   ADP535X.;                         
                                                                      
PROC CONTENTS DATA=NHIS.SAMADULT_1998;                                     
                                                                      
PROC FREQ DATA=NHIS.SAMADULT_1998;                                         
   TITLE1 'FREQUENCY REPORT FOR 1998 NHIS SAMADULT FILE';             
   TITLE2 '(WEIGHTED)';                                               
   TABLES RACEREC * SEX/LIST MISSING;                                 
   WEIGHT WTFA_SA ;                                                   
                                                                      
PROC FREQ DATA=NHIS.SAMADULT_1998;                                         
   TITLE1 'FREQUENCY REPORT FOR 1998 NHIS SAMADULT FILE';             
   TITLE2 '(UNWEIGHTED)';                                             
   TABLES RACEREC * SEX/LIST MISSING;                                 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE         
        STATEMENT: FORMAT _ALL_;                                      
RUN;                                                                  
