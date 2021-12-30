*********************************************************************
 JUNE 1, 2006  8:56 AM
 
 This is an example of a SAS program that creates a SAS
 file from the 2005 NHIS Public Use samadult.DAT ASCII file
 
 This is stored in samadult.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\Data\NHIS";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\Data\NHIS";

FILENAME ASCIIDAT 'C:\Data\NHIS\samadult.dat';

* DEFINE VARIABLE VALUES FOR REPORTS;

*  USE THE STATEMENT "PROC FORMAT LIBRARY=LIBRARY"
     TO PERMANENTLY STORE THE FORMAT DEFINITIONS;

*  USE THE STATEMENT "PROC FORMAT" IF YOU DO NOT WISH
      TO PERMANENTLY STORE THE FORMATS;

/*
PROC FORMAT LIBRARY=LIBRARY;
*PROC FORMAT;

   VALUE $GROUPC
      ' '< - HIGH   = "All Values"
   ;
   VALUE GROUPN
      LOW - HIGH   = "All Values"
   ;
   VALUE SAP001X
      10                 = "10 Household"
      20                 = "20 Person"
      30                 = "30 Sample Adult"
      31                 = "31 Sample Adult Cancer"
      40                 = "40 Sample Child"
      60                 = "60 Family"
      70                 = "70 Injury/Poisoning Episode"
      75                 = "75 Injury/Poisoning Verbatim"
   ;
   VALUE SAP002X
      2005               = "2005"
   ;
   VALUE SAP004X
      1                  = "1 Quarter 1"
      2                  = "2 Quarter 2"
      3                  = "3 Quarter 3"
      4                  = "4 Quarter 4"
   ;
   VALUE SAP005X
      01                 = "01 Week 1"
      02                 = "02 Week 2"
      03                 = "03 Week 3"
      04                 = "04 Week 4"
      05                 = "05 Week 5"
      06                 = "06 Week 6"
      07                 = "07 Week 7"
      08                 = "08 Week 8"
      09                 = "09 Week 9"
      10                 = "10 Week 10"
      11                 = "11 Week 11"
      12                 = "12 Week 12"
      13                 = "13 Week 13"
   ;
   VALUE SAP010X
      1                  = "1 Northeast"
      2                  = "2 Midwest"
      3                  = "3 South"
      4                  = "4 West"
   ;
   VALUE SAP011X
      LOW  - HIGH        = "Stratum for variance estimation"
   ;
   VALUE SAP012X
      LOW  - HIGH        = "PSU for variance estimation"
   ;
   VALUE SAP013X
      1                  = "1 Male"
      2                  = "2 Female"
   ;
   VALUE SAP014X
      00                 = "00 Multiple Hispanic"
      01                 = "01 Puerto Rico"
      02                 = "02 Mexican"
      03                 = "03 Mexican-American"
      04                 = "04 Cuban/Cuban American"
      05                 = "05 Dominican (Republic)"
      06                 = "06 Central or South American"
      07                 = "07 Other Latin American, type not specified"
      08                 = "08 Other Spanish"
      09                 = "09 Hispanic/Latino/Spanish, non-specific type"
      10                 = "10 Hispanic/Latino/Spanish, type refused"
      11                 = "11 Hispanic/Latino/Spanish, type not ascertained"
      12                 = "12 Not Hispanic/Spanish origin"
   ;
   VALUE SAP015X
      01                 = "01 White only"
      02                 = "02 Black/African American only"
      03                 = "03 AIAN only"
      04                 = "04 Asian only"
      05                 = "05 Race group not releasable (See file layout)"
      06                 = "06 Multiple race"
   ;
   VALUE SAP016X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American), Alaska Native"
      09                 = "09 Asian Indian"
      10                 = "10 Chinese"
      11                 = "11 Filipino"
      15                 = "15 Other Asian (See file layout)"
      16                 = "16 Primary race not releasable (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE SAP017X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American) (includes Eskimo, Aleut)"
      06                 = "06 Chinese"
      07                 = "07 Filipino"
      12                 = "12 Asian Indian"
      16                 = "16 Other race (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE SAP018X
      00                 = "00 Under 1 year"
      85                 = "85 85+ years"
   ;
   VALUE SAP019X
      0                  = "0 Under 14 years"
      1                  = "1 Married - spouse in household"
      2                  = "2 Married - spouse not in household"
      3                  = "3 Married - spouse in household unknown"
      4                  = "4 Widowed"
      5                  = "5 Divorced"
      6                  = "6 Separated"
      7                  = "7 Never married"
      8                  = "8 Living with partner"
      9                  = "9 Unknown marital status"
   ;
   VALUE SAP020X
      1                  = "1 Physical or mental condition prohibits responding"
      2                  = "2 Sample adult is able to respond"
      3                  = "3 Unknown"
   ;
   VALUE SAP021X
      1                  = "1 Yes"
      2                  = "2 No"
   ;
   VALUE SAP022X
      1                  = "1 Relative who lives in household"
      2                  = "2 Relative who doesn't live in household"
      3                  = "3 Other caregiver"
      4                  = "4 Other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP023X
      1                  = "1 Working for pay at a job or business"
      2                  = "2 With a job or business but not at work"
      3                  = "3 Looking for work"
      4                  = "4 Working, but not for pay, at a job or business"
      5                  = 
"5 Not working at a job or business and not looking for work"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP024X
      01                 = "01 Taking care of house or family"
      02                 = "02 Going to school"
      03                 = "03 Retired"
      04                 = "04 On a planned vacation from work"
      05                 = "05 On family or maternity leave"
      06                 = "06 Temporarily unable to work for health reasons"
      07                 = "07 Have job/contract and off-season"
      08                 = "08 On layoff"
      09                 = "09 Disabled"
      10                 = "10 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP025X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP026X
      LOW  - HIGH        = "See NAICS Industry Recode Appendix in file layout"
   ;
   VALUE SAP028X
      LOW  - HIGH        = 
"See 2000 SOC Occupation Recode Appendix in file layout"
   ;
   VALUE SAP030X
      1                  = "1 Employee of a PRIVATE company for wages"
      2                  = "2 A FEDERAL government employee"
      3                  = "3 A STATE government employee"
      4                  = "4 A LOCAL government employee"
      5                  = 
"5 Self-employed in OWN business, professional practice or farm"
      6                  = 
"6 Working WITHOUT PAY in a family-owned business or farm"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP032X
      01                 = "01 1-9 employees"
      02                 = "02 10-24 employees"
      03                 = "03 25-49 employees"
      04                 = "04 50-99 employees"
      05                 = "05 100-249 employees"
      06                 = "06 250-499 employees"
      07                 = "07 500-999 employees"
      08                 = "08 1000 employees or more"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP033X
      00                 = "00 Less than 1 year"
      35                 = "35 35 or more years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP053X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP084X
      85                 = "85 85+ years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP114X
      1                  = "1 Yes"
      2                  = "2 No"
      3                  = "3 Borderline"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP116X
      00                 = "00 Within past year"
      85                 = "85 85+ years"
      96                 = "96 1+ year(s) with diabetes and age is 85+"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP155X
      1                  = "1 Good"
      2                  = "2 A little trouble"
      3                  = "3 A lot of trouble"
      4                  = "4 Deaf"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP159X
      1                  = "1 ALL of the time"
      2                  = "2 MOST of the time"
      3                  = "3 SOME of the time"
      4                  = "4 A LITTLE of the time"
      5                  = "5 NONE of the time"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP165X
      1                  = "1 A lot"
      2                  = "2 Some"
      3                  = "3 A little"
      4                  = "4 Not at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP166X
      0                  = "0 Had job last week"
      1                  = "1 No job last week, had job past 12 m"
      2                  = "2 No job last week, no job past 12 m"
      3                  = "3 Never worked"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP167X
      000                = "000 None"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP169X
      1                  = "1 Better"
      2                  = "2 Worse"
      3                  = "3 About the same"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP171X
      0                  = "0 Not at all difficult"
      1                  = "1 Only a little difficult"
      2                  = "2 Somewhat difficult"
      3                  = "3 Very difficult"
      4                  = "4 Can't do at all"
      6                  = "6 Do not do this activity"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP183X
      1                  = "1 Limited in any way"
      2                  = "2 Not limited in any way"
      3                  = "3 Unknown if limited"
   ;
   VALUE SAP220X
      95                 = "95 95+"
      96                 = "96 Since birth"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP221X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      6                  = "6 Since birth"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP222X
      00                 = "00 Less than 1 year"
      85                 = "85 85+ years"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP223X
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP224X
      1                  = "1 Chronic"
      2                  = "2 Not chronic"
      9                  = "9 Unknown if chronic"
   ;
   VALUE SAP400X
      1                  = "1 At least one chronic cond causes functl lim"
      2                  = "2 No chronic cond causes functl lim"
      9                  = "9 Unk if any chronic cond causes functl lim"
   ;
   VALUE SAP401X
      0                  = "0 Not limited in any way (incl unk if limited)"
      1                  = "1 Limited; caused by at least one chronic cond"
      2                  = "2 Limited; not caused by chronic cond"
      3                  = "3 Limited; unk if cond is chronic"
   ;
   VALUE SAP403X
      85                 = "85 85 years or older"
      96                 = "96 Never smoked regularly"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP404X
      1                  = "1 Every day"
      2                  = "2 Some days"
      3                  = "3 Not at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP405X
      1                  = "1 Current every day smoker"
      2                  = "2 Current some day smoker"
      3                  = "3 Former smoker"
      4                  = "4 Never smoker"
      5                  = "5 Smoker, current status unknown"
      9                  = "9 Unknown if ever smoked"
   ;
   VALUE SAP406X
      95                 = "95 95+"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP407X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP408X
      00                 = "00 Less than 1 year"
      70                 = "70 70+ years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP409X
      95                 = "95 95+ cigarettes"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP410X
      00                 = "00 None"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP414X
      000                = "000 Never"
      996                = "996 Unable to do this type activity"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP415X
      0                  = "0 Never"
      1                  = "1 Per day"
      2                  = "2 Per week"
      3                  = "3 Per month"
      4                  = "4 Per year"
      6                  = "6 Unable to do this activity"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP416X
      00                 = "00 Less than once per week"
      95                 = "95 Never"
      96                 = "96 Unable to do vigorous activity"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP417X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP418X
      1                  = "1 Minutes"
      2                  = "2 Hours"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP419X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP422X
      00                 = "00 Less than once per week"
      95                 = "95 Never"
      96                 = "96 Unable to do light or moderate activity"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP428X
      00                 = "00 Less than once per week"
      95                 = "95 Never"
      96                 = "96 Unable to do strength activity"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP431X
      000                = "000 Never"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP432X
      0                  = "0 Never/None"
      1                  = "1 Week"
      2                  = "2 Month"
      3                  = "3 Year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP433X
      00                 = "00 Less than one day per week"
      95                 = "95 Did not drink in past year"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP434X
      000                = "000 Never/none"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP435X
      95                 = "95 95+ drinks"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP436X
      01                 = "01 Lifetime abstainer"
      02                 = "02 Former infrequent"
      03                 = "03 Former regular"
      04                 = "04 Former, unknown frequency"
      05                 = "05 Current infrequent"
      06                 = "06 Current light"
      07                 = "07 Current moderate"
      08                 = "08 Current heavier"
      09                 = "09 Current drinker, frequency/level unknown"
      10                 = "10 Drinking status unknown"
   ;
   VALUE SAP437X
      000                = "000 Never/None"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP438X
      0                  = "0 Never/None"
      1                  = "1 Per week"
      2                  = "2 Per month"
      3                  = "3 Per year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP440X
      96                 = "96 Not available"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP441X
      996                = "996 Not available"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP442X
      99.95              = "99.95 99.95+"
      99.99              = "99.99 Unknown"
   ;
   VALUE SAP443X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP444X
      1                  = "1 Yes"
      2                  = "2 There is NO place"
      3                  = "3 There is MORE THAN ONE place"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP445X
      1                  = "1 Clinic or health center"
      2                  = "2 Doctor's office or HMO"
      3                  = "3 Hospital emergency room"
      4                  = "4 Hospital outpatient department"
      5                  = "5 Some other place"
      6                  = "6 Doesn't go to one place most often"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP447X
      0                  = "0 Doesn't get preventive care anywhere"
      1                  = "1 Clinic or health center"
      2                  = "2 Doctor's office or HMO"
      3                  = "3 Hospital emergency room"
      4                  = "4 Hospital outpatient department"
      5                  = "5 Some other place"
      6                  = "6 Doesn't go to one place most often"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP459X
      0                  = "0 Never"
      1                  = "1 6 months or less"
      2                  = "2 More than 6 mos, but not more than 1 yr ago"
      3                  = "3 More than 1 yr, but not more than 2 yrs ago"
      4                  = "4 More than 2 yrs, but not more than 5 yrs ago"
      5                  = "5 More than 5 years ago"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP470X
      00                 = "00 None"
      01                 = "01 1"
      02                 = "02 2-3"
      03                 = "03 4-5"
      04                 = "04 6-7"
      05                 = "05 8-9"
      06                 = "06 10-12"
      07                 = "07 13-15"
      08                 = "08 16 or more"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP472X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP473X
      01                 = "01 1"
      02                 = "02 2-3"
      03                 = "03 4-5"
      04                 = "04 6-7"
      05                 = "05 8-9"
      06                 = "06 10-12"
      07                 = "07 13-15"
      08                 = "08 16 or more"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP476X
      95                 = "95 95+ times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP479X
      01                 = "01 January"
      02                 = "02 February"
      03                 = "03 March"
      04                 = "04 April"
      05                 = "05 May"
      06                 = "06 June"
      07                 = "07 July"
      08                 = "08 August"
      09                 = "09 September"
      10                 = "10 October"
      11                 = "11 November"
      12                 = "12 December"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP480X
      2004               = "2004"
      2005               = "2005"
      2006               = "2006"
      9997               = "9997 Refused"
      9998               = "9998 Not ascertained"
      9999               = "9999 Don't know"
   ;
   VALUE SAP490X
      1                  = "1 Received at least 3 doses"
      2                  = "2 Received less than 3 doses"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP494X
      01                 = "01 It's unlikely you've been exposed to HIV"
      02                 = 
"02 You were afraid to find out if you were HIV positive (that you had HIV)"
      03                 = 
"03 You didn't want to think about HIV or about being HIV positive"
      04                 = 
"04 You were worried your name would be reported to the government if you tested
 positive"
      05                 = "05 You didn't know where to get tested"
      06                 = "06 You don't like needles"
      07                 = 
"07 You were afraid of losing job, insurance, housing, friends, family, if peopl
e knew you were positive for AIDS infection"
      08                 = "08 Some other reason"
      09                 = "09 No particular reason"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP495X
      01                 = "01 January"
      02                 = "02 February"
      03                 = "03 March"
      04                 = "04 April"
      05                 = "05 May"
      06                 = "06 June"
      07                 = "07 July"
      08                 = "08 August"
      09                 = "09 September"
      10                 = "10 October"
      11                 = "11 November"
      12                 = "12 December"
      96                 = "96 Time period format"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP496X
      9996               = "9996 Time period format"
      9997               = "9997 Refused"
      9998               = "9998 Not ascertained"
      9999               = "9999 Don't know"
   ;
   VALUE SAP497X
      1                  = "1 6 months or less"
      2                  = "2 More than 6 months but not more than 1 year ago"
      3                  = "3 More than 1 year, but not more than 2 years ago"
      4                  = "4 More than 2 years, but not more than 5 years ago"
      5                  = "5 More than 5 years ago"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP498X
      01                 = "01 Someone suggested you should be tested"
      02                 = 
"02 You might have been exposed through sex or drug use"
      03                 = 
"03 You might have been exposed through your work or at work"
      04                 = 
"04 You just wanted to find out if you were infected or not"
      05                 = 
"05 For part of a routine medical check-up, or for hospitalization or surgical p
rocedure"
      06                 = "06 You were sick or had a medical problem"
      07                 = "07 You were pregnant or delivered a baby"
      08                 = "08 For health or life insurance coverage"
      09                 = 
"09 For military induction, separation, or military service"
      10                 = "10 For immigration"
      11                 = "11 For marriage license or to get married"
      12                 = "12 You were concerned you could give HIV to someone"
      13                 = 
"13 You wanted medical care or new treatments if you tested positive"
      14                 = "14 Some other reason"
      15                 = "15 No particular reason"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP499X
      1                  = "1 Doctor, nurse or other health care professional"
      2                  = "2 Sex partner"
      3                  = "3 Someone at health department"
      4                  = "4 Family member or friend"
      5                  = "5 Other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP500X
      01                 = "01 Private doctor/HMO"
      02                 = "02 AIDS clinic/counseling/testing site"
      03                 = "03 Hospital, emergency room, outpatient clinic"
      04                 = "04 Other type of clinic"
      05                 = "05 Public health department"
      06                 = "06 At home"
      07                 = "07 Drug treatment facility"
      08                 = "08 Military induction or military service site"
      09                 = "09 Immigration site"
      10                 = "10 In a correctional facility (jail or prison)"
      11                 = "11 Other location"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP501X
      01                 = "01 Family planning clinic"
      02                 = "02 Prenatal clinic"
      03                 = "03 Tuberculosis clinic"
      04                 = "04 STD clinic"
      05                 = "05 Community health clinic"
      06                 = "06 Clinic run by employer or insurance company"
      07                 = "07 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP502X
      1                  = "1 Nurse or health worker"
      2                  = "2 Self-sampling kit"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP505X
      1                  = "1 High/Already have HIV/AIDS"
      2                  = "2 Medium"
      3                  = "3 Low"
      4                  = "4 None"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP506X
      1                  = "1 Yes, at least one statement is true"
      2                  = "2 No, none of these statements are true"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP509X
      1                  = "1 Private doctor"
      2                  = "2 Family planning clinic"
      3                  = "3 STD clinic"
      4                  = "4 Emergency room"
      5                  = "5 Health department"
      6                  = "6 Some other place"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP512X
      1                  = "1 A lot"
      2                  = "2 Some"
      3                  = "3 A little"
      4                  = "4 Nothing"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP520X
      1                  = "1 High"
      2                  = "2 Medium"
      3                  = "3 Low"
      4                  = "4 None"
      5                  = "5 Already have TB"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
*/

