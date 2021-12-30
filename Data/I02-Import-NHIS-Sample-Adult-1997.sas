                                                                       
                                                                       
                                                                       
**NOTE:  These data definition statements have been provided by NCHS.  
         Users will need to modify them to suit their specific needs.  
                                                                       
*********************************************************************  
 FEBRUARY 2, 2001 4:50 PM                                              
                                                                       
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS                
 FILE FROM THE NHIS 1997 SAMADULT.DAT ASCII FILE                       
                                                                       
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN               
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN                  
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT                    
       DOCUMENTATION                                                   
                                                                       
 THIS IS STORED IN SAMADULT.SAS                                        
*********************************************************************; 
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;         
                                                                       
LIBNAME NHIS    'C:\DATA\NHIS\';                                        
LIBNAME LIBRARY 'C:\DATA\NHIS\1997';                                        
                                                                       
* DEFINE VARIABLE VALUES FOR REPORTS;                                  
                                                                       
PROC FORMAT LIBRARY=LIBRARY;                                           
  VALUE ADP001X                                                        
    30              = "Sample Adult"                                   
   ;                                                                   
  VALUE ADP002X                                                        
    1997            = "1997"                                           
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
  VALUE ADP015X                                                        
    01              = "$20,000 or more"                                
    02              = "Less than $20,000"                              
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
   ;                                                                   
  VALUE ADP016X                                                        
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
    96              = "Undefineable"                                   
    99              = "Unknown"                                        
   ;                                                                   
  VALUE ADP017X                                                        
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
  VALUE ADP018X                                                        
    1               = "Northeast"                                      
    2               = "Midwest"                                        
    3               = "South"                                          
    4               = "West"                                           
   ;                                                                   
  VALUE ADP019X                                                        
    1               = "5,000,000 or more"                              
    2               = "2,500,000 - 4,999,999"                          
    3               = "1,000,000 - 2,499,999"                          
    4               = "500,000 - 999,999"                              
    5               = "250,000 - 499,999"                              
    6               = "Under 250,000"                                  
    7               = "Non-MSA"                                        
   ;                                                                   
  VALUE ADP025X                                                        
    1               = "Yes"                                            
    2               = "No"                                             
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP038X                                                        
    1               = "Mentioned"                                      
    2               = "Not mentioned"                                  
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP039X                                                        
    01 - 84         = "1-84 Years"                                     
    85              = "85+ years"                                      
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't Know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP099X                                                        
    1               = "Yes"                                            
    2               = "No"                                             
    3               = "Borderline"                                     
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
   ;                                                                   
  VALUE ADP111X                                                        
    01 - 52         = "1-52 Units"                                     
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP112X                                                        
    1               = "Week(s)"                                        
    2               = "Month(s)"                                       
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP113X                                                        
    00              = "Less than 1 month"                              
    01 - 12         = "1-12 months"                                    
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP138X                                                        
    1               = "Good"                                           
    2               = "Little trouble"                                 
    3               = "Lot of trouble"                                 
    4               = "Deaf"                                           
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
   ;                                                                   
  VALUE ADP143X                                                        
    1               = "ALL of the time"                                
    2               = "MOST of the time"                               
    3               = "SOME of the time"                               
    4               = "A LITTLE of the time"                           
    5               = "NONE of the time"                               
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
   ;                                                                   
  VALUE ADP149X                                                        
    1               = "A lot"                                          
    2               = "Some"                                           
    3               = "A little"                                       
    4               = "Not at all"                                     
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
                                                                       
  VALUE ADP150X                                                        
    0               = "Had job last week"                              
    1               = "No job last week, had job past 12 m"            
    2               = "No job last week, no job past 12 m"             
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
   ;                                                                   
  VALUE ADP151X                                                        
    000             = "None"                                           
    001 - 366       = "1-366 days"                                     
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP152X                                                        
    000             = "None"                                           
    001 - 366       = "1-366 days"                                     
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
   ;                                                                   
  VALUE ADP153X                                                        
    1               = "Better"                                         
    2               = "Worse"                                          
    3               = "About the same"                                 
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
   ;                                                                   
  VALUE ADP155X                                                        
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
  VALUE ADP167X                                                        
    1               = "Limited in any way"                             
    2               = "Not limited in any way (includes unk)"          
   ;                                                                   
  VALUE ADP168X                                                        
    1               = "Mentioned"                                      
    2               = "Not mentioned"                                  
    6               = "No condition at all"                            
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP169X                                                        
    01 - 94         = "01-94"                                          
    95              = "95+"                                            
    96              = "Since birth"                                    
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP170X                                                        
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
  VALUE ADP171X                                                        
    00              = "Less than 1 year"                               
    01 - 84         = "01-84 years"                                    
    85 - 96         = "85+ years"                                      
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP172X                                                        
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
  VALUE ADP229X                                                        
    01 - 94         = "1-94"                                           
    95              = "95+"                                            
    96              = "Since birth"                                    
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP349X                                                        
    06 - 84         = "6-84  years"                                    
    85              = "85 years or older"                              
    96              = "Never smoked regularly"                         
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP350X                                                        
    1               = "Every day"                                      
    2               = "Some days"                                      
    3               = "Not at all"                                     
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP351X                                                        
    01 - 94         = "01-94"                                          
    95              = "95+"                                            
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP352X                                                        
    1               = "Days"                                           
    2               = "Weeks"                                          
    3               = "Months"                                         
    4               = "Years"                                          
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP353X                                                        
    00              = "Less than 1 year"                               
    01 - 69         = "1-69 years"                                     
    70              = "70+ years"                                      
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP356X                                                        
    01 - 94         = "1-94 cigarettes"                                
    95              = "95+ cigarettes"                                 
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't Know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP357X                                                        
    00              = "None"                                           
    01 - 30         = "1-30 days"                                      
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP361X                                                        
    1               = "Current"                                        
    2               = "Former"                                         
    3               = "Never"                                          
    4               = "Smoker, current status unknown"                 
    9               = "Unknown if ever smoked"                         
   ;                                                                   
  VALUE ADP362X                                                        
    1               = "Current every day smoker"                       
    2               = "Current some day smoker"                        
    3               = "Former smoker"                                  
    4               = "Never  smoker"                                  
    5               = "Smoker, current status unknown"                 
    9               = "Unknown if ever smoked"                         
   ;                                                                   
  VALUE ADP363X                                                        
    1               = "Current  every day smoker"                      
    2               = "Current some day smoker (1+ days past mo)"      
    3               = "Current some day smoker (0 days past mo)"       
    4               = "Current some day smoker (unknown days past mo)" 
    5               = "Former smoker"                                  
    6               = "Never smoker"                                   
    7               = "Smoker, current status unknown"                 
    9               = "Unknown if ever smoked"                         
   ;                                                                   
  VALUE ADP364X                                                        
    000             = "Never"                                          
    001 - 995       = "1-995 times per"                                
    996             = "Unable to do this type activity"                
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
   ;                                                                   
  VALUE ADP365X                                                        
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
  VALUE ADP366X                                                        
    00              = "Less than once per week"                        
    01 - 28         = "1-28 times per week"                            
    95              = "Never"                                          
    96              = "Unable to do vig activity"                      
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
   ;                                                                   
  VALUE ADP367X                                                        
    1               = "Minutes"                                        
    2               = "Hours"                                          
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP368X                                                        
    020 - 720       = "20-720 minutes"                                 
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP371X                                                        
    00              = "Less than once per week"                        
    01 - 28         = "1-28 times per week"                            
    95              = "Never"                                          
    96              = "Unable to do mod activity"                      
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
   ;                                                                   
  VALUE ADP372X                                                        
    001 - 720       = "1-720 (minutes/hours)"                          
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP375X                                                        
    000             = "Never"                                          
    001 - 995       = "1-995 times per"                                
    996             = "Unable to do this type activity"                
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP376X                                                        
    0               = "Never"                                          
    1               = "Day"                                            
    2               = "Week"                                           
    3               = "Month"                                          
    4               = "Year"                                           
    6               = "Unable to do this activity"                     
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP377X                                                        
    00              = "Less than once per week"                        
    01 - 28         = "1-28 times per week"                            
    95              = "Never"                                          
    96              = "Unable to do vig activity"                      
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP383X                                                        
    00              = "Less than once per week"                        
    01 - 28         = "1-28 times per week"                            
    95              = "Never"                                          
    96              = "Unable to do moderate activity"                 
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP392X                                                        
    010 - 720       = "10-720 minutes"                                 
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP401X                                                        
    00              = "Less than once per week"                        
    01 - 28         = "1-28 times per week"                            
    95              = "Never"                                          
    96              = "Unable to do strength activity"                 
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
   ;                                                                   
  VALUE ADP404X                                                        
    000             = "Never"                                          
    001 - 365       = "1-365 days per"                                 
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP405X                                                        
    0               = "Never/None"                                     
    1               = "Week"                                           
    2               = "Month"                                          
    3               = "Year"                                           
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP406X                                                        
    00              = "Less than once a month"                         
    01 - 30         = "1-30 days per month"                            
    95              = "Did not drink in past year"                     
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP407X                                                        
    00              = "Less than one day per week"                     
    01 - 07         = "1-7 days per week"                              
    95              = "Did not drink in past year"                     
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP408X                                                        
    000 - 365       = "0-365 days"                                     
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP409X                                                        
    01 - 94         = "1-94 drinks"                                    
    95              = "95+ drinks"                                     
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP410X                                                        
    000             = "Never/None"                                     
    001 - 365       = "1-365 days per"                                 
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP412X                                                        
    000             = "Never/None"                                     
    001 - 365       = "1-365 days"                                     
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
    .               = "<Blank: Not in Universe>"                       
   ;                                                                   
  VALUE ADP413X                                                        
    1               = "Lifetime abstainer (<12 drinks in lifetime)"    
    2               = "Former drinker (No drinks in past year)"        
    3               = "Current drinker (1+ drinks in past year)"       
    9               = "Drinking status unknown"                        
   ;                                                                   
  VALUE ADP414X                                                        
    59 - 76         = "59-76 inches"                                   
    96              = "Not available"                                  
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
   ;                                                                   
  VALUE ADP415X                                                        
    099 - 285       = "99-285 pounds"                                  
    996             = "Not available"                                  
    997             = "Refused"                                        
    998             = "Not ascertained"                                
    999             = "Don't know"                                     
   ;                                                                   
  VALUE ADP416X                                                        
    1               = "10% or more below desirable weight"             
    2               = "5-9% below desirable weight"                    
    3               = "4.9% (+/-) of desirable body weight"            
    4               = "5-9.9% above desirable body weight"             
    5               = "10-19.9% above desirable body weight"           
    6               = "20-29.9 % above desirable body weight"          
    7               = "30% + above desirable body weight"              
    9               = "Unknown"                                        
   ;                                                                   
  VALUE ADP417X                                                        
    00.01 - 99.94   = "00.01-99.94"                                    
    99.95           = "99.95+"                                         
    99.99           = "Unknown"                                        
   ;                                                                   
                                                                       
  VALUE ADP418X                                                        
    1               = "Yes"                                            
    2               = "There is NO place"                              
    3               = "There is MORE THAN ONE place"                   
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
   ;                                                                   
  VALUE ADP419X                                                        
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
  VALUE ADP420X                                                        
    1               = "Yes"                                            
    2               = "No"                                             
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "< Blank.  Not in universe>"                     
   ;                                                                   
  VALUE ADP421X                                                        
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
  VALUE ADP422X                                                        
    01              = "Same sorc sk care & rout care"                  
    02              = "Sorc sk care, no sorc rout care"                
    03              = "Sorc sk & rout care, no/unk same sorc"          
    04              = "Sorc sk care, unk sorc rout care"               
    05              = "GE 2 sorc sk care, 1 is sorc rout care"         
    06              = "GE 2 sorc sk care, no sorc rout care"           
    07              = "GE 2 sorc sk & rout care, no/unk if same"       
    08              = "GE 2 sorc sk care, unk sorc rout care"          
    09              = "No sorc sk care or rout care"                   
    10              = "No sorc sk care, has sorc rout care"            
    11              = "No sorc sk care, unk sorc rout care"            
    12              = "Unk sorc sk care, no sorc rout care"            
    13              = "Unk sorc sk care, has sorc rout care"           
    14              = "Unk sorc sk care or sorc rout care"             
    99              = "Unknown other"                                  
   ;                                                                   
  VALUE ADP424X                                                        
    1               = "Yes"                                            
    2               = "No"                                             
    7               = "Refused"                                        
    9               = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP433X                                                        
    1               = "6 Months or less"                               
    2               = "More than 6 months, but not more than 1 year ag"
    3               = "More than 1 year, but not more than 3 years"    
    4               = "More than 3 years"                              
    5               = "Never"                                          
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
   ;                                                                   
  VALUE ADP444X                                                        
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
  VALUE ADP446X                                                        
    01 - 12         = "01-12 months"                                   
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP447X                                                        
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
  VALUE ADP450X                                                        
    01 - 94         = "1-94 Times"                                     
    95              = "95+ Times"                                      
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP451X                                                        
    1               = "6 months or less"                               
    2               = "More than 6 months, but not more than 1 year ag"
    3               = "More than 1 year, but not more than 3 years ago"
    4               = "More than 3 years"                              
    5               = "Never"                                          
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
   ;                                                                   
                                                                       
  VALUE ADP454X                                                        
    1               = "Less than 1 year"                               
    2               = "1 yr., less than 5 yrs"                         
    3               = "5 yrs., less than 10 yrs"                       
    4               = "10 yrs., less than 15 yrs"                      
    5               = "15 years or more"                               
    9               = "Unknown"                                        
    .               = "<Blank: Not in universe>"                       
   ;                                                                   
  VALUE ADP459X                                                        
    1               = "Employee of a PRIVATE company for wages"        
    2               = "A FEDERAL government employee"                  
    3               = "A STATE government employee"                    
    4               = "A LOCAL government employee"                    
    5               = "Self-emp in OWN business/prof practice/farm"    
    6               = "Working WITHOUT PAY in fam business/farm"       
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank:  Not in universe>"                      
   ;                                                                   
  VALUE ADP460X                                                        
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
  VALUE ADP462X                                                        
    00              = "Less than 1 year"                               
    01 - 34         = "01-34 years"                                    
    35              = "35 or more years"                               
    97              = "Refused"                                        
    98              = "Not ascertained"                                
    99              = "Don't know"                                     
    .               = "<Blank:  Not in universe>"                      
   ;                                                                   
  VALUE ADP463X                                                        
    1               = "One year or less"                               
    2               = "More than one year"                             
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP467X                                                        
    1               = "Employee only"                                  
    2               = "Self-employed only"                             
    3               = "Both"                                           
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank:  Not in universe>"                      
   ;                                                                   
  VALUE ADP496X                                                        
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
  VALUE ADP497X                                                        
    1               = "Yes"                                            
    2               = "No"                                             
    3               = "Only notified if there was a problem"           
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP499X                                                        
    1               = "In person"                                      
    2               = "By telephone"                                   
    3               = "By mail"                                        
    4               = "In some other way"                              
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
    .               = "<Blank:  Not in Universe>"                      
   ;                                                                   
  VALUE ADP513X                                                        
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
  VALUE ADP514X                                                        
    1               = "High/Already have AIDS/AIDS virus"              
    2               = "Medium"                                         
    3               = "Low"                                            
    4               = "None"                                           
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
   ;                                                                   
  VALUE ADP515X                                                        
    1               = "Yes to at least one statement"                  
    2               = "No to all statements"                           
    7               = "Refused"                                        
    8               = "Not ascertained"                                
    9               = "Don't know"                                     
   ;                                                                   
                                                                       
