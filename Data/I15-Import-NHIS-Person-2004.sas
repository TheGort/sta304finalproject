*-------------------------------------------------------------------------*
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 04349
 |                 NATIONAL HEALTH INTERVIEW SURVEY, 2004
 |                        (DATASET 0003:  PERSON)
 |
 |
 | SAS setup sections are provided for the ASCII version of this data
 | collection.  These sections are listed below:
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions. Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set.
 |
 | INFILE:  identifies the input file to be read with the input statement.
 | Users must replace the "data-filename" with a filename specifying the
 | directory on the user's computer system in which the downloaded and
 | unzipped data file is physically located (e.g.,
 | "c:\temp\04349-0003-data.txt").
 |
 | INPUT:  assigns the name, type, decimal specification (if any), and
 | specifies the beginning and ending column locations for each variable
 | in the data file.
 |
 | LABEL:  assigns descriptive labels to all variables. Variable labels
 | and variable names may be identical for some variables.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in this section.
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables named in the INPUT statement.
 |
 | NOTE:  Users should modify this setup file to suit their specific needs.
 | Sections for PROC FORMAT, FORMAT, and MISSING VALUE RECODES have been
 | commented out (i.e., '/*'). To include these sections in the final SAS
 | setup, users should remove the SAS comment indicators from the desired
 | section(s).
 |
 *------------------------------------------------------------------------;

* SAS PROC FORMAT;