DATA NHIS.samadult_2005;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=729;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE    3   SRVY_YR    4   HHX      $ 6   INTV_QRT   3
      ASSIGNWK   3   FMX      $ 2   FPX      $ 2   WTIA_SA    8
      WTFA_SA    8

      /* UCF LENGTHS */

      REGION     3   STRATUM    4   PSU        3

      /* HHC LENGTHS */

      SEX        3   HISPAN_I   3   RACERPI2   3   MRACRPI2   3
      MRACBPI2   3   AGE_P      3

      /* FID LENGTHS */

      R_MARITL   3

      /* AID LENGTHS */

      PROXYSA    3   PROX1      3   PROX2      3

      /* ASD LENGTHS */

      DOINGLWA   3   WHYNOWKA   3   EVERWRK    3   INDSTRN1   3
      INDSTRN2   3   OCCUPN1    3   OCCUPN2    3   WRKCATA    3
      BUSINC1A   3   LOCALL1A   3   YRSWRKPA   3   WRKLONGH   3
      HOURPDA    3   PDSICKA    3   ONEJOB     3

      /* ACN LENGTHS */

      HYPEV      3   HYPDIFV    3   CHDEV      3   ANGEV      3
      MIEV       3   HRTEV      3   STREV      3   EPHEV      3
      AASMEV     3   AASSTILL   3   AASMYR     3   AASMERYR   3
      ULCEV      3   ULCYR      3   CANEV      3   CNKIND1    3
      CNKIND2    3   CNKIND3    3   CNKIND4    3   CNKIND5    3
      CNKIND6    3   CNKIND7    3   CNKIND8    3   CNKIND9    3
      CNKIND10   3   CNKIND11   3   CNKIND12   3   CNKIND13   3
      CNKIND14   3   CNKIND15   3   CNKIND16   3   CNKIND17   3
      CNKIND18   3   CNKIND19   3   CNKIND20   3   CNKIND21   3
      CNKIND22   3   CNKIND23   3   CNKIND24   3   CNKIND25   3
      CNKIND26   3   CNKIND27   3   CNKIND28   3   CNKIND29   3
      CNKIND30   3   CNKIND31   3   CANAGE1    3   CANAGE2    3
      CANAGE3    3   CANAGE4    3   CANAGE5    3   CANAGE6    3
      CANAGE7    3   CANAGE8    3   CANAGE9    3   CANAGE10   3
      CANAGE11   3   CANAGE12   3   CANAGE13   3   CANAGE14   3
      CANAGE15   3   CANAGE16   3   CANAGE17   3   CANAGE18   3
      CANAGE19   3   CANAGE20   3   CANAGE21   3   CANAGE22   3
      CANAGE23   3   CANAGE24   3   CANAGE25   3   CANAGE26   3
      CANAGE27   3   CANAGE28   3   CANAGE29   3   CANAGE30   3
      DIBEV      3   DIBAGE     3   DIFAGE2    3   INSLN      3
      DIBPILL    3   AHAYFYR    3   SINYR      3   CBRCHYR    3
      KIDWKYR    3   LIVYR      3   JNTSYMP    3   JMTHP1     3
      JMTHP2     3   JMTHP3     3   JMTHP4     3   JMTHP5     3
      JMTHP6     3   JMTHP7     3   JMTHP8     3   JMTHP9     3
      JMTHP10    3   JMTHP11    3   JMTHP12    3   JMTHP13    3
      JMTHP14    3   JMTHP15    3   JMTHP16    3   JMTHP17    3
      JNTCHR     3   JNTHP      3   ARTH1      3   ARTHLMT    3
      PAINECK    3   PAINLB     3   PAINLEG    3   PAINFACE   3
      AMIGR      3   ACOLD2W    3   AINTIL2W   3   PREGNOW    3
      HEARAID    3   AHEARST    3   AVISION    3   ABLIND     3
      LUPPRT     3   SAD        3   NERVOUS    3   RESTLESS   3
      HOPELESS   3   EFFORT     3   WORTHLS    3   MHAMTMO    3

      /* AHS LENGTHS */

      WRKLYR3    3   WKDAYR     4   BEDDAYR    4   AHSTATYR   3
      SPECEQ     3   FLWALK     3   FLCLIMB    3   FLSTAND    3
      FLSIT      3   FLSTOOP    3   FLREACH    3   FLGRASP    3
      FLCARRY    3   FLPUSH     3   FLSHOP     3   FLSOCL     3
      FLRELAX    3   FLA1AR     3   AFLHCA1    3   AFLHCA2    3
      AFLHCA3    3   AFLHCA4    3   AFLHCA5    3   AFLHCA6    3
      AFLHCA7    3   AFLHCA8    3   AFLHCA9    3   AFLHCA10   3
      AFLHCA11   3   AFLHCA12   3   AFLHCA13   3   AFLHCA14   3
      AFLHCA15   3   AFLHCA16   3   AFLHCA17   3   AFLHCA18   3
      AFLHC19_   3   AFLHC20_   3   AFLHC21_   3   AFLHC22_   3
      AFLHC23_   3   AFLHC24_   3   AFLHC25_   3   AFLHC26_   3
      AFLHC27_   3   AFLHC28_   3   AFLHC29_   3   AFLHC30_   3
      AFLHC31_   3   AFLHC32_   3   AFLHC33_   3   AFLHC34_   3
      AFLHCA90   3   AFLHCA91   3   ALTIME1    3   ALUNIT1    3
      ALDURA1    3   ALDURB1    3   ALCHRC1    3   ALTIME2    3
      ALUNIT2    3   ALDURA2    3   ALDURB2    3   ALCHRC2    3
      ALTIME3    3   ALUNIT3    3   ALDURA3    3   ALDURB3    3
      ALCHRC3    3   ALTIME4    3   ALUNIT4    3   ALDURA4    3
      ALDURB4    3   ALCHRC4    3   ALTIME5    3   ALUNIT5    3
      ALDURA5    3   ALDURB5    3   ALCHRC5    3   ALTIME6    3
      ALUNIT6    3   ALDURA6    3   ALDURB6    3   ALCHRC6    3
      ALTIME7    3   ALUNIT7    3   ALDURA7    3   ALDURB7    3
      ALCHRC7    3   ALTIME8    3   ALUNIT8    3   ALDURA8    3
      ALDURB8    3   ALCHRC8    3   ALTIME9    3   ALUNIT9    3
      ALDURA9    3   ALDURB9    3   ALCHRC9    3   ALTIME10   3
      ALUNIT10   3   ALDURA10   3   ALDURB10   3   ALCHRC10   3
      ALTIME11   3   ALUNIT11   3   ALDURA11   3   ALDURB11   3
      ALCHRC11   3   ALTIME12   3   ALUNIT12   3   ALDURA12   3
      ALDURB12   3   ALCHRC12   3   ALTIME13   3   ALUNIT13   3
      ALDURA13   3   ALDURB13   3   ALCHRC13   3   ALTIME14   3
      ALUNIT14   3   ALDURA14   3   ALDURB14   3   ALCHRC14   3
      ALTIME15   3   ALUNIT15   3   ALDURA15   3   ALDURB15   3
      ALCHRC15   3   ALTIME16   3   ALUNIT16   3   ALDURA16   3
      ALDURB16   3   ALCHRC16   3   ALTIME17   3   ALUNIT17   3
      ALDURA17   3   ALDURB17   3   ALCHRC17   3   ALTIME18   3
      ALUNIT18   3   ALDURA18   3   ALDURB18   3   ALCHRC18   3
      ALTIME19   3   ALUNIT19   3   ALDURA19   3   ALDURB19   3
      ALCHRC19   3   ALTIME20   3   ALUNIT20   3   ALDURA20   3
      ALDURB20   3   ALCHRC20   3   ALTIME21   3   ALUNIT21   3
      ALDURA21   3   ALDURB21   3   ALCHRC21   3   ALTIME22   3
      ALUNIT22   3   ALDURA22   3   ALDURB22   3   ALCHRC22   3
      ALTIME23   3   ALUNIT23   3   ALDURA23   3   ALDURB23   3
      ALCHRC23   3   ALTIME24   3   ALUNIT24   3   ALDURA24   3
      ALDURB24   3   ALCHRC24   3   ALTIME25   3   ALUNIT25   3
      ALDURA25   3   ALDURB25   3   ALCHRC25   3   ALTIME26   3
      ALUNIT26   3   ALDURA26   3   ALDURB26   3   ALCHRC26   3
      ALTIME27   3   ALUNIT27   3   ALDURA27   3   ALDURB27   3
      ALCHRC27   3   ALTIME28   3   ALUNIT28   3   ALDURA28   3
      ALDURB28   3   ALCHRC28   3   ALTIME29   3   ALUNIT29   3
      ALDURA29   3   ALDURB29   3   ALCHRC29   3   ALTIME30   3
      ALUNIT30   3   ALDURA30   3   ALDURB30   3   ALCHRC30   3
      ALTIME31   3   ALUNIT31   3   ALDURA31   3   ALDURB31   3
      ALCHRC31   3   ALTIME32   3   ALUNIT32   3   ALDURA32   3
      ALDURB32   3   ALCHRC32   3   ALTIME33   3   ALUNIT33   3
      ALDURA33   3   ALDURB33   3   ALCHRC33   3   ALTIME34   3
      ALUNIT34   3   ALDURA34   3   ALDURB34   3   ALCHRC34   3
      ALTIME90   3   ALUNIT90   3   ALDURA90   3   ALDURB90   3
      ALCHRC90   3   ALTIME91   3   ALUNIT91   3   ALDURA91   3
      ALDURB91   3   ALCHRC91   3   ALCNDRT    3   ALCHRONR   3

      /* AHB LENGTHS */

      SMKEV      3   SMKREG     3   SMKNOW     3   SMKSTAT2   3
      SMKQTNO    3   SMKQTTP    3   SMKQTY     3   CIGSDA1    3
      CIGDAMO    3   CIGSDA2    3   CIGSDAY    3   CIGQTYR    3
      VIGNO      4   VIGTP      3   VIGFREQW   3   VIGLNGNO   4
      VIGLNGTP   3   VIGMIN     4   MODNO      4   MODTP      3
      MODFREQW   3   MODLNGNO   4   MODLNGTP   3   MODMIN     4
      STRNGNO    4   STRNGTP    3   STRFREQW   3   ALC1YR     3
      ALCLIFE    3   ALC12MNO   4   ALC12MTP   3   ALC12MWK   3
      ALC12MYR   4   ALCAMT     3   ALCSTAT    3   ALC5UPNO   4
      ALC5UPTP   3   ALC5UPYR   4   AHEIGHT    3   AWEIGHTP   4
      BMI        8   SLEEP      3

      /* AAU LENGTHS */

      AUSUALPL   3   APLKIND    3   AHCPLROU   3   AHCPLKND   3
      AHCCHGYR   3   AHCCHGHI   3   AHCDLYR1   3   AHCDLYR2   3
      AHCDLYR3   3   AHCDLYR4   3   AHCDLYR5   3   AHCAFYR1   3
      AHCAFYR2   3   AHCAFYR3   3   AHCAFYR4   3   ADNLONG2   3
      AHCSYR1    3   AHCSYR2    3   AHCSYR3    3   AHCSYR4    3
      AHCSYR5    3   AHCSYR6    3   AHCSYR7    3   AHCSYR8    3
      AHCSYR9    3   AHCSYR10   3   AHERNOY2   3   AHCHYR     3
      AHCHMOYR   3   AHCHNOY2   3   AHCNOYR2   3   ASRGYR     3
      ASRGNOYR   3   AMDLONGR   3   SHTFLUYR   3   ASHFLU_M   3
      ASHFLU_Y   4   SPRFLUYR   3   ASPFLU_M   3   ASPFLU_Y   4
      SHTPNUYR   3   APOX       3   APOX12MO   3   AHEP       3
      AHEPLIV    3   SHTHEPB    3   SHEPDOS    3

      /* ADS LENGTHS */

      BLDGV      3   BLDG12M    3   HIVTST     3   WHYTST_R   3
      TST12M_M   3   TST12M_Y   4   TIMETST    3   REATST_C   3
      REASWHOR   3   LASTST_C   3   CLNTYP_C   3   WHOADM     3
      GIVNAM     3   EXTST12M   3   CHNSADSP   3   STMTRU     3
      STD        3   STDDOC     3   STDWHER    3   TBHRD      3
      TBKNOW     3   TB         3   TBSPRD1    3   TBSPRD2    3
      TBSPRD3    3   TBSPRD4    3   TBSPRD5    3   TBSPRD6    3
      TBCURED    3   TBCHANC    3   TBSHAME    3   HOMELESS   3 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    INTV_QRT     13 -  13
      ASSIGNWK     14 -  15    FMX      $   16 -  17
      FPX      $   18 -  19    WTIA_SA      20 -  25 .1
      WTFA_SA      26 -  31

      /* UCF LOCATIONS */

      REGION       32 -  32    STRATUM      33 -  35
      PSU          36 -  36

      /* HHC LOCATIONS */

      SEX          37 -  37    HISPAN_I     38 -  39
      RACERPI2     40 -  41    MRACRPI2     42 -  43
      MRACBPI2     44 -  45    AGE_P        46 -  47


      /* FID LOCATIONS */

      R_MARITL     48 -  48

      /* AID LOCATIONS */

      PROXYSA      49 -  49    PROX1        50 -  50
      PROX2        51 -  51

      /* ASD LOCATIONS */

      DOINGLWA     52 -  52    WHYNOWKA     53 -  54
      EVERWRK      55 -  55    INDSTRN1     56 -  57
      INDSTRN2     58 -  59    OCCUPN1      60 -  61
      OCCUPN2      62 -  63    WRKCATA      64 -  64
      BUSINC1A     65 -  65    LOCALL1A     66 -  67
      YRSWRKPA     68 -  69    WRKLONGH     70 -  70
      HOURPDA      71 -  71    PDSICKA      72 -  72
      ONEJOB       73 -  73

      /* ACN LOCATIONS */

      HYPEV        74 -  74    HYPDIFV      75 -  75
      CHDEV        76 -  76    ANGEV        77 -  77
      MIEV         78 -  78    HRTEV        79 -  79
      STREV        80 -  80    EPHEV        81 -  81
      AASMEV       82 -  82    AASSTILL     83 -  83
      AASMYR       84 -  84    AASMERYR     85 -  85
      ULCEV        86 -  86    ULCYR        87 -  87
      CANEV        88 -  88    CNKIND1      89 -  89
      CNKIND2      90 -  90    CNKIND3      91 -  91
      CNKIND4      92 -  92    CNKIND5      93 -  93
      CNKIND6      94 -  94    CNKIND7      95 -  95
      CNKIND8      96 -  96    CNKIND9      97 -  97
      CNKIND10     98 -  98    CNKIND11     99 -  99
      CNKIND12    100 - 100    CNKIND13    101 - 101
      CNKIND14    102 - 102    CNKIND15    103 - 103
      CNKIND16    104 - 104    CNKIND17    105 - 105
      CNKIND18    106 - 106    CNKIND19    107 - 107
      CNKIND20    108 - 108    CNKIND21    109 - 109
      CNKIND22    110 - 110    CNKIND23    111 - 111
      CNKIND24    112 - 112    CNKIND25    113 - 113
      CNKIND26    114 - 114    CNKIND27    115 - 115
      CNKIND28    116 - 116    CNKIND29    117 - 117
      CNKIND30    118 - 118    CNKIND31    119 - 119
      CANAGE1     120 - 121    CANAGE2     122 - 123
      CANAGE3     124 - 125    CANAGE4     126 - 127
      CANAGE5     128 - 129    CANAGE6     130 - 131
      CANAGE7     132 - 133    CANAGE8     134 - 135
      CANAGE9     136 - 137    CANAGE10    138 - 139
      CANAGE11    140 - 141    CANAGE12    142 - 143
      CANAGE13    144 - 145    CANAGE14    146 - 147
      CANAGE15    148 - 149    CANAGE16    150 - 151
      CANAGE17    152 - 153    CANAGE18    154 - 155
      CANAGE19    156 - 157    CANAGE20    158 - 159
      CANAGE21    160 - 161    CANAGE22    162 - 163
      CANAGE23    164 - 165    CANAGE24    166 - 167
      CANAGE25    168 - 169    CANAGE26    170 - 171
      CANAGE27    172 - 173    CANAGE28    174 - 175
      CANAGE29    176 - 177    CANAGE30    178 - 179
      DIBEV       180 - 180    DIBAGE      181 - 182
      DIFAGE2     183 - 184    INSLN       185 - 185
      DIBPILL     186 - 186    AHAYFYR     187 - 187
      SINYR       188 - 188    CBRCHYR     189 - 189
      KIDWKYR     190 - 190    LIVYR       191 - 191
      JNTSYMP     192 - 192    JMTHP1      193 - 193
      JMTHP2      194 - 194    JMTHP3      195 - 195
      JMTHP4      196 - 196    JMTHP5      197 - 197
      JMTHP6      198 - 198    JMTHP7      199 - 199
      JMTHP8      200 - 200    JMTHP9      201 - 201
      JMTHP10     202 - 202    JMTHP11     203 - 203
      JMTHP12     204 - 204    JMTHP13     205 - 205
      JMTHP14     206 - 206    JMTHP15     207 - 207
      JMTHP16     208 - 208    JMTHP17     209 - 209
      JNTCHR      210 - 210    JNTHP       211 - 211
      ARTH1       212 - 212    ARTHLMT     213 - 213
      PAINECK     214 - 214    PAINLB      215 - 215
      PAINLEG     216 - 216    PAINFACE    217 - 217
      AMIGR       218 - 218    ACOLD2W     219 - 219
      AINTIL2W    220 - 220    PREGNOW     221 - 221
      HEARAID     222 - 222    AHEARST     223 - 223
      AVISION     224 - 224    ABLIND      225 - 225
      LUPPRT      226 - 226    SAD         227 - 227
      NERVOUS     228 - 228    RESTLESS    229 - 229
      HOPELESS    230 - 230    EFFORT      231 - 231
      WORTHLS     232 - 232    MHAMTMO     233 - 233


      /* AHS LOCATIONS */

      WRKLYR3     234 - 234    WKDAYR      235 - 237
      BEDDAYR     238 - 240    AHSTATYR    241 - 241
      SPECEQ      242 - 242    FLWALK      243 - 243
      FLCLIMB     244 - 244    FLSTAND     245 - 245
      FLSIT       246 - 246    FLSTOOP     247 - 247
      FLREACH     248 - 248    FLGRASP     249 - 249
      FLCARRY     250 - 250    FLPUSH      251 - 251
      FLSHOP      252 - 252    FLSOCL      253 - 253
      FLRELAX     254 - 254    FLA1AR      255 - 255
      AFLHCA1     256 - 256    AFLHCA2     257 - 257
      AFLHCA3     258 - 258    AFLHCA4     259 - 259
      AFLHCA5     260 - 260    AFLHCA6     261 - 261
      AFLHCA7     262 - 262    AFLHCA8     263 - 263
      AFLHCA9     264 - 264    AFLHCA10    265 - 265
      AFLHCA11    266 - 266    AFLHCA12    267 - 267
      AFLHCA13    268 - 268    AFLHCA14    269 - 269
      AFLHCA15    270 - 270    AFLHCA16    271 - 271
      AFLHCA17    272 - 272    AFLHCA18    273 - 273
      AFLHC19_    274 - 274    AFLHC20_    275 - 275
      AFLHC21_    276 - 276    AFLHC22_    277 - 277
      AFLHC23_    278 - 278    AFLHC24_    279 - 279
      AFLHC25_    280 - 280    AFLHC26_    281 - 281
      AFLHC27_    282 - 282    AFLHC28_    283 - 283
      AFLHC29_    284 - 284    AFLHC30_    285 - 285
      AFLHC31_    286 - 286    AFLHC32_    287 - 287
      AFLHC33_    288 - 288    AFLHC34_    289 - 289
      AFLHCA90    290 - 290    AFLHCA91    291 - 291
      ALTIME1     292 - 293    ALUNIT1     294 - 294
      ALDURA1     295 - 296    ALDURB1     297 - 297
      ALCHRC1     298 - 298    ALTIME2     299 - 300
      ALUNIT2     301 - 301    ALDURA2     302 - 303
      ALDURB2     304 - 304    ALCHRC2     305 - 305
      ALTIME3     306 - 307    ALUNIT3     308 - 308
      ALDURA3     309 - 310    ALDURB3     311 - 311
      ALCHRC3     312 - 312    ALTIME4     313 - 314
      ALUNIT4     315 - 315    ALDURA4     316 - 317
      ALDURB4     318 - 318    ALCHRC4     319 - 319
      ALTIME5     320 - 321    ALUNIT5     322 - 322
      ALDURA5     323 - 324    ALDURB5     325 - 325
      ALCHRC5     326 - 326    ALTIME6     327 - 328
      ALUNIT6     329 - 329    ALDURA6     330 - 331
      ALDURB6     332 - 332    ALCHRC6     333 - 333
      ALTIME7     334 - 335    ALUNIT7     336 - 336
      ALDURA7     337 - 338    ALDURB7     339 - 339
      ALCHRC7     340 - 340    ALTIME8     341 - 342
      ALUNIT8     343 - 343    ALDURA8     344 - 345
      ALDURB8     346 - 346    ALCHRC8     347 - 347
      ALTIME9     348 - 349    ALUNIT9     350 - 350
      ALDURA9     351 - 352    ALDURB9     353 - 353
      ALCHRC9     354 - 354    ALTIME10    355 - 356
      ALUNIT10    357 - 357    ALDURA10    358 - 359
      ALDURB10    360 - 360    ALCHRC10    361 - 361
      ALTIME11    362 - 363    ALUNIT11    364 - 364
      ALDURA11    365 - 366    ALDURB11    367 - 367
      ALCHRC11    368 - 368    ALTIME12    369 - 370
      ALUNIT12    371 - 371    ALDURA12    372 - 373
      ALDURB12    374 - 374    ALCHRC12    375 - 375
      ALTIME13    376 - 377    ALUNIT13    378 - 378
      ALDURA13    379 - 380    ALDURB13    381 - 381
      ALCHRC13    382 - 382    ALTIME14    383 - 384
      ALUNIT14    385 - 385    ALDURA14    386 - 387
      ALDURB14    388 - 388    ALCHRC14    389 - 389
      ALTIME15    390 - 391    ALUNIT15    392 - 392
      ALDURA15    393 - 394    ALDURB15    395 - 395
      ALCHRC15    396 - 396    ALTIME16    397 - 398
      ALUNIT16    399 - 399    ALDURA16    400 - 401
      ALDURB16    402 - 402    ALCHRC16    403 - 403
      ALTIME17    404 - 405    ALUNIT17    406 - 406
      ALDURA17    407 - 408    ALDURB17    409 - 409
      ALCHRC17    410 - 410    ALTIME18    411 - 412
      ALUNIT18    413 - 413    ALDURA18    414 - 415
      ALDURB18    416 - 416    ALCHRC18    417 - 417
      ALTIME19    418 - 419    ALUNIT19    420 - 420
      ALDURA19    421 - 422    ALDURB19    423 - 423
      ALCHRC19    424 - 424    ALTIME20    425 - 426
      ALUNIT20    427 - 427    ALDURA20    428 - 429
      ALDURB20    430 - 430    ALCHRC20    431 - 431
      ALTIME21    432 - 433    ALUNIT21    434 - 434
      ALDURA21    435 - 436    ALDURB21    437 - 437
      ALCHRC21    438 - 438    ALTIME22    439 - 440
      ALUNIT22    441 - 441    ALDURA22    442 - 443
      ALDURB22    444 - 444    ALCHRC22    445 - 445
      ALTIME23    446 - 447    ALUNIT23    448 - 448
      ALDURA23    449 - 450    ALDURB23    451 - 451
      ALCHRC23    452 - 452    ALTIME24    453 - 454
      ALUNIT24    455 - 455    ALDURA24    456 - 457
      ALDURB24    458 - 458    ALCHRC24    459 - 459
      ALTIME25    460 - 461    ALUNIT25    462 - 462
      ALDURA25    463 - 464    ALDURB25    465 - 465
      ALCHRC25    466 - 466    ALTIME26    467 - 468
      ALUNIT26    469 - 469    ALDURA26    470 - 471
      ALDURB26    472 - 472    ALCHRC26    473 - 473
      ALTIME27    474 - 475    ALUNIT27    476 - 476
      ALDURA27    477 - 478    ALDURB27    479 - 479
      ALCHRC27    480 - 480    ALTIME28    481 - 482
      ALUNIT28    483 - 483    ALDURA28    484 - 485
      ALDURB28    486 - 486    ALCHRC28    487 - 487
      ALTIME29    488 - 489    ALUNIT29    490 - 490
      ALDURA29    491 - 492    ALDURB29    493 - 493
      ALCHRC29    494 - 494    ALTIME30    495 - 496
      ALUNIT30    497 - 497    ALDURA30    498 - 499
      ALDURB30    500 - 500    ALCHRC30    501 - 501
      ALTIME31    502 - 503    ALUNIT31    504 - 504
      ALDURA31    505 - 506    ALDURB31    507 - 507
      ALCHRC31    508 - 508    ALTIME32    509 - 510
      ALUNIT32    511 - 511    ALDURA32    512 - 513
      ALDURB32    514 - 514    ALCHRC32    515 - 515
      ALTIME33    516 - 517    ALUNIT33    518 - 518
      ALDURA33    519 - 520    ALDURB33    521 - 521
      ALCHRC33    522 - 522    ALTIME34    523 - 524
      ALUNIT34    525 - 525    ALDURA34    526 - 527
      ALDURB34    528 - 528    ALCHRC34    529 - 529
      ALTIME90    530 - 531    ALUNIT90    532 - 532
      ALDURA90    533 - 534    ALDURB90    535 - 535
      ALCHRC90    536 - 536    ALTIME91    537 - 538
      ALUNIT91    539 - 539    ALDURA91    540 - 541
      ALDURB91    542 - 542    ALCHRC91    543 - 543
      ALCNDRT     544 - 544    ALCHRONR    545 - 545


      /* AHB LOCATIONS */

      SMKEV       546 - 546    SMKREG      547 - 548
      SMKNOW      549 - 549    SMKSTAT2    550 - 550
      SMKQTNO     551 - 552    SMKQTTP     553 - 553
      SMKQTY      554 - 555    CIGSDA1     556 - 557
      CIGDAMO     558 - 559    CIGSDA2     560 - 561
      CIGSDAY     562 - 563    CIGQTYR     564 - 564
      VIGNO       565 - 567    VIGTP       568 - 568
      VIGFREQW    569 - 570    VIGLNGNO    571 - 573
      VIGLNGTP    574 - 574    VIGMIN      575 - 577
      MODNO       578 - 580    MODTP       581 - 581
      MODFREQW    582 - 583    MODLNGNO    584 - 586
      MODLNGTP    587 - 587    MODMIN      588 - 590
      STRNGNO     591 - 593    STRNGTP     594 - 594
      STRFREQW    595 - 596    ALC1YR      597 - 597
      ALCLIFE     598 - 598    ALC12MNO    599 - 601
      ALC12MTP    602 - 602    ALC12MWK    603 - 604
      ALC12MYR    605 - 607    ALCAMT      608 - 609
      ALCSTAT     610 - 611    ALC5UPNO    612 - 614
      ALC5UPTP    615 - 615    ALC5UPYR    616 - 618
      AHEIGHT     619 - 620    AWEIGHTP    621 - 623
      BMI         624 - 627 .2 SLEEP       628 - 629


      /* AAU LOCATIONS */

      AUSUALPL    630 - 630    APLKIND     631 - 631
      AHCPLROU    632 - 632    AHCPLKND    633 - 633
      AHCCHGYR    634 - 634    AHCCHGHI    635 - 635
      AHCDLYR1    636 - 636    AHCDLYR2    637 - 637
      AHCDLYR3    638 - 638    AHCDLYR4    639 - 639
      AHCDLYR5    640 - 640    AHCAFYR1    641 - 641
      AHCAFYR2    642 - 642    AHCAFYR3    643 - 643
      AHCAFYR4    644 - 644    ADNLONG2    645 - 645
      AHCSYR1     646 - 646    AHCSYR2     647 - 647
      AHCSYR3     648 - 648    AHCSYR4     649 - 649
      AHCSYR5     650 - 650    AHCSYR6     651 - 651
      AHCSYR7     652 - 652    AHCSYR8     653 - 653
      AHCSYR9     654 - 654    AHCSYR10    655 - 655
      AHERNOY2    656 - 657    AHCHYR      658 - 658
      AHCHMOYR    659 - 660    AHCHNOY2    661 - 662
      AHCNOYR2    663 - 664    ASRGYR      665 - 665
      ASRGNOYR    666 - 667    AMDLONGR    668 - 668
      SHTFLUYR    669 - 669    ASHFLU_M    670 - 671
      ASHFLU_Y    672 - 675    SPRFLUYR    676 - 676
      ASPFLU_M    677 - 678    ASPFLU_Y    679 - 682
      SHTPNUYR    683 - 683    APOX        684 - 684
      APOX12MO    685 - 685    AHEP        686 - 686
      AHEPLIV     687 - 687    SHTHEPB     688 - 688
      SHEPDOS     689 - 689

      /* ADS LOCATIONS */

      BLDGV       690 - 690    BLDG12M     691 - 691
      HIVTST      692 - 692    WHYTST_R    693 - 694
      TST12M_M    695 - 696    TST12M_Y    697 - 700
      TIMETST     701 - 701    REATST_C    702 - 703
      REASWHOR    704 - 704    LASTST_C    705 - 706
      CLNTYP_C    707 - 708    WHOADM      709 - 709
      GIVNAM      710 - 710    EXTST12M    711 - 711
      CHNSADSP    712 - 712    STMTRU      713 - 713
      STD         714 - 714    STDDOC      715 - 715
      STDWHER     716 - 716    TBHRD       717 - 717
      TBKNOW      718 - 718    TB          719 - 719
      TBSPRD1     720 - 720    TBSPRD2     721 - 721
      TBSPRD3     722 - 722    TBSPRD4     723 - 723
      TBSPRD5     724 - 724    TBSPRD6     725 - 725
      TBCURED     726 - 726    TBCHANC     727 - 727
      TBSHAME     728 - 728    HOMELESS    729 - 729
