*********************************************************************
 JUNE 1, 2006  5:09 PM
 
 This is an example of a SAS program that creates a SAS
 file from the 2005 NHIS Public Use personsx.DAT ASCII file
 
 This is stored in personsx.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\Data\NHIS";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\Data\NHIS";

FILENAME ASCIIDAT 'C:\Data\NHIS\personsx.dat';

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
   VALUE PEP001X
      10                 = "10 Household"
      20                 = "20 Person"
      30                 = "30 Sample Adult"
      31                 = "31 Sample Adult Cancer"
      40                 = "40 Sample Child"
      60                 = "60 Family"
      70                 = "70 Injury/Poisoning Episode"
      75                 = "75 Injury/Poisoning Verbatim"
   ;
   VALUE PEP002X
      2005               = "2005"
   ;
   VALUE PEP004X
      1                  = "1 Quarter 1"
      2                  = "2 Quarter 2"
      3                  = "3 Quarter 3"
      4                  = "4 Quarter 4"
   ;
   VALUE PEP005X
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
   VALUE PEP010X
      1                  = "1 Northeast"
      2                  = "2 Midwest"
      3                  = "3 South"
      4                  = "4 West"
   ;
   VALUE PEP011X
      LOW  - HIGH        = "Stratum for variance estimation"
   ;
   VALUE PEP012X
      LOW  - HIGH        = "PSU for variance estimation"
   ;
   VALUE PEP013X
      1                  = "1 Male"
      2                  = "2 Female"
   ;
   VALUE PEP014X
      1                  = "1 Yes"
      2                  = "2 No"
   ;
   VALUE PEP015X
      1                  = "1 Imputed: was 'refused' Hispanic Origin"
      2                  = "2 Imputed: was 'not ascertained' Hispanic Origin"
      3                  = "3 Imputed: was 'does not know' Hispanic Origin"
      4                  = "4 Hispanic origin given by respondent/proxy"
   ;
   VALUE PEP016X
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
   VALUE PEP017X
      1                  = "1 Imputed: was 'refused' Hispanic Origin"
      2                  = "2 Imputed: was 'not ascertained' Hispanic Origin"
      3                  = "3 Imputed: was 'does not know' Hispanic Origin"
      4                  = "4 Hispanic Origin type given by respondent/proxy"
   ;
   VALUE PEP018X
      01                 = "01 White only"
      02                 = "02 Black/African American only"
      03                 = "03 AIAN only"
      04                 = "04 Asian only"
      05                 = "05 Race group not releasable (See file layout)"
      06                 = "06 Multiple race"
   ;
   VALUE PEP019X
      1                  = "1 Imputed: was 'refused'"
      2                  = "2 Imputed: was 'not ascertained'"
      3                  = "3 Imputed: was 'does not know'"
      4                  = "4 Imputed: was other race'"
      5                  = "5 Imputed: was 'unspecified multiple race'"
      6                  = "6 Race given by respondent/proxy"
   ;
   VALUE PEP020X
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
   VALUE PEP021X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American) (includes Eskimo, Aleut)"
      06                 = "06 Chinese"
      07                 = "07 Filipino"
      12                 = "12 Asian Indian"
      16                 = "16 Other race (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE PEP022X
      1                  = "1 White"
      2                  = "2 Black"
      3                  = "3 All other race groups (See file layout)"
   ;
   VALUE PEP023X
      1                  = "1 Hispanic"
      2                  = "2 Non-Hispanic White"
      3                  = "3 Non-Hispanic Black"
      4                  = "4 Non-Hispanic All other race groups"
   ;
   VALUE PEP024X
      1                  = "1 Ethnicity/race imputed"
      2                  = "2 Ethnicity/race given by respondent/proxy"
   ;
   VALUE PEP025X
      1                  = "1 Armed Forces"
      2                  = "2 Not Armed Forces"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP026X
      01                 = "01 Household reference person"
      02                 = "02 Spouse (husband/wife)"
      03                 = "03 Unmarried Partner"
      04                 = "04 Child (biological/adoptive/in-law/step/foster)"
      05                 = "05 Child of partner"
      06                 = "06 Grandchild"
      07                 = "07 Parent (biological/adoptive/in-law/step/foster)"
      08                 = 
"08 Brother/sister (biological/adoptive/in-law/step/foster)"
      09                 = "09 Grandparent (Grandmother/Grandfather)"
      10                 = "10 Aunt/Uncle"
      11                 = "11 Niece/Nephew"
      12                 = "12 Other relative"
      13                 = "13 Housemate/roommate"
      14                 = "14 Roomer/Boarder"
      15                 = "15 Other nonrelative"
      16                 = "16 Legal guardian"
      17                 = "17 Ward"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE $PEP027X
      "8"                = "8 Not ascertained"
      "P"                = "P HH Reference person"
   ;
   VALUE PEP028X
      01                 = "01 Family reference person"
      02                 = "02 Spouse (husband/wife)"
      03                 = "03 Unmarried Partner"
      04                 = "04 Child (biological/adoptive/in-law/step/foster)"
      05                 = "05 Child of partner"
      06                 = "06 Grandchild"
      07                 = "07 Parent (biological/adoptive/in-law/step/foster)"
      08                 = 
"08 Brother/sister (biological/adoptive/in-law/step/foster)"
      09                 = "09 Grandparent (Grandmother/Grandfather)"
      10                 = "10 Aunt/Uncle"
      11                 = "11 Niece/Nephew"
      12                 = "12 Other relative"
      16                 = "16 Legal guardian"
      17                 = "17 Ward"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE $PEP029X
      "01"               = "01 January"
      "02"               = "02 February"
      "03"               = "03 March"
      "04"               = "04 April"
      "05"               = "05 May"
      "06"               = "06 June"
      "07"               = "07 July"
      "08"               = "08 August"
      "09"               = "09 September"
      "10"               = "10 October"
      "11"               = "11 November"
      "12"               = "12 December"
      "97"               = "97 Refused"
      "98"               = "98 Not ascertained"
      "99"               = "99 Don't know"
   ;
   VALUE $PEP030X
      "1919"             = "1919 or before"
      "9997"             = "9997 Refused"
      "9998"             = "9998 Not ascertained"
      "9999"             = "9999 Don't know"
   ;
   VALUE PEP031X
      00                 = "00 Under 1 year"
      85                 = "85 85+ years"
   ;
   VALUE PEP032X
      1                  = "1 Change on AGE due to data entry error"
   ;
   VALUE $PEP033X
      "8"                = "8 Not ascertained"
      "B"                = "B Family respondent"
   ;
   VALUE $PEP034X
      "8"                = "8 Not ascertained"
      "P"                = "P Family reference person"
   ;
   VALUE PEP035X
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
   VALUE PEP036X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP037X
      1                  = "1 Married"
      2                  = "2 Widowed"
      3                  = "3 Divorced"
      4                  = "4 Separated"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP038X
      1                  = "1 Separated"
      2                  = "2 Divorced"
      3                  = "3 Married"
      4                  = "4 Single/never married"
      5                  = "5 Widowed"
      9                  = "9 Unknown marital status"
   ;
   VALUE PEP039X
      1                  = "1 Full {brother/sister}"
      2                  = "2 Half {brother/sister}"
      3                  = "3 Adopted {brother/sister}"
      4                  = "4 Step {brother/sister}"
      5                  = "5 Foster {brother/sister}"
      6                  = "6 {Brother/Sister}-in-law"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP040X
      00                 = "00 Mother not a household member"
      96                 = "96 Has legal guardian"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP041X
      1                  = "1 Biological"
      2                  = "2 Adoptive"
      3                  = "3 Step"
      4                  = "4 Foster"
      5                  = "5 In-law"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP042X
      00                 = "00 Father not in household"
      96                 = "96 Has legal guardian"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP044X
      1                  = "1 Mother, no father"
      2                  = "2 Father, no mother"
      3                  = "3 Mother and father"
      4                  = "4 Neither mother nor father"
      9                  = "9 Unknown"
   ;
   VALUE PEP045X
      01                 = "01 Less/equal to 8th grade"
      02                 = "02 9-12th grade, no high school diploma"
      03                 = "03 High school graduate/GED recipient"
      04                 = "04 Some college, no degree"
      05                 = "05 AA degree, technical or vocational"
      06                 = "06 AA degree, academic program"
      07                 = "07 Bachelor's degree"
      08                 = "08 Master's, professional, or doctoral degree"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP047X
      0                  = "0 Sample Adult - no record"
      1                  = "1 Sample Adult - has record"
      2                  = "2 Not selected as Sample Adult"
      3                  = "3 No one selected as Sample Adult"
      4                  = "4 Armed Force member"
      5                  = "5 Armed Force member - selected as Sample Adult"
   ;
   VALUE PEP048X
      0                  = "0 Sample Child - no record"
      1                  = "1 Sample Child - has record"
      2                  = "2 Not selected as Sample Child"
      3                  = "3 No one selected as Sample Child"
      4                  = "4 Emancipated minor"
   ;
   VALUE PEP062X
      0                  = "0 Unable to work"
      1                  = "1 Limited in work"
      2                  = "2 Not limited in work"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't Know"
   ;
   VALUE PEP065X
      0                  = "0 Limitation previously mentioned"
      1                  = "1 Yes, limited in some other way"
      2                  = "2 Not limited in any way"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP066X
      1                  = "1 Limited in any way"
      2                  = "2 Not limited in any way"
      3                  = "3 Unknown if limited"
   ;
   VALUE PEP067X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP082X
      95                 = "95 95+"
      96                 = "96 Since birth"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP083X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      6                  = "6 Since birth"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP084X
      00                 = "00 Less than 1 year"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP085X
      0                  = "0 Since birth and child <1 year of age"
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP086X
      1                  = "1 Chronic"
      2                  = "2 Not chronic"
      9                  = "9 Unknown if chronic"
   ;
   VALUE PEP195X
      00                 = "00 Less than 1 year"
      85                 = "85 85+ years"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP196X
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP373X
      1                  = "1 At least one condition causing LA is chronic"
      2                  = "2 No condition causing LA is chronic"
      9                  = "9 Unk if any condition causing LA is chronic"
   ;
   VALUE PEP374X
      0                  = "0 Not limited in any way (incl unk if limited)"
      1                  = "1 Limited; caused by at least one chronic cond"
      2                  = "2 Limited; not caused by chronic cond"
      3                  = "3 Limited; unk if cond is chronic"
   ;
   VALUE PEP375X
      1                  = "1 Excellent"
      2                  = "2 Very good"
      3                  = "3 Good"
      4                  = "4 Fair"
      5                  = "5 Poor"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP379X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE PEP380X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE PEP382X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP384X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP386X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP388X
      1                  = "1 Not covered"
      2                  = "2 Covered"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP389X
      1                  = "1 Yes, information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP390X
      1                  = "1 Part A - Hospital only"
      2                  = "2 Part B - Medical only"
      3                  = "3 Both Part A and Part B"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP393X
      04                 = "04 Medigap plan"
      12                 = "12 Group"
      22                 = "22 Staff"
      32                 = "32 IPA"
      92                 = "92 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP398X
      1                  = "1  Any doctor"
      2                  = "2  Select from book/list"
      3                  = "3  Doctor is assigned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP401X
      1                  = "1 Yes, with information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP415X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP416X
      1                  = "1 In own name"
      2                  = "2 Someone else in family"
      3                  = "3 Person not in household"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP417X
      01                 = "01 Through employer"
      02                 = "02 Through union"
      03                 = 
"03 Through workplace, but don't know if employer or union"
      04                 = 
"04 Through workplace, self-employed or professional association"
      05                 = "05 Purchased directly"
      06                 = 