DATA NHIS.SAMADULT_1997;                                                    
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1997\';                  
   INFILE 'C:\DATA\NHIS\1997\da2954.adult.sas' MISSOVER TRUNCOVER LRECL=768;     
                                                                       
   * DEFINE LENGTH OF ALL VARIABLES;                                   
                                                                       
   LENGTH                                                              
      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2        
      PX       $ 2   INTV_QRT   3   SEX        3   AGE_P      3        
      ORIGIN     3   HISPAN_P   3   MRACE_P    3   RACEREC    3        
      RACE       3   EDUC       3   AB_BL20K   3   RAT_CAT    3        
      R_MARITL   3   REGION     3   MSASIZEP   3   WTIA_SA    8        
      WTFA_SA    8   STRATUM    4   PSU        3                       
                                                                       
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
      DIBAGE     3   INSLN      3   DIBPILL    3   AHAYFYR    3        
      SINYR      3   CBRCHYR    3   KIDWKYR    3   LIVYR      3        
      JNTYR      3   JNTMO      3   JNTIJ      3   JNTIJLN    3        
      JNTIJLT    3   JNTIJLM    3   JNTYR1     3   JNTYR2     3        
      JNTYR3     3   JNTYR4     3   JNTYR5     3   JNTYR6     3        
      JNTYR7     3   JNTYR8     3   JNTYR9     3   JNTYR10    3        
      JNTYR11    3   JNTYR12    3   JNTYR13    3   JNTYR14    3        
      JNTYR15    3   JNTYR16    3   JNTYR17    3   PAINECK    3        
      PAINLB     3   PAINLEG    3   PAINFACE   3   AMIGR      3        
      PREGNOW    3   HEARAID    3   AHEARST    3   AVISION    3        
      ABLIND     3   UPPERT     3   LOWERT     3   SAD        3        
      NERVOUS    3   RESTLESS   3   HOPELESS   3   EFFORT     3        
      WORTHLS    3   MHAMTMO    3                                      
                                                                       
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
      ALHCLY91   3   ALANTR91   3                                      
                                                                       
      SMKEV      3   SMKREG     3   SMKNOW     3   SMKQTNO    3        
      SMKQTTP    3   SMKQTY     3   SMKQTD     3   SMKQTD2    3        
      CIGSDA1    3   CIGDAMO    3   CIGSDA2    3   CIGSDAY    3        
      CIGQTYR    3   SMKSTAT1   3   SMKSTAT2   3   SMKSTAT3   3        
      VIG20NO    4   VIG20TP    3   VIG20FRQ   3   VIG20LGT   3        
      VIG20MIN   4   MOD20NO    4   MOD20TP    3   MOD20FRQ   3        
      MOD20LGN   4   MOD20LGT   3   MOD20MIN   4   VIGNO      4        
      VIGTP      3   VIGFREQW   3   VIGLNGNO   4   VIGLNGTP   3        
      VIGMIN     4   MODNO      4   MODTP      3   MODFREQW   3        
      MODLNGNO   4   MODLNGTP   3   MODMIN     4   VIGNO2     4        
      VIGTP2     3   VIGFRQW2   3   VIGLNGN2   4   VIGLNGT2   3        
      VIGMIN2    4   MODNO2     4   MODTP2     3   MODFRQW2   3        
      MODLNGN2   4   MODLNGT2   3   MODMIN2    4   STRNGNO    4        
      STRNGTP    3   STRFREQW   3   ALC1YR     3   ALCLIFE    3        
      ALC12MNO   4   ALC12MTP   3   ALC12MMO   3   ALC12MWK   3        
      ALC12MYR   4   ALCAMT     3   ALC5UPNO   4   ALC5UPTP   3        
      ALC5UPYR   4   ALCSTAT1   3   AHEIGHT    3   AWEIGHTP   4        
      DESIREWT   3   BMI        8                                      
                                                                       
      AUSUALPL   3   APLKIND    3   AHCPLROU   3   AHCPLKND   3        
      SOURCELA   3   AHCCHGYR   3   AHCCHGHI   3   AHCDLYR1   3        
      AHCDLYR2   3   AHCDLYR3   3   AHCDLYR4   3   AHCDLYR5   3        
      AHCAFYR1   3   AHCAFYR2   3   AHCAFYR3   3   ADENLONG   3        
      AHCSYR1    3   AHCSYR2    3   AHCSYR3    3   AHCSYR4    3        
      AHCSYR5    3   AHCSYR6    3   AHCSYR7    3   AHCSYR8    3        
      AHCSYR9    3   AHCSYR10   3   AHERNOYR   3   AHCHYR     3        
      AHCHMOYR   3   AHCHNOYR   3   AHCNOYR    3   ASRGYR     3        
      ASRGNOYR   3   AMDLONG    3   SHTFLUYR   3   SHTPNUYR   3        
                                                                       
      YRSINUS    3   INDSTRY1   3   INDSTRY2   3   OCCUP1     3        
      OCCUP2     3   WRKCAT     3   LOCALLNO   3   LOCPRTNO   3        
      YRSWRK_P   3   WRKLONGD   3   HOURPD     3   PDSICK     3        
      ONEJOB     3   WRKCATOT   3   BUSINC     3                       
                                                                       
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
      RACE         27 -  27    EDUC         28 -  29                   
      AB_BL20K     30 -  31    RAT_CAT      32 -  33                   
      R_MARITL     34 -  34    REGION       35 -  35                   
      MSASIZEP     36 -  36    WTIA_SA      37 -  42 .1                
      WTFA_SA      43 -  48    STRATUM      49 -  51                   
      PSU          52 -  52                                            
                                                                       
      HYPEV        53 -  53    HYPDIFV      54 -  54                   
      CHDEV        55 -  55    ANGEV        56 -  56                   
      MIEV         57 -  57    HRTEV        58 -  58                   
      STREV        59 -  59    EPHEV        60 -  60                   
      AASMEV       61 -  61    AASMYR       62 -  62                   
      AASMERYR     63 -  63    ULCEV        64 -  64                   
      ULCYR        65 -  65    CANEV        66 -  66                   
      CNKIND1      67 -  67    CANAGE1      68 -  69                   
      CNKIND2      70 -  70    CANAGE2      71 -  72                   
      CNKIND3      73 -  73    CANAGE3      74 -  75                   
      CNKIND4      76 -  76    CANAGE4      77 -  78                   
      CNKIND5      79 -  79    CANAGE5      80 -  81                   
      CNKIND6      82 -  82    CANAGE6      83 -  84                   
      CNKIND7      85 -  85    CANAGE7      86 -  87                   
      CNKIND8      88 -  88    CANAGE8      89 -  90                   
      CNKIND9      91 -  91    CANAGE9      92 -  93                   
      CNKIND10     94 -  94    CANAGE10     95 -  96                   
      CNKIND11     97 -  97    CANAGE11     98 -  99                   
      CNKIND12    100 - 100    CANAGE12    101 - 102                   
      CNKIND13    103 - 103    CANAGE13    104 - 105                   
      CNKIND14    106 - 106    CANAGE14    107 - 108                   
      CNKIND15    109 - 109    CANAGE15    110 - 111                   
      CNKIND16    112 - 112    CANAGE16    113 - 114                   
      CNKIND17    115 - 115    CANAGE17    116 - 117                   
      CNKIND18    118 - 118    CANAGE18    119 - 120                   
      CNKIND19    121 - 121    CANAGE19    122 - 123                   
      CNKIND20    124 - 124    CANAGE20    125 - 126                   
      CNKIND21    127 - 127    CANAGE21    128 - 129                   
      CNKIND22    130 - 130    CANAGE22    131 - 132                   
      CNKIND23    133 - 133    CANAGE23    134 - 135                   
      CNKIND24    136 - 136    CANAGE24    137 - 138                   
      CNKIND25    139 - 139    CANAGE25    140 - 141                   
      CNKIND26    142 - 142    CANAGE26    143 - 144                   
      CNKIND27    145 - 145    CANAGE27    146 - 147                   
      CNKIND28    148 - 148    CANAGE28    149 - 150                   
      CNKIND29    151 - 151    CANAGE29    152 - 153                   
      CNKIND30    154 - 154    CANAGE30    155 - 156                   
      CNKIND31    157 - 157    DIBEV       158 - 158                   
      DIBAGE      159 - 160    INSLN       161 - 161                   
      DIBPILL     162 - 162    AHAYFYR     163 - 163                   
      SINYR       164 - 164    CBRCHYR     165 - 165                   
      KIDWKYR     166 - 166    LIVYR       167 - 167                   
      JNTYR       168 - 168    JNTMO       169 - 169                   
      JNTIJ       170 - 170    JNTIJLN     171 - 172                   
      JNTIJLT     173 - 173    JNTIJLM     174 - 175                   
      JNTYR1      176 - 176    JNTYR2      177 - 177                   
      JNTYR3      178 - 178    JNTYR4      179 - 179                   
      JNTYR5      180 - 180    JNTYR6      181 - 181                   
      JNTYR7      182 - 182    JNTYR8      183 - 183                   
      JNTYR9      184 - 184    JNTYR10     185 - 185                   
      JNTYR11     186 - 186    JNTYR12     187 - 187                   
      JNTYR13     188 - 188    JNTYR14     189 - 189                   
      JNTYR15     190 - 190    JNTYR16     191 - 191                   
      JNTYR17     192 - 192    PAINECK     193 - 193                   
      PAINLB      194 - 194    PAINLEG     195 - 195                   
      PAINFACE    196 - 196    AMIGR       197 - 197                   
      PREGNOW     198 - 198    HEARAID     199 - 199                   
      AHEARST     200 - 200    AVISION     201 - 201                   
      ABLIND      202 - 202    UPPERT      203 - 203                   
      LOWERT      204 - 204    SAD         205 - 205                   
      NERVOUS     206 - 206    RESTLESS    207 - 207                   
      HOPELESS    208 - 208    EFFORT      209 - 209                   
      WORTHLS     210 - 210    MHAMTMO     211 - 211                   
                                                                       
      WRKLYR2     212 - 212    WKDAYR      213 - 215                   
      BEDDAYR     216 - 218    AHSTATYR    219 - 219                   
      SPECEQ      220 - 220    FLWALK      221 - 221                   
      FLCLIMB     222 - 222    FLSTAND     223 - 223                   
      FLSIT       224 - 224    FLSTOOP     225 - 225                   
      FLREACH     226 - 226    FLGRASP     227 - 227                   
      FLCARRY     228 - 228    FLPUSH      229 - 229                   
      FLSHOP      230 - 230    FLSOCL      231 - 231                   
      FLRELAX     232 - 232    FLA1AR      233 - 233                   
      AFLHCA1     234 - 234    ALHCLN1     235 - 236                   
      ALHCLT1     237 - 237    ALHCLY1     238 - 239                   
      ALANTR1     240 - 241    AFLHCA2     242 - 242                   
      ALHCLN2     243 - 244    ALHCLT2     245 - 245                   
      ALHCLY2     246 - 247    ALANTR2     248 - 249                   
      AFLHCA3     250 - 250    ALHCLN3     251 - 252                   
      ALHCLT3     253 - 253    ALHCLY3     254 - 255                   
      ALANTR3     256 - 257    AFLHCA4     258 - 258                   
      ALHCLN4     259 - 260    ALHCLT4     261 - 261                   
      ALHCLY4     262 - 263    ALANTR4     264 - 265                   
      AFLHCA5     266 - 266    ALHCLN5     267 - 268                   
      ALHCLT5     269 - 269    ALHCLY5     270 - 271                   
      ALANTR5     272 - 273    AFLHCA6     274 - 274                   
      ALHCLN6     275 - 276    ALHCLT6     277 - 277                   
      ALHCLY6     278 - 279    ALANTR6     280 - 281                   
      AFLHCA7     282 - 282    ALHCLN7     283 - 284                   
      ALHCLT7     285 - 285    ALHCLY7     286 - 287                   
      ALANTR7     288 - 289    AFLHCA8     290 - 290                   
      ALHCLN8     291 - 292    ALHCLT8     293 - 293                   
      ALHCLY8     294 - 295    ALANTR8     296 - 297                   
      AFLHCA9     298 - 298    ALHCLN9     299 - 300                   
      ALHCLT9     301 - 301    ALHCLY9     302 - 303                   
      ALANTR9     304 - 305    AFLHCA10    306 - 306                   
      ALHCLN10    307 - 308    ALHCLT10    309 - 309                   
      ALHCLY10    310 - 311    ALANTR10    312 - 313                   
      AFLHCA11    314 - 314    ALHCLN11    315 - 316                   
      ALHCLT11    317 - 317    ALHCLY11    318 - 319                   
      ALANTR11    320 - 321    AFLHCA12    322 - 322                   
      ALHCLN12    323 - 324    ALHCLT12    325 - 325                   
      ALHCLY12    326 - 327    ALANTR12    328 - 329                   
      AFLHCA13    330 - 330    ALHCLN13    331 - 332                   
      ALHCLT13    333 - 333    ALHCLY13    334 - 335                   
      ALANTR13    336 - 337    AFLHCA14    338 - 338                   
      ALHCLN14    339 - 340    ALHCLT14    341 - 341                   
      ALHCLY14    342 - 343    ALANTR14    344 - 345                   
      AFLHCA15    346 - 346    ALHCLN15    347 - 348                   
      ALHCLT15    349 - 349    ALHCLY15    350 - 351                   
      ALANTR15    352 - 353    AFLHCA16    354 - 354                   
      ALHCLN16    355 - 356    ALHCLT16    357 - 357                   
      ALHCLY16    358 - 359    ALANTR16    360 - 361                   
      AFLHCA17    362 - 362    ALHCLN17    363 - 364                   
      ALHCLT17    365 - 365    ALHCLY17    366 - 367                   
      ALANTR17    368 - 369    AFLHCA18    370 - 370                   
      ALHCLN18    371 - 372    ALHCLT18    373 - 373                   
      ALHCLY18    374 - 375    ALANTR18    376 - 377                   
      AFLHCA19    378 - 378    ALHCLN19    379 - 380                   
      ALHCLT19    381 - 381    ALHCLY19    382 - 383                   
      ALANTR19    384 - 385    AFLHCA20    386 - 386                   
      ALHCLN20    387 - 388    ALHCLT20    389 - 389                   
      ALHCLY20    390 - 391    ALANTR20    392 - 393                   
      AFLHCA21    394 - 394    ALHCLN21    395 - 396                   
      ALHCLT21    397 - 397    ALHCLY21    398 - 399                   
      ALANTR21    400 - 401    AFLHCA22    402 - 402                   
      ALHCLN22    403 - 404    ALHCLT22    405 - 405                   
      ALHCLY22    406 - 407    ALANTR22    408 - 409                   
      AFLHCA23    410 - 410    ALHCLN23    411 - 412                   
      ALHCLT23    413 - 413    ALHCLY23    414 - 415                   
      ALANTR23    416 - 417    AFLHCA24    418 - 418                   
      ALHCLN24    419 - 420    ALHCLT24    421 - 421                   
      ALHCLY24    422 - 423    ALANTR24    424 - 425                   
      AFLHCA25    426 - 426    ALHCLN25    427 - 428                   
      ALHCLT25    429 - 429    ALHCLY25    430 - 431                   
      ALANTR25    432 - 433    AFLHCA26    434 - 434                   
      ALHCLN26    435 - 436    ALHCLT26    437 - 437                   
      ALHCLY26    438 - 439    ALANTR26    440 - 441                   
      AFLHCA27    442 - 442    ALHCLN27    443 - 444                   
      ALHCLT27    445 - 445    ALHCLY27    446 - 447                   
      ALANTR27    448 - 449    AFLHCA28    450 - 450                   
      ALHCLN28    451 - 452    ALHCLT28    453 - 453                   
      ALHCLY28    454 - 455    ALANTR28    456 - 457                   
      AFLHCA29    458 - 458    ALHCLN29    459 - 460                   
      ALHCLT29    461 - 461    ALHCLY29    462 - 463                   
      ALANTR29    464 - 465    AFLHCA30    466 - 466                   
      ALHCLN30    467 - 468    ALHCLT30    469 - 469                   
      ALHCLY30    470 - 471    ALANTR30    472 - 473                   
      AFLHCA31    474 - 474    ALHCLN31    475 - 476                   
      ALHCLT31    477 - 477    ALHCLY31    478 - 479                   
      ALANTR31    480 - 481    AFLHCA32    482 - 482                   
      ALHCLN32    483 - 484    ALHCLT32    485 - 485                   
      ALHCLY32    486 - 487    ALANTR32    488 - 489                   
      AFLHCA33    490 - 490    ALHCLN33    491 - 492                   
      ALHCLT33    493 - 493    ALHCLY33    494 - 495                   
      ALANTR33    496 - 497    AFLHCA34    498 - 498                   
      ALHCLN34    499 - 500    ALHCLT34    501 - 501                   
      ALHCLY34    502 - 503    ALANTR34    504 - 505                   
      AFLHCA90    506 - 506    ALHCLN90    507 - 508                   
      ALHCLT90    509 - 509    ALHCLY90    510 - 511                   
      ALANTR90    512 - 513    AFLHCA91    514 - 514                   
      ALHCLN91    515 - 516    ALHCLT91    517 - 517                   
      ALHCLY91    518 - 519    ALANTR91    520 - 521                   
                                                                       
      SMKEV       522 - 522    SMKREG      523 - 524                   
      SMKNOW      525 - 525    SMKQTNO     526 - 527                   
      SMKQTTP     528 - 528    SMKQTY      529 - 530                   
      SMKQTD      531 - 531    SMKQTD2     532 - 532                   
      CIGSDA1     533 - 534    CIGDAMO     535 - 536                   
      CIGSDA2     537 - 538    CIGSDAY     539 - 540                   
      CIGQTYR     541 - 541    SMKSTAT1    542 - 542                   
      SMKSTAT2    543 - 543    SMKSTAT3    544 - 544                   
      VIG20NO     545 - 547    VIG20TP     548 - 548                   
      VIG20FRQ    549 - 550    VIG20LGT    551 - 551                   
      VIG20MIN    552 - 554    MOD20NO     555 - 557                   
      MOD20TP     558 - 558    MOD20FRQ    559 - 560                   
      MOD20LGN    561 - 563    MOD20LGT    564 - 564                   
      MOD20MIN    565 - 567    VIGNO       568 - 570                   
      VIGTP       571 - 571    VIGFREQW    572 - 573                   
      VIGLNGNO    574 - 576    VIGLNGTP    577 - 577                   
      VIGMIN      578 - 580    MODNO       581 - 583                   
      MODTP       584 - 584    MODFREQW    585 - 586                   
      MODLNGNO    587 - 589    MODLNGTP    590 - 590                   
      MODMIN      591 - 593    VIGNO2      594 - 596                   
      VIGTP2      597 - 597    VIGFRQW2    598 - 599                   
      VIGLNGN2    600 - 602    VIGLNGT2    603 - 603                   
      VIGMIN2     604 - 606    MODNO2      607 - 609                   
      MODTP2      610 - 610    MODFRQW2    611 - 612                   
      MODLNGN2    613 - 615    MODLNGT2    616 - 616                   
      MODMIN2     617 - 619    STRNGNO     620 - 622                   
      STRNGTP     623 - 623    STRFREQW    624 - 625                   
      ALC1YR      626 - 626    ALCLIFE     627 - 627                   
      ALC12MNO    628 - 630    ALC12MTP    631 - 631                   
      ALC12MMO    632 - 633    ALC12MWK    634 - 635                   
      ALC12MYR    636 - 638    ALCAMT      639 - 640                   
      ALC5UPNO    641 - 643    ALC5UPTP    644 - 644                   
      ALC5UPYR    645 - 647    ALCSTAT1    648 - 648                   
      AHEIGHT     649 - 650    AWEIGHTP    651 - 653                   
      DESIREWT    654 - 654    BMI         655 - 658 .2                
                                                                       
      AUSUALPL    659 - 659    APLKIND     660 - 660                   
      AHCPLROU    661 - 661    AHCPLKND    662 - 662                   
      SOURCELA    663 - 664    AHCCHGYR    665 - 665                   
      AHCCHGHI    666 - 666    AHCDLYR1    667 - 667                   
      AHCDLYR2    668 - 668    AHCDLYR3    669 - 669                   
      AHCDLYR4    670 - 670    AHCDLYR5    671 - 671                   
      AHCAFYR1    672 - 672    AHCAFYR2    673 - 673                   
      AHCAFYR3    674 - 674    ADENLONG    675 - 675                   
      AHCSYR1     676 - 676    AHCSYR2     677 - 677                   
      AHCSYR3     678 - 678    AHCSYR4     679 - 679                   
      AHCSYR5     680 - 680    AHCSYR6     681 - 681                   
      AHCSYR7     682 - 682    AHCSYR8     683 - 683                   
      AHCSYR9     684 - 684    AHCSYR10    685 - 685                   
      AHERNOYR    686 - 686    AHCHYR      687 - 687                   
      AHCHMOYR    688 - 689    AHCHNOYR    690 - 690                   
      AHCNOYR     691 - 691    ASRGYR      692 - 692                   
      ASRGNOYR    693 - 694    AMDLONG     695 - 695                   
      SHTFLUYR    696 - 696    SHTPNUYR    697 - 697                   
                                                                       
      YRSINUS     698 - 698    INDSTRY1    699 - 700                   
      INDSTRY2    701 - 702    OCCUP1      703 - 704                   
      OCCUP2      705 - 706    WRKCAT      707 - 707                   
      LOCALLNO    708 - 709    LOCPRTNO    710 - 711                   
      YRSWRK_P    712 - 713    WRKLONGD    714 - 714                   
      HOURPD      715 - 715    PDSICK      716 - 716                   
      ONEJOB      717 - 717    WRKCATOT    718 - 718                   
      BUSINC      719 - 719                                            
                                                                       
      BLDGV       720 - 720    BLDG12M     721 - 721                   
      AIDSTST     722 - 722    WHYTSU01    723 - 723                   
      WHYTSU02    724 - 724    WHYTSU03    725 - 725                   
      WHYTSU04    726 - 726    WHYTSU05    727 - 727                   
      WHYTSU06    728 - 728    WHYTSU07    729 - 729                   
      WHYTSU08    730 - 730    WHYTSU09    731 - 731                   
      WHYTSU10    732 - 732    TST12M      733 - 733                   
      REATOT01    734 - 734    REATOT02    735 - 735                   
      REATOT03    736 - 736    REATOT04    737 - 737                   
      REATOT05    738 - 738    REATOT06    739 - 739                   
      REATOT07    740 - 740    REATOT08    741 - 741                   
      REATOT09    742 - 742    REATOT10    743 - 743                   
      REATOT11    744 - 744    REATOT12    745 - 745                   
      REATOT13    746 - 746    LASTST      747 - 748                   
      ALTST       749 - 749    TALKHP      750 - 750                   
      RSGVN       751 - 751    EXTST12M    752 - 752                   
      WHY12U01    753 - 753    WHY12U02    754 - 754                   
      WHY12U03    755 - 755    WHY12U04    756 - 756                   
      WHY12U05    757 - 757    WHY12U06    758 - 758                   
      WHY12U07    759 - 759    WHY12U08    760 - 760                   
      WHY12U09    761 - 761    WHY12U10    762 - 762                   
      WHY12U11    763 - 763    WHY12U12    764 - 764                   
      WHERTST     765 - 766    CHNSADSP    767 - 767                   
      STMTRU      768 - 768;                                           
                                                                       
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
      EDUC     ="Highest level of school completed"                    
      AB_BL20K ="Fam inc at/above vs. below $20,000"                   
      RAT_CAT  ="Ratio of fam inc to poverty threshold"                
      R_MARITL ="Marital status"                                       
      REGION   ="Region"                                               
      MSASIZEP ="Geographic Distribution - MSA size"                   
      WTIA_SA  ="Weight - Interim Annual"                              
      WTFA_SA  ="Weight - Final Annual"                                
      STRATUM  ="Stratum for variance estimation"                      
      PSU      ="PSU for variance estimation"                          
                                                                       
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
      AHSTATYR ="Hlth better/worse/same, comp w/12 m ago"              
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
      FLA1AR   ="Any functl limit - persons 18+, all cond"             
      AFLHCA1  ="Vision/prob seeing causes dif w/act"                  
      ALHCLN1  ="Duration of vision prob: # of units"                  
      ALHCLT1  ="Duration of vision prob: Time unit"                   
      ALHCLY1  ="Duration of vision prob (in years)"                   
      ALANTR1  ="Duration of vision prob recode 2"                     
      AFLHCA2  ="Hearing prob causes dif w/activities"                 
      ALHCLN2  ="Dur of hearing prob: # of units"                      
      ALHCLT2  ="Dur of hearing prob: Time units"                      
      ALHCLY2  ="Dur of hearing prob (in years)"                       
      ALANTR2  ="Duration of hearing prob recode 2"                    
      AFLHCA3  ="Arthritis/rheumatism causes dif w/act"                
      ALHCLN3  ="Dur of arthritis/rheum: # of units"                   
      ALHCLT3  ="Dur of arthritis/rheum: Time units"                   
      ALHCLY3  ="Dur of arthritis/rheum (in years)"                    
      ALANTR3  ="Duration of arthritis/rheum recode 2"                 
      AFLHCA4  ="Back/neck prob causes dif w/activities"               
      ALHCLN4  ="Dur of back/neck prob: # of units"                    
      ALHCLT4  ="Dur of back/neck prob: Time units"                    
      ALHCLY4  ="Dur of back/neck prob (in years)"                     
      ALANTR4  ="Duration of back/neck prob recode 2"                  
      AFLHCA5  ="Fract/bone/joint inj causes dif w/act"                
      ALHCLN5  ="Dur of frac/bone/jnt inj: # of units"                 
      ALHCLT5  ="Dur of frac/bone/jnt inj: Time units"                 
      ALHCLY5  ="Dur of frac/bone/jnt inj (in years)"                  
      ALANTR5  ="Duration of fract/bone/joint inj rec 2"               
      AFLHCA6  ="Other injury causes dif w/activities"                 
      ALHCLN6  ="Dur of otr injury: # of units"                        
      ALHCLT6  ="Dur of otr injury: Time units"                        
      ALHCLY6  ="Dur of otr injury (in years)"                         
      ALANTR6  ="Duration of otr injury recode 2"                      
      AFLHCA7  ="Heart prob causes dif w/activities"                   
      ALHCLN7  ="Dur of heart prob: # of units"                        
      ALHCLT7  ="Dur of heart prob: Time units"                        
      ALHCLY7  ="Dur of heart prob (in years)"                         
      ALANTR7  ="Duration of heart prob recode 2"                      
      AFLHCA8  ="Stroke prob causes dif w/activities"                  
      ALHCLN8  ="Dur of stroke prob: # of units"                       
      ALHCLT8  ="Dur of stroke prob: Time unit"                        
      ALHCLY8  ="Dur of stroke prob (in years)"                        
      ALANTR8  ="Duration of stroke recode 2"                          
      AFLHCA9  ="Hypertension causes dif w/activities"                 
      ALHCLN9  ="Dur of hypertension: # of units"                      
      ALHCLT9  ="Dur of hypertension: Time units"                      
      ALHCLY9  ="Dur of hypertension (in years)"                       
      ALANTR9  ="Duration of hypertension recode 2"                    
      AFLHCA10 ="Diabetes causes dif w/activities"                     
      ALHCLN10 ="Dur of diabetes: # of units"                          
      ALHCLT10 ="Dur of diabetes: Time units"                          
      ALHCLY10 ="Dur of diabetes (in years)"                           
      ALANTR10 ="Duration of diabetes recode 2"                        
      AFLHCA11 ="Lung/breathing prob causes dif w/act"                 
      ALHCLN11 ="Dur of lung/breath prob: # of units"                  
      ALHCLT11 ="Dur of lung/breath prob: Time units"                  
      ALHCLY11 ="Dur of lung/breath prob (in years)"                   
      ALANTR11 ="Duration of lung/breath prob rec 2"                   
      AFLHCA12 ="Cancer causes dif w/activities"                       
      ALHCLN12 ="Duration of cancer: # of units"                       
      ALHCLT12 ="Duration of cancer: Time unit"                        
      ALHCLY12 ="Dur of cancer (in years)"                             
      ALANTR12 ="Duration of cancer recode 2"                          
      AFLHCA13 ="Birth defect causes dif w/activities"                 
      ALHCLN13 ="Duration of birth defect: # of units"                 
      ALHCLT13 ="Duration of birth defect: Time unit"                  
      ALHCLY13 ="Duration of birth defect (in years)"                  
      ALANTR13 ="Duration of birth defect recode 2"                    
      AFLHCA14 ="Mental retardation causes dif w/act"                  
      ALHCLN14 ="Dur of mental retardation: # of units"                
      ALHCLT14 ="Dur of mental retardation: Time unit"                 
      ALHCLY14 ="Dur of mental retardation (in years)"                 
      ALANTR14 ="Duration of mental retardation recode 2"              
      AFLHCA15 ="Other devel prob causes dif w/activities"             
      ALHCLN15 ="Dur of otr dev prob: # of units"                      
      ALHCLT15 ="Dur of otr dev prob: Time units"                      
      ALHCLY15 ="Dur of otr dev prob (in years)"                       
      ALANTR15 ="Duration of otr dev prob recode 2"                    
      AFLHCA16 ="Senility causes dif w/activities"                     
      ALHCLN16 ="Duration of senility: # of units"                     
      ALHCLT16 ="Duration of senility: Time units"                     
      ALHCLY16 ="Duration of senility (in years)"                      
      ALANTR16 ="Duration of senility recode 2"                        
      AFLHCA17 ="Depress/anx/emot prob causes dif w/act"               
      ALHCLN17 ="Dur of dep/anx/emot prob: # of units"                 
      ALHCLT17 ="Dur of dep/anx/emot prob: Time units"                 
      ALHCLY17 ="Dur of dep/anx/emot prob (in years)"                  
      ALANTR17 ="Duration of dep/anx/emot prob recode 2"               
      AFLHCA18 ="Weight prob causes dif w/activities"                  
      ALHCLN18 ="Dur of weight prob: # of units"                       
      ALHCLT18 ="Dur of weight prob: Time units"                       
      ALHCLY18 ="Dur of weight prob (in years)"                        
      ALANTR18 ="Duration of weight prob recode 2"                     
      AFLHCA19 ="Missing limb/finger causes dif w/act"                 
      ALHCLN19 ="Dur of missing limb/finger: # of units"               
      ALHCLT19 ="Dur of missing limb/finger: Time units"               
      ALHCLY19 ="Dur of missing limb/finger (in years)"                
      ALANTR19 ="Dur of missing limb/finger recode 2"                  
      AFLHCA20 ="Musculoskel. prob causes dif w/act"                   
      ALHCLN20 ="Dur of musculoskel prob: # of units"                  
      ALHCLT20 ="Dur of musculoskel prob: Time units"                  
      ALHCLY20 ="Dur of musculoskel prob (in years)"                   
      ALANTR20 ="Duration of musculoskel prob recode 2"                
      AFLHCA21 ="Circulatory prob causes dif w/act"                    
      ALHCLN21 ="Dur of circulatory prob: # of units"                  
      ALHCLT21 ="Dur of circulatory prob: Time units"                  
      ALHCLY21 ="Dur of circulatory prob (in years)"                   
      ALANTR21 ="Duration of circulatory prob recode 2"                
      AFLHCA22 ="Endocrine prob causes dif w/activities"               
      ALHCLN22 ="Dur of endocrine prob: # of units"                    
      ALHCLT22 ="Dur of endocrine prob: Time units"                    
      ALHCLY22 ="Dur of endocrine prob (in years)"                     
      ALANTR22 ="Duration of endocrine prob recode 2"                  
      AFLHCA23 ="Nervous sys prob causes dif w/act"                    
      ALHCLN23 ="Dur of nervous sys prob: # of units"                  
      ALHCLT23 ="Dur of nervous sys prob: Time unit"                   
      ALHCLY23 ="Dur of nervous sys prob (in years)"                   
      ALANTR23 ="Duration of nervous system prob recode 2"             
      AFLHCA24 ="Digestive prob causes dif w/activities"               
      ALHCLN24 ="Dur of digestive prob: # of units"                    
      ALHCLT24 ="Dur of digestive prob: Time unit"                     
      ALHCLY24 ="Dur of digestive prob (in years)"                     
      ALANTR24 ="Duration of digestive prob recode 2"                  
      AFLHCA25 ="Genitourinary prob causes dif w/act"                  
      ALHCLN25 ="Dur of genitourinary prob: # of units"                
      ALHCLT25 ="Dur of genitourinary prob: Time unit"                 
      ALHCLY25 ="Dur of genitourinary prob (in years)"                 
      ALANTR25 ="Duration of genitourinary prob recode 2"              
      AFLHCA26 ="Skin prob causes dif w/activities"                    
      ALHCLN26 ="Dur of skin prob: # of units"                         
      ALHCLT26 ="Dur of skin prob: Time unit"                          
      ALHCLY26 ="Dur of skin prob (in years)"                          
      ALANTR26 ="Duration of skin prob recode 2"                       
      AFLHCA27 ="Blood prob causes dif w/activities"                   
      ALHCLN27 ="Dur of blood prob: # of units"                        
      ALHCLT27 ="Dur of blood prob: Time unit"                         
      ALHCLY27 ="Dur of blood prob (in years)"                         
      ALANTR27 ="Duration of blood prob recode 2"                      
      AFLHCA28 ="Benign tumor causes dif w/activities"                 
      ALHCLN28 ="Dur of benign tumor: # of units"                      
      ALHCLT28 ="Dur of benign tumor: Time unit"                       
      ALHCLY28 ="Dur of benign tumor (in years)"                       
      ALANTR28 ="Duration of benign tumor recode 2"                    
      AFLHCA29 ="Alcohol or drug prob causes dif w/act"                
      ALHCLN29 ="Dur of alcohol or drug prob: # of units"              
      ALHCLT29 ="Dur of alcohol or drug prob: Time unit"               
      ALHCLY29 ="Dur of alcohol or drug prob (in years)"               
      ALANTR29 ="Duration of alcohol or drug prob recode"              
      AFLHCA30 ="Otr mental prob causes dif w/activities"              
      ALHCLN30 ="Dur of other mental prob: # of units"                 
      ALHCLT30 ="Dur of other mental prob: Time unit"                  
      ALHCLY30 ="Dur of other mental prob (in years)"                  
      ALANTR30 ="Duration of otr mental prob recode 2"                 
      AFLHCA31 ="Surgical after-effects cause dif w/act"               
      ALHCLN31 ="Dur of surgical after-effects: # of unit"             
      ALHCLT31 ="Dur of surgical after-effects: Time unit"             
      ALHCLY31 ="Dur of surgical after-effects (in years)"             
      ALANTR31 ="Duration surgical after-effects recode 2"             
      AFLHCA32 ='"Old age" causes dif w/activities'                    
      ALHCLN32 ='Dur of "old age": # of units'                         
      ALHCLT32 ='Dur of "old age": Time unit'                          
      ALHCLY32 ='Dur of "old age" (in years)'                          
      ALANTR32 ='Duration of "old age" recode 2'                       
      AFLHCA33 ="Fatigue causes dif w/activities"                      
      ALHCLN33 ="Dur of fatigue: # of units"                           
      ALHCLT33 ="Dur of fatigue: Time unit"                            
      ALHCLY33 ="Dur of fatigue (in years)"                            
      ALANTR33 ="Duration of fatigue recode 2"                         
      AFLHCA34 ="Pregnancy causes dif w/act"                           
      ALHCLN34 ="Dur of pregnancy: # of units"                         
      ALHCLT34 ="Dur of pregnancy: Time unit"                          
      ALHCLY34 ="Dur of pregnancy (in years)"                          
      ALANTR34 ="Duration of pregnancy recode 2"                       
      AFLHCA90 ="Other N.E.C. prob (1) causes dif w/act"               
      ALHCLN90 ="Dur of otr impairment/prob: # of units"               
      ALHCLT90 ="Dur of otr impairment/prob: Time units"               
      ALHCLY90 ="Dur of otr impairment/prob (in years)"                
      ALANTR90 ="Duration of otr impair/prob(1) recode 2"              
      AFLHCA91 ="Other N.E.C prob (2) causes dif w/act"                
      ALHCLN91 ="Dur of otr impairment/prob: # of units"               
      ALHCLT91 ="Dur of otr impairment/prob: Time units"               
      ALHCLY91 ="Dur of otr impairment/prob (in years)"                
      ALANTR91 ="Duration of otr impair/prob(2) recode 2"              
                                                                       
      SMKEV    ="Ever smoked 100 cigarettes"                           
      SMKREG   ="Age first smoked fairly regularly"                    
      SMKNOW   ="Smoke freq: everyday/somedays/not at all"             
      SMKQTNO  ="Time since quit smoking: # of units"                  
      SMKQTTP  ="Time since quit smoking: Time unit"                   
      SMKQTY   ="Time since quit smoking (in years)"                   
      SMKQTD   ="Quit smoking since {current mnth} 1995"               
      SMKQTD2  ="Quit smoking since {month, 1 year ago}"               
      CIGSDA1  ="Number cigs per day (daily smokers)"                  
      CIGDAMO  ="Number days smoked in past 30 days"                   
      CIGSDA2  ="Number cigs per day (some day smokers)"               
      CIGSDAY  ="Number cigs a day (all smokers)"                      
      CIGQTYR  ="Tried quit smoking 1+ days, past 12 m"                
      SMKSTAT1 ="Smoking Status: Recode 1"                             
      SMKSTAT2 ="Smoking Status: Recode 2"                             
      SMKSTAT3 ="Smoking Status: Recode 3"                             
      VIG20NO  ="Freq vig activity 20+ min: # of units"                
      VIG20TP  ="Freq vig activity 20+ min: Time units"                
      VIG20FRQ ="Freq vig activity 20+ min (times per wk)"             
      VIG20LGT ="Duration vig activity(20+ min):Time unit"             
      VIG20MIN ="Duration vigorous activity (in minutes)"              
      MOD20NO  ="Freq mod activity 20+ min: # of units"                
      MOD20TP  ="Freq mod activity 20+ min: Time units"                
      MOD20FRQ ="Freq mod activity 20+ min (times per wk)"             
      MOD20LGN ="Dur mod activity (20+ min): # of units"               
      MOD20LGT ="Dur mod activity (20+ min): Time unit"                
      MOD20MIN ="Dur mod activity (in minutes)"                        
      VIGNO    ="Freq vigorous activity: # of units"                   
      VIGTP    ="Freq vigorous activity: Time units"                   
      VIGFREQW ="Freq vig activity (times per wk)"                     
      VIGLNGNO ="Duration vig activity: # of units"                    
      VIGLNGTP ="Duration vig activity: Time unit"                     
      VIGMIN   ="Duration vig activity (in minutes)"                   
      MODNO    ="Freq moderate activity: # of units"                   
      MODTP    ="Freq moderate activity: Time units"                   
      MODFREQW ="Freq moderate activity (times per wk)"                
      MODLNGNO ="Duration mod activity: # of units"                    
      MODLNGTP ="Duration mod activity: Time unit"                     
      MODMIN   ="Duration mod activity (in minutes)"                   
      VIGNO2   ="Freq vigorous activity: # of units"                   
      VIGTP2   ="Freq vigorous activity: Time units"                   
      VIGFRQW2 ="Freq vigorous activity (times per wk)"                
      VIGLNGN2 ="Duration vig activity: # of units"                    
      VIGLNGT2 ="Duration vigorous activity: Time unit"                
      VIGMIN2  ="Duration vigorous activity (in minutes)"              
      MODNO2   ="Freq moderate activity: # of units"                   
      MODTP2   ="Freq moderate activity: Time units"                   
      MODFRQW2 ="Freq moderate activity (times per wk)"                
      MODLNGN2 ="Duration mod activity: # of units"                    
      MODLNGT2 ="Duration mod activity: Time unit"                     
      MODMIN2  ="Duration mod activity (in minutes)"                   
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
                                                                       
      YRSINUS  ="Years that - - has been in the U.S."                  
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
      EDUC     ADP014X.    AB_BL20K ADP015X.    RAT_CAT  ADP016X.      
      R_MARITL ADP017X.    REGION   ADP018X.    MSASIZEP ADP019X.      
                                                                       
      HYPEV    ADP009X.    HYPDIFV  ADP025X.    CHDEV    ADP009X.      
      ANGEV    ADP009X.    MIEV     ADP009X.    HRTEV    ADP009X.      
      STREV    ADP009X.    EPHEV    ADP009X.    AASMEV   ADP009X.      
      AASMYR   ADP025X.    AASMERYR ADP025X.    ULCEV    ADP009X.      
      ULCYR    ADP025X.    CANEV    ADP009X.    CNKIND1  ADP038X.      
      CANAGE1  ADP039X.    CNKIND2  ADP038X.    CANAGE2  ADP039X.      
      CNKIND3  ADP038X.    CANAGE3  ADP039X.    CNKIND4  ADP038X.      
      CANAGE4  ADP039X.    CNKIND5  ADP038X.    CANAGE5  ADP039X.      
      CNKIND6  ADP038X.    CANAGE6  ADP039X.    CNKIND7  ADP038X.      
      CANAGE7  ADP039X.    CNKIND8  ADP038X.    CANAGE8  ADP039X.      
      CNKIND9  ADP038X.    CANAGE9  ADP039X.    CNKIND10 ADP038X.      
      CANAGE10 ADP039X.    CNKIND11 ADP038X.    CANAGE11 ADP039X.      
      CNKIND12 ADP038X.    CANAGE12 ADP039X.    CNKIND13 ADP038X.      
      CANAGE13 ADP039X.    CNKIND14 ADP038X.    CANAGE14 ADP039X.      
      CNKIND15 ADP038X.    CANAGE15 ADP039X.    CNKIND16 ADP038X.      
      CANAGE16 ADP039X.    CNKIND17 ADP038X.    CANAGE17 ADP039X.      
      CNKIND18 ADP038X.    CANAGE18 ADP039X.    CNKIND19 ADP038X.      
      CANAGE19 ADP039X.    CNKIND20 ADP038X.    CANAGE20 ADP039X.      
      CNKIND21 ADP038X.    CANAGE21 ADP039X.    CNKIND22 ADP038X.      
      CANAGE22 ADP039X.    CNKIND23 ADP038X.    CANAGE23 ADP039X.      
      CNKIND24 ADP038X.    CANAGE24 ADP039X.    CNKIND25 ADP038X.      
      CANAGE25 ADP039X.    CNKIND26 ADP038X.    CANAGE26 ADP039X.      
      CNKIND27 ADP038X.    CANAGE27 ADP039X.    CNKIND28 ADP038X.      
      CANAGE28 ADP039X.    CNKIND29 ADP038X.    CANAGE29 ADP039X.      
      CNKIND30 ADP038X.    CANAGE30 ADP039X.    CNKIND31 ADP038X.      
      DIBEV    ADP099X.    DIBAGE   ADP039X.    INSLN    ADP025X.      
      DIBPILL  ADP025X.    AHAYFYR  ADP009X.    SINYR    ADP009X.      
      CBRCHYR  ADP009X.    KIDWKYR  ADP009X.    LIVYR    ADP009X.      
      JNTYR    ADP009X.    JNTMO    ADP025X.    JNTIJ    ADP025X.      
      JNTIJLN  ADP111X.    JNTIJLT  ADP112X.    JNTIJLM  ADP113X.      
      JNTYR1   ADP038X.    JNTYR2   ADP038X.    JNTYR3   ADP038X.      
      JNTYR4   ADP038X.    JNTYR5   ADP038X.    JNTYR6   ADP038X.      
      JNTYR7   ADP038X.    JNTYR8   ADP038X.    JNTYR9   ADP038X.      
      JNTYR10  ADP038X.    JNTYR11  ADP038X.    JNTYR12  ADP038X.      
      JNTYR13  ADP038X.    JNTYR14  ADP038X.    JNTYR15  ADP038X.      
      JNTYR16  ADP038X.    JNTYR17  ADP038X.    PAINECK  ADP009X.      
      PAINLB   ADP009X.    PAINLEG  ADP025X.    PAINFACE ADP009X.      
      AMIGR    ADP009X.    PREGNOW  ADP025X.    HEARAID  ADP009X.      
      AHEARST  ADP138X.    AVISION  ADP009X.    ABLIND   ADP025X.      
      UPPERT   ADP009X.    LOWERT   ADP009X.    SAD      ADP143X.      
      NERVOUS  ADP143X.    RESTLESS ADP143X.    HOPELESS ADP143X.      
      EFFORT   ADP143X.    WORTHLS  ADP143X.    MHAMTMO  ADP149X.      
                                                                       
      WRKLYR2  ADP150X.    WKDAYR   ADP151X.    BEDDAYR  ADP152X.      
      AHSTATYR ADP153X.    SPECEQ   ADP009X.    FLWALK   ADP155X.      
      FLCLIMB  ADP155X.    FLSTAND  ADP155X.    FLSIT    ADP155X.      
      FLSTOOP  ADP155X.    FLREACH  ADP155X.    FLGRASP  ADP155X.      
      FLCARRY  ADP155X.    FLPUSH   ADP155X.    FLSHOP   ADP155X.      
      FLSOCL   ADP155X.    FLRELAX  ADP155X.    FLA1AR   ADP167X.      
      AFLHCA1  ADP168X.    ALHCLN1  ADP169X.    ALHCLT1  ADP170X.      
      ALHCLY1  ADP171X.    ALANTR1  ADP172X.    AFLHCA2  ADP168X.      
      ALHCLN2  ADP169X.    ALHCLT2  ADP170X.    ALHCLY2  ADP171X.      
      ALANTR2  ADP172X.    AFLHCA3  ADP168X.    ALHCLN3  ADP169X.      
      ALHCLT3  ADP170X.    ALHCLY3  ADP171X.    ALANTR3  ADP172X.      
      AFLHCA4  ADP168X.    ALHCLN4  ADP169X.    ALHCLT4  ADP170X.      
      ALHCLY4  ADP171X.    ALANTR4  ADP172X.    AFLHCA5  ADP168X.      
      ALHCLN5  ADP169X.    ALHCLT5  ADP170X.    ALHCLY5  ADP171X.      
      ALANTR5  ADP172X.    AFLHCA6  ADP168X.    ALHCLN6  ADP169X.      
      ALHCLT6  ADP170X.    ALHCLY6  ADP171X.    ALANTR6  ADP172X.      
      AFLHCA7  ADP168X.    ALHCLN7  ADP169X.    ALHCLT7  ADP170X.      
      ALHCLY7  ADP171X.    ALANTR7  ADP172X.    AFLHCA8  ADP168X.      
      ALHCLN8  ADP169X.    ALHCLT8  ADP170X.    ALHCLY8  ADP171X.      
      ALANTR8  ADP172X.    AFLHCA9  ADP168X.    ALHCLN9  ADP169X.      
      ALHCLT9  ADP170X.    ALHCLY9  ADP171X.    ALANTR9  ADP172X.      
      AFLHCA10 ADP168X.    ALHCLN10 ADP169X.    ALHCLT10 ADP170X.      
      ALHCLY10 ADP171X.    ALANTR10 ADP172X.    AFLHCA11 ADP168X.      
      ALHCLN11 ADP169X.    ALHCLT11 ADP170X.    ALHCLY11 ADP171X.      
      ALANTR11 ADP172X.    AFLHCA12 ADP168X.    ALHCLN12 ADP169X.      
      ALHCLT12 ADP170X.    ALHCLY12 ADP171X.    ALANTR12 ADP172X.      
      AFLHCA13 ADP168X.    ALHCLN13 ADP229X.    ALHCLT13 ADP170X.      
      ALHCLY13 ADP171X.    ALANTR13 ADP172X.    AFLHCA14 ADP168X.      
      ALHCLN14 ADP169X.    ALHCLT14 ADP170X.    ALHCLY14 ADP171X.      
      ALANTR14 ADP172X.    AFLHCA15 ADP168X.    ALHCLN15 ADP169X.      
      ALHCLT15 ADP170X.    ALHCLY15 ADP171X.    ALANTR15 ADP172X.      
      AFLHCA16 ADP168X.    ALHCLN16 ADP169X.    ALHCLT16 ADP170X.      
      ALHCLY16 ADP171X.    ALANTR16 ADP172X.    AFLHCA17 ADP168X.      
      ALHCLN17 ADP169X.    ALHCLT17 ADP170X.    ALHCLY17 ADP171X.      
      ALANTR17 ADP172X.    AFLHCA18 ADP168X.    ALHCLN18 ADP169X.      
      ALHCLT18 ADP170X.    ALHCLY18 ADP171X.    ALANTR18 ADP172X.      
      AFLHCA19 ADP168X.    ALHCLN19 ADP169X.    ALHCLT19 ADP170X.      
      ALHCLY19 ADP171X.    ALANTR19 ADP172X.    AFLHCA20 ADP168X.      
      ALHCLN20 ADP169X.    ALHCLT20 ADP170X.    ALHCLY20 ADP171X.      
      ALANTR20 ADP172X.    AFLHCA21 ADP168X.    ALHCLN21 ADP169X.      
      ALHCLT21 ADP170X.    ALHCLY21 ADP171X.    ALANTR21 ADP172X.      
      AFLHCA22 ADP168X.    ALHCLN22 ADP169X.    ALHCLT22 ADP170X.      
      ALHCLY22 ADP171X.    ALANTR22 ADP172X.    AFLHCA23 ADP168X.      
      ALHCLN23 ADP169X.    ALHCLT23 ADP170X.    ALHCLY23 ADP171X.      
      ALANTR23 ADP172X.    AFLHCA24 ADP168X.    ALHCLN24 ADP169X.      
      ALHCLT24 ADP170X.    ALHCLY24 ADP171X.    ALANTR24 ADP172X.      
      AFLHCA25 ADP168X.    ALHCLN25 ADP169X.    ALHCLT25 ADP170X.      
      ALHCLY25 ADP171X.    ALANTR25 ADP172X.    AFLHCA26 ADP168X.      
      ALHCLN26 ADP169X.    ALHCLT26 ADP170X.    ALHCLY26 ADP171X.      
      ALANTR26 ADP172X.    AFLHCA27 ADP168X.    ALHCLN27 ADP169X.      
      ALHCLT27 ADP170X.    ALHCLY27 ADP171X.    ALANTR27 ADP172X.      
      AFLHCA28 ADP168X.    ALHCLN28 ADP169X.    ALHCLT28 ADP170X.      
      ALHCLY28 ADP171X.    ALANTR28 ADP172X.    AFLHCA29 ADP168X.      
      ALHCLN29 ADP169X.    ALHCLT29 ADP170X.    ALHCLY29 ADP171X.      
      ALANTR29 ADP172X.    AFLHCA30 ADP168X.    ALHCLN30 ADP169X.      
      ALHCLT30 ADP170X.    ALHCLY30 ADP171X.    ALANTR30 ADP172X.      
      AFLHCA31 ADP168X.    ALHCLN31 ADP169X.    ALHCLT31 ADP170X.      
      ALHCLY31 ADP171X.    ALANTR31 ADP172X.    AFLHCA32 ADP168X.      
      ALHCLN32 ADP169X.    ALHCLT32 ADP170X.    ALHCLY32 ADP171X.      
      ALANTR32 ADP172X.    AFLHCA33 ADP168X.    ALHCLN33 ADP169X.      
      ALHCLT33 ADP170X.    ALHCLY33 ADP171X.    ALANTR33 ADP172X.      
      AFLHCA34 ADP168X.    ALHCLN34 ADP169X.    ALHCLT34 ADP170X.      
      ALHCLY34 ADP171X.    ALANTR34 ADP172X.    AFLHCA90 ADP168X.      
      ALHCLN90 ADP169X.    ALHCLT90 ADP170X.    ALHCLY90 ADP171X.      
      ALANTR90 ADP172X.    AFLHCA91 ADP168X.    ALHCLN91 ADP169X.      
      ALHCLT91 ADP170X.    ALHCLY91 ADP171X.    ALANTR91 ADP172X.      
                                                                       
      SMKEV    ADP009X.    SMKREG   ADP349X.    SMKNOW   ADP350X.      
      SMKQTNO  ADP351X.    SMKQTTP  ADP352X.    SMKQTY   ADP353X.      
      SMKQTD   ADP025X.    SMKQTD2  ADP025X.    CIGSDA1  ADP356X.      
      CIGDAMO  ADP357X.    CIGSDA2  ADP356X.    CIGSDAY  ADP356X.      
      CIGQTYR  ADP025X.    SMKSTAT1 ADP361X.    SMKSTAT2 ADP362X.      
      SMKSTAT3 ADP363X.    VIG20NO  ADP364X.    VIG20TP  ADP365X.      
      VIG20FRQ ADP366X.    VIG20LGT ADP367X.    VIG20MIN ADP368X.      
      MOD20NO  ADP364X.    MOD20TP  ADP365X.    MOD20FRQ ADP371X.      
      MOD20LGN ADP372X.    MOD20LGT ADP367X.    MOD20MIN ADP368X.      
      VIGNO    ADP375X.    VIGTP    ADP376X.    VIGFREQW ADP377X.      
      VIGLNGNO ADP372X.    VIGLNGTP ADP367X.    VIGMIN   ADP368X.      
      MODNO    ADP375X.    MODTP    ADP376X.    MODFREQW ADP383X.      
      MODLNGNO ADP372X.    MODLNGTP ADP367X.    MODMIN   ADP368X.      
      VIGNO2   ADP375X.    VIGTP2   ADP376X.    VIGFRQW2 ADP377X.      
      VIGLNGN2 ADP372X.    VIGLNGT2 ADP367X.    VIGMIN2  ADP392X.      
      MODNO2   ADP375X.    MODTP2   ADP376X.    MODFRQW2 ADP383X.      
      MODLNGN2 ADP372X.    MODLNGT2 ADP367X.    MODMIN2  ADP392X.      
      STRNGNO  ADP364X.    STRNGTP  ADP365X.    STRFREQW ADP401X.      
      ALC1YR   ADP009X.    ALCLIFE  ADP025X.    ALC12MNO ADP404X.      
      ALC12MTP ADP405X.    ALC12MMO ADP406X.    ALC12MWK ADP407X.      
      ALC12MYR ADP408X.    ALCAMT   ADP409X.    ALC5UPNO ADP410X.      
      ALC5UPTP ADP405X.    ALC5UPYR ADP412X.    ALCSTAT1 ADP413X.      
      AHEIGHT  ADP414X.    AWEIGHTP ADP415X.    DESIREWT ADP416X.      
      BMI      ADP417X.                                                
                                                                       
      AUSUALPL ADP418X.    APLKIND  ADP419X.    AHCPLROU ADP420X.      
      AHCPLKND ADP421X.    SOURCELA ADP422X.    AHCCHGYR ADP025X.      
      AHCCHGHI ADP424X.    AHCDLYR1 ADP009X.    AHCDLYR2 ADP009X.      
      AHCDLYR3 ADP009X.    AHCDLYR4 ADP009X.    AHCDLYR5 ADP009X.      
      AHCAFYR1 ADP009X.    AHCAFYR2 ADP009X.    AHCAFYR3 ADP009X.      
      ADENLONG ADP433X.    AHCSYR1  ADP009X.    AHCSYR2  ADP009X.      
      AHCSYR3  ADP009X.    AHCSYR4  ADP009X.    AHCSYR5  ADP009X.      
      AHCSYR6  ADP009X.    AHCSYR7  ADP025X.    AHCSYR8  ADP009X.      
      AHCSYR9  ADP009X.    AHCSYR10 ADP025X.    AHERNOYR ADP444X.      
      AHCHYR   ADP009X.    AHCHMOYR ADP446X.    AHCHNOYR ADP447X.      
      AHCNOYR  ADP444X.    ASRGYR   ADP009X.    ASRGNOYR ADP450X.      
      AMDLONG  ADP451X.    SHTFLUYR ADP009X.    SHTPNUYR ADP009X.      
                                                                       
      YRSINUS  ADP454X.    WRKCAT   ADP459X.    LOCALLNO ADP460X.      
      LOCPRTNO ADP460X.    YRSWRK_P ADP462X.    WRKLONGD ADP463X.      
      HOURPD   ADP025X.    PDSICK   ADP025X.    ONEJOB   ADP025X.      
      WRKCATOT ADP467X.    BUSINC   ADP025X.                           
                                                                       
      BLDGV    ADP009X.    BLDG12M  ADP025X.    AIDSTST  ADP009X.      
      WHYTSU01 ADP038X.    WHYTSU02 ADP038X.    WHYTSU03 ADP038X.      
      WHYTSU04 ADP038X.    WHYTSU05 ADP038X.    WHYTSU06 ADP038X.      
      WHYTSU07 ADP038X.    WHYTSU08 ADP038X.    WHYTSU09 ADP038X.      
      WHYTSU10 ADP038X.    TST12M   ADP025X.    REATOT01 ADP038X.      
      REATOT02 ADP038X.    REATOT03 ADP038X.    REATOT04 ADP038X.      
      REATOT05 ADP038X.    REATOT06 ADP038X.    REATOT07 ADP038X.      
      REATOT08 ADP038X.    REATOT09 ADP038X.    REATOT10 ADP038X.      
      REATOT11 ADP038X.    REATOT12 ADP038X.    REATOT13 ADP038X.      
      LASTST   ADP496X.    ALTST    ADP497X.    TALKHP   ADP025X.      
      RSGVN    ADP499X.    EXTST12M ADP009X.    WHY12U01 ADP038X.      
      WHY12U02 ADP038X.    WHY12U03 ADP038X.    WHY12U04 ADP038X.      
      WHY12U05 ADP038X.    WHY12U06 ADP038X.    WHY12U07 ADP038X.      
      WHY12U08 ADP038X.    WHY12U09 ADP038X.    WHY12U10 ADP038X.      
      WHY12U11 ADP038X.    WHY12U12 ADP038X.    WHERTST  ADP513X.      
      CHNSADSP ADP514X.    STMTRU   ADP515X.;                          
                                                                       
PROC CONTENTS DATA=NHIS.SAMADULT_1997;                                      
                                                                       
PROC FREQ DATA=NHIS.SAMADULT_1997;                                          
   TITLE1 'FREQUENCY REPORT FOR 1997 NHIS SAMADULT FILE';              
   TITLE2 '(WEIGHTED)';                                                
   TABLES RACEREC * SEX/LIST MISSING;                                  
   WEIGHT WTFA_SA ;                                                    
                                                                       
PROC FREQ DATA=NHIS.SAMADULT_1997;                                          
   TITLE1 'FREQUENCY REPORT FOR 1997 NHIS SAMADULT FILE';              
   TITLE2 '(UNWEIGHTED)';                                              
   TABLES RACEREC * SEX/LIST MISSING;                                  
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE          
        STATEMENT: FORMAT _ALL_;                                       
RUN;                                                                   