;

   * DEFINE VARIABLE LABELS;

   LABEL

      /* IDN LABELS */

      RECTYPE    ="File type identifier"
      SRVY_YR    ="Year of National Health Interview Survey"
      HHX        ="HH identifier"
      INTV_QRT   ="Interview Quarter"
      ASSIGNWK   ="Assignment Week"
      FMX        ="Family Serial Number"
      FPX        ="Person Number (in family)"
      WTIA_SA    ="Weight - Interim Annual"
      WTFA_SA    ="Weight - Final Annual"

      /* UCF LABELS */

      REGION     ="Region"
      STRATUM    ="Stratum for variance estimation"
      PSU        ="PSU for variance estimation"

      /* HHC LABELS */

      SEX        ="Sex"
      HISPAN_I   ="Hispanic subgroup detail"
      RACERPI2   ="OMB groups w/multiple race"
      MRACRPI2   ="Race coded to single/multiple race group"
      MRACBPI2   ="Race coded to single/multiple race group"
      AGE_P      ="Age"

      /* FID LABELS */

      R_MARITL   ="Marital Status"

      /* AID LABELS */

      PROXYSA    ="Sample adult status"
      PROX1      ="Knowledgeable proxy for Sample Adult available"
      PROX2      ="Relationship of SA proxy to SA"

      /* ASD LABELS */

      DOINGLWA   ="Corrected employment status last week"
      WHYNOWKA   =" Main reason for not working last week"
      EVERWRK    ="Ever worked"
      INDSTRN1   ="Detailed industry classification (2002 NAICS)"
      INDSTRN2   ="Simple industry classification (2002 NAICS)"
      OCCUPN1    ="Detailed occupation classification (2000 SOC)"
      OCCUPN2    ="Simple occupation classification (2000 SOC)"
      WRKCATA    ="Class of worker"
      BUSINC1A   ="Current job an incorporated business"
      LOCALL1A   ="Number of employees at work"
      YRSWRKPA   ="Years on the job"
      WRKLONGH   ="Current/most recent job also longest held job"
      HOURPDA    ="Paid by the hour at current/most recent job"
      PDSICKA    ="Paid sick leave at current/most recent job"
      ONEJOB     ="Have more than one job"

      /* ACN LABELS */

      HYPEV      ="Ever been told you have hypertension"
      HYPDIFV    ="Ever had hypertension on 2+ visits"
      CHDEV      ="Ever been told you had coronary heart disease"
      ANGEV      ="Ever been told you had angina pectoris"
      MIEV       ="Ever been told you had a heart attack"
      HRTEV      ="Ever been told you had a heart condition/disease"
      STREV      ="Ever been told you had a stroke"
      EPHEV      ="Ever been told you had emphysema"
      AASMEV     ="Ever been told you had asthma"
      AASSTILL   ="Still have asthma"
      AASMYR     ="Had an asthma episode/attack past 12 m"
      AASMERYR   ="Had visit to ER due to asthma past 12 m"
      ULCEV      ="Ever been told you have an ulcer"
      ULCYR      ="Had ulcer in past 12 m"
      CANEV      ="Ever told by a doctor you had cancer"
      CNKIND1    ="What kind of cancer ... Bladder"
      CNKIND2    ="What kind of cancer ... Blood"
      CNKIND3    ="What kind of cancer ... Bone"
      CNKIND4    ="What kind of cancer ... Brain"
      CNKIND5    ="What kind of cancer ... Breast"
      CNKIND6    ="What kind of cancer ... Cervix"
      CNKIND7    ="What kind of cancer ... Colon"
      CNKIND8    ="What kind of cancer ... Esophagus"
      CNKIND9    ="What kind of cancer ... Gallbladder"
      CNKIND10   ="What kind of cancer ... Kidney"
      CNKIND11   ="What kind of cancer ... larynx-windpipe"
      CNKIND12   ="What kind of cancer ... Leukemia"
      CNKIND13   ="What kind of cancer ... Liver"
      CNKIND14   ="What kind of cancer ... Lung"
      CNKIND15   ="What kind of cancer ... Lymphoma"
      CNKIND16   ="What kind of cancer ... Melanoma"
      CNKIND17   ="What kind of cancer ... mouth/tongue/lip"
      CNKIND18   ="What kind of cancer ... Ovary"
      CNKIND19   ="What kind of cancer ... Pancreas"
      CNKIND20   ="What kind of cancer ... Prostate"
      CNKIND21   ="What kind of cancer ... Rectum"
      CNKIND22   ="What kind of cancer ... skin (non-melanoma)"
      CNKIND23   ="What kind of cancer ... skin (DK kind)"
      CNKIND24   ="What kind of cancer ... soft tissue (muscle or fat)"
      CNKIND25   ="What kind of cancer ... Stomach"
      CNKIND26   ="What kind of cancer ... Testis"
      CNKIND27   ="What kind of cancer ... throat - pharynx"
      CNKIND28   ="What kind of cancer ... Thyroid"
      CNKIND29   ="What kind of cancer ... Uterus"
      CNKIND30   ="What kind of cancer ... Other"
      CNKIND31   ="What kind of cancer ... more than 3 kinds"
      CANAGE1    ="Age first diagnosed w/bladder cancer"
      CANAGE2    ="Age first diagnosed w/blood cancer"
      CANAGE3    ="Age first diagnosed w/bone cancer"
      CANAGE4    ="Age first diagnosed w/brain cancer"
      CANAGE5    ="Age first diagnosed w/breast cancer"
      CANAGE6    ="Age first diagnosed w/cervical cancer"
      CANAGE7    ="Age first diagnosed w/colon cancer"
      CANAGE8    ="Age first diagnosed w/esophageal cancer"
      CANAGE9    ="Age first diagnosed w/gallbladder cancer"
      CANAGE10   ="Age first diagnosed w/kidney cancer"
      CANAGE11   ="Age first diagnosed w/larynx-windpipe cancer"
      CANAGE12   ="Age first diagnosed w/leukemia"
      CANAGE13   ="Age first diagnosed w/liver cancer"
      CANAGE14   ="Age first diagnosed w/lung cancer"
      CANAGE15   ="Age first diagnosed w/lymphoma"
      CANAGE16   ="Age first diagnosed w/melanoma"
      CANAGE17   ="Age first diagnosed w/mouth/tongue/lip cancer"
      CANAGE18   ="Age first diagnosed w/ovarian cancer"
      CANAGE19   ="Age first diagnosed w/pancreatic cancer"
      CANAGE20   ="Age first diagnosed w/prostate cancer"
      CANAGE21   ="Age first diagnosed w/rectal cancer"
      CANAGE22   ="Age first diagnosed w/skin (non-melanoma) cancer"
      CANAGE23   ="Age first diagnosed w/skin (DK kind) cancer"
      CANAGE24   ="Age first diagnosed w/soft tissue cancer"
      CANAGE25   ="Age first diagnosed w/stomach cancer"
      CANAGE26   ="Age first diagnosed w/testicular cancer"
      CANAGE27   ="Age first diagnosed w/throat/pharynx cancer"
      CANAGE28   ="Age first diagnosed w/thyroid cancer"
      CANAGE29   ="Age first diagnosed w/uterine cancer"
      CANAGE30   ="Age first diagnosed w/other cancer"
      DIBEV      ="Ever been told that you have diabetes"
      DIBAGE     ="Age first diagnosed w/diabetes"
      DIFAGE2    ="Years since first diagnosed w/diabetes"
      INSLN      ="NOW taking insulin"
      DIBPILL    ="NOW taking diabetic pills"
      AHAYFYR    ="Told that you had hay fever, past 12 m"
      SINYR      ="Told that you had sinusitis, past 12 m"
      CBRCHYR    ="Told you had chronic bronchitis, 12 m"
      KIDWKYR    ="Told you had weak/failing kidneys, 12 m"
      LIVYR      ="Told you had liver condition, past 12 m"
      JNTSYMP    ="Symptoms of joint pain/aching/stiffness past 30 d"
      JMTHP1     ="Which joint affected...shoulder-right"
      JMTHP2     ="Which joint affected...shoulder-left"
      JMTHP3     ="Which joint affected...elbow-right"
      JMTHP4     ="Which joint affected...elbow-left"
      JMTHP5     ="Which joint affected...hip-right"
      JMTHP6     ="Which joint affected...hip-left"
      JMTHP7     ="Which joint affected...wrist-right"
      JMTHP8     ="Which joint affected...wrist-left"
      JMTHP9     ="Which joint affected...knee-right"
      JMTHP10    ="Which joint affected...knee-left"
      JMTHP11    ="Which joint affected...ankle-right"
      JMTHP12    ="Which joint affected...ankle-left"
      JMTHP13    ="Which joint affected...toes-right"
      JMTHP14    ="Which joint affected...toes-left"
      JMTHP15    ="Which joint affected...fingers/thumb-right"
      JMTHP16    ="Which joint affected...fingers/thumb-left"
      JMTHP17    ="Which joint affected...other joint not listed"
      JNTCHR     ="Symptoms begin more than 3 m ago"
      JNTHP      ="Ever seen doctor or hlth prof for joint symptoms"
      ARTH1      ="Ever been told you had arthritis"
      ARTHLMT    ="Limited due to arthritis or joint symptoms"
      PAINECK    ="Had neck pain, past 3 m"
      PAINLB     ="Had low back pain, past 3 m"
      PAINLEG    ="Pain spread down leg/below knees"
      PAINFACE   ="Had pain in jaw/front of ear, past 3 m"
      AMIGR      ="Had severe headache/migraine, past 3 m"
      ACOLD2W    ="Had a head/chest cold past 2 w"
      AINTIL2W   ="Had stomach prob w/vomit/diarrhea, 2 w"
      PREGNOW    ="Currently pregnant"
      HEARAID    ="Have ever worn a hearing aid"
      AHEARST    ="Description of hearing w/o hearing aid"
      AVISION    ="Trouble seeing even w/glasses/lenses"
      ABLIND     ="Blind or unable to see at all"
      LUPPRT     ="Lost all upper & lower natural teeth"
      SAD        ="So sad nothing cheers you up, past 30 days"
      NERVOUS    ="How often felt nervous, past 30 days"
      RESTLESS   ="How often restless/fidgety, past 30 days"
      HOPELESS   ="How often felt hopeless, past 30 days"
      EFFORT     ="How often felt everything was an effort, past 30 days"
      WORTHLS    ="How often felt worthless, past 30 days"
      MHAMTMO    ="Feelings interfered w/life, past 30 days"

      /* AHS LABELS */

      WRKLYR3    ="Work status: last week, past 12 m"
      WKDAYR     ="Number of work loss days, past 12 m"
      BEDDAYR    ="Number of bed days, past 12 m"
      AHSTATYR   ="Health better/worse/same, compared w/ 12 m ago"
      SPECEQ     ="Have health problem that requires special equipment"
      FLWALK     ="How difficult to walk 1/4 mile w/o special equipment"
      FLCLIMB    ="How difficult to climb 10 steps w/o special equipment"
      FLSTAND    ="How difficult to stand 2 hours w/o special equipment"
      FLSIT      ="How difficult to sit 2 hours w/o special equipment"
      FLSTOOP    ="How difficult to stoop, bend or kneel w/o special equipment"
      FLREACH    ="How difficult to reach over head w/o special equipment"
      FLGRASP    ="How difficult to grasp small objects w/o special equipment"
      FLCARRY    ="How difficult lift/carry 10 lbs w/o special equipment"
      FLPUSH     ="How difficult to push large objects w/o special equipment"
      FLSHOP     ="How difficult to go out to events w/o special equipment"
      FLSOCL     ="How difficult to participate in social activities w/o sp eq"
      FLRELAX    ="How difficult to relax at home w/o special equipment"
      FLA1AR     ="Any functional limitation, all conds"
      AFLHCA1    ="Vision problem causes difficulty with activity"
      AFLHCA2    ="Hearing problem causes difficulty with activity"
      AFLHCA3    ="Arthritis/rheumatism causes difficulty with activity"
      AFLHCA4    ="Back/neck prob causes difficulty with activity"
      AFLHCA5    ="Fract/bone/joint inj causes difficulty with activity"
      AFLHCA6    ="Other injury causes difficulty with activity"
      AFLHCA7    ="Heart prob causes difficulty with activity"
      AFLHCA8    ="Stroke causes difficulty with activity"
      AFLHCA9    ="Hypertension causes difficulty with activity"
      AFLHCA10   ="Diabetes causes difficulty with activity"
      AFLHCA11   ="Lung/breath prob causes difficulty with activity"
      AFLHCA12   ="Cancer causes difficulty with activity"
      AFLHCA13   ="Birth defect causes difficulty with activity"
      AFLHCA14   ="Mental retardation causes difficulty with activity"
      AFLHCA15   ="Otr dev prob causes difficulty with activity"
      AFLHCA16   ="Senility/dementia/alzheimers causes difficulty with activity"
      AFLHCA17   ="Dep/anx/emot prob causes difficulty with activity"
      AFLHCA18   ="Weight prob causes difficulty with activity"
      AFLHC19_   ="Missing or amputated limb/finger/digit"
      AFLHC20_   ="Musculoskeletal/connective tissue prob"
      AFLHC21_   ="Circulation problem"
      AFLHC22_   ="Endocrine/nutritional/metabolic prob"
      AFLHC23_   ="Nervous system/sensory organ condition"
      AFLHC24_   ="Digestive system problem"
      AFLHC25_   ="Genitourinary system problem"
      AFLHC26_   ="Skin/subcutaneous system problem"
      AFLHC27_   ="Blood or blood-forming organ problem"
      AFLHC28_   ="Benign tumor/cyst"
      AFLHC29_   ="Alcohol/drug/substance abuse problem"
      AFLHC30_   ="Otr mental prob/ADD/Bipolar/Schizophrenic"
      AFLHC31_   ="Surgical after-effects/medical treatment"
      AFLHC32_   ='"Old age"/elderly/aging-related problem'
      AFLHC33_   ="Fatigue/tiredness/weakness"
      AFLHC34_   ="Pregnancy related problem"
      AFLHCA90   ="Other impair/prob(1) causes difficulty with activity"
      AFLHCA91   ="Other impair/prob(2) causes difficulty with activity"
      ALTIME1    ="Duration of vision prob: Number of units"
      ALUNIT1    ="Duration of vision prob: Time unit"
      ALDURA1    ="Duration of vision prob (in years)"
      ALDURB1    ="Duration of vision prob recode 2"
      ALCHRC1    ="Vision problem condition status"
      ALTIME2    ="Duration of hearing prob: Number of units"
      ALUNIT2    ="Duration of hearing prob: Time unit"
      ALDURA2    ="Duration of hearing prob (in years)"
      ALDURB2    ="Duration of hearing prob recode 2"
      ALCHRC2    ="Hearing problem condition status"
      ALTIME3    ="Duration of arthritis/rheumatism: Number of units"
      ALUNIT3    ="Duration of arthritis/rheumatism: Time unit"
      ALDURA3    ="Duration of arthritis or rheumatism prob (in years)"
      ALDURB3    ="Duration of arthritis or rheumatism prob recode 2"
      ALCHRC3    ="Arthritis or rheumatism problem condition status"
      ALTIME4    ="Duration of back or neck problem: Number of units"
      ALUNIT4    ="Duration of back or neck problem: Time unit"
      ALDURA4    ="Duration of back or neck prob (in years)"
      ALDURB4    ="Duration of back or neck prob recode 2"
      ALCHRC4    ="Back or neck condition status"
      ALTIME5    ="Duration of fracture, bone/joint injury: Number of units"
      ALUNIT5    ="Duration of fracture, bone/joint injury: Time unit"
      ALDURA5    ="Duration of fracture, bone/joint injury prob (in years)"
      ALDURB5    ="Duration of fracture, bone/joint injury prob recode 2"
      ALCHRC5    ="Fracture, bone/joint injury condition status"
      ALTIME6    ="Duration of other injury: Number of units"
      ALUNIT6    ="Duration of other injury: Time unit"
      ALDURA6    ="Duration of other injury problem (in years)"
      ALDURB6    ="Duration of other injury problem recode 2"
      ALCHRC6    ="Other injury condition status"
      ALTIME7    ="Duration of heart problem: Number of units"
      ALUNIT7    ="Duration of heart problem: Time unit"
      ALDURA7    ="Duration of heart problem (in years)"
      ALDURB7    ="Duration of heart problem recode 2"
      ALCHRC7    ="Heart problem condition status"
      ALTIME8    ="Duration of stroke problem: Number of units"
      ALUNIT8    ="Duration of stroke problem: Time unit"
      ALDURA8    ="Duration of stroke problem (in years)"
      ALDURB8    ="Duration of stroke problem recode 2"
      ALCHRC8    ="Stroke problem condition status"
      ALTIME9    =