libname nhis "C:\DATA\NHIS";
/*
PROC FORMAT;
  VALUE RECTYPE   10='(10) Household' 20='(20) Person' 30='(30) Sample Adult'
                  40='(40) Sample Child' 60='(60) Family' 70='(70) Injury/Poisoning Episode'
                  75='(75) Injury/Poisoning Verbatim' ;
  VALUE SRVY_YR   2004='(2004) 2004' ;
  VALUE SEX       1='(1) Male' 2='(2) Female' ;
  VALUE ORIGIN_I  1='(1) Yes' 2='(2) No' ;
  VALUE ORIGIMPT  1='(1) Imputed: was ''refused'' Hispanic Origin'
                  2='(2) Imputed: was ''not ascertained'' Hispanic Origin'
                  3='(3) Imputed: was ''does not know'' Hispanic Origin'
                  4='(4) Hispanic origin given by respondent/proxy' ;
  VALUE HISPIMPT  1='(1) Imputed: was ''refused'' Hispanic Origin'
                  2='(2) Imputed: was ''not ascertained'' Hispanic Origin'
                  3='(3) Imputed: was ''does not know'' Hispanic Origin'
                  4='(4) Hispanic Origin type given by respondent/proxy' ;
  VALUE HISPAN_I  0='(0) Multiple Hispanic' 1='(1) Puerto Rico' 2='(2) Mexican'
                  3='(3) Mexican-American' 4='(4) Cuban/Cuban American'
                  5='(5) Dominican (Republic)' 6='(6) Central or South American'
                  7='(7) Other Latin American, type not specified'
                  8='(8) Other Spanish'
                  9='(9) Hispanic/Latino/Spanish, non-specific type'
                  10='(10) Hispanic/Latino/Spanish, type refused'
                  11='(11) Hispanic/Latino/Spanish, type not ascertained'
                  12='(12) Not Hispanic/Spanish origin' ;
  VALUE RACERPIf  1='(1) White only' 2='(2) Black/African American only'
                  3='(3) AIAN only' 4='(4) Asian only'
                  5='(5) Race group not releasable (See file layout)'
                  6='(6) Multiple race' ;
  VALUE RACEIMPf  1='(1) Imputed: was ''refused'''
                  2='(2) Imputed: was ''not ascertained'''
                  3='(3) Imputed: was ''does not know'''
                  4='(4) Imputed: was other race'''
                  5='(5) Imputed: was ''unspecified multiple race'''
                  6='(6) Race given by respondent/proxy' ;
  VALUE MRACRPIf  1='(1) White' 2='(2) Black/African American'
                  3='(3) Indian (American), Alaska Native' 9='(9) Asian Indian'
                  10='(10) Chinese' 11='(11) Filipino'
                  15='(15) Other Asian (See file layout)'
                  16='(16) Primary race not releasable (See file layout)'
                  17='(17) Multiple race, no primary race selected' ;
  VALUE MRACBPIf  1='(1) White' 2='(2) Black/African American'
                  3='(3) Indian (American) (includes Eskimo, Aleut)' 6='(6) Chinese'
                  7='(7) Filipino' 12='(12) Asian Indian'
                  16='(16) Other race (See file layout)'
                  17='(17) Multiple race, no primary race selected' ;
  VALUE RACRECIf  1='(1) White' 2='(2) Black'
                  3='(3) All other race groups (See file layout)' ;
  VALUE HISCODIf  1='(1) Hispanic' 2='(2) Non-Hispanic White' 3='(3) Non-Hispanic Black'
                  4='(4) Non-Hispanic All other race groups' ;
  VALUE ERIMPFLG  1='(1) Ethnicity/race imputed'
                  2='(2) Ethnicity/race given by respondent/proxy' ;
  VALUE NOWAF     1='(1) Armed Forces' 2='(2) Not Armed Forces' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE RRP       1='(1) Household reference person' 2='(2) Spouse (husband/wife)'
                  3='(3) Unmarried Partner'
                  4='(4) Child (biological/adoptive/in-law/step/foster)'
                  5='(5) Child of partner' 6='(6) Grandchild'
                  7='(7) Parent (biological/adoptive/in-law/step/foster)'
                  8='(8) Brother/sister (biological/adoptive/in-law/step/foster)'
                  9='(9) Grandparent (Grandmother/Grandfather)' 10='(10) Aunt/Uncle'
                  11='(11) Niece/Nephew' 12='(12) Other relative'
                  13='(13) Housemate/roommate' 14='(14) Roomer/Boarder'
                  15='(15) Other nonrelative' 16='(16) Legal guardian' 17='(17) Ward'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE $HHREFLG  '8'='(8) Not ascertained' 'P'='(P) HH Reference person' ;
  VALUE $DOB_M    '01'='(01) January' '02'='(02) February' '03'='(03) March' '04'='(04) April'
                  '05'='(05) May' '06'='(06) June' '07'='(07) July' '08'='(08) August'
                  '09'='(09) September' '10'='(10) October' '11'='(11) November'
                  '12'='(12) December' '97'='(97) Refused' '98'='(98) Not ascertained'
                  '99'='(99) Don''t know' ;
  VALUE $DOB_Y_P  '1919'='(1919) 1919 or before' '9997'='(9997) Refused'
                  '9998'='(9998) Not ascertained' '9999'='(9999) Don''t know' ;
  VALUE AGE_P     0='(0) Under 1 year' 85='(85) 85+ years' ;
  VALUE FRRP      1='(1) Family reference person' 2='(2) Spouse (husband/wife)'
                  3='(3) Unmarried Partner'
                  4='(4) Child (biological/adoptive/in-law/step/foster)'
                  5='(5) Child of partner' 6='(6) Grandchild'
                  7='(7) Parent (biological/adoptive/in-law/step/foster)'
                  8='(8) Brother/sister (biological/adoptive/in-law/step/foster)'
                  9='(9) Grandparent (Grandmother/Grandfather)' 10='(10) Aunt/Uncle'
                  11='(11) Niece/Nephew' 12='(12) Other relative' 16='(16) Legal guardian'
                  17='(17) Ward' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE $FMRPFLG  '8'='(8) Not ascertained' 'B'='(B) Family respondent' ;
  VALUE $FMREFLG  '8'='(8) Not ascertained' 'P'='(P) Family reference person' ;
  VALUE R_MARITL  0='(0) Under 14 years' 1='(1) Married - spouse in household'
                  2='(2) Married - spouse not in household'
                  3='(3) Married - spouse in household unknown' 4='(4) Widowed'
                  5='(5) Divorced' 6='(6) Separated' 7='(7) Never married'
                  8='(8) Living with partner' 9='(9) Unknown marital status' ;
  VALUE COHAB1ff  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE COHAB2ff  1='(1) Married' 2='(2) Widowed' 3='(3) Divorced' 4='(4) Separated'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CDCMSTAT  1='(1) Separated' 2='(2) Divorced' 3='(3) Married'
                  4='(4) Single/never married' 5='(5) Widowed'
                  9='(9) Unknown marital status' ;
  VALUE SIB_DEG   1='(1) Full {brother/sister}' 2='(2) Half {brother/sister}'
                  3='(3) Adopted {brother/sister}' 4='(4) Step {brother/sister}'
                  5='(5) Foster {brother/sister}' 6='(6) {Brother/Sister}-in-law'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FMOTHER   0='(0) Mother not a household member' 96='(96) Has legal guardian'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE MOM_DEG   1='(1) Biological' 2='(2) Adoptive' 3='(3) Step' 4='(4) Foster' 5='(5) In-law'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FFATHER   0='(0) Father not in household' 96='(96) Has legal guardian'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE DAD_DEG   1='(1) Biological' 2='(2) Adoptive' 3='(3) Step' 4='(4) Foster' 5='(5) In-law'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PARENTS   1='(1) Mother, no father' 2='(2) Father, no mother'
                  3='(3) Mother and father' 4='(4) Neither mother nor father'
                  9='(9) Unknown' ;
  VALUE MOM_ED    1='(1) Less/equal to 8th grade'
                  2='(2) 9-12th grade, no high school diploma'
                  3='(3) High school graduate/GED recipient'
                  4='(4) Some college, no degree'
                  5='(5) AA degree, technical or vocational'
                  6='(6) AA degree, academic program' 7='(7) Bachelor''s degree'
                  8='(8) Master''s, professional, or doctoral degree'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE DAD_ED    1='(1) Less/equal to 8th grade'
                  2='(2) 9-12th grade, no high school diploma'
                  3='(3) High school graduate/GED recipient'
                  4='(4) Some college, no degree'
                  5='(5) AA degree, technical or vocational'
                  6='(6) AA degree, academic program' 7='(7) Bachelor''s degree'
                  8='(8) Master''s, professional, or doctoral degree'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ASTATFLG  0='(0) Sample Adult - no record' 1='(1) Sample Adult - has record'
                  2='(2) Not selected as Sample Adult'
                  3='(3) No one selected as Sample Adult' 4='(4) Armed Force member'
                  5='(5) Armed Force member - selected as Sample Adult' ;
  VALUE CSTATFLG  0='(0) Sample Child - no record' 1='(1) Sample Child - has record'
                  2='(2) Not selected as Sample Child'
                  3='(3) No one selected as Sample Child' 4='(4) Emancipated minor' ;
  VALUE PLAPLYLM  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLAPLYUN  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PSPEDEIS  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PSPEDEM   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLAADL    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LABATH    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADRESS   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LAEAT     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LABED     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LATOILT   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LAHOME    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLAIADL   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLAWKNOW  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE PLAWKLIM  0='(0) Unable to work' 1='(1) Limited in work'
                  2='(2) Not limited in work' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE PLAWALK   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLAREMEM  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLIMANY   0='(0) Limitation previously mentioned'
                  1='(1) Yes, limited in some other way'
                  2='(2) Not limited in any way' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LA1AR     1='(1) Limited in any way' 2='(2) Not limited in any way'
                  3='(3) Unknown if limited' ;
  VALUE LAHCC1ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC2ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC3ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC4ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not Ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC5ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC6ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC7ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC8ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC9ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC10f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC11f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC12f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC13f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC90f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC91f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LCTIME1f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNIT1f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDURA1f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDURB1f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHRC1f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIME2f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNIT2f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDURA2f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDURB2f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHRC2f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIME3f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNIT3f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDURA3f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDURB3f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHRC3f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIME4f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNIT4f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDURA4f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDURB4f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHRC4f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIME5f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNIT5f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDURA5f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDURB5f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHRC5f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIME6f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNIT6f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDURA6f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDURB6f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHRC6f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIME7f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNIT7f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDURA7f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDURB7f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHRC7f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIME8f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNIT8f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDURA8f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDURB8f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHRC8f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIME9f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNIT9f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDURA9f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDURB9f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHRC9f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIME0f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNIT0f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDURA0f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDURB0f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHRC0f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIM10f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNI10f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDUR10f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDUR11f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHR10f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIM11f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNI11f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDUR12f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDUR13f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHR11f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIM12f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNI12f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDUR14f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDUR15f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHR12f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIM13f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNI13f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDUR16f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDUR17f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHR13f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCTIM14f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNI14f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDUR18f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDUR19f  0='(0) Since birth and child <1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHR14f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LAHCA1ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA2ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA3ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA4ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not Ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA5ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA6ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA7ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA8ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA9ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA10f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA11f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA12f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA13f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA14f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA15f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA16f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA17f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA18f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA19_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA20_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA21_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA22_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA23_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA24_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA25_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA26_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA27_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA28_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA29_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA30_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA31_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA32_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA33_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA34_  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA90f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA91f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LATIME1f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNIT1f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADURA1f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADURB1f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHRC1f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIME2f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNIT2f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADURA2f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADURB2f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHRC2f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIME3f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNIT3f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADURA3f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADURB3f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHRC3f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIME4f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNIT4f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADURA4f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADURB4f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHRC4f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIME5f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNIT5f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADURA5f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADURB5f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHRC5f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIME6f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNIT6f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADURA6f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADURB6f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHRC6f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIME7f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNIT7f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADURA7f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADURB7f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHRC7f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIME8f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNIT8f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADURA8f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADURB8f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHRC8f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIME9f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNIT9f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADURA9f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADURB9f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHRC9f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIME0f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNIT0f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADURA0f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADURB0f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHRC0f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM10f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI10f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR10f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR11f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR10f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM11f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI11f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR12f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR13f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR11f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM12f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI12f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR14f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR15f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR12f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM13f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI13f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR16f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR17f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR13f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM14f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI14f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR18f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR19f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR14f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM15f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI15f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR20f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR21f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR15f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM16f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI16f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR22f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR23f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR16f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM17f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI17f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR24f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR25f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR17f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM18f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI18f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR26f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR27f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR18f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM19f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI19f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR28f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR29f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR19f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM20f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI20f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR30f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR31f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR20f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM21f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI21f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR32f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR33f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR21f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM22f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI22f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR34f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR35f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR22f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM23f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI23f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR36f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR37f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR23f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM24f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI24f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR38f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR39f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR24f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM25f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI25f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR40f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR41f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR25f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM26f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI26f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR42f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR43f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR26f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM27f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI27f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR44f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR45f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR27f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM28f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI28f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR46f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR47f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR28f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM29f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI29f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR48f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR49f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR29f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM30f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI30f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR50f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR51f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR30f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM31f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI31f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR52f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR53f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR31f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM32f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI32f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR54f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR55f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR32f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM33f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI33f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR56f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR57f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR33f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM34f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI34f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR58f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR59f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR34f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LATIM35f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNI35f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADUR60f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADUR61f  1='(1) Less than 3 months' 2='(2) 3-5 months' 3='(3) 6-12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR35f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCONDRT   1='(1) At least one condition causing LA is chronic'
                  2='(2) No condition causing LA is chronic'
                  9='(9) Unk if any condition causing LA is chronic' ;
  VALUE LACHRONR  0='(0) Not limited in any way (incl unk if limited)'
                  1='(1) Limited; caused by at least one chronic cond'
                  2='(2) Limited; not caused by chronic cond'
                  3='(3) Limited; unk if cond is chronic' ;
  VALUE PHSTAT    1='(1) Excellent' 2='(2) Very good' 3='(3) Good' 4='(4) Fair' 5='(5) Poor'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PDMED12M  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PNMED12M  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PHOSPYR   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HOSPNO    997='(997) Refused' 998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE HPNITE    997='(997) Refused' 998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE PHCHM2W   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PHCHMN2W  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE PHCPH2WR  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PHCPHN2W  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE PHCDV2W   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PHCDVN2W  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE P10DVYR   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE NOTCOV    1='(1) Not covered' 2='(2) Covered' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MEDICARE  1='(1) Yes, information' 2='(2) Yes, but no information' 3='(3) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MCPART    1='(1) Part A - Hospital only' 2='(2) Part B - Medical only'
                  3='(3) Both Part A and Part B' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MCCHOICE  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MCHMO     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MCNAMEN   4='(4) Medigap plan' 12='(12) Group' 22='(22) Staff' 32='(32) IPA' 92='(92) Other'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE MCREF     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MCPAYPRE  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MCRXCARD  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MEDICAID  1='(1) Yes, information' 2='(2) Yes, but no information' 3='(3) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MACHMD    1='(1) Any doctor' 2='(2) Select from book/list'
                  3='(3) Doctor is assigned' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MAPCMD    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MAREF     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SINGLE    1='(1) Yes, with information' 2='(2) Yes, but no information'
                  3='(3) No' 7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPEA   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPEB   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPEC   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPED   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPEE   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPEF   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPEG   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPEH   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPEI   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPEJ   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPEK   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SSTYPEL   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PRIVATE   1='(1) Yes, information' 2='(2) Yes, but no information' 3='(3) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HITYPE1f  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE WHONAM1f  1='(1) In own name' 2='(2) Someone else in family'
                  3='(3) Person not in household' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLNWRKNf  1='(1) Through employer' 2='(2) Through union'
                  3='(3) Through workplace, but don''t know if employer or union'
                  4='(4) Through workplace, self-employed or professional association'
                  5='(5) Purchased directly'
                  6='(6) Through a state/local government or community program'
                  7='(7) Other' 8='(8) Through school' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE PLNPAY1f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPAY2f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPAY3f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPAY4f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPAY5f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPAY6f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPAY7f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HICOSTRf  20000='(20000) $20,000 or more' 99997='(99997) Refused'
                  99998='(99998) Not ascertained' 99999='(99999) Don''t know' ;
  VALUE PLNMGD1f  1='(1) HMO/IPA' 2='(2) PPO' 3='(3) POS' 4='(4) Fee-for-service/indemnity'
                  5='(5) Other' 7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MGCHMD1f  1='(1) Any doctor' 2='(2) Select from group/list' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MGPRMD1f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MGPYMD1f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MGPREF1f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PRRXCOVf  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HITYPE2f  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE WHONAM2f  1='(1) In own name' 2='(2) Someone else in family'
                  3='(3) Person not in household' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLNWRK0f  1='(1) Through employer' 2='(2) Through union'
                  3='(3) Through workplace, but don''t know if employer or union'
                  4='(4) Through workplace, self-employed or professional association'
                  5='(5) Purchased directly'
                  6='(6) Through a state/local government or community program'
                  7='(7) Other' 8='(8) Through school' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE PLNPAY0f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPAY8f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPAY9f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA10f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA11f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA12f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA13f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HICOST0f  20000='(20000) $20,000 or more' 99997='(99997) Refused'
                  99998='(99998) Not ascertained' 99999='(99999) Don''t know' ;
  VALUE PLNMGD2f  1='(1) HMO/IPA' 2='(2) PPO' 3='(3) POS' 4='(4) Fee-for-service/indemnity'
                  5='(5) Other' 7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MGCHMD2f  1='(1) Any doctor' 2='(2) Select from group/list' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MGPRMD2f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MGPYMD2f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MGPREF2f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PRRXCO0f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PRPLPLUS  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SCHIP     1='(1) Yes, information' 2='(2) Yes, but no information' 3='(3) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE STDOC1ff  1='(1) Any doctor' 2='(2) Select from book/list'
                  3='(3) Doctor is assigned' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE STPCMD1f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE STREF1ff  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE OTHERPUB  1='(1) Yes, information' 2='(2) Yes, but no information' 3='(3) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE STDOC2ff  1='(1) Any doctor' 2='(2) Select from book/list'
                  3='(3) Doctor is assigned' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE STPCMD2f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE STREF2ff  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE OTHERGOV  1='(1) Yes, information' 2='(2) Yes, but no information' 3='(3) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE STDOC3ff  1='(1) Any doctor' 2='(2) Select from book/list'
                  3='(3) Doctor is assigned' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE STPCMD3f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE STREF3ff  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MILITARY  1='(1) Yes, information' 2='(2) Yes, but no information' 3='(3) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MILSPC1f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MILSPC2f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MILSPC3f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MILSPC4f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MILMAN    1='(1) TRICARE Prime' 2='(2) TRICARE Extra' 3='(3) TRICARE Standard'
                  4='(4) TRICARE for life' 5='(5) TRICARE other (specify)'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE IHS       1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HILAST    1='(1) 6 months or less'
                  2='(2) More than 6 months, but not more than 1 year ago'
                  3='(3) More than 1 year, but not more than 3 years ago'
                  4='(4) More than 3 years' 5='(5) Never' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTOP1f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTOP2f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTOP3f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTOP4f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTOP5f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTOP6f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTOP7f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTOP8f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTOP9f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTOP0f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTO10f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTO11f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTO12f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTO13f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HISTO14f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HINOTYR   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HINOTMYR  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE HCSPFYR   0='(0) Zero' 1='(1) Less than $500' 2='(2) $500 - $1,999'
                  3='(3) $2,000 - $2,999' 4='(4) $3,000 - $4,999' 5='(5) $5,000 or more'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDA   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDB   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDC   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDD   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDE   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDF   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDG   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDH   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDI   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDJ   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDK   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MCAREPRB  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MCAIDPRB  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SINCOV    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLBORN    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE REGIONBR  1='(1) United States'
                  2='(2) Mexico, Central America, Caribbean Islands'
                  3='(3) South America' 4='(4) Europe'
                  5='(5) Russia (and former USSR areas)' 6='(6) Africa'
                  7='(7) Middle East' 8='(8) Indian Subcontinent' 9='(9) Asia'
                  10='(10) SE Asia' 11='(11) Elsewhere' 99='(99) Unknown' ;
  VALUE GEOBRTH   1='(1) USA: born in one of the 50 United States or D.C.'
                  2='(2) USA: born in a U.S. territory'
                  3='(3) Not born in the U.S. or a U.S. territory' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE YRSINUS   1='(1) Less than 1 year' 2='(2) 1 yr., less than 5 yrs.'
                  3='(3) 5 yrs., less than 10 yrs.'
                  4='(4) 10 yrs., less than 15 yrs.' 5='(5) 15 years or more'
                  9='(9) Unknown' ;
  VALUE CITIZENP  1='(1) Yes, citizen of the United States'
                  2='(2) No, not a citizen of the United States' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HEADST    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HEADSTVf  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE EDUC1fff  0='(0) Never attended/kindergarten only' 1='(1) 1st grade'
                  2='(2) 2nd grade' 3='(3) 3rd grade' 4='(4) 4th grade' 5='(5) 5th grade'
                  6='(6) 6th grade' 7='(7) 7th grade' 8='(8) 8th grade' 9='(9) 9th grade'
                  10='(10) 10th grade' 11='(11) 11th grade' 12='(12) 12th grade, no diploma'
                  13='(13) GED or equivalent' 14='(14) High School Graduate'
                  15='(15) Some college, no degree'
                  16='(16) Associate degree: occupational, technical, or vocational pr'
                  17='(17) Associate degree: academic program'
                  18='(18) Bachelor''s degree (Example: BA, AB, BS, BBA)'
                  19='(19) Master''s degree (Example: MA, MS, MEng, MEd, MBA)'
                  20='(20) Professional School degree (Example: MD, DDS, DVM, JD)'
                  21='(21) Doctoral degree (Example: PhD, EdD)'
                  96='(96) Child under 5 years old' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE PMILTRY   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE DOINGLWP  1='(1) Working for pay at a job or business'
                  2='(2) With a job or business but not at work'
                  3='(3) Looking for work'
                  4='(4) Working, but not for pay, at a job or business'
                  5='(5) Not working at a job or business and not looking for work'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE WHYNOWKP  1='(1) Taking care of house or family' 2='(2) Going to school'
                  3='(3) Retired' 4='(4) On a planned vacation from work'
                  5='(5) On family or maternity leave'
                  6='(6) Temporarily unable to work for health reasons'
                  7='(7) Have job/contract and off-season' 8='(8) On layoff'
                  9='(9) Disabled' 10='(10) Other' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE WRKHRS2f  95='(95) 95+ hours' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE WRKFTALL  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE WRKLYR1f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE WRKMYR    1='(1) 1 month or less' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ERNYR_P   1='(1) $01-$4,999' 2='(2) $5,000-$9,999' 3='(3) $10,000-$14,999'
                  4='(4) $15,000-$19,999' 5='(5) $20,000-$24,999' 6='(6) $25,000-$34,999'
                  7='(7) $35,000-$44,999' 8='(8) $45,000-$54,999' 9='(9) $55,000-$64,999'
                  10='(10) $65,000-$74,999' 11='(11) $75,000 and over' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE HIEMPOF   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PSAL      1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PSEINC    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PSSRR     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PSSRRDB   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PSSRRD    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PPENS     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE POPENS    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PSSI      1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PSSID     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PTANF     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE POWBEN    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PINTRSTR  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PDIVD     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PCHLDSP   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PINCOT    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PSSAPL    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PSDAPL    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE TANFMYR   97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE PFSTP     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE FSTPMYR   97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ELIGPWIC  0='(0) No WIC age-eligible family members'
                  1='(1) At least 1 WIC age-eligible family member' ;
  VALUE PWIC      1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE WIC_FLAG  0='(0) Person not age-eligible' 1='(1) Person age-eligible' ;
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA NHIS.person_2004;
INFILE "C:\DATA\NHIS\2004\da2004person.sas" LRECL=706;
INPUT
        RECTYPE 1-2             SRVY_YR 3-6
        HHX $7-12               FMX $13-14              FPX $15-16
        WTIA 17-22              WTFA 23-28              STRATUM 29-31
        PSU 32                  SEX 33                  ORIGIN_I 34
        ORIGIMPT 35             HISPIMPT 36             HISPAN_I 37-38
        RACERPI2 39-40          RACEIMP2 41             MRACRPI2 42-43
        MRACBPI2 44-45          RACRECI2 46             HISCODI2 47
        ERIMPFLG 48             NOWAF 49                RRP 50-51
        HHREFLG $52             DOB_M $53-54            DOB_Y_P $55-58
        AGE_P 59-60             FRRP 61-62              FMRPFLG $63
        FMREFLG $64             R_MARITL 65             COHAB1 66
        COHAB2 67               CDCMSTAT 68             SIB_DEG 69
        FMOTHER 70-71           MOM_DEG 72              FFATHER 73-74
        DAD_DEG 75              PARENTS 76              MOM_ED 77-78
        DAD_ED 79-80            ASTATFLG 81             CSTATFLG 82
        PLAPLYLM 83             PLAPLYUN 84             PSPEDEIS 85
        PSPEDEM 86              PLAADL 87               LABATH 88
        LADRESS 89              LAEAT 90                LABED 91
        LATOILT 92              LAHOME 93               PLAIADL 94
        PLAWKNOW 95             PLAWKLIM 96             PLAWALK 97
        PLAREMEM 98             PLIMANY 99              LA1AR 100
        LAHCC1 101              LAHCC2 102              LAHCC3 103
        LAHCC4 104              LAHCC5 105              LAHCC6 106
        LAHCC7 107              LAHCC8 108              LAHCC9 109
        LAHCC10 110             LAHCC11 111             LAHCC12 112
        LAHCC13 113             LAHCC90 114             LAHCC91 115
        LCTIME1 116-117         LCUNIT1 118             LCDURA1 119-120
        LCDURB1 121             LCCHRC1 122             LCTIME2 123-124
        LCUNIT2 125             LCDURA2 126-127         LCDURB2 128
        LCCHRC2 129             LCTIME3 130-131         LCUNIT3 132
        LCDURA3 133-134         LCDURB3 135             LCCHRC3 136
        LCTIME4 137-138         LCUNIT4 139             LCDURA4 140-141
        LCDURB4 142             LCCHRC4 143             LCTIME5 144-145
        LCUNIT5 146             LCDURA5 147-148         LCDURB5 149
        LCCHRC5 150             LCTIME6 151-152         LCUNIT6 153
        LCDURA6 154-155         LCDURB6 156             LCCHRC6 157
        LCTIME7 158-159         LCUNIT7 160             LCDURA7 161-162
        LCDURB7 163             LCCHRC7 164             LCTIME8 165-166
        LCUNIT8 167             LCDURA8 168-169         LCDURB8 170
        LCCHRC8 171             LCTIME9 172-173         LCUNIT9 174
        LCDURA9 175-176         LCDURB9 177             LCCHRC9 178
        LCTIME10 179-180        LCUNIT10 181            LCDURA10 182-183
        LCDURB10 184            LCCHRC10 185            LCTIME11 186-187
        LCUNIT11 188            LCDURA11 189-190        LCDURB11 191
        LCCHRC11 192            LCTIME12 193-194        LCUNIT12 195
        LCDURA12 196-197        LCDURB12 198            LCCHRC12 199
        LCTIME13 200-201        LCUNIT13 202            LCDURA13 203-204
        LCDURB13 205            LCCHRC13 206            LCTIME90 207-208
        LCUNIT90 209            LCDURA90 210-211        LCDURB90 212
        LCCHRC90 213            LCTIME91 214-215        LCUNIT91 216
        LCDURA91 217-218        LCDURB91 219            LCCHRC91 220
        LAHCA1 221              LAHCA2 222              LAHCA3 223
        LAHCA4 224              LAHCA5 225              LAHCA6 226
        LAHCA7 227              LAHCA8 228              LAHCA9 229
        LAHCA10 230             LAHCA11 231             LAHCA12 232
        LAHCA13 233             LAHCA14 234             LAHCA15 235
        LAHCA16 236             LAHCA17 237             LAHCA18 238
        LAHCA19_ 239            LAHCA20_ 240            LAHCA21_ 241
        LAHCA22_ 242            LAHCA23_ 243            LAHCA24_ 244
        LAHCA25_ 245            LAHCA26_ 246            LAHCA27_ 247
        LAHCA28_ 248            LAHCA29_ 249            LAHCA30_ 250
        LAHCA31_ 251            LAHCA32_ 252            LAHCA33_ 253
        LAHCA34_ 254            LAHCA90 255             LAHCA91 256
        LATIME1 257-258         LAUNIT1 259             LADURA1 260-261
        LADURB1 262             LACHRC1 263             LATIME2 264-265
        LAUNIT2 266             LADURA2 267-268         LADURB2 269
        LACHRC2 270             LATIME3 271-272         LAUNIT3 273
        LADURA3 274-275         LADURB3 276             LACHRC3 277
        LATIME4 278-279         LAUNIT4 280             LADURA4 281-282
        LADURB4 283             LACHRC4 284             LATIME5 285-286
        LAUNIT5 287             LADURA5 288-289         LADURB5 290
        LACHRC5 291             LATIME6 292-293         LAUNIT6 294
        LADURA6 295-296         LADURB6 297             LACHRC6 298
        LATIME7 299-300         LAUNIT7 301             LADURA7 302-303
        LADURB7 304             LACHRC7 305             LATIME8 306-307
        LAUNIT8 308             LADURA8 309-310         LADURB8 311
        LACHRC8 312             LATIME9 313-314         LAUNIT9 315
        LADURA9 316-317         LADURB9 318             LACHRC9 319
        LATIME10 320-321        LAUNIT10 322            LADURA10 323-324
        LADURB10 325            LACHRC10 326            LATIME11 327-328
        LAUNIT11 329            LADURA11 330-331        LADURB11 332
        LACHRC11 333            LATIME12 334-335        LAUNIT12 336
        LADURA12 337-338        LADURB12 339            LACHRC12 340
        LATIME13 341-342        LAUNIT13 343            LADURA13 344-345
        LADURB13 346            LACHRC13 347            LATIME14 348-349
        LAUNIT14 350            LADURA14 351-352        LADURB14 353
        LACHRC14 354            LATIME15 355-356        LAUNIT15 357
        LADURA15 358-359        LADURB15 360            LACHRC15 361
        LATIME16 362-363        LAUNIT16 364            LADURA16 365-366
        LADURB16 367            LACHRC16 368            LATIME17 369-370
        LAUNIT17 371            LADURA17 372-373        LADURB17 374
        LACHRC17 375            LATIME18 376-377        LAUNIT18 378
        LADURA18 379-380        LADURB18 381            LACHRC18 382
        LATIME19 383-384        LAUNIT19 385            LADURA19 386-387
        LADURB19 388            LACHRC19 389            LATIME20 390-391
        LAUNIT20 392            LADURA20 393-394        LADURB20 395
        LACHRC20 396            LATIME21 397-398        LAUNIT21 399
        LADURA21 400-401        LADURB21 402            LACHRC21 403
        LATIME22 404-405        LAUNIT22 406            LADURA22 407-408
        LADURB22 409            LACHRC22 410            LATIME23 411-412
        LAUNIT23 413            LADURA23 414-415        LADURB23 416
        LACHRC23 417            LATIME24 418-419        LAUNIT24 420
        LADURA24 421-422        LADURB24 423            LACHRC24 424
        LATIME25 425-426        LAUNIT25 427            LADURA25 428-429
        LADURB25 430            LACHRC25 431            LATIME26 432-433
        LAUNIT26 434            LADURA26 435-436        LADURB26 437
        LACHRC26 438            LATIME27 439-440        LAUNIT27 441
        LADURA27 442-443        LADURB27 444            LACHRC27 445
        LATIME28 446-447        LAUNIT28 448            LADURA28 449-450
        LADURB28 451            LACHRC28 452            LATIME29 453-454
        LAUNIT29 455            LADURA29 456-457        LADURB29 458
        LACHRC29 459            LATIME30 460-461        LAUNIT30 462
        LADURA30 463-464        LADURB30 465            LACHRC30 466
        LATIME31 467-468        LAUNIT31 469            LADURA31 470-471
        LADURB31 472            LACHRC31 473            LATIME32 474-475
        LAUNIT32 476            LADURA32 477-478        LADURB32 479
        LACHRC32 480            LATIME33 481-482        LAUNIT33 483
        LADURA33 484-485        LADURB33 486            LACHRC33 487
        LATIME34 488-489        LAUNIT34 490            LADURA34 491-492
        LADURB34 493            LACHRC34 494            LATIME90 495-496
        LAUNIT90 497            LADURA90 498-499        LADURB90 500
        LACHRC90 501            LATIME91 502-503        LAUNIT91 504
        LADURA91 505-506        LADURB91 507            LACHRC91 508
        LCONDRT 509             LACHRONR 510            PHSTAT 511
        PDMED12M 512            PNMED12M 513            PHOSPYR 514
        HOSPNO 515-517          HPNITE 518-520          PHCHM2W 521
        PHCHMN2W 522-523        PHCPH2WR 524            PHCPHN2W 525-526
        PHCDV2W 527             PHCDVN2W 528-529        P10DVYR 530
        NOTCOV 531              MEDICARE 532            MCPART 533
        MCCHOICE 534            MCHMO 535               MCNAMEN 536-537
        MCREF 538               MCPAYPRE 539            MCRXCARD 540
        MEDICAID 541            MACHMD 542              MAPCMD 543
        MAREF 544               SINGLE 545              SSTYPEA 546
        SSTYPEB 547             SSTYPEC 548             SSTYPED 549
        SSTYPEE 550             SSTYPEF 551             SSTYPEG 552
        SSTYPEH 553             SSTYPEI 554             SSTYPEJ 555
        SSTYPEK 556             SSTYPEL 557             PRIVATE 558
        HITYPE1 559-560         WHONAM1 561             PLNWRKN1 562-563
        PLNPAY11 564            PLNPAY21 565            PLNPAY31 566
        PLNPAY41 567            PLNPAY51 568            PLNPAY61 569
        PLNPAY71 570            HICOSTR1 571-575        PLNMGD1 576
        MGCHMD1 577             MGPRMD1 578             MGPYMD1 579
        MGPREF1 580             PRRXCOV1 581            HITYPE2 582-583
        WHONAM2 584             PLNWRKN2 585-586        PLNPAY12 587
        PLNPAY22 588            PLNPAY32 589            PLNPAY42 590
        PLNPAY52 591            PLNPAY62 592            PLNPAY72 593
        HICOSTR2 594-598        PLNMGD2 599             MGCHMD2 600
        MGPRMD2 601             MGPYMD2 602             MGPREF2 603
        PRRXCOV2 604            PRPLPLUS 605            SCHIP 606
        STDOC1 607              STPCMD1 608             STREF1 609
        OTHERPUB 610            STDOC2 611              STPCMD2 612
        STREF2 613              OTHERGOV 614            STDOC3 615
        STPCMD3 616             STREF3 617              MILITARY 618
        MILSPC1 619             MILSPC2 620             MILSPC3 621
        MILSPC4 622             MILMAN 623              IHS 624
        HILAST 625              HISTOP1 626             HISTOP2 627
        HISTOP3 628             HISTOP4 629             HISTOP5 630
        HISTOP6 631             HISTOP7 632             HISTOP8 633
        HISTOP9 634             HISTOP10 635            HISTOP11 636
        HISTOP12 637            HISTOP13 638            HISTOP14 639
        HISTOP15 640            HINOTYR 641             HINOTMYR 642-643
        HCSPFYR 644             HIKINDA 645             HIKINDB 646
        HIKINDC 647             HIKINDD 648             HIKINDE 649
        HIKINDF 650             HIKINDG 651             HIKINDH 652
        HIKINDI 653             HIKINDJ 654             HIKINDK 655
        MCAREPRB 656            MCAIDPRB 657            SINCOV 658
        PLBORN 659              REGIONBR 660-661        GEOBRTH 662
        YRSINUS 663             CITIZENP 664            HEADST 665
        HEADSTV1 666            EDUC1 667-668           PMILTRY 669
        DOINGLWP 670            WHYNOWKP 671-672        WRKHRS2 673-674
        WRKFTALL 675            WRKLYR1 676             WRKMYR 677-678
        ERNYR_P 679-680         HIEMPOF 681             PSAL 682
        PSEINC 683              PSSRR 684               PSSRRDB 685
        PSSRRD 686              PPENS 687               POPENS 688
        PSSI 689                PSSID 690               PTANF 691
        POWBEN 692              PINTRSTR 693            PDIVD 694
        PCHLDSP 695             PINCOT 696              PSSAPL 697
        PSDAPL 698              TANFMYR 699-700         PFSTP 701
        FSTPMYR 702-703         ELIGPWIC 704            PWIC 705
        WIC_FLAG 706            ;


* SAS LABEL STATEMENT;

LABEL
   RECTYPE = 'File type identifier'
   SRVY_YR = 'Year of National Health Interview Survey'
   HHX     = 'Household Serial Number'
   FMX     = 'Family #'
   FPX     = 'Person #'
   WTIA    = 'Weight - Interim Annual'
   WTFA    = 'Weight - Final Annual'
   STRATUM = 'Stratum for variance estimation'
   PSU     = 'PSU for variance estimation'
   SEX     = 'Sex'
   ORIGIN_I= 'Hispanic Ethnicity'
   ORIGIMPT= 'Hispanic Origin Imputation Flag'
   HISPIMPT= 'Type of Hispanic Origin Imputation Flag'
   HISPAN_I= 'Hispanic subgroup detail'
   RACERPI2= 'OMB groups w/multiple race'
   RACEIMP2= 'Race Imputation Flag'
   MRACRPI2= 'Race coded to single/multiple race group'
   MRACBPI2= 'Race coded to single/multiple race group'
   RACRECI2= 'Race Recode'
   HISCODI2= 'Race/ethnicity recode'
   ERIMPFLG= 'Ethnicity/Race Imputation Flag'
   NOWAF   = 'Armed Forces Status'
   RRP     = 'Relationship to the HH reference person'
   HHREFLG = 'HH Reference Person Flag'
   DOB_M   = 'Month of Birth'
   DOB_Y_P = 'Year of Birth'
   AGE_P   = 'Age'
   FRRP    = 'Relationship to family ref. Person'
   FMRPFLG = 'Family Respondent Flag'
   FMREFLG = 'Family Reference Person Flag'
   R_MARITL= 'Marital Status'
   COHAB1  = 'Cohabiting person ever married'
   COHAB2  = 'Cohabiting person''s current marital status'
   CDCMSTAT= 'CDC standard for legal marital status'
   SIB_DEG = 'Degree of sib rel to HH ref person'
   FMOTHER = 'Person # of mother'
   MOM_DEG = 'Type of relationship with Mother'
   FFATHER = 'Person # of father'
   DAD_DEG = 'Type of relationship with Father'
   PARENTS = 'Parent(s) present in the family'
   MOM_ED  = 'Education of Mother'
   DAD_ED  = 'Education of Father'
   ASTATFLG= 'Sample Adult Flag'
   CSTATFLG= 'Sample Child Flag'
   PLAPLYLM= 'Is - - limited in kind/amt play?'
   PLAPLYUN= 'Is - - able to play at all?'
   PSPEDEIS= 'Does - - receive Special Ed or EIS'
   PSPEDEM = 'Receive Special Ed/EIS due to emotional/behavioral problem'
   PLAADL  = 'Does - - need help with personal care?'
   LABATH  = 'Does - -  need help with bathing/showering?'
   LADRESS = 'Does - -  need help dressing?'
   LAEAT   = 'Does - -  need help eating?'
   LABED   = 'Does - -  need help in/out of bed or chairs?'
   LATOILT = 'Does - -  need help using the toilet?'
   LAHOME  = 'Does - -  need help to get around in the home?'
   PLAIADL = 'Does - - need help with routine needs?'
   PLAWKNOW= 'Is - - unable to work due to health problem?'
   PLAWKLIM= 'Is - - limited kind/amount of work?'
   PLAWALK = 'Does - - have difficulty walk w/o equip?'
   PLAREMEM= 'Is - - limited by difficulty remembering?'
   PLIMANY = 'Is - - limited in any (other) way?'
   LA1AR   = 'Any limitation - all persons, all conds'
   LAHCC1  = 'Vision problem causes limitation'
   LAHCC2  = 'Hearing problem causes limitation'
   LAHCC3  = 'Speech problem causes limitation'
   LAHCC4  = 'Asthma/breathing problem causes limitation'
   LAHCC5  = 'Birth defect causes limitation'
   LAHCC6  = 'Injury causes limitation'
   LAHCC7  = 'Mental retardation causes limitation'
   LAHCC8  = 'Other dev problem causes limitation'
   LAHCC9  = 'Other emot/behav problem causes limitation'
   LAHCC10 = 'Bone/joint/muscle problem causes limitation'
   LAHCC11 = 'Epilepsy/seizures causes limitation'
   LAHCC12 = 'Learning disability causes  limitation'
   LAHCC13 = 'ADD/ADHD causes limitation'
   LAHCC90 = 'Other impair/problem (1) causes limitation'
   LAHCC91 = 'Other impair/problem (2) causes limitation'
   LCTIME1 = 'Duration of vision problem: Number of units'
   LCUNIT1 = 'Duration of vision problem: Time unit'
   LCDURA1 = 'Duration of vision problem (in years)'
   LCDURB1 = 'Duration of vision problem recode 2'
   LCCHRC1 = 'Vision problem condition status'
   LCTIME2 = 'Duration of hearing problem: Number of units'
   LCUNIT2 = 'Duration of hearing problem: Time unit'
   LCDURA2 = 'Duration of hearing problem (in years)'
   LCDURB2 = 'Duration of hearing problem recode 2'
   LCCHRC2 = 'Hearing problem condition status'
   LCTIME3 = 'Duration of speech problem: Number of units'
   LCUNIT3 = 'Duration of speech problem: Time unit'
   LCDURA3 = 'Duration of speech problem (in years)'
   LCDURB3 = 'Duration of speech problem recode 2'
   LCCHRC3 = 'Speech problem condition status'
   LCTIME4 = 'Duration of asthma/breathing problem: Number of units'
   LCUNIT4 = 'Duration of asthma/breathing problem: Time unit'
   LCDURA4 = 'Duration of asthma/breathing problem (in years)'
   LCDURB4 = 'Duration of asthma/breathing problem recode 2'
   LCCHRC4 = 'Asthma/breathing problem condition status'
   LCTIME5 = 'Duration of birth defect: Number of units'
   LCUNIT5 = 'Duration of birth defect: Time unit'
   LCDURA5 = 'Duration of birth defect (in years)'
   LCDURB5 = 'Duration of birth defect recode 2'
   LCCHRC5 = 'Birth defect condition status'
   LCTIME6 = 'Duration of injury: Number of units'
   LCUNIT6 = 'Duration of injury: Time unit'
   LCDURA6 = 'Duration of injury (in years)'
   LCDURB6 = 'Duration of injury recode 2'
   LCCHRC6 = 'Injury condition status'
   LCTIME7 = 'Duration of mental retardation: Number of units'
   LCUNIT7 = 'Duration of mental retardation: Time unit'
   LCDURA7 = 'Duration of mental retardation (in years)'
   LCDURB7 = 'Duration of mental retardation recode 2'
   LCCHRC7 = 'Mental retardation condition status'
   LCTIME8 = 'Duration of other developmental problem: Number of units'
   LCUNIT8 = 'Duration of other developmental problem: Time unit'
   LCDURA8 = 'Duration of other developmental problem (in years)'
   LCDURB8 = 'Duration of other developmental problem recode 2'
   LCCHRC8 = 'Other developmental problem condition status'
   LCTIME9 = 'Duration of other mental/emot/behav problem: Number of units'
   LCUNIT9 = 'Duration of otr ment/emot/behav problem: Number of units'
   LCDURA9 = 'Duration of other mental/emot/behav problem (in years)'
   LCDURB9 = 'Duration of other mental/emotional/behavioral prob recode 2'
   LCCHRC9 = 'Other mental/emotional/behavioral problem condition status'
   LCTIME10= 'Duration of bone/joint/muscle problem: Number of units'
   LCUNIT10= 'Duration of bone/joint/muscle problem: Time unit'
   LCDURA10= 'Duration of bone/joint/muscle problem (in years)'
   LCDURB10= 'Duration of bone/joint/muscle problem recode 2'
   LCCHRC10= 'Bone/joint/muscle problem condition status'
   LCTIME11= 'Duration of epilepsy/seizures: Number of units'
   LCUNIT11= 'Duration of epilepsy/seizures: Time unit'
   LCDURA11= 'Duration of epilepsy/seizures (in years)'
   LCDURB11= 'Duration of epilepsy/seizures recode 2'
   LCCHRC11= 'Epilepsy/seizures condition status'
   LCTIME12= 'Duration of learning disability: Number of units'
   LCUNIT12= 'Duration of learning disability: Time unit'
   LCDURA12= 'Duration of learning disability (in years)'
   LCDURB12= 'Duration of learning disability recode 2'
   LCCHRC12= 'Learning disability condition status'
   LCTIME13= 'Duration of ADD/ADHD: Number of units'
   LCUNIT13= 'Duration of ADD/ADHD: Time unit'
   LCDURA13= 'Duration of ADD/ADHD (in years)'
   LCDURB13= 'Duration of ADD/ADHD recode 2'
   LCCHRC13= 'ADD/ADHD condition status'
   LCTIME90= 'Duration of other impairment problem (1): Number of units'
   LCUNIT90= 'Duration of other impairment/problem (1): Time unit'
   LCDURA90= 'Duration of other impairment/problem (1) (in years)'
   LCDURB90= 'Duration of other impairment/problem (1) recode 2'
   LCCHRC90= 'Other impairment/problem (1) condition status'
   LCTIME91= 'Duration of other impairment/problem (2): Number of units'
   LCUNIT91= 'Duration of other impairment/problem (2): Time unit'
   LCDURA91= 'Duration of other impairment/problem (2) (in years)'
   LCDURB91= 'Duration of other impairment/problem (2) recode 2'
   LCCHRC91= 'Other impairment/problem (2) condition status'
   LAHCA1  = 'Vision problem causes limitation'
   LAHCA2  = 'Hearing problem causes limitation'
   LAHCA3  = 'Arthritis/rheumatism causes limitation'
   LAHCA4  = 'Back/neck prob causes limitation'
   LAHCA5  = 'fracture/bone/joint inj causes limitation'
   LAHCA6  = 'Other injury causes limitation'
   LAHCA7  = 'Heart problem causes limitation'
   LAHCA8  = 'Stroke causes limitation'
   LAHCA9  = 'Hypertension causes limitation'
   LAHCA10 = 'Diabetes causes limitation'
   LAHCA11 = 'Lung/breath problem causes limitation'
   LAHCA12 = 'Cancer causes limitation'
   LAHCA13 = 'Birth defect causes limitation'
   LAHCA14 = 'Mental retardation causes limitation'
   LAHCA15 = 'Otr dev problem causes limitation'
   LAHCA16 = 'Senility causes limitation'
   LAHCA17 = 'Dep/anx/emot problem causes limitation'
   LAHCA18 = 'Weight problem causes limitation'
   LAHCA19_= 'Missing or amputated limb/finger/digit'
   LAHCA20_= 'Musculoskeletal/connective tissue problem'
   LAHCA21_= 'Circulation problem'
   LAHCA22_= 'Endocrine/nutritional/metabolic problem'
   LAHCA23_= 'Nervous system/sensory organ condition'
   LAHCA24_= 'Digestive system problem'
   LAHCA25_= 'Genitourinary system problem'
   LAHCA26_= 'Skin/subcutaneous system problem'
   LAHCA27_= 'Blood or blood-forming organ problem'
   LAHCA28_= 'Benign tumor/cyst'
   LAHCA29_= 'Alcohol/drug/substance abuse problem'
   LAHCA30_= 'Otr mental problem/ADD/bipolar/schizophrenia'
   LAHCA31_= 'Surgical after-effects/medical treatment'
   LAHCA32_= '''Old age''/elderly/aging-related problem'
   LAHCA33_= 'Fatigue/tiredness/weakness'
   LAHCA34_= 'Pregnancy-related problem'
   LAHCA90 = 'Other impair/problem(1) causes limitation'
   LAHCA91 = 'Other impair/problem(2) causes limitation'
   LATIME1 = 'Duration of vision problem: Number of units'
   LAUNIT1 = 'Duration of vision problem: Time unit'
   LADURA1 = 'Duration of vision problem (in years)'
   LADURB1 = 'Duration of vision problem recode 2'
   LACHRC1 = 'Vision problem condition status'
   LATIME2 = 'Duration of hearing problem: Number of units'
   LAUNIT2 = 'Duration of hearing problem: Time unit'
   LADURA2 = 'Duration of hearing problem (in years)'
   LADURB2 = 'Duration of hearing problem recode 2'
   LACHRC2 = 'Hearing problem condition status'
   LATIME3 = 'Duration of arthritis/rheumatism: Number of units'
   LAUNIT3 = 'Duration of arthritis/rheumatism: Time unit'
   LADURA3 = 'Duration of arthritis/rheumatism (in years)'
   LADURB3 = 'Duration of arthritis/rheumatism recode 2'
   LACHRC3 = 'Arthritis/rheumatism condition status'
   LATIME4 = 'Duration of back/neck problem: Number of units'
   LAUNIT4 = 'Duration of back/neck problem: Time unit'
   LADURA4 = 'Duration of back/neck problem (in years)'
   LADURB4 = 'Duration of back/neck problem recode 2'
   LACHRC4 = 'Back/neck problem condition status'
   LATIME5 = 'Duration of fracture/bone/joint injury: Number of units'
   LAUNIT5 = 'Duration of fracture/bone/joint injury: Time unit'
   LADURA5 = 'Duration of fracture/bone/joint injury (in years)'
   LADURB5 = 'Duration of fracture/bone/joint injury recode 2'
   LACHRC5 = 'Fracture/bone/joint injury condition status'
   LATIME6 = 'Duration of other injury: Number of units'
   LAUNIT6 = 'Duration of other injury: Time unit'
   LADURA6 = 'Duration of other injury (in years)'
   LADURB6 = 'Duration of other injury recode 2'
   LACHRC6 = 'Other injury condition status'
   LATIME7 = 'Duration of heart problem: Number of units'
   LAUNIT7 = 'Duration of heart problem: Time unit'
   LADURA7 = 'Duration of heart problem (in years)'
   LADURB7 = 'Duration of heart problem recode 2'
   LACHRC7 = 'Heart problem condition status'
   LATIME8 = 'Duration of stroke: Number of units'
   LAUNIT8 = 'Duration of stroke: Time unit'
   LADURA8 = 'Duration of stroke (in years)'
   LADURB8 = 'Duration of stroke recode 2'
   LACHRC8 = 'Stroke condition status'
   LATIME9 = 'Duration of hypertension: Number of units'
   LAUNIT9 = 'Duration of hypertension: Time unit'
   LADURA9 = 'Duration of hypertension (in years)'
   LADURB9 = 'Duration of hypertension recode 2'
   LACHRC9 = 'Hypertension condition status'
   LATIME10= 'Duration of diabetes: Number of units'
   LAUNIT10= 'Duration of diabetes: Time unit'
   LADURA10= 'Duration of diabetes (in years)'
   LADURB10= 'Duration of diabetes recode 2'
   LACHRC10= 'Diabetes condition status'
   LATIME11= 'Duration of lung/breathing problem: Number of units'
   LAUNIT11= 'Duration of lung/breath problem: Time unit'
   LADURA11= 'Duration of lung/breathing problem (in years)'
   LADURB11= 'Duration of lung/breathing problem recode 2'
   LACHRC11= 'Lung/breathing problem condition status'
   LATIME12= 'Duration of cancer: Number of units'
   LAUNIT12= 'Duration of cancer: Time unit'
   LADURA12= 'Duration of cancer (in years)'
   LADURB12= 'Duration of cancer recode 2'
   LACHRC12= 'Cancer condition status'
   LATIME13= 'Duration of birth defect: Number of units'
   LAUNIT13= 'Duration of birth defect: Time unit'
   LADURA13= 'Duration of birth defect (in years)'
   LADURB13= 'Duration of birth defect recode 2'
   LACHRC13= 'Birth defect condition status'
   LATIME14= 'Duration of ment retardation: Number of units'
   LAUNIT14= 'Duration of ment retardation: Time unit'
   LADURA14= 'Duration of mental retardation (in years)'
   LADURB14= 'Duration of mental retardation recode 2'
   LACHRC14= 'Mental retardation condition status'
   LATIME15= 'Duration of other developmental problem: Number of units'
   LAUNIT15= 'Duration of otr dev problem: Time unit'
   LADURA15= 'Duration of other developmental problem (in years)'
   LADURB15= 'Duration of other developmental problem recode 2'
   LACHRC15= 'Other developmental problem condition status'
   LATIME16= 'Duration of senility: Number of units'
   LAUNIT16= 'Duration of senility: Time unit'
   LADURA16= 'Duration of senility (in years)'
   LADURB16= 'Duration of senility recode 2'
   LACHRC16= 'Senility condition status'
   LATIME17= 'Duration of dep/anx/emot problem: Number of units'
   LAUNIT17= 'Duration of dep/anx/emot problem: Time unit'
   LADURA17= 'Duration of depression/anxiety/emotional problem (in years)'
   LADURB17= 'Duration of depression/anxiety/emotional problem recode 2'
   LACHRC17= 'Depression/anxiety/emotional problem condition status'
   LATIME18= 'Duration of weight problem: Number of units'
   LAUNIT18= 'Duration of weight problem: Time unit'
   LADURA18= 'Duration of weight problem (in years)'
   LADURB18= 'Duration of weight problem recode 2'
   LACHRC18= 'Weight problem condition status'
   LATIME19= 'Duration of missing limb/amputation: Number of units'
   LAUNIT19= 'Duration of missing limb/amputation: Time unit'
   LADURA19= 'Duration of missing limb/amputation (in years)'
   LADURB19= 'Duration of missing limb/amputation recode 2'
   LACHRC19= 'Missing limb/amputation condition status'
   LATIME20= 'Duration of musculoskeletal problem: Number of units'
   LAUNIT20= 'Duration of musculoskeletal problem: Time unit'
   LADURA20= 'Duration of musculoskeletal problem (in years)'
   LADURB20= 'Duration of musculoskeletal problem recode 2'
   LACHRC20= 'Musculoskeletal problem condition status'
   LATIME21= 'Duration of circulatory problem: Number of units'
   LAUNIT21= 'Duration of circulatory problem: Time unit'
   LADURA21= 'Duration of circulatory problem (in years)'
   LADURB21= 'Duration of circulatory problem recode 2'
   LACHRC21= 'Circulatory problem condition status'
   LATIME22= 'Duration of endocrine problem: Number of units'
   LAUNIT22= 'Duration of endocrine problem: Time unit'
   LADURA22= 'Duration of endocrine problem (in years)'
   LADURB22= 'Duration of endocrine problem recode 2'
   LACHRC22= 'Endocrine problem condition status'
   LATIME23= 'Duration of nervous system condition: Number of units'
   LAUNIT23= 'Duration of nervous system condition: Time unit'
   LADURA23= 'Duration of nervous system condition (in years)'
   LADURB23= 'Duration of nervous system condition recode 2'
   LACHRC23= 'Nervous system condition status'
   LATIME24= 'Duration of digestive problems: Number of units'
   LAUNIT24= 'Duration of digestive problems: Number of units'
   LADURA24= 'Duration of digestive problem (in years)'
   LADURB24= 'Duration of digestive problem recode 2'
   LACHRC24= 'Digestive problem condition status'
   LATIME25= 'Duration of genitourinary problem: Number of units'
   LAUNIT25= 'Duration of genitourinary problem: Time unit'
   LADURA25= 'Duration of genitourinary problem (in years)'
   LADURB25= 'Duration of genitourinary problem recode 2'
   LACHRC25= 'Genitourinary problem condition status'
   LATIME26= 'Duration of skin problems: Number of units'
   LAUNIT26= 'Duration of skin problems: Time unit'
   LADURA26= 'Duration of skin problem (in years)'
   LADURB26= 'Duration of skin problem recode 2'
   LACHRC26= 'Skin problems condition status'
   LATIME27= 'Duration of blood problem: Number of units'
   LAUNIT27= 'Duration of blood problem: Time unit'
   LADURA27= 'Duration of blood problem (in years)'
   LADURB27= 'Duration of blood problem recode 2'
   LACHRC27= 'Blood problem condition status'
   LATIME28= 'Duration of benign tumor: Number of units'
   LAUNIT28= 'Duration of benign tumor: Time unit'
   LADURA28= 'Duration of benign tumor (in years)'
   LADURB28= 'Duration of benign tumor recode 2'
   LACHRC28= 'Benign tumor condition status'
   LATIME29= 'Duration of alcohol or drug problem: Number of units'
   LAUNIT29= 'Duration of alcohol or drug problem: Time unit'
   LADURA29= 'Duration of alcohol or drug problem (in years)'
   LADURB29= 'Duration of alcohol or drug problem recode 2'
   LACHRC29= 'Alcohol or drug problem condition status'
   LATIME30= 'Duration of other mental problem: Number of units'
   LAUNIT30= 'Duration of other mental problem: Time unit'
   LADURA30= 'Duration of other mental problem (in years)'
   LADURB30= 'Duration of other mental problem recode 2'
   LACHRC30= 'Other mental problem condition status'
   LATIME31= 'Duration of surgical after-effects: Number of units'
   LAUNIT31= 'Duration of surgical after-effects: Time unit'
   LADURA31= 'Duration of surgical after-effects (in years)'
   LADURB31= 'Duration of surgical after-effects recode 2'
   LACHRC31= 'Surgical after-effects condition status'
   LATIME32= 'Duration of ''old age'': Number of units'
   LAUNIT32= 'Duration of ''old age'': Number of units'
   LADURA32= 'Duration of ''old age'' (in years)'
   LADURB32= 'Duration of ''old age'' recode 2'
   LACHRC32= '''Old age'' condition status'
   LATIME33= 'Duration of fatigue problem: Number of units'
   LAUNIT33= 'Duration of fatigue problem: Time unit'
   LADURA33= 'Duration of fatigue problem (in years)'
   LADURB33= 'Duration of fatigue problem recode 2'
   LACHRC33= 'Fatigue problem condition status'
   LATIME34= 'Duration of pregnancy-related problem: Number of units'
   LAUNIT34= 'Duration of pregnancy-related problem: Time unit'
   LADURA34= 'Duration of pregnancy-related problem (in years)'
   LADURB34= 'Duration of pregnancy-related problem recode 2'
   LACHRC34= 'Pregnancy-related condition status'
   LATIME90= 'Duration of other N.E.C. problem (1): Number of units'
   LAUNIT90= 'Duration of other N.E.C. problem (1): Time unit'
   LADURA90= 'Duration of other N.E.C. problem (1) (in years)'
   LADURB90= 'Duration of other N.E.C. problem (1) recode 2'
   LACHRC90= 'Other N.E.C. problem (1) condition status'
   LATIME91= 'Duration of other N.E.C. problem (2): Number of units'
   LAUNIT91= 'Duration of other N.E.C. problem (2): Time unit'
   LADURA91= 'Duration of other N.E.C. problem (2) (in years)'
   LADURB91= 'Duration of other N.E.C. problem (2) recode2'
   LACHRC91= 'Other N.E.C. problem (2) condition status'
   LCONDRT = 'Chronic condition recode for person with LA'
   LACHRONR= 'Lim of activ recode by chron cond status'
   PHSTAT  = 'Reported health status'
   PDMED12M= 'Was medical care delayed for - - (cost), 12m'
   PNMED12M= 'Did - - need and NOT get medical care (cost), 12m'
   PHOSPYR = 'Was - - in a hospital OVERNIGHT, 12m'
   HOSPNO  = 'Number of times in hospital overnight, 12m'
   HPNITE  = 'Number of nights in hospital, 12m'
   PHCHM2W = 'Did - - receive HOME care by health professional, 2 wk'
   PHCHMN2W= 'Number of HOME visits by health professional, 2wk'
   PHCPH2WR= 'Did--get advice/test results by phone, 2wk'
   PHCPHN2W= 'Number of PHONE calls to health professional, 2wk'
   PHCDV2W = 'Did - - see health professional in office, etc, 2wk'
   PHCDVN2W= 'Number of times VISITED health professional, 2wk'
   P10DVYR = 'Did - - receive care 10+ times, 12m'
   NOTCOV  = 'Cov stat as used in Health United States'
   MEDICARE= 'Medicare coverage recode'
   MCPART  = 'Type of Medicare coverage'
   MCCHOICE= 'Enrolled in Medicare Advantage Plan'
   MCHMO   = 'Is - - signed up with an HMO'
   MCNAMEN = 'Medicare HMO name'
   MCREF   = 'Need a referral for special care'
   MCPAYPRE= 'More comprehensive benefit plan'
   MCRXCARD= 'Medicare prescription drug card'
   MEDICAID= 'Medicaid coverage recode'
   MACHMD  = 'Any doc, chooses from a list, doc assigned'
   MAPCMD  = 'Primary care physician for routine care'
   MAREF   = 'Need a referral for special care'
   SINGLE  = 'Single service plan recode'
   SSTYPEA = 'Accidents'
   SSTYPEB = 'AIDS care'
   SSTYPEC = 'Cancer treatment'
   SSTYPED = 'Catastrophic care'
   SSTYPEE = 'Dental care'
   SSTYPEF = 'Disability insurance'
   SSTYPEG = 'Hospice care'
   SSTYPEH = 'Hospitalization only'
   SSTYPEI = 'Long-term care'
   SSTYPEJ = 'Prescriptions'
   SSTYPEK = 'Vision care'
   SSTYPEL = 'Other'
   PRIVATE = 'Private health insurance recode'
   HITYPE1 = 'Name of plan (Plan 1)'
   WHONAM1 = 'Plan in whose name (Plan 1)'
   PLNWRKN1= 'How plan was originally obtained (plan 1)'
   PLNPAY11= 'Paid for by self or family (Plan 1)'
   PLNPAY21= 'Paid for by employer or union (Plan 1)'
   PLNPAY31= 'Paid for by someone outside the household (Plan 1)'
   PLNPAY41= 'Paid for by Medicare (Plan 1)'
   PLNPAY51= 'Paid for by Medicaid (Plan 1)'
   PLNPAY61= 'Paid for by SCHIP (Plan 1)'
   PLNPAY71= 'Paid for by government program (Plan 1)'
   HICOSTR1= 'Out-of-pocket premium cost (Plan 1)'
   PLNMGD1 = 'Type of private plan (Plan 1)'
   MGCHMD1 = 'Doctor choice (Plan 1)'
   MGPRMD1 = 'Preferred list (Plan 1)'
   MGPYMD1 = 'Out of plan use (Plan 1)'
   MGPREF1 = 'Private referral (Plan 1)'
   PRRXCOV1= 'Prescription drug benefit (Plan 1)'
   HITYPE2 = 'Name of plan (Plan 2)'
   WHONAM2 = 'Plan in whose name (Plan 2)'
   PLNWRKN2= 'How plan was originally obtained (Plan 2)'
   PLNPAY12= 'Paid for by self or family (Plan 2)'
   PLNPAY22= 'Paid for by employer or union (Plan 2)'
   PLNPAY32= 'Paid for by someone outside the household (Plan 2)'
   PLNPAY42= 'Paid for by Medicare (Plan 2)'
   PLNPAY52= 'Paid for by Medicaid (Plan 2)'
   PLNPAY62= 'Paid for by SCHIP (Plan 2)'
   PLNPAY72= 'Paid for by government program (Plan 2)'
   HICOSTR2= 'Out-of-pocket premium cost (Plan 2)'
   PLNMGD2 = 'Type of private plan (plan 2)'
   MGCHMD2 = 'Doctor choice (Plan 2)'
   MGPRMD2 = 'Preferred list (Plan 2)'
   MGPYMD2 = 'Out of plan use (Plan 2)'
   MGPREF2 = 'Private referral (Plan 2)'
   PRRXCOV2= 'Prescription drug benefit (Plan 2)'
   PRPLPLUS= 'Person has more than two private plans'
   SCHIP   = 'SCHIP coverage recode'
   STDOC1  = 'Any doc, chooses from a list, doc assigned (SCHIP)'
   STPCMD1 = 'Primary care physician for routine care (SCHIP)'
   STREF1  = 'Need a referral for special care (SCHIP)'
   OTHERPUB= 'State-sponsored health plan recode'
   STDOC2  = 'Any doc, chooses from a list, doc assigned (OTHERPUB)'
   STPCMD2 = 'Primary care physician for routine care (OTHERPUB)'
   STREF2  = 'Need a referral for special care (OTHERPUB)'
   OTHERGOV= 'Other government program recode'
   STDOC3  = 'Any doc, chooses from a list, doc assigned (OTHERGOV)'
   STPCMD3 = 'Primary care physician for routine care (OTHERGOV)'
   STREF3  = 'Need a referral for special care (OTHERGOV)'
   MILITARY= 'Military health care coverage recode'
   MILSPC1 = 'TRICARE coverage'
   MILSPC2 = 'VA coverage'
   MILSPC3 = 'CHAMP-VA coverage'
   MILSPC4 = 'Other military coverage'
   MILMAN  = 'Type of TRICARE coverage'
   IHS     = 'Indian Health Service recode'
   HILAST  = 'How long since last had hlth coverage'
   HISTOP1 = 'Lost job or changed employers'
   HISTOP2 = 'Divorced/sep/death of spouse or parent'
   HISTOP3 = 'Ineligible because of age/left school'
   HISTOP4 = 'Employer does not offer/not eligible for cov'
   HISTOP5 = 'Cost is too high'
   HISTOP6 = 'Insurance company refused coverage'
   HISTOP7 = 'Medicaid/medi plan stopped after pregnancy'
   HISTOP8 = 'Lost Medicaid/new job/increase in income'
   HISTOP9 = 'Lost Medicaid (other)'
   HISTOP10= 'Other'
   HISTOP11= 'Never had health insurance'
   HISTOP12= 'Moved from another county/state/country'
   HISTOP13= 'Self-employed'
   HISTOP14= 'No need for it/chooses not to have'
   HISTOP15= 'Got married'
   HINOTYR = 'No hlth coverage during past 12 months'
   HINOTMYR= 'Months without coverage in past 12 months'
   HCSPFYR = 'Amount family spent for medical care'
   HIKINDA = 'Private health insurance'
   HIKINDB = 'Medicare'
   HIKINDC = 'Medi-Gap'
   HIKINDD = 'Medicaid'
   HIKINDE = 'SCHIP'
   HIKINDF = 'Military health care'
   HIKINDG = 'Indian Health Service'
   HIKINDH = 'State-sponsored health plan'
   HIKINDI = 'Other government plan'
   HIKINDJ = 'Single service plan'
   HIKINDK = 'No coverage of any type'
   MCAREPRB= 'Medicare coverage probe'
   MCAIDPRB= 'Medicaid coverage probe'
   SINCOV  = 'Single service plan probe'
   PLBORN  = 'Born in the United States'
   REGIONBR= 'Geographic region of birth recode'
   GEOBRTH = 'Geographic place of birth recode'
   YRSINUS = 'Years that - - has been in the U.S.'
   CITIZENP= 'U.S. citizenship status'
   HEADST  = 'Now attending Head Start'
   HEADSTV1= 'Ever attended Head Start'
   EDUC1   = 'Highest level of school completed'
   PMILTRY = 'Did - - receive honorable discharge'
   DOINGLWP= 'What was - - doing last week'
   WHYNOWKP= 'Main reason for not working last week'
   WRKHRS2 = 'Hours worked last week'
   WRKFTALL= 'Usually work full time'
   WRKLYR1 = 'Work for pay last year'
   WRKMYR  = 'Months worked last year'
   ERNYR_P = 'Total earnings last year'
   HIEMPOF = 'Health insurance offered at workplace'
   PSAL    = 'Receive income from wages/salary (last CY)'
   PSEINC  = 'Receive income from self-employment (last CY)'
   PSSRR   = 'Receive income from SS or RR (last CY)'
   PSSRRDB = 'Received SS or RR as a disability benefit'
   PSSRRD  = 'Received benefit due to disability'
   PPENS   = 'Receive income from other pensions (disability)'
   POPENS  = 'Receive income from any other pension'
   PSSI    = 'Received income from SSI'
   PSSID   = 'Received SSI due to disability'
   PTANF   = 'Received income from welfare/TANF'
   POWBEN  = 'Received other government assistance'
   PINTRSTR= 'Receive interest income'
   PDIVD   = 'Receive dividends from stocks, funds, etc.'
   PCHLDSP = 'Receive income from child support'
   PINCOT  = 'Received income from any other source'
   PSSAPL  = 'Ever applied for SSI'
   PSDAPL  = 'Ever applied for SSDI'
   TANFMYR = 'Months received welfare/TANF (last CY)'
   PFSTP   = 'Person authorized to receive food stamps (last CY)'
   FSTPMYR = 'Months received food stamps (last CY)'
   ELIGPWIC= 'Anyone age-eligible for the WIC program?'
   PWIC    = 'Received WIC benefits'
   WIC_FLAG= 'WIC recipient age-eligible'
        ;


* SAS FORMAT STATEMENT;

/*
  FORMAT RECTYPE RECTYPE. SRVY_YR SRVY_YR. SEX SEX.
         ORIGIN_I ORIGIN_I. ORIGIMPT ORIGIMPT. HISPIMPT HISPIMPT.
         HISPAN_I HISPAN_I. RACERPI2 RACERPIf. RACEIMP2 RACEIMPf.
         MRACRPI2 MRACRPIf. MRACBPI2 MRACBPIf. RACRECI2 RACRECIf.
         HISCODI2 HISCODIf. ERIMPFLG ERIMPFLG. NOWAF NOWAF.
         RRP RRP. HHREFLG $HHREFLG. DOB_M $DOB_M.
         DOB_Y_P $DOB_Y_P. AGE_P AGE_P. FRRP FRRP.
         FMRPFLG $FMRPFLG. FMREFLG $FMREFLG. R_MARITL R_MARITL.
         COHAB1 COHAB1ff. COHAB2 COHAB2ff. CDCMSTAT CDCMSTAT.
         SIB_DEG SIB_DEG. FMOTHER FMOTHER. MOM_DEG MOM_DEG.
         FFATHER FFATHER. DAD_DEG DAD_DEG. PARENTS PARENTS.
         MOM_ED MOM_ED. DAD_ED DAD_ED. ASTATFLG ASTATFLG.
         CSTATFLG CSTATFLG. PLAPLYLM PLAPLYLM. PLAPLYUN PLAPLYUN.
         PSPEDEIS PSPEDEIS. PSPEDEM PSPEDEM. PLAADL PLAADL.
         LABATH LABATH. LADRESS LADRESS. LAEAT LAEAT.
         LABED LABED. LATOILT LATOILT. LAHOME LAHOME.
         PLAIADL PLAIADL. PLAWKNOW PLAWKNOW. PLAWKLIM PLAWKLIM.
         PLAWALK PLAWALK. PLAREMEM PLAREMEM. PLIMANY PLIMANY.
         LA1AR LA1AR. LAHCC1 LAHCC1ff. LAHCC2 LAHCC2ff.
         LAHCC3 LAHCC3ff. LAHCC4 LAHCC4ff. LAHCC5 LAHCC5ff.
         LAHCC6 LAHCC6ff. LAHCC7 LAHCC7ff. LAHCC8 LAHCC8ff.
         LAHCC9 LAHCC9ff. LAHCC10 LAHCC10f. LAHCC11 LAHCC11f.
         LAHCC12 LAHCC12f. LAHCC13 LAHCC13f. LAHCC90 LAHCC90f.
         LAHCC91 LAHCC91f. LCTIME1 LCTIME1f. LCUNIT1 LCUNIT1f.
         LCDURA1 LCDURA1f. LCDURB1 LCDURB1f. LCCHRC1 LCCHRC1f.
         LCTIME2 LCTIME2f. LCUNIT2 LCUNIT2f. LCDURA2 LCDURA2f.
         LCDURB2 LCDURB2f. LCCHRC2 LCCHRC2f. LCTIME3 LCTIME3f.
         LCUNIT3 LCUNIT3f. LCDURA3 LCDURA3f. LCDURB3 LCDURB3f.
         LCCHRC3 LCCHRC3f. LCTIME4 LCTIME4f. LCUNIT4 LCUNIT4f.
         LCDURA4 LCDURA4f. LCDURB4 LCDURB4f. LCCHRC4 LCCHRC4f.
         LCTIME5 LCTIME5f. LCUNIT5 LCUNIT5f. LCDURA5 LCDURA5f.
         LCDURB5 LCDURB5f. LCCHRC5 LCCHRC5f. LCTIME6 LCTIME6f.
         LCUNIT6 LCUNIT6f. LCDURA6 LCDURA6f. LCDURB6 LCDURB6f.
         LCCHRC6 LCCHRC6f. LCTIME7 LCTIME7f. LCUNIT7 LCUNIT7f.
         LCDURA7 LCDURA7f. LCDURB7 LCDURB7f. LCCHRC7 LCCHRC7f.
         LCTIME8 LCTIME8f. LCUNIT8 LCUNIT8f. LCDURA8 LCDURA8f.
         LCDURB8 LCDURB8f. LCCHRC8 LCCHRC8f. LCTIME9 LCTIME9f.
         LCUNIT9 LCUNIT9f. LCDURA9 LCDURA9f. LCDURB9 LCDURB9f.
         LCCHRC9 LCCHRC9f. LCTIME10 LCTIME0f. LCUNIT10 LCUNIT0f.
         LCDURA10 LCDURA0f. LCDURB10 LCDURB0f. LCCHRC10 LCCHRC0f.
         LCTIME11 LCTIM10f. LCUNIT11 LCUNI10f. LCDURA11 LCDUR10f.
         LCDURB11 LCDUR11f. LCCHRC11 LCCHR10f. LCTIME12 LCTIM11f.
         LCUNIT12 LCUNI11f. LCDURA12 LCDUR12f. LCDURB12 LCDUR13f.
         LCCHRC12 LCCHR11f. LCTIME13 LCTIM12f. LCUNIT13 LCUNI12f.
         LCDURA13 LCDUR14f. LCDURB13 LCDUR15f. LCCHRC13 LCCHR12f.
         LCTIME90 LCTIM13f. LCUNIT90 LCUNI13f. LCDURA90 LCDUR16f.
         LCDURB90 LCDUR17f. LCCHRC90 LCCHR13f. LCTIME91 LCTIM14f.
         LCUNIT91 LCUNI14f. LCDURA91 LCDUR18f. LCDURB91 LCDUR19f.
         LCCHRC91 LCCHR14f. LAHCA1 LAHCA1ff. LAHCA2 LAHCA2ff.
         LAHCA3 LAHCA3ff. LAHCA4 LAHCA4ff. LAHCA5 LAHCA5ff.
         LAHCA6 LAHCA6ff. LAHCA7 LAHCA7ff. LAHCA8 LAHCA8ff.
         LAHCA9 LAHCA9ff. LAHCA10 LAHCA10f. LAHCA11 LAHCA11f.
         LAHCA12 LAHCA12f. LAHCA13 LAHCA13f. LAHCA14 LAHCA14f.
         LAHCA15 LAHCA15f. LAHCA16 LAHCA16f. LAHCA17 LAHCA17f.
         LAHCA18 LAHCA18f. LAHCA19_ LAHCA19_. LAHCA20_ LAHCA20_.
         LAHCA21_ LAHCA21_. LAHCA22_ LAHCA22_. LAHCA23_ LAHCA23_.
         LAHCA24_ LAHCA24_. LAHCA25_ LAHCA25_. LAHCA26_ LAHCA26_.
         LAHCA27_ LAHCA27_. LAHCA28_ LAHCA28_. LAHCA29_ LAHCA29_.
         LAHCA30_ LAHCA30_. LAHCA31_ LAHCA31_. LAHCA32_ LAHCA32_.
         LAHCA33_ LAHCA33_. LAHCA34_ LAHCA34_. LAHCA90 LAHCA90f.
         LAHCA91 LAHCA91f. LATIME1 LATIME1f. LAUNIT1 LAUNIT1f.
         LADURA1 LADURA1f. LADURB1 LADURB1f. LACHRC1 LACHRC1f.
         LATIME2 LATIME2f. LAUNIT2 LAUNIT2f. LADURA2 LADURA2f.
         LADURB2 LADURB2f. LACHRC2 LACHRC2f. LATIME3 LATIME3f.
         LAUNIT3 LAUNIT3f. LADURA3 LADURA3f. LADURB3 LADURB3f.
         LACHRC3 LACHRC3f. LATIME4 LATIME4f. LAUNIT4 LAUNIT4f.
         LADURA4 LADURA4f. LADURB4 LADURB4f. LACHRC4 LACHRC4f.
         LATIME5 LATIME5f. LAUNIT5 LAUNIT5f. LADURA5 LADURA5f.
         LADURB5 LADURB5f. LACHRC5 LACHRC5f. LATIME6 LATIME6f.
         LAUNIT6 LAUNIT6f. LADURA6 LADURA6f. LADURB6 LADURB6f.
         LACHRC6 LACHRC6f. LATIME7 LATIME7f. LAUNIT7 LAUNIT7f.
         LADURA7 LADURA7f. LADURB7 LADURB7f. LACHRC7 LACHRC7f.
         LATIME8 LATIME8f. LAUNIT8 LAUNIT8f. LADURA8 LADURA8f.
         LADURB8 LADURB8f. LACHRC8 LACHRC8f. LATIME9 LATIME9f.
         LAUNIT9 LAUNIT9f. LADURA9 LADURA9f. LADURB9 LADURB9f.
         LACHRC9 LACHRC9f. LATIME10 LATIME0f. LAUNIT10 LAUNIT0f.
         LADURA10 LADURA0f. LADURB10 LADURB0f. LACHRC10 LACHRC0f.
         LATIME11 LATIM10f. LAUNIT11 LAUNI10f. LADURA11 LADUR10f.
         LADURB11 LADUR11f. LACHRC11 LACHR10f. LATIME12 LATIM11f.
         LAUNIT12 LAUNI11f. LADURA12 LADUR12f. LADURB12 LADUR13f.
         LACHRC12 LACHR11f. LATIME13 LATIM12f. LAUNIT13 LAUNI12f.
         LADURA13 LADUR14f. LADURB13 LADUR15f. LACHRC13 LACHR12f.
         LATIME14 LATIM13f. LAUNIT14 LAUNI13f. LADURA14 LADUR16f.
         LADURB14 LADUR17f. LACHRC14 LACHR13f. LATIME15 LATIM14f.
         LAUNIT15 LAUNI14f. LADURA15 LADUR18f. LADURB15 LADUR19f.
         LACHRC15 LACHR14f. LATIME16 LATIM15f. LAUNIT16 LAUNI15f.
         LADURA16 LADUR20f. LADURB16 LADUR21f. LACHRC16 LACHR15f.
         LATIME17 LATIM16f. LAUNIT17 LAUNI16f. LADURA17 LADUR22f.
         LADURB17 LADUR23f. LACHRC17 LACHR16f. LATIME18 LATIM17f.
         LAUNIT18 LAUNI17f. LADURA18 LADUR24f. LADURB18 LADUR25f.
         LACHRC18 LACHR17f. LATIME19 LATIM18f. LAUNIT19 LAUNI18f.
         LADURA19 LADUR26f. LADURB19 LADUR27f. LACHRC19 LACHR18f.
         LATIME20 LATIM19f. LAUNIT20 LAUNI19f. LADURA20 LADUR28f.
         LADURB20 LADUR29f. LACHRC20 LACHR19f. LATIME21 LATIM20f.
         LAUNIT21 LAUNI20f. LADURA21 LADUR30f. LADURB21 LADUR31f.
         LACHRC21 LACHR20f. LATIME22 LATIM21f. LAUNIT22 LAUNI21f.
         LADURA22 LADUR32f. LADURB22 LADUR33f. LACHRC22 LACHR21f.
         LATIME23 LATIM22f. LAUNIT23 LAUNI22f. LADURA23 LADUR34f.
         LADURB23 LADUR35f. LACHRC23 LACHR22f. LATIME24 LATIM23f.
         LAUNIT24 LAUNI23f. LADURA24 LADUR36f. LADURB24 LADUR37f.
         LACHRC24 LACHR23f. LATIME25 LATIM24f. LAUNIT25 LAUNI24f.
         LADURA25 LADUR38f. LADURB25 LADUR39f. LACHRC25 LACHR24f.
         LATIME26 LATIM25f. LAUNIT26 LAUNI25f. LADURA26 LADUR40f.
         LADURB26 LADUR41f. LACHRC26 LACHR25f. LATIME27 LATIM26f.
         LAUNIT27 LAUNI26f. LADURA27 LADUR42f. LADURB27 LADUR43f.
         LACHRC27 LACHR26f. LATIME28 LATIM27f. LAUNIT28 LAUNI27f.
         LADURA28 LADUR44f. LADURB28 LADUR45f. LACHRC28 LACHR27f.
         LATIME29 LATIM28f. LAUNIT29 LAUNI28f. LADURA29 LADUR46f.
         LADURB29 LADUR47f. LACHRC29 LACHR28f. LATIME30 LATIM29f.
         LAUNIT30 LAUNI29f. LADURA30 LADUR48f. LADURB30 LADUR49f.
         LACHRC30 LACHR29f. LATIME31 LATIM30f. LAUNIT31 LAUNI30f.
         LADURA31 LADUR50f. LADURB31 LADUR51f. LACHRC31 LACHR30f.
         LATIME32 LATIM31f. LAUNIT32 LAUNI31f. LADURA32 LADUR52f.
         LADURB32 LADUR53f. LACHRC32 LACHR31f. LATIME33 LATIM32f.
         LAUNIT33 LAUNI32f. LADURA33 LADUR54f. LADURB33 LADUR55f.
         LACHRC33 LACHR32f. LATIME34 LATIM33f. LAUNIT34 LAUNI33f.
         LADURA34 LADUR56f. LADURB34 LADUR57f. LACHRC34 LACHR33f.
         LATIME90 LATIM34f. LAUNIT90 LAUNI34f. LADURA90 LADUR58f.
         LADURB90 LADUR59f. LACHRC90 LACHR34f. LATIME91 LATIM35f.
         LAUNIT91 LAUNI35f. LADURA91 LADUR60f. LADURB91 LADUR61f.
         LACHRC91 LACHR35f. LCONDRT LCONDRT. LACHRONR LACHRONR.
         PHSTAT PHSTAT. PDMED12M PDMED12M. PNMED12M PNMED12M.
         PHOSPYR PHOSPYR. HOSPNO HOSPNO. HPNITE HPNITE.
         PHCHM2W PHCHM2W. PHCHMN2W PHCHMN2W. PHCPH2WR PHCPH2WR.
         PHCPHN2W PHCPHN2W. PHCDV2W PHCDV2W. PHCDVN2W PHCDVN2W.
         P10DVYR P10DVYR. NOTCOV NOTCOV. MEDICARE MEDICARE.
         MCPART MCPART. MCCHOICE MCCHOICE. MCHMO MCHMO.
         MCNAMEN MCNAMEN. MCREF MCREF. MCPAYPRE MCPAYPRE.
         MCRXCARD MCRXCARD. MEDICAID MEDICAID. MACHMD MACHMD.
         MAPCMD MAPCMD. MAREF MAREF. SINGLE SINGLE.
         SSTYPEA SSTYPEA. SSTYPEB SSTYPEB. SSTYPEC SSTYPEC.
         SSTYPED SSTYPED. SSTYPEE SSTYPEE. SSTYPEF SSTYPEF.
         SSTYPEG SSTYPEG. SSTYPEH SSTYPEH. SSTYPEI SSTYPEI.
         SSTYPEJ SSTYPEJ. SSTYPEK SSTYPEK. SSTYPEL SSTYPEL.
         PRIVATE PRIVATE. HITYPE1 HITYPE1f. WHONAM1 WHONAM1f.
         PLNWRKN1 PLNWRKNf. PLNPAY11 PLNPAY1f. PLNPAY21 PLNPAY2f.
         PLNPAY31 PLNPAY3f. PLNPAY41 PLNPAY4f. PLNPAY51 PLNPAY5f.
         PLNPAY61 PLNPAY6f. PLNPAY71 PLNPAY7f. HICOSTR1 HICOSTRf.
         PLNMGD1 PLNMGD1f. MGCHMD1 MGCHMD1f. MGPRMD1 MGPRMD1f.
         MGPYMD1 MGPYMD1f. MGPREF1 MGPREF1f. PRRXCOV1 PRRXCOVf.
         HITYPE2 HITYPE2f. WHONAM2 WHONAM2f. PLNWRKN2 PLNWRK0f.
         PLNPAY12 PLNPAY0f. PLNPAY22 PLNPAY8f. PLNPAY32 PLNPAY9f.
         PLNPAY42 PLNPA10f. PLNPAY52 PLNPA11f. PLNPAY62 PLNPA12f.
         PLNPAY72 PLNPA13f. HICOSTR2 HICOST0f. PLNMGD2 PLNMGD2f.
         MGCHMD2 MGCHMD2f. MGPRMD2 MGPRMD2f. MGPYMD2 MGPYMD2f.
         MGPREF2 MGPREF2f. PRRXCOV2 PRRXCO0f. PRPLPLUS PRPLPLUS.
         SCHIP SCHIP. STDOC1 STDOC1ff. STPCMD1 STPCMD1f.
         STREF1 STREF1ff. OTHERPUB OTHERPUB. STDOC2 STDOC2ff.
         STPCMD2 STPCMD2f. STREF2 STREF2ff. OTHERGOV OTHERGOV.
         STDOC3 STDOC3ff. STPCMD3 STPCMD3f. STREF3 STREF3ff.
         MILITARY MILITARY. MILSPC1 MILSPC1f. MILSPC2 MILSPC2f.
         MILSPC3 MILSPC3f. MILSPC4 MILSPC4f. MILMAN MILMAN.
         IHS IHS. HILAST HILAST. HISTOP1 HISTOP1f.
         HISTOP2 HISTOP2f. HISTOP3 HISTOP3f. HISTOP4 HISTOP4f.
         HISTOP5 HISTOP5f. HISTOP6 HISTOP6f. HISTOP7 HISTOP7f.
         HISTOP8 HISTOP8f. HISTOP9 HISTOP9f. HISTOP10 HISTOP0f.
         HISTOP11 HISTO10f. HISTOP12 HISTO11f. HISTOP13 HISTO12f.
         HISTOP14 HISTO13f. HISTOP15 HISTO14f. HINOTYR HINOTYR.
         HINOTMYR HINOTMYR. HCSPFYR HCSPFYR. HIKINDA HIKINDA.
         HIKINDB HIKINDB. HIKINDC HIKINDC. HIKINDD HIKINDD.
         HIKINDE HIKINDE. HIKINDF HIKINDF. HIKINDG HIKINDG.
         HIKINDH HIKINDH. HIKINDI HIKINDI. HIKINDJ HIKINDJ.
         HIKINDK HIKINDK. MCAREPRB MCAREPRB. MCAIDPRB MCAIDPRB.
         SINCOV SINCOV. PLBORN PLBORN. REGIONBR REGIONBR.
         GEOBRTH GEOBRTH. YRSINUS YRSINUS. CITIZENP CITIZENP.
         HEADST HEADST. HEADSTV1 HEADSTVf. EDUC1 EDUC1fff.
         PMILTRY PMILTRY. DOINGLWP DOINGLWP. WHYNOWKP WHYNOWKP.
         WRKHRS2 WRKHRS2f. WRKFTALL WRKFTALL. WRKLYR1 WRKLYR1f.
         WRKMYR WRKMYR. ERNYR_P ERNYR_P. HIEMPOF HIEMPOF.
         PSAL PSAL. PSEINC PSEINC. PSSRR PSSRR.
         PSSRRDB PSSRRDB. PSSRRD PSSRRD. PPENS PPENS.
         POPENS POPENS. PSSI PSSI. PSSID PSSID.
         PTANF PTANF. POWBEN POWBEN. PINTRSTR PINTRSTR.
         PDIVD PDIVD. PCHLDSP PCHLDSP. PINCOT PINCOT.
         PSSAPL PSSAPL. PSDAPL PSDAPL. TANFMYR TANFMYR.
         PFSTP PFSTP. FSTPMYR FSTPMYR. ELIGPWIC ELIGPWIC.
         PWIC PWIC. WIC_FLAG WIC_FLAG.  ;
*/

RUN ;