"06 Through a state/local government or community program"
      07                 = "07 Other"
      08                 = "08 Through school"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP425X
      20000              = "20000 $20,000 or more"
      99997              = "99997 Refused"
      99998              = "99998 Not ascertained"
      99999              = "99999 Don't know"
   ;
   VALUE PEP426X
      1                  = "1 HMO/IPA"
      2                  = "2 PPO"
      3                  = "3 POS"
      4                  = "4 Fee-for-service/indemnity"
      5                  = "5 Other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP427X
      1                  = "1 Any doctor"
      2                  = "2 Select from group/list"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP467X
      1                  = "1 TRICARE Prime"
      2                  = "2 TRICARE Extra"
      3                  = "3 TRICARE Standard"
      4                  = "4 TRICARE for life"
      5                  = "5 TRICARE other (specify)"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP469X
      1                  = "1 6 months or less"
      2                  = "2 More than 6 months, but not more than 1 year ago"
      3                  = "3 More than 1 year, but not more than 3 years ago"
      4                  = "4 More than 3 years"
      5                  = "5 Never"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP486X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP487X
      0                  = "0 Zero"
      1                  = "1 Less than $500"
      2                  = "2 $500 - $1,999"
      3                  = "3 $2,000 - $2,999"
      4                  = "4 $3,000 - $4,999"
      5                  = "5 $5,000 or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP503X
      01                 = "01 United States"
      02                 = "02 Mexico, Central America, Caribbean Islands"
      03                 = "03 South America"
      04                 = "04 Europe"
      05                 = "05 Russia (and former USSR areas)"
      06                 = "06 Africa"
      07                 = "07 Middle East"
      08                 = "08 Indian Subcontinent"
      09                 = "09 Asia"
      10                 = "10 SE Asia"
      11                 = "11 Elsewhere"
      99                 = "99 Unknown"
   ;
   VALUE PEP504X
      1                  = "1 USA: born in one of the 50 United States or D.C."
      2                  = "2 USA: born in a U.S. territory"
      3                  = "3 Not born in the U.S. or a U.S. territory"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP505X
      1                  = "1 Less than 1 year"
      2                  = "2 1 yr., less than 5 yrs."
      3                  = "3 5 yrs., less than 10 yrs."
      4                  = "4 10 yrs., less than 15 yrs."
      5                  = "5 15 years or more"
      9                  = "9 Unknown"
   ;
   VALUE PEP506X
      1                  = "1 Yes, citizen of the United States"
      2                  = "2 No, not a citizen of the United States"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP509X
      00                 = "00 Never attended/kindergarten only"
      01                 = "01 1st grade"
      02                 = "02 2nd grade"
      03                 = "03 3rd grade"
      04                 = "04 4th grade"
      05                 = "05 5th grade"
      06                 = "06 6th grade"
      07                 = "07 7th grade"
      08                 = "08 8th grade"
      09                 = "09 9th grade"
      10                 = "10th grade"
      11                 = "11th grade"
      12                 = "12th grade, no diploma"
      13                 = "13 GED or equivalent"
      14                 = "14 High School Graduate"
      15                 = "15 Some college, no degree"
      16                 = 
"16 Associate degree: occupational, technical, or vocational program"
      17                 = "17 Associate degree: academic program"
      18                 = "18 Bachelor's degree (Example: BA, AB, BS, BBA)"
      19                 = "19 Master's degree (Example: MA, MS, MEng, MEd, MBA)
"
      20                 = 
"20 Professional School degree (Example: MD, DDS, DVM, JD)"
      21                 = "21 Doctoral degree (Example: PhD, EdD)"
      96                 = "96 Child under 5 years old"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP511X
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
   VALUE PEP512X
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
   VALUE PEP513X
      95                 = "95 95+ hours"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP516X
      01                 = "01 1 month or less"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP517X
      01                 = "01 $01-$4,999"
      02                 = "02 $5,000-$9,999"
      03                 = "03 $10,000-$14,999"
      04                 = "04 $15,000-$19,999"
      05                 = "05 $20,000-$24,999"
      06                 = "06 $25,000-$34,999"
      07                 = "07 $35,000-$44,999"
      08                 = "08 $45,000-$54,999"
      09                 = "09 $55,000-$64,999"
      10                 = "10 $65,000-$74,999"
      11                 = "11 $75,000 and over"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP539X
      0                  = "0 No WIC age-eligible family members"
      1                  = "1 At least 1 WIC age-eligible family member"
   ;
   VALUE PEP541X
      0                  = "0 Person not age-eligible"
      1                  = "1 Person age-eligible"
   ;