"Duration of hypertension/hgh blood pressure problem: Number of units"
      ALUNIT9    =
"Duration of hypertension/hgh blood pressure problem: Time unit"
      ALDURA9    =
"Duration of hypertension/hgh blood pressure problem (in years)"
      ALDURB9    ="Duration of hypertension/hgh  problem  recode 2"
      ALCHRC9    ="Hypertension/hgh blood pressure problem condition status"
      ALTIME10   ="Duration of diabetes: Number of units"
      ALUNIT10   ="Duration of diabetes: Time unit"
      ALDURA10   ="Duration of diabetes (in years)"
      ALDURB10   ="Duration of diabetes prob recode 2"
      ALCHRC10   ="Diabetes problem condition status"
      ALTIME11   ="Duration of lung/breathing problem: Number of units"
      ALUNIT11   ="Duration of lung/breathing problem: Time unit"
      ALDURA11   ="Duration of lung/breathing problem (in years)"
      ALDURB11   ="Duration of lung/breathing problem recode 2"
      ALCHRC11   ="Lung/breathing problem condition status"
      ALTIME12   ="Duration of cancer: Number of units"
      ALUNIT12   ="Duration of cancer: Time unit"
      ALDURA12   ="Duration of cancer problem (in years)"
      ALDURB12   ="Duration of cancer problem recode 2"
      ALCHRC12   ="Cancer problem condition status"
      ALTIME13   ="Duration of birth defect: Number of units"
      ALUNIT13   ="Duration of birth defect: Time unit"
      ALDURA13   ="Duration of birth defect problem (in years)"
      ALDURB13   ="Duration of birth defect problem prob recode 2"
      ALCHRC13   ="Birth defect problem condition status"
      ALTIME14   ="Duration of mental retardation: Number of units"
      ALUNIT14   ="Duration of mental retardation: Time unit"
      ALDURA14   ="Duration of mental retardation problem (in years)"
      ALDURB14   ="Duration of mental retardation problem prob recode 2"
      ALCHRC14   ="Mental retardation problem condition status"
      ALTIME15   ="Duration of other developmental problem: Number of units"
      ALUNIT15   ="Duration of other developmental problem: Time unit"
      ALDURA15   ="Duration of other developmental problem (in years)"
      ALDURB15   ="Duration of other developmental problem  recode 2"
      ALCHRC15   ="Other developmental problem condition status"
      ALTIME16   ="Duration of senility: Number of units"
      ALUNIT16   ="Duration of senility: Time unit"
      ALDURA16   ="Duration of senility problem (in years)"
      ALDURB16   ="Duration of senility problem recode 2"
      ALCHRC16   ="Senility problem condition status"
      ALTIME17   ="Duration of depression/anxiety/emotnl prob: Number of units"
      ALUNIT17   ="Duration of depression/anxiety/emotional problem: Time unit"
      ALDURA17   ="Duration of depression/anxiety/emotional problem (in years)"
      ALDURB17   ="Duration of depression/anxiety/emotional problem recode 2"
      ALCHRC17   ="Depression/anxiety/emotional problem condition status"
      ALTIME18   ="Duration of weight problem: Number of units"
      ALUNIT18   ="Duration of weight problem: Time unit"
      ALDURA18   ="Duration of weight problem (in years)"
      ALDURB18   ="Duration of weight problem recode 2"
      ALCHRC18   ="Weight problem condition status"
      ALTIME19   ="Duration of missing limbs: Number of units"
      ALUNIT19   ="Duration of missing limbs: Time unit"
      ALDURA19   ="Duration of missing limbs problem (in years)"
      ALDURB19   ="Duration of missing limbs problem recode 2"
      ALCHRC19   ="Missing limbs problem condition status"
      ALTIME20   ="Duration of musculoskeletal problem: Number of units"
      ALUNIT20   ="Duration of musculoskeletal problem: Time unit"
      ALDURA20   ="Duration of musculoskeletal problem (in years)"
      ALDURB20   ="Duration of musculoskeletal problem recode 2"
      ALCHRC20   ="Musculoskeletal problem condition status"
      ALTIME21   ="Duration of circulatory problem: Number of units"
      ALUNIT21   ="Duration of circulatory problem: Time unit"
      ALDURA21   ="Duration of circulatory problem (in years)"
      ALDURB21   ="Duration of circulatory problem recode 2"
      ALCHRC21   ="Circulatory problem condition status"
      ALTIME22   ="Duration of endocrine problem: Number of units"
      ALUNIT22   ="Duration of endocrine problem: Time unit"
      ALDURA22   ="Duration of endocrine problem (in years)"
      ALDURB22   ="Duration of endocrine problem recode 2"
      ALCHRC22   ="Endocrine problem condition status"
      ALTIME23   ="Duration of nervous system condition: Number of units"
      ALUNIT23   ="Duration of nervous system condition: Time unit"
      ALDURA23   ="Duration of nervous system condition (in years)"
      ALDURB23   ="Duration of nervous system condition recode 2"
      ALCHRC23   ="Nervous system condition status"
      ALTIME24   ="Duration of digestive problems: Number of units"
      ALUNIT24   ="Duration of digestive problems: Number of units"
      ALDURA24   ="Duration of digestive problem (in years)"
      ALDURB24   ="Duration of digestive problem recode 2"
      ALCHRC24   ="Digestive problem condition status"
      ALTIME25   ="Duration of genitourinary problem: Number of units"
      ALUNIT25   ="Duration of genitourinary problem: Time unit"
      ALDURA25   ="Duration of genitourinary problem (in years)"
      ALDURB25   ="Duration of genitourinary problem recode 2"
      ALCHRC25   ="Genitourinary problem condition status"
      ALTIME26   ="Duration of skin problems: Number of units"
      ALUNIT26   ="Duration of skin problems: Time unit"
      ALDURA26   ="Duration of skin problem (in years)"
      ALDURB26   ="Duration of skin problem recode 2"
      ALCHRC26   ="Skin problems condition status"
      ALTIME27   ="Duration of blood problem: Number of units"
      ALUNIT27   ="Duration of blood problem: Time unit"
      ALDURA27   ="Duration of blood problem (in years)"
      ALDURB27   ="Duration of blood problem recode 2"
      ALCHRC27   ="Blood problem condition status"
      ALTIME28   ="Duration of benign tumor: Number of units"
      ALUNIT28   ="Duration of benign tumor: Time unit"
      ALDURA28   ="Duration of benign tumor (in years)"
      ALDURB28   ="Duration of benign tumor recode 2"
      ALCHRC28   ="Benign tumor condition status"
      ALTIME29   ="Duration of alcohol or drug problem: Number of units"
      ALUNIT29   ="Duration of alcohol or drug problem: Time unit"
      ALDURA29   ="Duration of alcohol or drug problem (in years)"
      ALDURB29   ="Duration of alcohol or drug problem recode 2"
      ALCHRC29   ="Alcohol or drug problem condition status"
      ALTIME30   ="Duration of other mental problem: Number of units"
      ALUNIT30   ="Duration of other mental problem: Time unit"
      ALDURA30   ="Duration of other mental problem (in years)"
      ALDURB30   ="Duration of other mental problem recode 2"
      ALCHRC30   ="Other mental problem condition status"
      ALTIME31   ="Duration of surgical after-effects: Number of units"
      ALUNIT31   ="Duration of surgical after-effects: Time unit"
      ALDURA31   ="Duration of surgical after-effects (in years)"
      ALDURB31   ="Duration of surgical after-effects recode 2"
      ALCHRC31   ="Surgical after-effects condition status"
      ALTIME32   ='Duration of "old age": Number of units'
      ALUNIT32   ='Duration of "old age": Number of units'
      ALDURA32   ='Duration of "old age" (in years)'
      ALDURB32   ='Duration of "old age", recode 2'
      ALCHRC32   ='"Old age" condition status'
      ALTIME33   ="Duration of fatigue problem: Number of units"
      ALUNIT33   ="Duration of fatigue problem: Time unit"
      ALDURA33   ="Duration of fatigue problem (in years)"
      ALDURB33   ="Duration of fatigue problem recode 2"
      ALCHRC33   ="Fatigue problem condition status"
      ALTIME34   ="Duration of pregnancy-related problem: Number of units"
      ALUNIT34   ="Duration of pregnancy-related problem: Time unit"
      ALDURA34   ="Duration of pregnancy-related problem (in years)"
      ALDURB34   ="Duration of pregnancy-related problem recode 2"
      ALCHRC34   ="Pregnancy-related condition status"
      ALTIME90   ="Duration of other N.E.C. problem (1): Number of units"
      ALUNIT90   ="Duration of other N.E.C. problem (1): Time unit"
      ALDURA90   ="Duration of other N.E.C. problem (1) (in years)"
      ALDURB90   ="Duration of other N.E.C. problem (1) recode 2"
      ALCHRC90   ="Other N.E.C. problem (1) condition status"
      ALTIME91   ="Duration of other N.E.C. problem (2): Number of units"
      ALUNIT91   ="Duration of other N.E.C. problem (2): Time unit"
      ALDURA91   ="Duration of other N.E.C. problem (2) (in years)"
      ALDURB91   ="Duration of other N.E.C. problem (2) recode2"
      ALCHRC91   ="Other N.E.C. problem (2) condition status"
      ALCNDRT    ="Chronic cond rec for ind w/functl lim"
      ALCHRONR   ="Overall functl lim recode by cond status"

      /* AHB LABELS */

      SMKEV      ="Ever smoked 100 cigarettes"
      SMKREG     ="Age first smoked fairly regularly"
      SMKNOW     ="Smoke freq: everyday/some days/not at all"
      SMKSTAT2   ="Smoking Status: Recode"
      SMKQTNO    ="Time since quit: # of units"
      SMKQTTP    ="Time since quit: time period"
      SMKQTY     ="Time since quit smoking (in years)"
      CIGSDA1    ="Number cigs per day (daily smokers)"
      CIGDAMO    ="Number days smoked in past 30 days"
      CIGSDA2    ="Number cigs per day (some day smokers)"
      CIGSDAY    ="Number of cigarettes a day (all current smokers)"
      CIGQTYR    ="Tried quit smoking 1+ days, past 12 m"
      VIGNO      ="Freq vigorous activity: # of units"
      VIGTP      ="Freq vigorous activity: Time units"
      VIGFREQW   ="Freq vigorous activity (times per wk)"
      VIGLNGNO   ="Duration vigorous activity: # units"
      VIGLNGTP   ="Duration vigorous activity: Time unit"
      VIGMIN     ="Duration vigorous activity (in minutes)"
      MODNO      ="Freq moderate activity: # of units"
      MODTP      ="Freq moderate activity: Time units"
      MODFREQW   ="Freq light/moderate activity (times per wk)"
      MODLNGNO   ="Duration moderate activity: # of units"
      MODLNGTP   ="Duration moderate activity: Time unit"
      MODMIN     ="Duration light/moderate activity (in minutes)"
      STRNGNO    ="Strength activity freq: # of units"
      STRNGTP    ="Strength activity freq: Time units"
      STRFREQW   ="Freq strength activity (times per wk)"
      ALC1YR     ="Ever had 12+ drinks in any  one year"
      ALCLIFE    ="Had 12+ drinks in ENTIRE LIFE"
      ALC12MNO   ="Freq drank alcohol pst yr:  # of units"
      ALC12MTP   ="Freq drank alcohol pst yr:  Time unit"
      ALC12MWK   ="Freq drank alcohol: Days per week"
      ALC12MYR   ="Freq drank alcohol: Days in past year"
      ALCAMT     ="Average # drinks on days drank"
      ALCSTAT    ="Alcohol drinking status: Recode"
      ALC5UPNO   ="Days 5+ drinks, past yr: # days"
      ALC5UPTP   ="Days 5+ drinks, past yr: Time unit"
      ALC5UPYR   ="Number of days had 5+ drinks past year"
      AHEIGHT    ="Total height in inches"
      AWEIGHTP   ="Weight without shoes (pounds)"
      BMI        ="Body Mass Index (BMI)"
      SLEEP      ="Hours of sleep"

      /* AAU LABELS */

      AUSUALPL   ="Place USUALLY go when sick"
      APLKIND    ="Place to go when sick (most often)"
      AHCPLROU   ="USUALLY go there for routine/preventive care"
      AHCPLKND   ="Place USUALLY go for routine/preventive care"
      AHCCHGYR   ="Change health care place, past 12 m"
      AHCCHGHI   ="Change related to health insurance"
      AHCDLYR1   ="Couldn't get through on phone, past 12 m"
      AHCDLYR2   ="Couldn't get appt soon enough, past 12 m"
      AHCDLYR3   ="Wait too long in dr's office, past 12 m"
      AHCDLYR4   ="Not open when you could go, past 12 m"
      AHCDLYR5   ="No transportation, past 12 m"
      AHCAFYR1   ="Can't afford prescription medicine, past 12 m"
      AHCAFYR2   ="Can't afford mental health care/counseling, 12 m"
      AHCAFYR3   ="Can't afford dental care, past 12 m"
      AHCAFYR4   ="Can't afford eyeglasses, past 12 m"
      ADNLONG2   ="Time since last saw a dentist"
      AHCSYR1    ="Seen/talked to mental health professional, past 12 m"
      AHCSYR2    ="Seen/talked to eye doctor, past 12 m"
      AHCSYR3    ="Seen/talked to foot doctor, past 12 m"
      AHCSYR4    ="Seen/talked to a chiropractor, past 12 m"
      AHCSYR5    ="Seen/talked to therapist (PT/OT/etc.), past 12 m"
      AHCSYR6    ="Seen/talked to a NP/PA/midwife, past 12 m"
      AHCSYR7    ="Seen/talked to OB/GYN, past 12 m"
      AHCSYR8    ="Seen/talked to a medical specialist, past 12 m"
      AHCSYR9    ="Seen/talked to a general doctor, past 12 m"
      AHCSYR10   ="Doctor treats both kids and adults"
      AHERNOY2   ="# times in ER/ED, past 12 m"
      AHCHYR     ="Received home care from health professional, past 12 m"
      AHCHMOYR   ="# months of home care, past 12 m"
      AHCHNOY2   ="Total number of home visits"
      AHCNOYR2   ="Total number of office visits, past 12 m"
      ASRGYR     ="Surgery/surgical procedure, past 12 m"
      ASRGNOYR   ="# of surgeries, past 12 m"
      AMDLONGR   ="Time since last seen/talked to health professional"
      SHTFLUYR   ="Flu shot past 12 m"
      ASHFLU_M   ="Month of most recent flu shot"
      ASHFLU_Y   ="Year of most recent flu shot"
      SPRFLUYR   ="Flu spray past 12 m"
      ASPFLU_M   ="Month of most recent flu nasal vaccine"
      ASPFLU_Y   ="Year of most recent flu nasal vaccine"
      SHTPNUYR   ="Pneumonia shot (EVER)"
      APOX       ="Ever had chickenpox"
      APOX12MO   ="Chickenpox, past 12 m"
      AHEP       ="Ever had hepatitis"
      AHEPLIV    ="Ever lived w/ someone w/ hepatitis"
      SHTHEPB    ="Hepatitis B vaccine (EVER)"
      SHEPDOS    ="# doses of hepatitis B vaccine received"

      /* ADS LABELS */

      BLDGV      ="Donated blood since March 1985"
      BLDG12M    ="Donated blood past 12 months"
      HIVTST     ="Ever been tested for HIV"
      WHYTST_R   ="Reason why you have not been tested for HIV/AIDS"
      TST12M_M   ="Month of last test for HIV"
      TST12M_Y   ="Year of last test for HIV"
      TIMETST    ="Time period of most recent HIV test"
      REATST_C   ="Main reason for last HIV test"
      REASWHOR   ="Who suggested you should be tested"
      LASTST_C   ="Location of last HIV test"
      CLNTYP_C   ="Type of clinic for last HIV test"
      WHOADM     ="Who administered the test"
      GIVNAM     ="Gave your first and last names"
      EXTST12M   ="HIV test in the next 12 months"
      CHNSADSP   ="Chances of getting AIDS virus"
      STMTRU     ="Are any of these statements true"
      STD        ="Had STD other than HIV/AIDS, past 5 yrs"
      STDDOC     ="Saw a doctor or other health professional"
      STDWHER    ="Place where checked"
      TBHRD      ="Ever heard of tuberculosis"
      TBKNOW     ="Ever personally known anyone who had TB"
      TB         ="How much do you know about TB"
      TBSPRD1    ="Breathing air around person sick with TB"
      TBSPRD2    ="Sharing eating/drinking utensils"
      TBSPRD3    ="Through semen/vaginal secretions (sex)"
      TBSPRD4    ="From smoking"
      TBSPRD5    ="From mosquito or other insect bites"
      TBSPRD6    ="Other"
      TBCURED    ="Can TB be cured"
      TBCHANC    ="Chances of getting TB"
      TBSHAME    ="Ashamed if you/family diagnosed with TB"
      HOMELESS   ="Spent 24+ hrs living in street, shelter, jail/prison"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
   *    (PUT ASTERISK (*) BEFORE WORD "FORMAT"
        IN NEXT STATEMENT TO PREVENT FORMAT
        ASSOCIATIONS BEING STORED WITH DATA SET);
   *FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE   SAP001X.   SRVY_YR   SAP002X.   HHX       $GROUPC.
      INTV_QRT  SAP004X.   ASSIGNWK  SAP005X.   WTIA_SA   GROUPN.
      WTFA_SA   GROUPN.

      /* UCF FORMAT ASSOCIATIONS */

      REGION    SAP010X.   STRATUM   SAP011X.   PSU       SAP012X.

      /* HHC FORMAT ASSOCIATIONS */

      SEX       SAP013X.   HISPAN_I  SAP014X.   RACERPI2  SAP015X.
      MRACRPI2  SAP016X.   MRACBPI2  SAP017X.   AGE_P     SAP018X.

      /* FID FORMAT ASSOCIATIONS */

      R_MARITL  SAP019X.

      /* AID FORMAT ASSOCIATIONS */

      PROXYSA   SAP020X.   PROX1     SAP021X.   PROX2     SAP022X.

      /* ASD FORMAT ASSOCIATIONS */

      DOINGLWA  SAP023X.   WHYNOWKA  SAP024X.   EVERWRK   SAP025X.
      INDSTRN1  SAP026X.   INDSTRN2  SAP026X.   OCCUPN1   SAP028X.
      OCCUPN2   SAP028X.   WRKCATA   SAP030X.   BUSINC1A  SAP025X.
      LOCALL1A  SAP032X.   YRSWRKPA  SAP033X.   WRKLONGH  SAP025X.
      HOURPDA   SAP025X.   PDSICKA   SAP025X.   ONEJOB    SAP025X.

      /* ACN FORMAT ASSOCIATIONS */

      HYPEV     SAP025X.   HYPDIFV   SAP025X.   CHDEV     SAP025X.
      ANGEV     SAP025X.   MIEV      SAP025X.   HRTEV     SAP025X.
      STREV     SAP025X.   EPHEV     SAP025X.   AASMEV    SAP025X.
      AASSTILL  SAP025X.   AASMYR    SAP025X.   AASMERYR  SAP025X.
      ULCEV     SAP025X.   ULCYR     SAP025X.   CANEV     SAP025X.
      CNKIND1   SAP053X.   CNKIND2   SAP053X.   CNKIND3   SAP053X.
      CNKIND4   SAP053X.   CNKIND5   SAP053X.   CNKIND6   SAP053X.
      CNKIND7   SAP053X.   CNKIND8   SAP053X.   CNKIND9   SAP053X.
      CNKIND10  SAP053X.   CNKIND11  SAP053X.   CNKIND12  SAP053X.
      CNKIND13  SAP053X.   CNKIND14  SAP053X.   CNKIND15  SAP053X.
      CNKIND16  SAP053X.   CNKIND17  SAP053X.   CNKIND18  SAP053X.
      CNKIND19  SAP053X.   CNKIND20  SAP053X.   CNKIND21  SAP053X.
      CNKIND22  SAP053X.   CNKIND23  SAP053X.   CNKIND24  SAP053X.
      CNKIND25  SAP053X.   CNKIND26  SAP053X.   CNKIND27  SAP053X.
      CNKIND28  SAP053X.   CNKIND29  SAP053X.   CNKIND30  SAP053X.
      CNKIND31  SAP053X.   CANAGE1   SAP084X.   CANAGE2   SAP084X.
      CANAGE3   SAP084X.   CANAGE4   SAP084X.   CANAGE5   SAP084X.
      CANAGE6   SAP084X.   CANAGE7   SAP084X.   CANAGE8   SAP084X.
      CANAGE9   SAP084X.   CANAGE10  SAP084X.   CANAGE11  SAP084X.
      CANAGE12  SAP084X.   CANAGE13  SAP084X.   CANAGE14  SAP084X.
      CANAGE15  SAP084X.   CANAGE16  SAP084X.   CANAGE17  SAP084X.
      CANAGE18  SAP084X.   CANAGE19  SAP084X.   CANAGE20  SAP084X.
      CANAGE21  SAP084X.   CANAGE22  SAP084X.   CANAGE23  SAP084X.
      CANAGE24  SAP084X.   CANAGE25  SAP084X.   CANAGE26  SAP084X.
      CANAGE27  SAP084X.   CANAGE28  SAP084X.   CANAGE29  SAP084X.
      CANAGE30  SAP084X.   DIBEV     SAP114X.   DIBAGE    SAP084X.
      DIFAGE2   SAP116X.   INSLN     SAP025X.   DIBPILL   SAP025X.
      AHAYFYR   SAP025X.   SINYR     SAP025X.   CBRCHYR   SAP025X.
      KIDWKYR   SAP025X.   LIVYR     SAP025X.   JNTSYMP   SAP025X.
      JMTHP1    SAP053X.   JMTHP2    SAP053X.   JMTHP3    SAP053X.
      JMTHP4    SAP053X.   JMTHP5    SAP053X.   JMTHP6    SAP053X.
      JMTHP7    SAP053X.   JMTHP8    SAP053X.   JMTHP9    SAP053X.
      JMTHP10   SAP053X.   JMTHP11   SAP053X.   JMTHP12   SAP053X.
      JMTHP13   SAP053X.   JMTHP14   SAP053X.   JMTHP15   SAP053X.
      JMTHP16   SAP053X.   JMTHP17   SAP053X.   JNTCHR    SAP025X.
      JNTHP     SAP025X.   ARTH1     SAP025X.   ARTHLMT   SAP025X.
      PAINECK   SAP025X.   PAINLB    SAP025X.   PAINLEG   SAP025X.
      PAINFACE  SAP025X.   AMIGR     SAP025X.   ACOLD2W   SAP025X.
      AINTIL2W  SAP025X.   PREGNOW   SAP025X.   HEARAID   SAP025X.
      AHEARST   SAP155X.   AVISION   SAP025X.   ABLIND    SAP025X.
      LUPPRT    SAP025X.   SAD       SAP159X.   NERVOUS   SAP159X.
      RESTLESS  SAP159X.   HOPELESS  SAP159X.   EFFORT    SAP159X.
      WORTHLS   SAP159X.   MHAMTMO   SAP165X.

      /* AHS FORMAT ASSOCIATIONS */

      WRKLYR3   SAP166X.   WKDAYR    SAP167X.   BEDDAYR   SAP167X.
      AHSTATYR  SAP169X.   SPECEQ    SAP025X.   FLWALK    SAP171X.
      FLCLIMB   SAP171X.   FLSTAND   SAP171X.   FLSIT     SAP171X.
      FLSTOOP   SAP171X.   FLREACH   SAP171X.   FLGRASP   SAP171X.
      FLCARRY   SAP171X.   FLPUSH    SAP171X.   FLSHOP    SAP171X.
      FLSOCL    SAP171X.   FLRELAX   SAP171X.   FLA1AR    SAP183X.
      AFLHCA1   SAP053X.   AFLHCA2   SAP053X.   AFLHCA3   SAP053X.
      AFLHCA4   SAP053X.   AFLHCA5   SAP053X.   AFLHCA6   SAP053X.
      AFLHCA7   SAP053X.   AFLHCA8   SAP053X.   AFLHCA9   SAP053X.
      AFLHCA10  SAP053X.   AFLHCA11  SAP053X.   AFLHCA12  SAP053X.
      AFLHCA13  SAP053X.   AFLHCA14  SAP053X.   AFLHCA15  SAP053X.
      AFLHCA16  SAP053X.   AFLHCA17  SAP053X.   AFLHCA18  SAP053X.
      AFLHC19_  SAP053X.   AFLHC20_  SAP053X.   AFLHC21_  SAP053X.
      AFLHC22_  SAP053X.   AFLHC23_  SAP053X.   AFLHC24_  SAP053X.
      AFLHC25_  SAP053X.   AFLHC26_  SAP053X.   AFLHC27_  SAP053X.
      AFLHC28_  SAP053X.   AFLHC29_  SAP053X.   AFLHC30_  SAP053X.
      AFLHC31_  SAP053X.   AFLHC32_  SAP053X.   AFLHC33_  SAP053X.
      AFLHC34_  SAP053X.   AFLHCA90  SAP053X.   AFLHCA91  SAP053X.
      ALTIME1   SAP220X.   ALUNIT1   SAP221X.   ALDURA1   SAP222X.
      ALDURB1   SAP223X.   ALCHRC1   SAP224X.   ALTIME2   SAP220X.
      ALUNIT2   SAP221X.   ALDURA2   SAP222X.   ALDURB2   SAP223X.
      ALCHRC2   SAP224X.   ALTIME3   SAP220X.   ALUNIT3   SAP221X.
      ALDURA3   SAP222X.   ALDURB3   SAP223X.   ALCHRC3   SAP224X.
      ALTIME4   SAP220X.   ALUNIT4   SAP221X.   ALDURA4   SAP222X.
      ALDURB4   SAP223X.   ALCHRC4   SAP224X.   ALTIME5   SAP220X.
      ALUNIT5   SAP221X.   ALDURA5   SAP222X.   ALDURB5   SAP223X.
      ALCHRC5   SAP224X.   ALTIME6   SAP220X.   ALUNIT6   SAP221X.
      ALDURA6   SAP222X.   ALDURB6   SAP223X.   ALCHRC6   SAP224X.
      ALTIME7   SAP220X.   ALUNIT7   SAP221X.   ALDURA7   SAP222X.
      ALDURB7   SAP223X.   ALCHRC7   SAP224X.   ALTIME8   SAP220X.
      ALUNIT8   SAP221X.   ALDURA8   SAP222X.   ALDURB8   SAP223X.
      ALCHRC8   SAP224X.   ALTIME9   SAP220X.   ALUNIT9   SAP221X.
      ALDURA9   SAP222X.   ALDURB9   SAP223X.   ALCHRC9   SAP224X.
      ALTIME10  SAP220X.   ALUNIT10  SAP221X.   ALDURA10  SAP222X.
      ALDURB10  SAP223X.   ALCHRC10  SAP224X.   ALTIME11  SAP220X.
      ALUNIT11  SAP221X.   ALDURA11  SAP222X.   ALDURB11  SAP223X.
      ALCHRC11  SAP224X.   ALTIME12  SAP220X.   ALUNIT12  SAP221X.
      ALDURA12  SAP222X.   ALDURB12  SAP223X.   ALCHRC12  SAP224X.
      ALTIME13  SAP220X.   ALUNIT13  SAP221X.   ALDURA13  SAP222X.
      ALDURB13  SAP223X.   ALCHRC13  SAP224X.   ALTIME14  SAP220X.
      ALUNIT14  SAP221X.   ALDURA14  SAP222X.   ALDURB14  SAP223X.
      ALCHRC14  SAP224X.   ALTIME15  SAP220X.   ALUNIT15  SAP221X.
      ALDURA15  SAP222X.   ALDURB15  SAP223X.   ALCHRC15  SAP224X.
      ALTIME16  SAP220X.   ALUNIT16  SAP221X.   ALDURA16  SAP222X.
      ALDURB16  SAP223X.   ALCHRC16  SAP224X.   ALTIME17  SAP220X.
      ALUNIT17  SAP221X.   ALDURA17  SAP222X.   ALDURB17  SAP223X.
      ALCHRC17  SAP224X.   ALTIME18  SAP220X.   ALUNIT18  SAP221X.
      ALDURA18  SAP222X.   ALDURB18  SAP223X.   ALCHRC18  SAP224X.
      ALTIME19  SAP220X.   ALUNIT19  SAP221X.   ALDURA19  SAP222X.
      ALDURB19  SAP223X.   ALCHRC19  SAP224X.   ALTIME20  SAP220X.
      ALUNIT20  SAP221X.   ALDURA20  SAP222X.   ALDURB20  SAP223X.
      ALCHRC20  SAP224X.   ALTIME21  SAP220X.   ALUNIT21  SAP221X.
      ALDURA21  SAP222X.   ALDURB21  SAP223X.   ALCHRC21  SAP224X.
      ALTIME22  SAP220X.   ALUNIT22  SAP221X.   ALDURA22  SAP222X.
      ALDURB22  SAP223X.   ALCHRC22  SAP224X.   ALTIME23  SAP220X.
      ALUNIT23  SAP221X.   ALDURA23  SAP222X.   ALDURB23  SAP223X.
      ALCHRC23  SAP224X.   ALTIME24  SAP220X.   ALUNIT24  SAP221X.
      ALDURA24  SAP222X.   ALDURB24  SAP223X.   ALCHRC24  SAP224X.
      ALTIME25  SAP220X.   ALUNIT25  SAP221X.   ALDURA25  SAP222X.
      ALDURB25  SAP223X.   ALCHRC25  SAP224X.   ALTIME26  SAP220X.
      ALUNIT26  SAP221X.   ALDURA26  SAP222X.   ALDURB26  SAP223X.
      ALCHRC26  SAP224X.   ALTIME27  SAP220X.   ALUNIT27  SAP221X.
      ALDURA27  SAP222X.   ALDURB27  SAP223X.   ALCHRC27  SAP224X.
      ALTIME28  SAP220X.   ALUNIT28  SAP221X.   ALDURA28  SAP222X.
      ALDURB28  SAP223X.   ALCHRC28  SAP224X.   ALTIME29  SAP220X.
      ALUNIT29  SAP221X.   ALDURA29  SAP222X.   ALDURB29  SAP223X.
      ALCHRC29  SAP224X.   ALTIME30  SAP220X.   ALUNIT30  SAP221X.
      ALDURA30  SAP222X.   ALDURB30  SAP223X.   ALCHRC30  SAP224X.
      ALTIME31  SAP220X.   ALUNIT31  SAP221X.   ALDURA31  SAP222X.
      ALDURB31  SAP223X.   ALCHRC31  SAP224X.   ALTIME32  SAP220X.
      ALUNIT32  SAP221X.   ALDURA32  SAP222X.   ALDURB32  SAP223X.
      ALCHRC32  SAP224X.   ALTIME33  SAP220X.   ALUNIT33  SAP221X.
      ALDURA33  SAP222X.   ALDURB33  SAP223X.   ALCHRC33  SAP224X.
      ALTIME34  SAP220X.   ALUNIT34  SAP221X.   ALDURA34  SAP222X.
      ALDURB34  SAP223X.   ALCHRC34  SAP224X.   ALTIME90  SAP220X.
      ALUNIT90  SAP221X.   ALDURA90  SAP222X.   ALDURB90  SAP223X.
      ALCHRC90  SAP224X.   ALTIME91  SAP220X.   ALUNIT91  SAP221X.
      ALDURA91  SAP222X.   ALDURB91  SAP223X.   ALCHRC91  SAP224X.
      ALCNDRT   SAP400X.   ALCHRONR  SAP401X.

      /* AHB FORMAT ASSOCIATIONS */

      SMKEV     SAP025X.   SMKREG    SAP403X.   SMKNOW    SAP404X.
      SMKSTAT2  SAP405X.   SMKQTNO   SAP406X.   SMKQTTP   SAP407X.
      SMKQTY    SAP408X.   CIGSDA1   SAP409X.   CIGDAMO   SAP410X.
      CIGSDA2   SAP409X.   CIGSDAY   SAP409X.   CIGQTYR   SAP025X.
      VIGNO     SAP414X.   VIGTP     SAP415X.   VIGFREQW  SAP416X.
      VIGLNGNO  SAP417X.   VIGLNGTP  SAP418X.   VIGMIN    SAP419X.
      MODNO     SAP414X.   MODTP     SAP415X.   MODFREQW  SAP422X.
      MODLNGNO  SAP417X.   MODLNGTP  SAP418X.   MODMIN    SAP419X.
      STRNGNO   SAP414X.   STRNGTP   SAP415X.   STRFREQW  SAP428X.
      ALC1YR    SAP025X.   ALCLIFE   SAP025X.   ALC12MNO  SAP431X.
      ALC12MTP  SAP432X.   ALC12MWK  SAP433X.   ALC12MYR  SAP434X.
      ALCAMT    SAP435X.   ALCSTAT   SAP436X.   ALC5UPNO  SAP437X.
      ALC5UPTP  SAP438X.   ALC5UPYR  SAP434X.   AHEIGHT   SAP440X.
      AWEIGHTP  SAP441X.   BMI       SAP442X.   SLEEP     SAP443X.

      /* AAU FORMAT ASSOCIATIONS */

      AUSUALPL  SAP444X.   APLKIND   SAP445X.   AHCPLROU  SAP025X.
      AHCPLKND  SAP447X.   AHCCHGYR  SAP025X.   AHCCHGHI  SAP025X.
      AHCDLYR1  SAP025X.   AHCDLYR2  SAP025X.   AHCDLYR3  SAP025X.
      AHCDLYR4  SAP025X.   AHCDLYR5  SAP025X.   AHCAFYR1  SAP025X.
      AHCAFYR2  SAP025X.   AHCAFYR3  SAP025X.   AHCAFYR4  SAP025X.
      ADNLONG2  SAP459X.   AHCSYR1   SAP025X.   AHCSYR2   SAP025X.
      AHCSYR3   SAP025X.   AHCSYR4   SAP025X.   AHCSYR5   SAP025X.
      AHCSYR6   SAP025X.   AHCSYR7   SAP025X.   AHCSYR8   SAP025X.
      AHCSYR9   SAP025X.   AHCSYR10  SAP025X.   AHERNOY2  SAP470X.
      AHCHYR    SAP025X.   AHCHMOYR  SAP472X.   AHCHNOY2  SAP473X.
      AHCNOYR2  SAP470X.   ASRGYR    SAP025X.   ASRGNOYR  SAP476X.
      AMDLONGR  SAP459X.   SHTFLUYR  SAP025X.   ASHFLU_M  SAP479X.
      ASHFLU_Y  SAP480X.   SPRFLUYR  SAP025X.   ASPFLU_M  SAP479X.
      ASPFLU_Y  SAP480X.   SHTPNUYR  SAP025X.   APOX      SAP025X.
      APOX12MO  SAP025X.   AHEP      SAP025X.   AHEPLIV   SAP025X.
      SHTHEPB   SAP025X.   SHEPDOS   SAP490X.

      /* ADS FORMAT ASSOCIATIONS */

      BLDGV     SAP025X.   BLDG12M   SAP025X.   HIVTST    SAP025X.
      WHYTST_R  SAP494X.   TST12M_M  SAP495X.   TST12M_Y  SAP496X.
      TIMETST   SAP497X.   REATST_C  SAP498X.   REASWHOR  SAP499X.
      LASTST_C  SAP500X.   CLNTYP_C  SAP501X.   WHOADM    SAP502X.
      GIVNAM    SAP025X.   EXTST12M  SAP025X.   CHNSADSP  SAP505X.
      STMTRU    SAP506X.   STD       SAP025X.   STDDOC    SAP025X.
      STDWHER   SAP509X.   TBHRD     SAP025X.   TBKNOW    SAP025X.
      TB        SAP512X.   TBSPRD1   SAP053X.   TBSPRD2   SAP053X.
      TBSPRD3   SAP053X.   TBSPRD4   SAP053X.   TBSPRD5   SAP053X.
      TBSPRD6   SAP053X.   TBCURED   SAP025X.   TBCHANC   SAP520X.
      TBSHAME   SAP025X.   HOMELESS  SAP025X.;
RUN;

PROC CONTENTS DATA=NHIS.samadult_2005;
   TITLE1 'CONTENTS OF THE 2005 NHIS Sample Adult FILE';

PROC FREQ DATA=NHIS.samadult_2005 NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2005 NHIS Sample Adult FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA_SA;

PROC FREQ DATA=NHIS.samadult_2005 NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2005 NHIS Sample Adult FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