*/
DATA NHIS.person_2005;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=711;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE    3   SRVY_YR    4   HHX      $ 6   INTV_QRT   3
      ASSIGNWK   3   FMX      $ 2   FPX      $ 2   WTIA       8
      WTFA       8

      /* UCF LENGTHS */

      REGION     3   STRATUM    4   PSU        3

      /* HHC LENGTHS */

      SEX        3   ORIGIN_I   3   ORIGIMPT   3   HISPAN_I   3
      HISPIMPT   3   RACERPI2   3   RACEIMP2   3   MRACRPI2   3
      MRACBPI2   3   RACRECI2   3   HISCODI2   3   ERIMPFLG   3
      NOWAF      3   RRP        3   HHREFLG  $ 1   FRRP       3
      DOB_M    $ 2   DOB_Y_P  $ 4   AGE_P      3   AGE_CHG    3

      /* FID LENGTHS */

      FMRPFLG  $ 1   FMREFLG  $ 1   R_MARITL   3   COHAB1     3
      COHAB2     3   CDCMSTAT   3   SIB_DEG    3   FMOTHER    3
      MOM_DEG    3   FFATHER    3   DAD_DEG    3   PARENTS    3
      MOM_ED     3   DAD_ED     3   ASTATFLG   3   CSTATFLG   3

      /* FHS LENGTHS */

      PLAPLYLM   3   PLAPLYUN   3   PSPEDEIS   3   PSPEDEM    3
      PLAADL     3   LABATH     3   LADRESS    3   LAEAT      3
      LABED      3   LATOILT    3   LAHOME     3   PLAIADL    3
      PLAWKNOW   3   PLAWKLIM   3   PLAWALK    3   PLAREMEM   3
      PLIMANY    3   LA1AR      3   LAHCC1     3   LAHCC2     3
      LAHCC3     3   LAHCC4     3   LAHCC5     3   LAHCC6     3
      LAHCC7     3   LAHCC8     3   LAHCC9     3   LAHCC10    3
      LAHCC11    3   LAHCC12    3   LAHCC13    3   LAHCC90    3
      LAHCC91    3   LCTIME1    3   LCUNIT1    3   LCDURA1    3
      LCDURB1    3   LCCHRC1    3   LCTIME2    3   LCUNIT2    3
      LCDURA2    3   LCDURB2    3   LCCHRC2    3   LCTIME3    3
      LCUNIT3    3   LCDURA3    3   LCDURB3    3   LCCHRC3    3
      LCTIME4    3   LCUNIT4    3   LCDURA4    3   LCDURB4    3
      LCCHRC4    3   LCTIME5    3   LCUNIT5    3   LCDURA5    3
      LCDURB5    3   LCCHRC5    3   LCTIME6    3   LCUNIT6    3
      LCDURA6    3   LCDURB6    3   LCCHRC6    3   LCTIME7    3
      LCUNIT7    3   LCDURA7    3   LCDURB7    3   LCCHRC7    3
      LCTIME8    3   LCUNIT8    3   LCDURA8    3   LCDURB8    3
      LCCHRC8    3   LCTIME9    3   LCUNIT9    3   LCDURA9    3
      LCDURB9    3   LCCHRC9    3   LCTIME10   3   LCUNIT10   3
      LCDURA10   3   LCDURB10   3   LCCHRC10   3   LCTIME11   3
      LCUNIT11   3   LCDURA11   3   LCDURB11   3   LCCHRC11   3
      LCTIME12   3   LCUNIT12   3   LCDURA12   3   LCDURB12   3
      LCCHRC12   3   LCTIME13   3   LCUNIT13   3   LCDURA13   3
      LCDURB13   3   LCCHRC13   3   LCTIME90   3   LCUNIT90   3
      LCDURA90   3   LCDURB90   3   LCCHRC90   3   LCTIME91   3
      LCUNIT91   3   LCDURA91   3   LCDURB91   3   LCCHRC91   3
      LAHCA1     3   LAHCA2     3   LAHCA3     3   LAHCA4     3
      LAHCA5     3   LAHCA6     3   LAHCA7     3   LAHCA8     3
      LAHCA9     3   LAHCA10    3   LAHCA11    3   LAHCA12    3
      LAHCA13    3   LAHCA14    3   LAHCA15    3   LAHCA16    3
      LAHCA17    3   LAHCA18    3   LAHCA19_   3   LAHCA20_   3
      LAHCA21_   3   LAHCA22_   3   LAHCA23_   3   LAHCA24_   3
      LAHCA25_   3   LAHCA26_   3   LAHCA27_   3   LAHCA28_   3
      LAHCA29_   3   LAHCA30_   3   LAHCA31_   3   LAHCA32_   3
      LAHCA33_   3   LAHCA34_   3   LAHCA90    3   LAHCA91    3
      LATIME1    3   LAUNIT1    3   LADURA1    3   LADURB1    3
      LACHRC1    3   LATIME2    3   LAUNIT2    3   LADURA2    3
      LADURB2    3   LACHRC2    3   LATIME3    3   LAUNIT3    3
      LADURA3    3   LADURB3    3   LACHRC3    3   LATIME4    3
      LAUNIT4    3   LADURA4    3   LADURB4    3   LACHRC4    3
      LATIME5    3   LAUNIT5    3   LADURA5    3   LADURB5    3
      LACHRC5    3   LATIME6    3   LAUNIT6    3   LADURA6    3
      LADURB6    3   LACHRC6    3   LATIME7    3   LAUNIT7    3
      LADURA7    3   LADURB7    3   LACHRC7    3   LATIME8    3
      LAUNIT8    3   LADURA8    3   LADURB8    3   LACHRC8    3
      LATIME9    3   LAUNIT9    3   LADURA9    3   LADURB9    3
      LACHRC9    3   LATIME10   3   LAUNIT10   3   LADURA10   3
      LADURB10   3   LACHRC10   3   LATIME11   3   LAUNIT11   3
      LADURA11   3   LADURB11   3   LACHRC11   3   LATIME12   3
      LAUNIT12   3   LADURA12   3   LADURB12   3   LACHRC12   3
      LATIME13   3   LAUNIT13   3   LADURA13   3   LADURB13   3
      LACHRC13   3   LATIME14   3   LAUNIT14   3   LADURA14   3
      LADURB14   3   LACHRC14   3   LATIME15   3   LAUNIT15   3
      LADURA15   3   LADURB15   3   LACHRC15   3   LATIME16   3
      LAUNIT16   3   LADURA16   3   LADURB16   3   LACHRC16   3
      LATIME17   3   LAUNIT17   3   LADURA17   3   LADURB17   3
      LACHRC17   3   LATIME18   3   LAUNIT18   3   LADURA18   3
      LADURB18   3   LACHRC18   3   LATIME19   3   LAUNIT19   3
      LADURA19   3   LADURB19   3   LACHRC19   3   LATIME20   3
      LAUNIT20   3   LADURA20   3   LADURB20   3   LACHRC20   3
      LATIME21   3   LAUNIT21   3   LADURA21   3   LADURB21   3
      LACHRC21   3   LATIME22   3   LAUNIT22   3   LADURA22   3
      LADURB22   3   LACHRC22   3   LATIME23   3   LAUNIT23   3
      LADURA23   3   LADURB23   3   LACHRC23   3   LATIME24   3
      LAUNIT24   3   LADURA24   3   LADURB24   3   LACHRC24   3
      LATIME25   3   LAUNIT25   3   LADURA25   3   LADURB25   3
      LACHRC25   3   LATIME26   3   LAUNIT26   3   LADURA26   3
      LADURB26   3   LACHRC26   3   LATIME27   3   LAUNIT27   3
      LADURA27   3   LADURB27   3   LACHRC27   3   LATIME28   3
      LAUNIT28   3   LADURA28   3   LADURB28   3   LACHRC28   3
      LATIME29   3   LAUNIT29   3   LADURA29   3   LADURB29   3
      LACHRC29   3   LATIME30   3   LAUNIT30   3   LADURA30   3
      LADURB30   3   LACHRC30   3   LATIME31   3   LAUNIT31   3
      LADURA31   3   LADURB31   3   LACHRC31   3   LATIME32   3
      LAUNIT32   3   LADURA32   3   LADURB32   3   LACHRC32   3
      LATIME33   3   LAUNIT33   3   LADURA33   3   LADURB33   3
      LACHRC33   3   LATIME34   3   LAUNIT34   3   LADURA34   3
      LADURB34   3   LACHRC34   3   LATIME90   3   LAUNIT90   3
      LADURA90   3   LADURB90   3   LACHRC90   3   LATIME91   3
      LAUNIT91   3   LADURA91   3   LADURB91   3   LACHRC91   3
      LCONDRT    3   LACHRONR   3   PHSTAT     3

      /* FAU LENGTHS */

      PDMED12M   3   PNMED12M   3   PHOSPYR    3   HOSPNO     4
      HPNITE     4   PHCHM2W    3   PHCHMN2W   3   PHCPH2WR   3
      PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3   P10DVYR    3

      /* FHI LENGTHS */

      NOTCOV     3   MEDICARE   3   MCPART     3   MCCHOICE   3
      MCHMO      3   MCNAMEN    3   MCREF      3   MCPAYPRE   3
      MCRXCARD   3   MEDICAID   3   MACHMD     3   MAPCMD     3
      MAREF      3   SINGLE     3   SSTYPEA    3   SSTYPEB    3
      SSTYPEC    3   SSTYPED    3   SSTYPEE    3   SSTYPEF    3
      SSTYPEG    3   SSTYPEH    3   SSTYPEI    3   SSTYPEJ    3
      SSTYPEK    3   SSTYPEL    3   PRIVATE    3   HITYPE1    3
      WHONAM1    3   PLNWRKN1   3   PLNPAY11   3   PLNPAY21   3
      PLNPAY31   3   PLNPAY41   3   PLNPAY51   3   PLNPAY61   3
      PLNPAY71   3   HICOSTR1   4   PLNMGD1    3   MGCHMD1    3
      MGPRMD1    3   MGPYMD1    3   MGPREF1    3   PRRXCOV1   3
      HITYPE2    3   WHONAM2    3   PLNWRKN2   3   PLNPAY12   3
      PLNPAY22   3   PLNPAY32   3   PLNPAY42   3   PLNPAY52   3
      PLNPAY62   3   PLNPAY72   3   HICOSTR2   4   PLNMGD2    3
      MGCHMD2    3   MGPRMD2    3   MGPYMD2    3   MGPREF2    3
      PRRXCOV2   3   PRPLPLUS   3   SCHIP      3   STDOC1     3
      STPCMD1    3   STREF1     3   OTHERPUB   3   STDOC2     3
      STPCMD2    3   STREF2     3   OTHERGOV   3   STDOC3     3
      STPCMD3    3   STREF3     3   MILITARY   3   MILSPC1    3
      MILSPC2    3   MILSPC3    3   MILSPC4    3   MILMAN     3
      IHS        3   HILAST     3   HISTOP1    3   HISTOP2    3
      HISTOP3    3   HISTOP4    3   HISTOP5    3   HISTOP6    3
      HISTOP7    3   HISTOP8    3   HISTOP9    3   HISTOP10   3
      HISTOP11   3   HISTOP12   3   HISTOP13   3   HISTOP14   3
      HISTOP15   3   HINOTYR    3   HINOTMYR   3   HCSPFYR    3
      HIKINDA    3   HIKINDB    3   HIKINDC    3   HIKINDD    3
      HIKINDE    3   HIKINDF    3   HIKINDG    3   HIKINDH    3
      HIKINDI    3   HIKINDJ    3   HIKINDK    3   MCAREPRB   3
      MCAIDPRB   3   SINCOV     3

      /* FSD LENGTHS */

      PLBORN     3   REGIONBR   3   GEOBRTH    3   YRSINUS    3
      CITIZENP   3   HEADST     3   HEADSTV1   3   EDUC1      3
      PMILTRY    3   DOINGLWP   3   WHYNOWKP   3   WRKHRS2    3
      WRKFTALL   3   WRKLYR1    3   WRKMYR     3   ERNYR_P    3
      HIEMPOF    3

      /* FIN LENGTHS */

      PSAL       3   PSEINC     3   PSSRR      3   PSSRRDB    3
      PSSRRD     3   PPENS      3   POPENS     3   PSSI       3
      PSSID      3   PTANF      3   POWBEN     3   PINTRSTR   3
      PDIVD      3   PCHLDSP    3   PINCOT     3   PSSAPL     3
      PSDAPL     3   TANFMYR    3   PFSTP      3   FSTPMYR    3
      ELIGPWIC   3   PWIC       3   WIC_FLAG   3 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    INTV_QRT     13 -  13
      ASSIGNWK     14 -  15    FMX      $   16 -  17
      FPX      $   18 -  19    WTIA         20 -  25 .1
      WTFA         26 -  31

      /* UCF LOCATIONS */

      REGION       32 -  32    STRATUM      33 -  35
      PSU          36 -  36

      /* HHC LOCATIONS */

      SEX          37 -  37    ORIGIN_I     38 -  38
      ORIGIMPT     39 -  39    HISPAN_I     40 -  41
      HISPIMPT     42 -  42    RACERPI2     43 -  44
      RACEIMP2     45 -  45    MRACRPI2     46 -  47
      MRACBPI2     48 -  49    RACRECI2     50 -  50
      HISCODI2     51 -  51    ERIMPFLG     52 -  52
      NOWAF        53 -  53    RRP          54 -  55
      HHREFLG  $   56 -  56    FRRP         57 -  58
      DOB_M    $   59 -  60    DOB_Y_P  $   61 -  64
      AGE_P        65 -  66    AGE_CHG      67 -  67


      /* FID LOCATIONS */

      FMRPFLG  $   68 -  68    FMREFLG  $   69 -  69
      R_MARITL     70 -  70    COHAB1       71 -  71
      COHAB2       72 -  72    CDCMSTAT     73 -  73
      SIB_DEG      74 -  74    FMOTHER      75 -  76
      MOM_DEG      77 -  77    FFATHER      78 -  79
      DAD_DEG      80 -  80    PARENTS      81 -  81
      MOM_ED       82 -  83    DAD_ED       84 -  85
      ASTATFLG     86 -  86    CSTATFLG     87 -  87


      /* FHS LOCATIONS */

      PLAPLYLM     88 -  88    PLAPLYUN     89 -  89
      PSPEDEIS     90 -  90    PSPEDEM      91 -  91
      PLAADL       92 -  92    LABATH       93 -  93
      LADRESS      94 -  94    LAEAT        95 -  95
      LABED        96 -  96    LATOILT      97 -  97
      LAHOME       98 -  98    PLAIADL      99 -  99
      PLAWKNOW    100 - 100    PLAWKLIM    101 - 101
      PLAWALK     102 - 102    PLAREMEM    103 - 103
      PLIMANY     104 - 104    LA1AR       105 - 105
      LAHCC1      106 - 106    LAHCC2      107 - 107
      LAHCC3      108 - 108    LAHCC4      109 - 109
      LAHCC5      110 - 110    LAHCC6      111 - 111
      LAHCC7      112 - 112    LAHCC8      113 - 113
      LAHCC9      114 - 114    LAHCC10     115 - 115
      LAHCC11     116 - 116    LAHCC12     117 - 117
      LAHCC13     118 - 118    LAHCC90     119 - 119
      LAHCC91     120 - 120    LCTIME1     121 - 122
      LCUNIT1     123 - 123    LCDURA1     124 - 125
      LCDURB1     126 - 126    LCCHRC1     127 - 127
      LCTIME2     128 - 129    LCUNIT2     130 - 130
      LCDURA2     131 - 132    LCDURB2     133 - 133
      LCCHRC2     134 - 134    LCTIME3     135 - 136
      LCUNIT3     137 - 137    LCDURA3     138 - 139
      LCDURB3     140 - 140    LCCHRC3     141 - 141
      LCTIME4     142 - 143    LCUNIT4     144 - 144
      LCDURA4     145 - 146    LCDURB4     147 - 147
      LCCHRC4     148 - 148    LCTIME5     149 - 150
      LCUNIT5     151 - 151    LCDURA5     152 - 153
      LCDURB5     154 - 154    LCCHRC5     155 - 155
      LCTIME6     156 - 157    LCUNIT6     158 - 158
      LCDURA6     159 - 160    LCDURB6     161 - 161
      LCCHRC6     162 - 162    LCTIME7     163 - 164
      LCUNIT7     165 - 165    LCDURA7     166 - 167
      LCDURB7     168 - 168    LCCHRC7     169 - 169
      LCTIME8     170 - 171    LCUNIT8     172 - 172
      LCDURA8     173 - 174    LCDURB8     175 - 175
      LCCHRC8     176 - 176    LCTIME9     177 - 178
      LCUNIT9     179 - 179    LCDURA9     180 - 181
      LCDURB9     182 - 182    LCCHRC9     183 - 183
      LCTIME10    184 - 185    LCUNIT10    186 - 186
      LCDURA10    187 - 188    LCDURB10    189 - 189
      LCCHRC10    190 - 190    LCTIME11    191 - 192
      LCUNIT11    193 - 193    LCDURA11    194 - 195
      LCDURB11    196 - 196    LCCHRC11    197 - 197
      LCTIME12    198 - 199    LCUNIT12    200 - 200
      LCDURA12    201 - 202    LCDURB12    203 - 203
      LCCHRC12    204 - 204    LCTIME13    205 - 206
      LCUNIT13    207 - 207    LCDURA13    208 - 209
      LCDURB13    210 - 210    LCCHRC13    211 - 211
      LCTIME90    212 - 213    LCUNIT90    214 - 214
      LCDURA90    215 - 216    LCDURB90    217 - 217
      LCCHRC90    218 - 218    LCTIME91    219 - 220
      LCUNIT91    221 - 221    LCDURA91    222 - 223
      LCDURB91    224 - 224    LCCHRC91    225 - 225
      LAHCA1      226 - 226    LAHCA2      227 - 227
      LAHCA3      228 - 228    LAHCA4      229 - 229
      LAHCA5      230 - 230    LAHCA6      231 - 231
      LAHCA7      232 - 232    LAHCA8      233 - 233
      LAHCA9      234 - 234    LAHCA10     235 - 235
      LAHCA11     236 - 236    LAHCA12     237 - 237
      LAHCA13     238 - 238    LAHCA14     239 - 239
      LAHCA15     240 - 240    LAHCA16     241 - 241
      LAHCA17     242 - 242    LAHCA18     243 - 243
      LAHCA19_    244 - 244    LAHCA20_    245 - 245
      LAHCA21_    246 - 246    LAHCA22_    247 - 247
      LAHCA23_    248 - 248    LAHCA24_    249 - 249
      LAHCA25_    250 - 250    LAHCA26_    251 - 251
      LAHCA27_    252 - 252    LAHCA28_    253 - 253
      LAHCA29_    254 - 254    LAHCA30_    255 - 255
      LAHCA31_    256 - 256    LAHCA32_    257 - 257
      LAHCA33_    258 - 258    LAHCA34_    259 - 259
      LAHCA90     260 - 260    LAHCA91     261 - 261
      LATIME1     262 - 263    LAUNIT1     264 - 264
      LADURA1     265 - 266    LADURB1     267 - 267
      LACHRC1     268 - 268    LATIME2     269 - 270
      LAUNIT2     271 - 271    LADURA2     272 - 273
      LADURB2     274 - 274    LACHRC2     275 - 275
      LATIME3     276 - 277    LAUNIT3     278 - 278
      LADURA3     279 - 280    LADURB3     281 - 281
      LACHRC3     282 - 282    LATIME4     283 - 284
      LAUNIT4     285 - 285    LADURA4     286 - 287
      LADURB4     288 - 288    LACHRC4     289 - 289
      LATIME5     290 - 291    LAUNIT5     292 - 292
      LADURA5     293 - 294    LADURB5     295 - 295
      LACHRC5     296 - 296    LATIME6     297 - 298
      LAUNIT6     299 - 299    LADURA6     300 - 301
      LADURB6     302 - 302    LACHRC6     303 - 303
      LATIME7     304 - 305    LAUNIT7     306 - 306
      LADURA7     307 - 308    LADURB7     309 - 309
      LACHRC7     310 - 310    LATIME8     311 - 312
      LAUNIT8     313 - 313    LADURA8     314 - 315
      LADURB8     316 - 316    LACHRC8     317 - 317
      LATIME9     318 - 319    LAUNIT9     320 - 320
      LADURA9     321 - 322    LADURB9     323 - 323
      LACHRC9     324 - 324    LATIME10    325 - 326
      LAUNIT10    327 - 327    LADURA10    328 - 329
      LADURB10    330 - 330    LACHRC10    331 - 331
      LATIME11    332 - 333    LAUNIT11    334 - 334
      LADURA11    335 - 336    LADURB11    337 - 337
      LACHRC11    338 - 338    LATIME12    339 - 340
      LAUNIT12    341 - 341    LADURA12    342 - 343
      LADURB12    344 - 344    LACHRC12    345 - 345
      LATIME13    346 - 347    LAUNIT13    348 - 348
      LADURA13    349 - 350    LADURB13    351 - 351
      LACHRC13    352 - 352    LATIME14    353 - 354
      LAUNIT14    355 - 355    LADURA14    356 - 357
      LADURB14    358 - 358    LACHRC14    359 - 359
      LATIME15    360 - 361    LAUNIT15    362 - 362
      LADURA15    363 - 364    LADURB15    365 - 365
      LACHRC15    366 - 366    LATIME16    367 - 368
      LAUNIT16    369 - 369    LADURA16    370 - 371
      LADURB16    372 - 372    LACHRC16    373 - 373
      LATIME17    374 - 375    LAUNIT17    376 - 376
      LADURA17    377 - 378    LADURB17    379 - 379
      LACHRC17    380 - 380    LATIME18    381 - 382
      LAUNIT18    383 - 383    LADURA18    384 - 385
      LADURB18    386 - 386    LACHRC18    387 - 387
      LATIME19    388 - 389    LAUNIT19    390 - 390
      LADURA19    391 - 392    LADURB19    393 - 393
      LACHRC19    394 - 394    LATIME20    395 - 396
      LAUNIT20    397 - 397    LADURA20    398 - 399
      LADURB20    400 - 400    LACHRC20    401 - 401
      LATIME21    402 - 403    LAUNIT21    404 - 404
      LADURA21    405 - 406    LADURB21    407 - 407
      LACHRC21    408 - 408    LATIME22    409 - 410
      LAUNIT22    411 - 411    LADURA22    412 - 413
      LADURB22    414 - 414    LACHRC22    415 - 415
      LATIME23    416 - 417    LAUNIT23    418 - 418
      LADURA23    419 - 420    LADURB23    421 - 421
      LACHRC23    422 - 422    LATIME24    423 - 424
      LAUNIT24    425 - 425    LADURA24    426 - 427
      LADURB24    428 - 428    LACHRC24    429 - 429
      LATIME25    430 - 431    LAUNIT25    432 - 432
      LADURA25    433 - 434    LADURB25    435 - 435
      LACHRC25    436 - 436    LATIME26    437 - 438
      LAUNIT26    439 - 439    LADURA26    440 - 441
      LADURB26    442 - 442    LACHRC26    443 - 443
      LATIME27    444 - 445    LAUNIT27    446 - 446
      LADURA27    447 - 448    LADURB27    449 - 449
      LACHRC27    450 - 450    LATIME28    451 - 452
      LAUNIT28    453 - 453    LADURA28    454 - 455
      LADURB28    456 - 456    LACHRC28    457 - 457
      LATIME29    458 - 459    LAUNIT29    460 - 460
      LADURA29    461 - 462    LADURB29    463 - 463
      LACHRC29    464 - 464    LATIME30    465 - 466
      LAUNIT30    467 - 467    LADURA30    468 - 469
      LADURB30    470 - 470    LACHRC30    471 - 471
      LATIME31    472 - 473    LAUNIT31    474 - 474
      LADURA31    475 - 476    LADURB31    477 - 477
      LACHRC31    478 - 478    LATIME32    479 - 480
      LAUNIT32    481 - 481    LADURA32    482 - 483
      LADURB32    484 - 484    LACHRC32    485 - 485
      LATIME33    486 - 487    LAUNIT33    488 - 488
      LADURA33    489 - 490    LADURB33    491 - 491
      LACHRC33    492 - 492    LATIME34    493 - 494
      LAUNIT34    495 - 495    LADURA34    496 - 497
      LADURB34    498 - 498    LACHRC34    499 - 499
      LATIME90    500 - 501    LAUNIT90    502 - 502
      LADURA90    503 - 504    LADURB90    505 - 505
      LACHRC90    506 - 506    LATIME91    507 - 508
      LAUNIT91    509 - 509    LADURA91    510 - 511
      LADURB91    512 - 512    LACHRC91    513 - 513
      LCONDRT     514 - 514    LACHRONR    515 - 515
      PHSTAT      516 - 516

      /* FAU LOCATIONS */

      PDMED12M    517 - 517    PNMED12M    518 - 518
      PHOSPYR     519 - 519    HOSPNO      520 - 522
      HPNITE      523 - 525    PHCHM2W     526 - 526
      PHCHMN2W    527 - 528    PHCPH2WR    529 - 529
      PHCPHN2W    530 - 531    PHCDV2W     532 - 532
      PHCDVN2W    533 - 534    P10DVYR     535 - 535


      /* FHI LOCATIONS */

      NOTCOV      536 - 536    MEDICARE    537 - 537
      MCPART      538 - 538    MCCHOICE    539 - 539
      MCHMO       540 - 540    MCNAMEN     541 - 542
      MCREF       543 - 543    MCPAYPRE    544 - 544
      MCRXCARD    545 - 545    MEDICAID    546 - 546
      MACHMD      547 - 547    MAPCMD      548 - 548
      MAREF       549 - 549    SINGLE      550 - 550
      SSTYPEA     551 - 551    SSTYPEB     552 - 552
      SSTYPEC     553 - 553    SSTYPED     554 - 554
      SSTYPEE     555 - 555    SSTYPEF     556 - 556
      SSTYPEG     557 - 557    SSTYPEH     558 - 558
      SSTYPEI     559 - 559    SSTYPEJ     560 - 560
      SSTYPEK     561 - 561    SSTYPEL     562 - 562
      PRIVATE     563 - 563    HITYPE1     564 - 565
      WHONAM1     566 - 566    PLNWRKN1    567 - 568
      PLNPAY11    569 - 569    PLNPAY21    570 - 570
      PLNPAY31    571 - 571    PLNPAY41    572 - 572
      PLNPAY51    573 - 573    PLNPAY61    574 - 574
      PLNPAY71    575 - 575    HICOSTR1    576 - 580
      PLNMGD1     581 - 581    MGCHMD1     582 - 582
      MGPRMD1     583 - 583    MGPYMD1     584 - 584
      MGPREF1     585 - 585    PRRXCOV1    586 - 586
      HITYPE2     587 - 588    WHONAM2     589 - 589
      PLNWRKN2    590 - 591    PLNPAY12    592 - 592
      PLNPAY22    593 - 593    PLNPAY32    594 - 594
      PLNPAY42    595 - 595    PLNPAY52    596 - 596
      PLNPAY62    597 - 597    PLNPAY72    598 - 598
      HICOSTR2    599 - 603    PLNMGD2     604 - 604
      MGCHMD2     605 - 605    MGPRMD2     606 - 606
      MGPYMD2     607 - 607    MGPREF2     608 - 608
      PRRXCOV2    609 - 609    PRPLPLUS    610 - 610
      SCHIP       611 - 611    STDOC1      612 - 612
      STPCMD1     613 - 613    STREF1      614 - 614
      OTHERPUB    615 - 615    STDOC2      616 - 616
      STPCMD2     617 - 617    STREF2      618 - 618
      OTHERGOV    619 - 619    STDOC3      620 - 620
      STPCMD3     621 - 621    STREF3      622 - 622
      MILITARY    623 - 623    MILSPC1     624 - 624
      MILSPC2     625 - 625    MILSPC3     626 - 626
      MILSPC4     627 - 627    MILMAN      628 - 628
      IHS         629 - 629    HILAST      630 - 630
      HISTOP1     631 - 631    HISTOP2     632 - 632
      HISTOP3     633 - 633    HISTOP4     634 - 634
      HISTOP5     635 - 635    HISTOP6     636 - 636
      HISTOP7     637 - 637    HISTOP8     638 - 638
      HISTOP9     639 - 639    HISTOP10    640 - 640
      HISTOP11    641 - 641    HISTOP12    642 - 642
      HISTOP13    643 - 643    HISTOP14    644 - 644
      HISTOP15    645 - 645    HINOTYR     646 - 646
      HINOTMYR    647 - 648    HCSPFYR     649 - 649
      HIKINDA     650 - 650    HIKINDB     651 - 651
      HIKINDC     652 - 652    HIKINDD     653 - 653
      HIKINDE     654 - 654    HIKINDF     655 - 655
      HIKINDG     656 - 656    HIKINDH     657 - 657
      HIKINDI     658 - 658    HIKINDJ     659 - 659
      HIKINDK     660 - 660    MCAREPRB    661 - 661
      MCAIDPRB    662 - 662    SINCOV      663 - 663


      /* FSD LOCATIONS */

      PLBORN      664 - 664    REGIONBR    665 - 666
      GEOBRTH     667 - 667    YRSINUS     668 - 668
      CITIZENP    669 - 669    HEADST      670 - 670
      HEADSTV1    671 - 671    EDUC1       672 - 673
      PMILTRY     674 - 674    DOINGLWP    675 - 675
      WHYNOWKP    676 - 677    WRKHRS2     678 - 679
      WRKFTALL    680 - 680    WRKLYR1     681 - 681
      WRKMYR      682 - 683    ERNYR_P     684 - 685
      HIEMPOF     686 - 686

      /* FIN LOCATIONS */

      PSAL        687 - 687    PSEINC      688 - 688
      PSSRR       689 - 689    PSSRRDB     690 - 690
      PSSRRD      691 - 691    PPENS       692 - 692
      POPENS      693 - 693    PSSI        694 - 694
      PSSID       695 - 695    PTANF       696 - 696
      POWBEN      697 - 697    PINTRSTR    698 - 698
      PDIVD       699 - 699    PCHLDSP     700 - 700
      PINCOT      701 - 701    PSSAPL      702 - 702
      PSDAPL      703 - 703    TANFMYR     704 - 705
      PFSTP       706 - 706    FSTPMYR     707 - 708
      ELIGPWIC    709 - 709    PWIC        710 - 710
      WIC_FLAG    711 - 711;

   * DEFINE VARIABLE LABELS;

   LABEL

      /* IDN LABELS */

      RECTYPE    ="File type identifier"
      SRVY_YR    ="Year of National Health Interview Survey"
      HHX        ="Household Serial Number"
      INTV_QRT   ="Interview Quarter"
      ASSIGNWK   ="Assignment Week"
      FMX        ="Family #"
      FPX        ="Person #"
      WTIA       ="Weight - Interim Annual"
      WTFA       ="Weight - Final Annual"

      /* UCF LABELS */

      REGION     ="Region"
      STRATUM    ="Stratum for variance estimation"
      PSU        ="PSU for variance estimation"

      /* HHC LABELS */

      SEX        ="Sex"
      ORIGIN_I   ="Hispanic Ethnicity"
      ORIGIMPT   ="Hispanic Origin Imputation Flag"
      HISPAN_I   ="Hispanic subgroup detail"
      HISPIMPT   ="Type of Hispanic Origin Imputation Flag"
      RACERPI2   ="OMB groups w/multiple race"
      RACEIMP2   ="Race Imputation Flag"
      MRACRPI2   ="Race coded to single/multiple race group"
      MRACBPI2   ="Race coded to single/multiple race group"
      RACRECI2   ="Race Recode"
      HISCODI2   ="Race/ethnicity recode"
      ERIMPFLG   ="Ethnicity/Race Imputation Flag"
      NOWAF      ="Armed Forces Status"
      RRP        ="Relationship to the HH reference person"
      HHREFLG    ="HH Reference Person Flag"
      FRRP       ="Relationship to family ref. Person"
      DOB_M      ="Month of Birth"
      DOB_Y_P    ="Year of Birth"
      AGE_P      ="Age"
      AGE_CHG    ="Indication of AGE correction due to data entry error"

      /* FID LABELS */

      FMRPFLG    ="Family Respondent Flag"
      FMREFLG    ="Family Reference Person Flag"
      R_MARITL   ="Marital Status"
      COHAB1     ="Cohabiting person ever married"
      COHAB2     ="Cohabiting person's current marital status"
      CDCMSTAT   ="CDC standard for legal marital status"
      SIB_DEG    ="Degree of sib rel to HH ref person"
      FMOTHER    ="Person # of mother"
      MOM_DEG    ="Type of relationship with Mother"
      FFATHER    ="Person # of father"
      DAD_DEG    ="Type of relationship with Father"
      PARENTS    ="Parent(s) present in the family"
      MOM_ED     ="Education of Mother"
      DAD_ED     ="Education of Father"
      ASTATFLG   ="Sample Adult Flag"
      CSTATFLG   ="Sample Child Flag"

      /* FHS LABELS */

      PLAPLYLM   ="Is - - limited in kind/amt play?"
      PLAPLYUN   ="Is - - able to play at all?"
      PSPEDEIS   ="Does - - receive Special Ed or EIS"
      PSPEDEM    ="Receive Special Ed/EIS due to emotional/behavioral problem"
      PLAADL     ="Does - - need help with personal care?"
      LABATH     ="Does - -  need help with bathing/showering?"
      LADRESS    ="Does - -  need help dressing?"
      LAEAT      ="Does - -  need help eating?"
      LABED      ="Does - -  need help in/out of bed or chairs?"
      LATOILT    ="Does - -  need help using the toilet?"
      LAHOME     ="Does - -  need help to get around in the home?"
      PLAIADL    ="Does - - need help with routine needs?"
      PLAWKNOW   ="Is - - unable to work due to health problem?"
      PLAWKLIM   ="Is - - limited kind/amount of work?"
      PLAWALK    ="Does - - have difficulty walk w/o equip?"
      PLAREMEM   ="Is - - limited by difficulty remembering?"
      PLIMANY    ="Is - - limited in any (other) way?"
      LA1AR      ="Any limitation - all persons, all conds"
      LAHCC1     ="Vision problem causes limitation"
      LAHCC2     ="Hearing problem causes limitation"
      LAHCC3     ="Speech problem causes limitation"
      LAHCC4     ="Asthma/breathing problem causes limitation"
      LAHCC5     ="Birth defect causes limitation"
      LAHCC6     ="Injury causes limitation"
      LAHCC7     ="Mental retardation causes limitation"
      LAHCC8     ="Other dev problem causes limitation"
      LAHCC9     ="Other emot/behav problem causes limitation"
      LAHCC10    ="Bone/joint/muscle problem causes limitation"
      LAHCC11    ="Epilepsy/seizures causes limitation"
      LAHCC12    ="Learning disability causes  limitation"
      LAHCC13    ="ADD/ADHD causes limitation"
      LAHCC90    ="Other impair/problem (1) causes limitation"
      LAHCC91    ="Other impair/problem (2) causes limitation"
      LCTIME1    ="Duration of vision problem: Number of units"
      LCUNIT1    ="Duration of vision problem: Time unit"
      LCDURA1    ="Duration of vision problem (in years)"
      LCDURB1    ="Duration of vision problem recode 2"
      LCCHRC1    ="Vision problem condition status"
      LCTIME2    ="Duration of hearing problem: Number of units"
      LCUNIT2    ="Duration of hearing problem: Time unit"
      LCDURA2    ="Duration of hearing problem (in years)"
      LCDURB2    ="Duration of hearing problem recode 2"
      LCCHRC2    ="Hearing problem condition status"
      LCTIME3    ="Duration of speech problem: Number of units"
      LCUNIT3    ="Duration of speech problem: Time unit"
      LCDURA3    ="Duration of speech problem (in years)"
      LCDURB3    ="Duration of speech problem recode 2"
      LCCHRC3    ="Speech problem condition status"
      LCTIME4    ="Duration of asthma/breathing problem: Number of units"
      LCUNIT4    ="Duration of asthma/breathing problem: Time unit"
      LCDURA4    ="Duration of asthma/breathing problem (in years)"
      LCDURB4    ="Duration of asthma/breathing problem recode 2"
      LCCHRC4    ="Asthma/breathing problem condition status"
      LCTIME5    ="Duration of birth defect: Number of units"
      LCUNIT5    ="Duration of birth defect: Time unit"
      LCDURA5    ="Duration of birth defect (in years)"
      LCDURB5    ="Duration of birth defect recode 2"
      LCCHRC5    ="Birth defect condition status"
      LCTIME6    ="Duration of injury: Number of units"
      LCUNIT6    ="Duration of injury: Time unit"
      LCDURA6    ="Duration of injury (in years)"
      LCDURB6    ="Duration of injury recode 2"
      LCCHRC6    ="Injury condition status"
      LCTIME7    ="Duration of mental retardation: Number of units"
      LCUNIT7    ="Duration of mental retardation: Time unit"
      LCDURA7    ="Duration of mental retardation (in years)"
      LCDURB7    ="Duration of mental retardation recode 2"
      LCCHRC7    ="Mental retardation condition status"
      LCTIME8    ="Duration of other developmental problem: Number of units"
      LCUNIT8    ="Duration of other developmental problem: Time unit"
      LCDURA8    ="Duration of other developmental problem (in years)"
      LCDURB8    ="Duration of other developmental problem recode 2"
      LCCHRC8    ="Other developmental problem condition status"
      LCTIME9    ="Duration of other mental/emot/behav problem: Number of units"
      LCUNIT9    ="Duration of otr ment/emot/behav problem: Number of units"
      LCDURA9    ="Duration of other mental/emot/behav problem (in years)"
      LCDURB9    ="Duration of other mental/emotional/behavioral prob recode 2"
      LCCHRC9    ="Other mental/emotional/behavioral problem condition status"
      LCTIME10   ="Duration of bone/joint/muscle problem: Number of units"
      LCUNIT10   ="Duration of bone/joint/muscle problem: Time unit"
      LCDURA10   ="Duration of bone/joint/muscle problem (in years)"
      LCDURB10   ="Duration of bone/joint/muscle problem recode 2"
      LCCHRC10   ="Bone/joint/muscle problem condition status"
      LCTIME11   ="Duration of epilepsy/seizures: Number of units"
      LCUNIT11   ="Duration of epilepsy/seizures: Time unit"
      LCDURA11   ="Duration of epilepsy/seizures (in years)"
      LCDURB11   ="Duration of epilepsy/seizures recode 2"
      LCCHRC11   ="Epilepsy/seizures condition status"
      LCTIME12   ="Duration of learning disability: Number of units"
      LCUNIT12   ="Duration of learning disability: Time unit"
      LCDURA12   ="Duration of learning disability (in years)"
      LCDURB12   ="Duration of learning disability recode 2"
      LCCHRC12   ="Learning disability condition status"
      LCTIME13   ="Duration of ADD/ADHD: Number of units"
      LCUNIT13   ="Duration of ADD/ADHD: Time unit"
      LCDURA13   ="Duration of ADD/ADHD (in years)"
      LCDURB13   ="Duration of ADD/ADHD recode 2"
      LCCHRC13   ="ADD/ADHD condition status"
      LCTIME90   ="Duration of other impairment problem (1): Number of units"
      LCUNIT90   ="Duration of other impairment/problem (1): Time unit"
      LCDURA90   ="Duration of other impairment/problem (1) (in years)"
      LCDURB90   ="Duration of other impairment/problem (1) recode 2"
      LCCHRC90   ="Other impairment/problem (1) condition status"
      LCTIME91   ="Duration of other impairment/problem (2): Number of units"
      LCUNIT91   ="Duration of other impairment/problem (2): Time unit"
      LCDURA91   ="Duration of other impairment/problem (2) (in years)"
      LCDURB91   ="Duration of other impairment/problem (2) recode 2"
      LCCHRC91   ="Other impairment/problem (2) condition status"
      LAHCA1     ="Vision problem causes limitation"
      LAHCA2     ="Hearing problem causes limitation"
      LAHCA3     ="Arthritis/rheumatism causes limitation"
      LAHCA4     ="Back/neck prob causes limitation"
      LAHCA5     ="fracture/bone/joint inj causes limitation"
      LAHCA6     ="Other injury causes limitation"
      LAHCA7     ="Heart problem causes limitation"
      LAHCA8     ="Stroke causes limitation"
      LAHCA9     ="Hypertension causes limitation"
      LAHCA10    ="Diabetes causes limitation"
      LAHCA11    ="Lung/breath problem causes limitation"
      LAHCA12    ="Cancer causes limitation"
      LAHCA13    ="Birth defect causes limitation"
      LAHCA14    ="Mental retardation causes limitation"
      LAHCA15    ="Otr dev problem causes limitation"
      LAHCA16    ="Senility causes limitation"
      LAHCA17    ="Dep/anx/emot problem causes limitation"
      LAHCA18    ="Weight problem causes limitation"
      LAHCA19_   ="Missing or amputated limb/finger/digit"
      LAHCA20_   ="Musculoskeletal/connective tissue problem"
      LAHCA21_   ="Circulation problem"
      LAHCA22_   ="Endocrine/nutritional/metabolic problem"
      LAHCA23_   ="Nervous system/sensory organ condition"
      LAHCA24_   ="Digestive system problem"
      LAHCA25_   ="Genitourinary system problem"
      LAHCA26_   ="Skin/subcutaneous system problem"
      LAHCA27_   ="Blood or blood-forming organ problem"
      LAHCA28_   ="Benign tumor/cyst"
      LAHCA29_   ="Alcohol/drug/substance abuse problem"
      LAHCA30_   ="Otr mental problem/ADD/bipolar/schizophrenia"
      LAHCA31_   ="Surgical after-effects/medical treatment"
      LAHCA32_   ='"Old age"/elderly/aging-related problem'
      LAHCA33_   ="Fatigue/tiredness/weakness"
      LAHCA34_   ="Pregnancy-related problem"
      LAHCA90    ="Other impair/problem(1) causes limitation"
      LAHCA91    ="Other impair/problem(2) causes limitation"
      LATIME1    ="Duration of vision problem: Number of units"
      LAUNIT1    ="Duration of vision problem: Time unit"
      LADURA1    ="Duration of vision problem (in years)"
      LADURB1    ="Duration of vision problem recode 2"
      LACHRC1    ="Vision problem condition status"
      LATIME2    ="Duration of hearing problem: Number of units"
      LAUNIT2    ="Duration of hearing problem: Time unit"
      LADURA2    ="Duration of hearing problem (in years)"
      LADURB2    ="Duration of hearing problem recode 2"
      LACHRC2    ="Hearing problem condition status"
      LATIME3    ="Duration of arthritis/rheumatism: Number of units"
      LAUNIT3    ="Duration of arthritis/rheumatism: Time unit"
      LADURA3    ="Duration of arthritis/rheumatism (in years)"
      LADURB3    ="Duration of arthritis/rheumatism recode 2"
      LACHRC3    ="Arthritis/rheumatism condition status"
      LATIME4    ="Duration of back/neck problem: Number of units"
      LAUNIT4    ="Duration of back/neck problem: Time unit"
      LADURA4    ="Duration of back/neck problem (in years)"
      LADURB4    ="Duration of back/neck problem recode 2"
      LACHRC4    ="Back/neck problem condition status"
      LATIME5    ="Duration of fracture/bone/joint injury: Number of units"
      LAUNIT5    ="Duration of fracture/bone/joint injury: Time unit"
      LADURA5    ="Duration of fracture/bone/joint injury (in years)"
      LADURB5    ="Duration of fracture/bone/joint injury recode 2"
      LACHRC5    ="Fracture/bone/joint injury condition status"
      LATIME6    ="Duration of other injury: Number of units"
      LAUNIT6    ="Duration of other injury: Time unit"
      LADURA6    ="Duration of other injury (in years)"
      LADURB6    ="Duration of other injury recode 2"
      LACHRC6    ="Other injury condition status"
      LATIME7    ="Duration of heart problem: Number of units"
      LAUNIT7    ="Duration of heart problem: Time unit"
      LADURA7    ="Duration of heart problem (in years)"
      LADURB7    ="Duration of heart problem recode 2"
      LACHRC7    ="Heart problem condition status"
      LATIME8    ="Duration of stroke: Number of units"
      LAUNIT8    ="Duration of stroke: Time unit"
      LADURA8    ="Duration of stroke (in years)"
      LADURB8    ="Duration of stroke recode 2"
      LACHRC8    ="Stroke condition status"
      LATIME9    ="Duration of hypertension: Number of units"
      LAUNIT9    ="Duration of hypertension: Time unit"
      LADURA9    ="Duration of hypertension (in years)"
      LADURB9    ="Duration of hypertension recode 2"
      LACHRC9    ="Hypertension condition status"
      LATIME10   ="Duration of diabetes: Number of units"
      LAUNIT10   ="Duration of diabetes: Time unit"
      LADURA10   ="Duration of diabetes (in years)"
      LADURB10   ="Duration of diabetes recode 2"
      LACHRC10   ="Diabetes condition status"
      LATIME11   ="Duration of lung/breathing problem: Number of units"
      LAUNIT11   ="Duration of lung/breath problem: Time unit"
      LADURA11   ="Duration of lung/breathing problem (in years)"
      LADURB11   ="Duration of lung/breathing problem recode 2"
      LACHRC11   ="Lung/breathing problem condition status"
      LATIME12   ="Duration of cancer: Number of units"
      LAUNIT12   ="Duration of cancer: Time unit"
      LADURA12   ="Duration of cancer (in years)"
      LADURB12   ="Duration of cancer recode 2"
      LACHRC12   ="Cancer condition status"
      LATIME13   ="Duration of birth defect: Number of units"
      LAUNIT13   ="Duration of birth defect: Time unit"
      LADURA13   ="Duration of birth defect (in years)"
      LADURB13   ="Duration of birth defect recode 2"
      LACHRC13   ="Birth defect condition status"
      LATIME14   ="Duration of ment retardation: Number of units"
      LAUNIT14   ="Duration of ment retardation: Time unit"
      LADURA14   ="Duration of mental retardation (in years)"
      LADURB14   ="Duration of mental retardation recode 2"
      LACHRC14   ="Mental retardation condition status"
      LATIME15   ="Duration of other developmental problem: Number of units"
      LAUNIT15   ="Duration of otr dev problem: Time unit"
      LADURA15   ="Duration of other developmental problem (in years)"
      LADURB15   ="Duration of other developmental problem recode 2"
      LACHRC15   ="Other developmental problem condition status"
      LATIME16   ="Duration of senility: Number of units"
      LAUNIT16   ="Duration of senility: Time unit"
      LADURA16   ="Duration of senility (in years)"
      LADURB16   ="Duration of senility recode 2"
      LACHRC16   ="Senility condition status"
      LATIME17   ="Duration of dep/anx/emot problem: Number of units"
      LAUNIT17   ="Duration of dep/anx/emot problem: Time unit"
      LADURA17   ="Duration of depression/anxiety/emotional problem (in years)"
      LADURB17   ="Duration of depression/anxiety/emotional problem recode 2"
      LACHRC17   ="Depression/anxiety/emotional problem condition status"
      LATIME18   ="Duration of weight problem: Number of units"
      LAUNIT18   ="Duration of weight problem: Time unit"
      LADURA18   ="Duration of weight problem (in years)"
      LADURB18   ="Duration of weight problem recode 2"
      LACHRC18   ="Weight problem condition status"
      LATIME19   ="Duration of missing limb/amputation: Number of units"
      LAUNIT19   ="Duration of missing limb/amputation: Time unit"
      LADURA19   ="Duration of missing limb/amputation (in years)"
      LADURB19   ="Duration of missing limb/amputation recode 2"
      LACHRC19   ="Missing limb/amputation condition status"
      LATIME20   ="Duration of musculoskeletal problem: Number of units"
      LAUNIT20   ="Duration of musculoskeletal problem: Time unit"
      LADURA20   ="Duration of musculoskeletal problem (in years)"
      LADURB20   ="Duration of musculoskeletal problem recode 2"
      LACHRC20   ="Musculoskeletal problem condition status"
      LATIME21   ="Duration of circulatory problem: Number of units"
      LAUNIT21   ="Duration of circulatory problem: Time unit"
      LADURA21   ="Duration of circulatory problem (in years)"
      LADURB21   ="Duration of circulatory problem recode 2"
      LACHRC21   ="Circulatory problem condition status"
      LATIME22   ="Duration of endocrine problem: Number of units"
      LAUNIT22   ="Duration of endocrine problem: Time unit"
      LADURA22   ="Duration of endocrine problem (in years)"
      LADURB22   ="Duration of endocrine problem recode 2"
      LACHRC22   ="Endocrine problem condition status"
      LATIME23   ="Duration of nervous system condition: Number of units"
      LAUNIT23   ="Duration of nervous system condition: Time unit"
      LADURA23   ="Duration of nervous system condition (in years)"
      LADURB23   ="Duration of nervous system condition recode 2"
      LACHRC23   ="Nervous system condition status"
      LATIME24   ="Duration of digestive problems: Number of units"
      LAUNIT24   ="Duration of digestive problems: Number of units"
      LADURA24   ="Duration of digestive problem (in years)"
      LADURB24   ="Duration of digestive problem recode 2"
      LACHRC24   ="Digestive problem condition status"
      LATIME25   ="Duration of genitourinary problem: Number of units"
      LAUNIT25   ="Duration of genitourinary problem: Time unit"
      LADURA25   ="Duration of genitourinary problem (in years)"
      LADURB25   ="Duration of genitourinary problem recode 2"
      LACHRC25   ="Genitourinary problem condition status"
      LATIME26   ="Duration of skin problems: Number of units"
      LAUNIT26   ="Duration of skin problems: Time unit"
      LADURA26   ="Duration of skin problem (in years)"
      LADURB26   ="Duration of skin problem recode 2"
      LACHRC26   ="Skin problems condition status"
      LATIME27   ="Duration of blood problem: Number of units"
      LAUNIT27   ="Duration of blood problem: Time unit"
      LADURA27   ="Duration of blood problem (in years)"
      LADURB27   ="Duration of blood problem recode 2"
      LACHRC27   ="Blood problem condition status"
      LATIME28   ="Duration of benign tumor: Number of units"
      LAUNIT28   ="Duration of benign tumor: Time unit"
      LADURA28   ="Duration of benign tumor (in years)"
      LADURB28   ="Duration of benign tumor recode 2"
      LACHRC28   ="Benign tumor condition status"
      LATIME29   ="Duration of alcohol or drug problem: Number of units"
      LAUNIT29   ="Duration of alcohol or drug problem: Time unit"
      LADURA29   ="Duration of alcohol or drug problem (in years)"
      LADURB29   ="Duration of alcohol or drug problem recode 2"
      LACHRC29   ="Alcohol or drug problem condition status"
      LATIME30   ="Duration of other mental problem: Number of units"
      LAUNIT30   ="Duration of other mental problem: Time unit"
      LADURA30   ="Duration of other mental problem (in years)"
      LADURB30   ="Duration of other mental problem recode 2"
      LACHRC30   ="Other mental problem condition status"
      LATIME31   ="Duration of surgical after-effects: Number of units"
      LAUNIT31   ="Duration of surgical after-effects: Time unit"
      LADURA31   ="Duration of surgical after-effects (in years)"
      LADURB31   ="Duration of surgical after-effects recode 2"
      LACHRC31   ="Surgical after-effects condition status"
      LATIME32   ='Duration of "old age": Number of units'
      LAUNIT32   ='Duration of "old age": Number of units'
      LADURA32   ='Duration of "old age" (in years)'
      LADURB32   ='Duration of "old age" recode 2'
      LACHRC32   ='"Old age" condition status'
      LATIME33   ="Duration of fatigue problem: Number of units"
      LAUNIT33   ="Duration of fatigue problem: Time unit"
      LADURA33   ="Duration of fatigue problem (in years)"
      LADURB33   ="Duration of fatigue problem recode 2"
      LACHRC33   ="Fatigue problem condition status"
      LATIME34   ="Duration of pregnancy-related problem: Number of units"
      LAUNIT34   ="Duration of pregnancy-related problem: Time unit"
      LADURA34   ="Duration of pregnancy-related problem (in years)"
      LADURB34   ="Duration of pregnancy-related problem recode 2"
      LACHRC34   ="Pregnancy-related condition status"
      LATIME90   ="Duration of other N.E.C. problem (1): Number of units"
      LAUNIT90   ="Duration of other N.E.C. problem (1): Time unit"
      LADURA90   ="Duration of other N.E.C. problem (1) (in years)"
      LADURB90   ="Duration of other N.E.C. problem (1) recode 2"
      LACHRC90   ="Other N.E.C. problem (1) condition status"
      LATIME91   ="Duration of other N.E.C. problem (2): Number of units"
      LAUNIT91   ="Duration of other N.E.C. problem (2): Time unit"
      LADURA91   ="Duration of other N.E.C. problem (2) (in years)"
      LADURB91   ="Duration of other N.E.C. problem (2) recode2"
      LACHRC91   ="Other N.E.C. problem (2) condition status"
      LCONDRT    ="Chronic condition recode for person with LA"
      LACHRONR   ="Lim of activ recode by chron cond status"
      PHSTAT     ="Reported health status"

      /* FAU LABELS */

      PDMED12M   ="Was medical care delayed for - - (cost), 12m"
      PNMED12M   ="Did - - need and NOT get medical care (cost), 12m"
      PHOSPYR    ="Was - - in a hospital OVERNIGHT, 12m"
      HOSPNO     ="Number of times in hospital overnight, 12m"
      HPNITE     ="Number of nights in hospital, 12m"
      PHCHM2W    ="Did - - receive HOME care by health professional, 2 wk"
      PHCHMN2W   ="Number of HOME visits by health professional, 2wk"
      PHCPH2WR   ="Did--get advice/test results by phone, 2wk"
      PHCPHN2W   ="Number of PHONE calls to health professional, 2wk"
      PHCDV2W    ="Did - - see health professional in office, etc, 2wk"
      PHCDVN2W   ="Number of times VISITED health professional, 2wk"
      P10DVYR    ="Did - - receive care 10+ times, 12m"

      /* FHI LABELS */

      NOTCOV     ="Cov stat as used in Health United States"
      MEDICARE   ="Medicare coverage recode"
      MCPART     ="Type of Medicare coverage"
      MCCHOICE   ="Enrolled in Medicare Advantage Plan"
      MCHMO      ="Is - - signed up with an HMO"
      MCNAMEN    ="Medicare HMO name"
      MCREF      ="Need a referral for special care"
      MCPAYPRE   ="More comprehensive benefit plan"
      MCRXCARD   ="Medicare prescription drug card"
      MEDICAID   ="Medicaid coverage recode"
      MACHMD     ="Any doc, chooses from a list, doc assigned"
      MAPCMD     ="Primary care physician for routine care"
      MAREF      ="Need a referral for special care"
      SINGLE     ="Single service plan recode"
      SSTYPEA    ="Accidents"
      SSTYPEB    ="AIDS care"
      SSTYPEC    ="Cancer treatment"
      SSTYPED    ="Catastrophic care"
      SSTYPEE    ="Dental care"
      SSTYPEF    ="Disability insurance"
      SSTYPEG    ="Hospice care"
      SSTYPEH    ="Hospitalization only"
      SSTYPEI    ="Long-term care"
      SSTYPEJ    ="Prescriptions"
      SSTYPEK    ="Vision care"
      SSTYPEL    ="Other"
      PRIVATE    ="Private health insurance recode"
      HITYPE1    ="Name of plan (Plan 1)"
      WHONAM1    ="Plan in whose name (Plan 1)"
      PLNWRKN1   ="How plan was originally obtained (plan 1)"
      PLNPAY11   ="Paid for by self or family (Plan 1)"
      PLNPAY21   ="Paid for by employer or union (Plan 1)"
      PLNPAY31   ="Paid for by someone outside the household (Plan 1)"
      PLNPAY41   ="Paid for by Medicare (Plan 1)"
      PLNPAY51   ="Paid for by Medicaid (Plan 1)"
      PLNPAY61   ="Paid for by SCHIP (Plan 1)"
      PLNPAY71   ="Paid for by government program (Plan 1)"
      HICOSTR1   ="Out-of-pocket premium cost (Plan 1)"
      PLNMGD1    ="Type of private plan (Plan 1)"
      MGCHMD1    ="Doctor choice (Plan 1)"
      MGPRMD1    ="Preferred list (Plan 1)"
      MGPYMD1    ="Out of plan use (Plan 1)"
      MGPREF1    ="Private referral (Plan 1)"
      PRRXCOV1   ="Prescription drug benefit (Plan 1)"
      HITYPE2    ="Name of plan (Plan 2)"
      WHONAM2    ="Plan in whose name (Plan 2)"
      PLNWRKN2   ="How plan was originally obtained (Plan 2)"
      PLNPAY12   ="Paid for by self or family (Plan 2)"
      PLNPAY22   ="Paid for by employer or union (Plan 2)"
      PLNPAY32   ="Paid for by someone outside the household (Plan 2)"
      PLNPAY42   ="Paid for by Medicare (Plan 2)"
      PLNPAY52   ="Paid for by Medicaid (Plan 2)"
      PLNPAY62   ="Paid for by SCHIP (Plan 2)"
      PLNPAY72   ="Paid for by government program (Plan 2)"
      HICOSTR2   ="Out-of-pocket premium cost (Plan 2)"
      PLNMGD2    ="Type of private plan (plan 2)"
      MGCHMD2    ="Doctor choice (Plan 2)"
      MGPRMD2    ="Preferred list (Plan 2)"
      MGPYMD2    ="Out of plan use (Plan 2)"
      MGPREF2    ="Private referral (Plan 2)"
      PRRXCOV2   ="Prescription drug benefit (Plan 2)"
      PRPLPLUS   ="Person has more than two private plans"
      SCHIP      ="SCHIP coverage recode"
      STDOC1     ="Any doc, chooses from a list, doc assigned (SCHIP)"
      STPCMD1    ="Primary care physician for routine care (SCHIP)"
      STREF1     ="Need a referral for special care (SCHIP)"
      OTHERPUB   ="State-sponsored health plan recode"
      STDOC2     ="Any doc, chooses from a list, doc assigned (OTHERPUB)"
      STPCMD2    ="Primary care physician for routine care (OTHERPUB)"
      STREF2     ="Need a referral for special care (OTHERPUB)"
      OTHERGOV   ="Other government program recode"
      STDOC3     ="Any doc, chooses from a list, doc assigned (OTHERGOV)"
      STPCMD3    ="Primary care physician for routine care (OTHERGOV)"
      STREF3     ="Need a referral for special care (OTHERGOV)"
      MILITARY   ="Military health care coverage recode"
      MILSPC1    ="TRICARE coverage"
      MILSPC2    ="VA coverage"
      MILSPC3    ="CHAMP-VA coverage"
      MILSPC4    ="Other military coverage"
      MILMAN     ="Type of TRICARE coverage"
      IHS        ="Indian Health Service recode"
      HILAST     ="How long since last had health coverage"
      HISTOP1    ="Lost job or changed employers"
      HISTOP2    ="Divorced/sep/death of spouse or parent"
      HISTOP3    ="Ineligible because of age/left school"
      HISTOP4    ="Employer does not offer/not eligible for cov"
      HISTOP5    ="Cost is too high"
      HISTOP6    ="Insurance company refused coverage"
      HISTOP7    ="Medicaid/medi plan stopped after pregnancy"
      HISTOP8    ="Lost Medicaid/new job/increase in income"
      HISTOP9    ="Lost Medicaid (other)"
      HISTOP10   ="Other"
      HISTOP11   ="Never had health insurance"
      HISTOP12   ="Moved from another county/state/country"
      HISTOP13   ="Self-employed"
      HISTOP14   ="No need for it/chooses not to have"
      HISTOP15   ="Got married"
      HINOTYR    ="No health coverage during past 12 months"
      HINOTMYR   ="Months without coverage in past 12 months"
      HCSPFYR    ="Amount family spent for medical care"
      HIKINDA    ="Private health insurance"
      HIKINDB    ="Medicare"
      HIKINDC    ="Medi-Gap"
      HIKINDD    ="Medicaid"
      HIKINDE    ="SCHIP"
      HIKINDF    ="Military health care"
      HIKINDG    ="Indian Health Service"
      HIKINDH    ="State-sponsored health plan"
      HIKINDI    ="Other government plan"
      HIKINDJ    ="Single service plan"
      HIKINDK    ="No coverage of any type"
      MCAREPRB   ="Medicare coverage probe"
      MCAIDPRB   ="Medicaid coverage probe"
      SINCOV     ="Single service plan probe"

      /* FSD LABELS */

      PLBORN     ="Born in the United States"
      REGIONBR   ="Geographic region of birth recode"
      GEOBRTH    ="Geographic place of birth recode"
      YRSINUS    ="Years that - - has been in the U.S."
      CITIZENP   ="U.S. citizenship status"
      HEADST     ="Now attending Head Start"
      HEADSTV1   ="Ever attended Head Start"
      EDUC1      ="Highest level of school completed"
      PMILTRY    ="Did - - receive honorable discharge"
      DOINGLWP   ="What was - - doing last week"
      WHYNOWKP   ="Main reason for not working last week"
      WRKHRS2    ="Hours worked last week"
      WRKFTALL   ="Usually work full time"
      WRKLYR1    ="Work for pay last year"
      WRKMYR     ="Months worked last year"
      ERNYR_P    ="Total earnings last year"
      HIEMPOF    ="Health insurance offered at workplace"

      /* FIN LABELS */

      PSAL       ="Receive income from wages/salary (last CY)"
      PSEINC     ="Receive income from self-employment (last CY)"
      PSSRR      ="Receive income from SS or RR (last CY)"
      PSSRRDB    ="Received SS or RR as a disability benefit"
      PSSRRD     ="Received benefit due to disability"
      PPENS      ="Receive income from other pensions (disability)"
      POPENS     ="Receive income from any other pension"
      PSSI       ="Received income from SSI"
      PSSID      ="Received SSI due to disability"
      PTANF      ="Received income from welfare/TANF"
      POWBEN     ="Received other government assistance"
      PINTRSTR   ="Receive interest income"
      PDIVD      ="Receive dividends from stocks, funds, etc."
      PCHLDSP    ="Receive income from child support"
      PINCOT     ="Received income from any other source"
      PSSAPL     ="Ever applied for SSI"
      PSDAPL     ="Ever applied for SSDI"
      TANFMYR    ="Months received welfare/TANF (last CY)"
      PFSTP      ="Person authorized to receive food stamps (last CY)"
      FSTPMYR    ="Months received food stamps (last CY)"
      ELIGPWIC   ="Anyone age-eligible for the WIC program?"
      PWIC       ="Received WIC benefits"
      WIC_FLAG   ="WIC recipient age-eligible"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
   *    (PUT ASTERISK (*) BEFORE WORD "FORMAT"
        IN NEXT STATEMENT TO PREVENT FORMAT
        ASSOCIATIONS BEING STORED WITH DATA SET);

   *FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE   PEP001X.   SRVY_YR   PEP002X.   HHX       $GROUPC.
      INTV_QRT  PEP004X.   ASSIGNWK  PEP005X.   WTIA      GROUPN.
      WTFA      GROUPN.

      /* UCF FORMAT ASSOCIATIONS */

      REGION    PEP010X.   STRATUM   PEP011X.   PSU       PEP012X.

      /* HHC FORMAT ASSOCIATIONS */

      SEX       PEP013X.   ORIGIN_I  PEP014X.   ORIGIMPT  PEP015X.
      HISPAN_I  PEP016X.   HISPIMPT  PEP017X.   RACERPI2  PEP018X.
      RACEIMP2  PEP019X.   MRACRPI2  PEP020X.   MRACBPI2  PEP021X.
      RACRECI2  PEP022X.   HISCODI2  PEP023X.   ERIMPFLG  PEP024X.
      NOWAF     PEP025X.   RRP       PEP026X.   HHREFLG   $PEP027X.
      FRRP      PEP028X.   DOB_M     $PEP029X.  DOB_Y_P   $PEP030X.
      AGE_P     PEP031X.   AGE_CHG   PEP032X.

      /* FID FORMAT ASSOCIATIONS */

      FMRPFLG   $PEP033X.  FMREFLG   $PEP034X.  R_MARITL  PEP035X.
      COHAB1    PEP036X.   COHAB2    PEP037X.   CDCMSTAT  PEP038X.
      SIB_DEG   PEP039X.   FMOTHER   PEP040X.   MOM_DEG   PEP041X.
      FFATHER   PEP042X.   DAD_DEG   PEP041X.   PARENTS   PEP044X.
      MOM_ED    PEP045X.   DAD_ED    PEP045X.   ASTATFLG  PEP047X.
      CSTATFLG  PEP048X.

      /* FHS FORMAT ASSOCIATIONS */

      PLAPLYLM  PEP036X.   PLAPLYUN  PEP036X.   PSPEDEIS  PEP036X.
      PSPEDEM   PEP036X.   PLAADL    PEP036X.   LABATH    PEP036X.
      LADRESS   PEP036X.   LAEAT     PEP036X.   LABED     PEP036X.
      LATOILT   PEP036X.   LAHOME    PEP036X.   PLAIADL   PEP036X.
      PLAWKNOW  PEP036X.   PLAWKLIM  PEP062X.   PLAWALK   PEP036X.
      PLAREMEM  PEP036X.   PLIMANY   PEP065X.   LA1AR     PEP066X.
      LAHCC1    PEP067X.   LAHCC2    PEP067X.   LAHCC3    PEP067X.
      LAHCC4    PEP067X.   LAHCC5    PEP067X.   LAHCC6    PEP067X.
      LAHCC7    PEP067X.   LAHCC8    PEP067X.   LAHCC9    PEP067X.
      LAHCC10   PEP067X.   LAHCC11   PEP067X.   LAHCC12   PEP067X.
      LAHCC13   PEP067X.   LAHCC90   PEP067X.   LAHCC91   PEP067X.
      LCTIME1   PEP082X.   LCUNIT1   PEP083X.   LCDURA1   PEP084X.
      LCDURB1   PEP085X.   LCCHRC1   PEP086X.   LCTIME2   PEP082X.
      LCUNIT2   PEP083X.   LCDURA2   PEP084X.   LCDURB2   PEP085X.
      LCCHRC2   PEP086X.   LCTIME3   PEP082X.   LCUNIT3   PEP083X.
      LCDURA3   PEP084X.   LCDURB3   PEP085X.   LCCHRC3   PEP086X.
      LCTIME4   PEP082X.   LCUNIT4   PEP083X.   LCDURA4   PEP084X.
      LCDURB4   PEP085X.   LCCHRC4   PEP086X.   LCTIME5   PEP082X.
      LCUNIT5   PEP083X.   LCDURA5   PEP084X.   LCDURB5   PEP085X.
      LCCHRC5   PEP086X.   LCTIME6   PEP082X.   LCUNIT6   PEP083X.
      LCDURA6   PEP084X.   LCDURB6   PEP085X.   LCCHRC6   PEP086X.
      LCTIME7   PEP082X.   LCUNIT7   PEP083X.   LCDURA7   PEP084X.
      LCDURB7   PEP085X.   LCCHRC7   PEP086X.   LCTIME8   PEP082X.
      LCUNIT8   PEP083X.   LCDURA8   PEP084X.   LCDURB8   PEP085X.
      LCCHRC8   PEP086X.   LCTIME9   PEP082X.   LCUNIT9   PEP083X.
      LCDURA9   PEP084X.   LCDURB9   PEP085X.   LCCHRC9   PEP086X.
      LCTIME10  PEP082X.   LCUNIT10  PEP083X.   LCDURA10  PEP084X.
      LCDURB10  PEP085X.   LCCHRC10  PEP086X.   LCTIME11  PEP082X.
      LCUNIT11  PEP083X.   LCDURA11  PEP084X.   LCDURB11  PEP085X.
      LCCHRC11  PEP086X.   LCTIME12  PEP082X.   LCUNIT12  PEP083X.
      LCDURA12  PEP084X.   LCDURB12  PEP085X.   LCCHRC12  PEP086X.
      LCTIME13  PEP082X.   LCUNIT13  PEP083X.   LCDURA13  PEP084X.
      LCDURB13  PEP085X.   LCCHRC13  PEP086X.   LCTIME90  PEP082X.
      LCUNIT90  PEP083X.   LCDURA90  PEP084X.   LCDURB90  PEP085X.
      LCCHRC90  PEP086X.   LCTIME91  PEP082X.   LCUNIT91  PEP083X.
      LCDURA91  PEP084X.   LCDURB91  PEP085X.   LCCHRC91  PEP086X.
      LAHCA1    PEP067X.   LAHCA2    PEP067X.   LAHCA3    PEP067X.
      LAHCA4    PEP067X.   LAHCA5    PEP067X.   LAHCA6    PEP067X.
      LAHCA7    PEP067X.   LAHCA8    PEP067X.   LAHCA9    PEP067X.
      LAHCA10   PEP067X.   LAHCA11   PEP067X.   LAHCA12   PEP067X.
      LAHCA13   PEP067X.   LAHCA14   PEP067X.   LAHCA15   PEP067X.
      LAHCA16   PEP067X.   LAHCA17   PEP067X.   LAHCA18   PEP067X.
      LAHCA19_  PEP067X.   LAHCA20_  PEP067X.   LAHCA21_  PEP067X.
      LAHCA22_  PEP067X.   LAHCA23_  PEP067X.   LAHCA24_  PEP067X.
      LAHCA25_  PEP067X.   LAHCA26_  PEP067X.   LAHCA27_  PEP067X.
      LAHCA28_  PEP067X.   LAHCA29_  PEP067X.   LAHCA30_  PEP067X.
      LAHCA31_  PEP067X.   LAHCA32_  PEP067X.   LAHCA33_  PEP067X.
      LAHCA34_  PEP067X.   LAHCA90   PEP067X.   LAHCA91   PEP067X.
      LATIME1   PEP082X.   LAUNIT1   PEP083X.   LADURA1   PEP195X.
      LADURB1   PEP196X.   LACHRC1   PEP086X.   LATIME2   PEP082X.
      LAUNIT2   PEP083X.   LADURA2   PEP195X.   LADURB2   PEP196X.
      LACHRC2   PEP086X.   LATIME3   PEP082X.   LAUNIT3   PEP083X.
      LADURA3   PEP195X.   LADURB3   PEP196X.   LACHRC3   PEP086X.
      LATIME4   PEP082X.   LAUNIT4   PEP083X.   LADURA4   PEP195X.
      LADURB4   PEP196X.   LACHRC4   PEP086X.   LATIME5   PEP082X.
      LAUNIT5   PEP083X.   LADURA5   PEP195X.   LADURB5   PEP196X.
      LACHRC5   PEP086X.   LATIME6   PEP082X.   LAUNIT6   PEP083X.
      LADURA6   PEP195X.   LADURB6   PEP196X.   LACHRC6   PEP086X.
      LATIME7   PEP082X.   LAUNIT7   PEP083X.   LADURA7   PEP195X.
      LADURB7   PEP196X.   LACHRC7   PEP086X.   LATIME8   PEP082X.
      LAUNIT8   PEP083X.   LADURA8   PEP195X.   LADURB8   PEP196X.
      LACHRC8   PEP086X.   LATIME9   PEP082X.   LAUNIT9   PEP083X.
      LADURA9   PEP195X.   LADURB9   PEP196X.   LACHRC9   PEP086X.
      LATIME10  PEP082X.   LAUNIT10  PEP083X.   LADURA10  PEP195X.
      LADURB10  PEP196X.   LACHRC10  PEP086X.   LATIME11  PEP082X.
      LAUNIT11  PEP083X.   LADURA11  PEP195X.   LADURB11  PEP196X.
      LACHRC11  PEP086X.   LATIME12  PEP082X.   LAUNIT12  PEP083X.
      LADURA12  PEP195X.   LADURB12  PEP196X.   LACHRC12  PEP086X.
      LATIME13  PEP082X.   LAUNIT13  PEP083X.   LADURA13  PEP195X.
      LADURB13  PEP196X.   LACHRC13  PEP086X.   LATIME14  PEP082X.
      LAUNIT14  PEP083X.   LADURA14  PEP195X.   LADURB14  PEP196X.
      LACHRC14  PEP086X.   LATIME15  PEP082X.   LAUNIT15  PEP083X.
      LADURA15  PEP195X.   LADURB15  PEP196X.   LACHRC15  PEP086X.
      LATIME16  PEP082X.   LAUNIT16  PEP083X.   LADURA16  PEP195X.
      LADURB16  PEP196X.   LACHRC16  PEP086X.   LATIME17  PEP082X.
      LAUNIT17  PEP083X.   LADURA17  PEP195X.   LADURB17  PEP196X.
      LACHRC17  PEP086X.   LATIME18  PEP082X.   LAUNIT18  PEP083X.
      LADURA18  PEP195X.   LADURB18  PEP196X.   LACHRC18  PEP086X.
      LATIME19  PEP082X.   LAUNIT19  PEP083X.   LADURA19  PEP195X.
      LADURB19  PEP196X.   LACHRC19  PEP086X.   LATIME20  PEP082X.
      LAUNIT20  PEP083X.   LADURA20  PEP195X.   LADURB20  PEP196X.
      LACHRC20  PEP086X.   LATIME21  PEP082X.   LAUNIT21  PEP083X.
      LADURA21  PEP195X.   LADURB21  PEP196X.   LACHRC21  PEP086X.
      LATIME22  PEP082X.   LAUNIT22  PEP083X.   LADURA22  PEP195X.
      LADURB22  PEP196X.   LACHRC22  PEP086X.   LATIME23  PEP082X.
      LAUNIT23  PEP083X.   LADURA23  PEP195X.   LADURB23  PEP196X.
      LACHRC23  PEP086X.   LATIME24  PEP082X.   LAUNIT24  PEP083X.
      LADURA24  PEP195X.   LADURB24  PEP196X.   LACHRC24  PEP086X.
      LATIME25  PEP082X.   LAUNIT25  PEP083X.   LADURA25  PEP195X.
      LADURB25  PEP196X.   LACHRC25  PEP086X.   LATIME26  PEP082X.
      LAUNIT26  PEP083X.   LADURA26  PEP195X.   LADURB26  PEP196X.
      LACHRC26  PEP086X.   LATIME27  PEP082X.   LAUNIT27  PEP083X.
      LADURA27  PEP195X.   LADURB27  PEP196X.   LACHRC27  PEP086X.
      LATIME28  PEP082X.   LAUNIT28  PEP083X.   LADURA28  PEP195X.
      LADURB28  PEP196X.   LACHRC28  PEP086X.   LATIME29  PEP082X.
      LAUNIT29  PEP083X.   LADURA29  PEP195X.   LADURB29  PEP196X.
      LACHRC29  PEP086X.   LATIME30  PEP082X.   LAUNIT30  PEP083X.
      LADURA30  PEP195X.   LADURB30  PEP196X.   LACHRC30  PEP086X.
      LATIME31  PEP082X.   LAUNIT31  PEP083X.   LADURA31  PEP195X.
      LADURB31  PEP196X.   LACHRC31  PEP086X.   LATIME32  PEP082X.
      LAUNIT32  PEP083X.   LADURA32  PEP195X.   LADURB32  PEP196X.
      LACHRC32  PEP086X.   LATIME33  PEP082X.   LAUNIT33  PEP083X.
      LADURA33  PEP195X.   LADURB33  PEP196X.   LACHRC33  PEP086X.
      LATIME34  PEP082X.   LAUNIT34  PEP083X.   LADURA34  PEP195X.
      LADURB34  PEP196X.   LACHRC34  PEP086X.   LATIME90  PEP082X.
      LAUNIT90  PEP083X.   LADURA90  PEP195X.   LADURB90  PEP196X.
      LACHRC90  PEP086X.   LATIME91  PEP082X.   LAUNIT91  PEP083X.
      LADURA91  PEP195X.   LADURB91  PEP196X.   LACHRC91  PEP086X.
      LCONDRT   PEP373X.   LACHRONR  PEP374X.   PHSTAT    PEP375X.

      /* FAU FORMAT ASSOCIATIONS */

      PDMED12M  PEP036X.   PNMED12M  PEP036X.   PHOSPYR   PEP036X.
      HOSPNO    PEP379X.   HPNITE    PEP380X.   PHCHM2W   PEP036X.
      PHCHMN2W  PEP382X.   PHCPH2WR  PEP036X.   PHCPHN2W  PEP384X.
      PHCDV2W   PEP036X.   PHCDVN2W  PEP386X.   P10DVYR   PEP036X.

      /* FHI FORMAT ASSOCIATIONS */

      NOTCOV    PEP388X.   MEDICARE  PEP389X.   MCPART    PEP390X.
      MCCHOICE  PEP036X.   MCHMO     PEP036X.   MCNAMEN   PEP393X.
      MCREF     PEP036X.   MCPAYPRE  PEP036X.   MCRXCARD  PEP036X.
      MEDICAID  PEP389X.   MACHMD    PEP398X.   MAPCMD    PEP036X.
      MAREF     PEP036X.   SINGLE    PEP401X.   SSTYPEA   PEP067X.
      SSTYPEB   PEP067X.   SSTYPEC   PEP067X.   SSTYPED   PEP067X.
      SSTYPEE   PEP067X.   SSTYPEF   PEP067X.   SSTYPEG   PEP067X.
      SSTYPEH   PEP067X.   SSTYPEI   PEP067X.   SSTYPEJ   PEP067X.
      SSTYPEK   PEP067X.   SSTYPEL   PEP067X.   PRIVATE   PEP389X.
      HITYPE1   PEP415X.   WHONAM1   PEP416X.   PLNWRKN1  PEP417X.
      PLNPAY11  PEP067X.   PLNPAY21  PEP067X.   PLNPAY31  PEP067X.
      PLNPAY41  PEP067X.   PLNPAY51  PEP067X.   PLNPAY61  PEP067X.
      PLNPAY71  PEP067X.   HICOSTR1  PEP425X.   PLNMGD1   PEP426X.
      MGCHMD1   PEP427X.   MGPRMD1   PEP036X.   MGPYMD1   PEP036X.
      MGPREF1   PEP036X.   PRRXCOV1  PEP036X.   HITYPE2   PEP415X.
      WHONAM2   PEP416X.   PLNWRKN2  PEP417X.   PLNPAY12  PEP067X.
      PLNPAY22  PEP067X.   PLNPAY32  PEP067X.   PLNPAY42  PEP067X.
      PLNPAY52  PEP067X.   PLNPAY62  PEP067X.   PLNPAY72  PEP067X.
      HICOSTR2  PEP425X.   PLNMGD2   PEP426X.   MGCHMD2   PEP427X.
      MGPRMD2   PEP036X.   MGPYMD2   PEP036X.   MGPREF2   PEP036X.
      PRRXCOV2  PEP036X.   PRPLPLUS  PEP036X.   SCHIP     PEP389X.
      STDOC1    PEP398X.   STPCMD1   PEP036X.   STREF1    PEP036X.
      OTHERPUB  PEP389X.   STDOC2    PEP398X.   STPCMD2   PEP036X.
      STREF2    PEP036X.   OTHERGOV  PEP389X.   STDOC3    PEP398X.
      STPCMD3   PEP036X.   STREF3    PEP036X.   MILITARY  PEP389X.
      MILSPC1   PEP067X.   MILSPC2   PEP067X.   MILSPC3   PEP067X.
      MILSPC4   PEP067X.   MILMAN    PEP467X.   IHS       PEP036X.
      HILAST    PEP469X.   HISTOP1   PEP067X.   HISTOP2   PEP067X.
      HISTOP3   PEP067X.   HISTOP4   PEP067X.   HISTOP5   PEP067X.
      HISTOP6   PEP067X.   HISTOP7   PEP067X.   HISTOP8   PEP067X.
      HISTOP9   PEP067X.   HISTOP10  PEP067X.   HISTOP11  PEP067X.
      HISTOP12  PEP067X.   HISTOP13  PEP067X.   HISTOP14  PEP067X.
      HISTOP15  PEP067X.   HINOTYR   PEP036X.   HINOTMYR  PEP486X.
      HCSPFYR   PEP487X.   HIKINDA   PEP067X.   HIKINDB   PEP067X.
      HIKINDC   PEP067X.   HIKINDD   PEP067X.   HIKINDE   PEP067X.
      HIKINDF   PEP067X.   HIKINDG   PEP067X.   HIKINDH   PEP067X.
      HIKINDI   PEP067X.   HIKINDJ   PEP067X.   HIKINDK   PEP067X.
      MCAREPRB  PEP036X.   MCAIDPRB  PEP036X.   SINCOV    PEP036X.

      /* FSD FORMAT ASSOCIATIONS */

      PLBORN    PEP036X.   REGIONBR  PEP503X.   GEOBRTH   PEP504X.
      YRSINUS   PEP505X.   CITIZENP  PEP506X.   HEADST    PEP036X.
      HEADSTV1  PEP036X.   EDUC1     PEP509X.   PMILTRY   PEP036X.
      DOINGLWP  PEP511X.   WHYNOWKP  PEP512X.   WRKHRS2   PEP513X.
      WRKFTALL  PEP036X.   WRKLYR1   PEP036X.   WRKMYR    PEP516X.
      ERNYR_P   PEP517X.   HIEMPOF   PEP036X.

      /* FIN FORMAT ASSOCIATIONS */

      PSAL      PEP036X.   PSEINC    PEP036X.   PSSRR     PEP036X.
      PSSRRDB   PEP036X.   PSSRRD    PEP036X.   PPENS     PEP036X.
      POPENS    PEP036X.   PSSI      PEP036X.   PSSID     PEP036X.
      PTANF     PEP036X.   POWBEN    PEP036X.   PINTRSTR  PEP036X.
      PDIVD     PEP036X.   PCHLDSP   PEP036X.   PINCOT    PEP036X.
      PSSAPL    PEP036X.   PSDAPL    PEP036X.   TANFMYR   PEP486X.
      PFSTP     PEP036X.   FSTPMYR   PEP486X.   ELIGPWIC  PEP539X.
      PWIC      PEP036X.   WIC_FLAG  PEP541X.;
RUN;

PROC CONTENTS DATA=NHIS.person_2005;
   TITLE1 'CONTENTS OF THE 2005 NHIS Person FILE';

PROC FREQ DATA=NHIS.person_2005 NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2005 NHIS Person FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA;

PROC FREQ DATA=NHIS.person_2005 NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2005 NHIS Person FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
