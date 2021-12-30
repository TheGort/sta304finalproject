*-------------------------------------------------------------------------*
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 04222
 |                 NATIONAL HEALTH INTERVIEW SURVEY, 2003
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
 | "c:\temp\04222-0003Q-data.txt").
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
  VALUE RECTYPE   20='(20) Person' ;
  VALUE SRVY_YR   2003='(2003) 2003' ;
  VALUE INTV_QRT  1='(1) Quarter 1' 2='(2) Quarter 2' 3='(3) Quarter 3' 4='(4) Quarter 4' ;
  VALUE SEX       1='(1) Male' 2='(2) Female' ;
  VALUE AGE_P     0='(0) Under 1 year' 85='(85) 85+ years' ;
  VALUE R_AGE1ff  1='(1) Under 5 years' 2='(2) 5-17 years' 3='(3) 18-24 years'
                  4='(4) 25-44 years' 5='(5) 45-64 years' 6='(6) 65-69 years'
                  7='(7) 70-74 years' 8='(8) 75 years and over' ;
  VALUE R_AGE2ff  1='(1) Under 6 years' 2='(2) 6-16 years' 3='(3) 17-24 years'
                  4='(4) 25-34 years' 5='(5) 35-44 years' 6='(6) 45-54 years'
                  7='(7) 55-64 years' 8='(8) 65-74 years' 9='(9) 75 years and over' ;
  VALUE $DOB_M    '01'='(01) January' '02'='(02) February' '03'='(03) March' '04'='(04) April'
                  '05'='(05) May' '06'='(06) June' '07'='(07) July' '08'='(08) August'
                  '09'='(09) September' '10'='(10) October' '11'='(11) November'
                  '12'='(12) December' '97'='(97) Refused' '98'='(98) Not ascertained'
                  '99'='(99) Don''t know' ;
  VALUE $DOB_Y_P  '1919'='(1919) 1919 or before' '9997'='(9997) Refused'
                  '9998'='(9998) Not ascertained' '9999'='(9999) Don''t know' ;
  VALUE ORIGIN_I  1='(1) Yes' 2='(2) No' ;
  VALUE ORIGIMPT  1='(1) Imputed: was ''refused'' Hispanic Origin'
                  2='(2) Imputed: was ''not ascertained'' Hispanic Origin'
                  3='(3) Imputed: was ''does not know'' Hispanic Origin'
                  4='(4) Hispanic origin given by respondent/proxy' ;
  VALUE HISPAN_I  0='(0) Multiple Hispanic' 1='(1) Puerto Rican' 2='(2) Mexican'
                  3='(3) Mexican-American' 4='(4) Cuban/Cuban American'
                  5='(5) Dominican (Republic)' 6='(6) Central or South American'
                  7='(7) Other Latin American, type not specified'
                  8='(8) Other Spanish'
                  9='(9) Hispanic/Latino/Spanish, non-specific type'
                  10='(10) Hispanic/Latino/Spanish, type refused'
                  11='(11) Hispanic/Latino/Spanish, type not ascertained'
                  12='(12) Not Hispanic/Spanish origin' ;
  VALUE HISPIMPT  1='(1) Imputed: was ''refused'' Hispanic Origin'
                  2='(2) Imputed: was ''not ascertained'' Hispanic Origin'
                  3='(3) Imputed: was ''does not know'' Hispanic Origin'
                  4='(4) Hispanic Origin type given by respondent/proxy' ;
  VALUE RACERPIf  1='(1) White only' 2='(2) Black/African American only'
                  3='(3) AIAN only' 4='(4) Asian only' 5='(5) Race group not releasable*'
                  6='(6) Multiple race' ;
  VALUE RACEIMPf  1='(1) Imputed: was ''refused'''
                  2='(2) Imputed: was ''not ascertained'''
                  3='(3) Imputed: was ''does not know'''
                  4='(4) Imputed: was ''other race'''
                  5='(5) Imputed: was ''unspecified multiple race'''
                  6='(6) Race given by respondent/proxy' ;
  VALUE MRACRPIf  1='(1) White' 2='(2) Black/African American'
                  3='(3) Indian (American), Alaska Native' 9='(9) Asian Indian'
                  10='(10) Chinese' 11='(11) Filipino' 15='(15) Other Asian*'
                  16='(16) Primary race not releasable**'
                  17='(17) Multiple race, no primary race selected' ;
  VALUE MRACBPIf  1='(1) White' 2='(2) Black/African American'
                  3='(3) Indian (American) (includes Eskimo, Aleut)' 6='(6) Chinese'
                  7='(7) Filipino' 12='(12) Asian Indian' 16='(16) Other race*'
                  17='(17) Multiple race, no primary race selected' ;
  VALUE RACRECIf  1='(1) White' 2='(2) Black' 3='(3) All other race groups*' ;
  VALUE HISCODIf  1='(1) Hispanic' 2='(2) Non-Hispanic White' 3='(3) Non-Hispanic Black'
                  4='(4) Non-Hispanic All other race groups' ;
  VALUE ERIMPFLG  1='(1) Ethnicity/race imputed'
                  2='(2) Ethnicity/race given by respondent/proxy' ;
  VALUE R_MARITL  0='(0) Under 14 years' 1='(1) Married - spouse in household'
                  2='(2) Married - spouse not in household'
                  3='(3) Married - spouse in household unknown' 4='(4) Widowed'
                  5='(5) Divorced' 6='(6) Separated' 7='(7) Never married'
                  8='(8) Living with partner' 9='(9) Unknown marital status' ;
  VALUE COHAB1ff  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE COHAB2ff  1='(1) Married' 2='(2) Widowed' 3='(3) Divorced' 4='(4) Separated'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LG_MSTAT  1='(1) Married, spouse in household'
                  2='(2) Married, spouse not in household'
                  3='(3) Married, spouse in household unknown' 4='(4) Widowed'
                  5='(5) Divorced' 6='(6) Separated' 7='(7) Never Married'
                  9='(9) Unknown marital status' ;
  VALUE CDCMSTAT  1='(1) Separated' 2='(2) Divorced' 3='(3) Married'
                  4='(4) Single/never married' 5='(5) Widowed'
                  9='(9) Unknown marital status' ;
  VALUE RRP       1='(1) Household reference person' 2='(2) Spouse (husband/wife)'
                  3='(3) Unmarried Partner'
                  4='(4) Child (biological/adoptive/in-law/step/foster)'
                  5='(5) Child of partner' 6='(6) Grandchild'
                  7='(7) Parent (bio./adoptive/in-law/step/foster)'
                  8='(8) Brother/sister (bio./adop./in-law/step/foster)'
                  9='(9) Grandparent (Grandmother/Grandfather)' 10='(10) Aunt/Uncle'
                  11='(11) Niece/Nephew' 12='(12) Other relative'
                  13='(13) Housemate/roommate' 14='(14) Roomer/Boarder'
                  15='(15) Other nonrelative' 16='(16) Legal guardian' 17='(17) Ward'
                  97='(97) Refused' 99='(99) Don''t know' ;
  VALUE $HH_REF   '98'='(98) Not ascertained' ;
  VALUE $HHREFLG  '8'='(8) Not ascertained' ' '='( ) <Blank: Not reference person>'
                  'P'='(P) HH Reference person' ;
  VALUE FRRP      1='(1) Family reference person' 2='(2) Spouse (husband/wife)'
                  3='(3) Unmarried Partner'
                  4='(4) Child (biological/adoptive/in-law/step/foster)'
                  5='(5) Child of partner' 6='(6) Grandchild'
                  7='(7) Parent (bio./adoptive/in-law/step/foster)'
                  8='(8) Brother/sister (bio./adop./in-law/step/foster)'
                  9='(9) Grandparent (Grandmother/Grandfather)' 10='(10) Aunt/Uncle'
                  11='(11) Niece/Nephew' 12='(12) Other relative' 16='(16) Legal guardian'
                  17='(17) Ward' 97='(97) Refused' 99='(99) Don''t know' ;
  VALUE $FM_REF   '98'='(98) Not ascertained' ;
  VALUE $FMREFLG  '8'='(8) Not ascertained' ' '='( ) <Blank: Not reference person>'
                  'P'='(P) Family reference person' ;
  VALUE FM_RESP   98='(98) Not ascertained' ;
  VALUE $FMRPFLG  '8'='(8) Not ascertained' ' '='( ) <Blank: Not family respondent>'
                  'B'='(B) Family respondent' ;
  VALUE SIB_DEG   1='(1) Full {brother/sister}' 2='(2) Half {brother/sister}'
                  3='(3) Adopted {brother/sister}' 4='(4) Step {brother/sister}'
                  5='(5) Foster {brother/sister}' 6='(6) {brother/sister}-in-law'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE $MOTHER   '00'='(00) No mother in the household' '96'='(96) Has legal guardian'
                  '97'='(97) Refused' '98'='(98) Not ascertained' '99'='(99) Don''t know' ;
  VALUE MOM_DEG   1='(1) Biological' 2='(2) Adoptive' 3='(3) Step' 4='(4) Foster' 5='(5) In-law'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE $FATHER   '00'='(00) No father in the household' '96'='(96) Has legal guardian'
                  '97'='(97) Refused' '98'='(98) Not ascertained' '99'='(99) Don''t know' ;
  VALUE DAD_DEG   1='(1) Biological' 2='(2) Adoptive' 3='(3) Step' 4='(4) Foster' 5='(5) In-law'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE $GUARD    '00'='(00) Guardian is not a household member' '97'='(97) Refused'
                  '98'='(98) Not ascertained' '99'='(99) Don''t know'
                  ' '='( ) Not in Universe' ;
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
  VALUE FM_TYPE   1='(1) One adult, no child(ren) under 18'
                  2='(2) Multiple adults, no child(ren) under 18'
                  3='(3) One adult, 1+ child(ren) under 18'
                  4='(4) Multiple adults, 1+ child(ren) under 18' 9='(9) Unknown' ;
  VALUE NOWAF     1='(1) Armed Forces' 2='(2) Not Armed Forces' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE ASTATFLG  0='(0) Sample Adult - no record' 1='(1) Sample Adult - has record'
                  2='(2) Not selected as Sample Adult'
                  3='(3) No one selected as Sample Adult' 4='(4) Armed Force member'
                  5='(5) Armed Force member - selected as Sample Adult' ;
  VALUE CSTATFLG  0='(0) Sample Child - no record' 1='(1) Sample Child - has record'
                  2='(2) Not selected as Sample Child'
                  3='(3) No one selected as Sample Child' 4='(4) Emancipated Minor' ;
  VALUE IMMUNFLG  0='(0) Immunization Child - no record'
                  1='(1) Immunization Child - has record'
                  2='(2) Not eligible for immunization questions' ;
  VALUE REGION    1='(1) Northeast' 2='(2) Midwest' 3='(3) South' 4='(4) West' ;
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
                  9='(9) Don''t know' ;
  VALUE PLAWKLIM  0='(0) Unable to work' 1='(1) Limited in work'
                  2='(2) Not limited in work' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
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
  VALUE LAHCC1ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC2ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC3ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC4ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC5ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC6ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC7ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC8ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC9ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC10f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC11f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC12f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC13f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC90f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCC91f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LCTIME1f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LCUNIT1f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCDURA1f  0='(0) Less than 1 year' 96='(96) Unknown number of years'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LCDURB1f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDURB2f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDURB3f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDURB4f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDURB5f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDURB6f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDURB7f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDURB8f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDURB9f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDURB0f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDUR11f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDUR13f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDUR15f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDUR17f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LCDUR19f  0='(0) Since birth and child < 1 year of age'
                  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LCCHR14f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LAHCA1ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA2ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA3ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA4ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA5ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA6ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA7ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA8ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA9ff  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA10f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA11f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA12f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA13f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA14f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA15f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA16f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA17f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA18f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA19f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA20f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA21f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA22f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA23f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA24f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA25f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA26f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA27f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA28f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA29f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA30f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA31f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA32f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA33f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA34f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA90f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LAHCA91f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LATIME1f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE LAUNIT1f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LADURA1f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LADURB1f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADURB2f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADURB3f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADURB4f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADURB5f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADURB6f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADURB7f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADURB8f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADURB9f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADURB0f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR11f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR13f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR15f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR17f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR19f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR21f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR23f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR25f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR27f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR29f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR31f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR33f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR35f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR37f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR39f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR41f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR43f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR45f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR47f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR49f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR51f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR53f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR55f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR57f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR59f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
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
  VALUE LADUR61f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LACHR35f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE LCONDRT   1='(1) At least one condition causing LA is chronic'
                  2='(2) No condition causing LA is chronic'
                  9='(9) Unk if any condition causing LA is chronic' ;
  VALUE LACHRONR  0='(0) Not limited in any way (incl unk if limited)'
                  1='(1) Limited; caused by at least one chronic cond'
                  2='(2) Limited; not caused by chronic cond'
                  3='(3) Limited; unk if cond causing LA is chronic' ;
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
  VALUE HIKINDL   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDM   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HIKINDN   1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MEDICARE  1='(1) Yes, information' 2='(2) Yes, but no information' 3='(3) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MCPART    1='(1) Part A - Hospital Only' 2='(2) Part B - Medical Only'
                  3='(3) Both Part A and Part B' 4='(4) Card Not Available'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MCCHOICE  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MCHMO     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MCNAME    4='(4) Medigap plan' 12='(12) Group' 22='(22) Staff' 32='(32) IPA' 92='(92) Other'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE MCREF     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MCPAYPRE  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MEDICAID  1='(1) Yes, information' 2='(2) Yes, but no information' 3='(3) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MACHMD    1='(1) Any doctor' 2='(2) Select from a book/list'
                  3='(3) Doctor is assigned' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MAPCMD    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MAREF     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SINGLE    1='(1) Yes with information' 2='(2) Yes with no information' 3='(3) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
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
  VALUE HITYPE1f  98='(98) Not ascertained' 99='(99) Unknown' ;
  VALUE WHONAM1f  1='(1) In own name' 2='(2) Someone else in family'
                  3='(3) Person not in household' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLNWRK1f  1='(1) Employer' 2='(2) Union'
                  3='(3) Through work, but DK if employer or union'
                  4='(4) Through work, self-employ or prof assoc' 5='(5) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
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
  VALUE HITYPE2f  98='(98) Not ascertained' 99='(99) Unknown' ;
  VALUE WHONAM2f  1='(1) In own name' 2='(2) Someone else in family'
                  3='(3) Person not in household' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLNWRK2f  1='(1) Employer' 2='(2) Union'
                  3='(3) Through work, but DK if employer or union'
                  4='(4) Through work, self-employ or prof assoc' 5='(5) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
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
  VALUE HITYPE3f  98='(98) Not ascertained' 99='(99) Unknown' ;
  VALUE WHONAM3f  1='(1) In own name' 2='(2) Someone else in family'
                  3='(3) Person not in household' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLNWRK3f  1='(1) Employer' 2='(2) Union'
                  3='(3) Through work, but DK if employer or union'
                  4='(4) Through work, self-employ or prof assoc' 5='(5) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA14f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA15f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA16f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA17f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA18f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA19f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA20f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HICOST1f  20000='(20000) $20,000 or more' 99997='(99997) Refused'
                  99998='(99998) Not ascertained' 99999='(99999) Don''t know' ;
  VALUE PLNMGD3f  1='(1) HMO/IPA' 2='(2) PPO' 3='(3) POS' 4='(4) Fee-for-service/indemnity'
                  5='(5) Other' 7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MGCHMD3f  1='(1) Any doctor' 2='(2) Select from group/list' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MGPRMD3f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MGPYMD3f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MGPREF3f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HITYPE4f  98='(98) Not ascertained' 99='(99) Unknown' ;
  VALUE WHONAM4f  1='(1) In own name' 2='(2) Someone else in family'
                  3='(3) Person not in household' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PLNWRK4f  1='(1) Employer' 2='(2) Union'
                  3='(3) Through work, but DK if employer or union'
                  4='(4) Through work, self-employ or prof assoc' 5='(5) No'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA21f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA22f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA23f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA24f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA25f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA26f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE PLNPA27f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HICOST2f  20000='(20000) $20,000 or more' 99997='(99997) Refused'
                  99998='(99998) Not ascertained' 99999='(99999) Don''t know' ;
  VALUE PLNMGD4f  1='(1) HMO/IPA' 2='(2) PPO' 3='(3) POS' 4='(4) Fee-for-service/indemnity'
                  5='(5) Other' 7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MGCHMD4f  1='(1) Any doctor' 2='(2) Select from group/list' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MGPRMD4f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MGPYMD4f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MGPREF4f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE IHS       1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MILITARY  1='(1) Yes, Military/VA only'
                  2='(2) Yes, TRICARE/CHAMPUS/CHAMP-VA only'
                  3='(3) Yes Both Military/VA + TRICARE/CHAMPUS/CHAMP-VA'
                  4='(4) Yes unknown type' 5='(5) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE CHIP      1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE OTHERPUB  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE OTHERGOV  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE NOTCOV    1='(1) Not covered' 2='(2) Covered' 7='(7) Refused' 8='(8) Not ascertained'
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
                  9='(9) Don''t Know' ;
  VALUE HINOTMYR  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE HCSPFYR   0='(0) Zero' 1='(1) Less than $500' 2='(2) $500-$1,999'
                  3='(3) $2,000-$2,999' 4='(4) $3,000-$4,999' 5='(5) $5,000 or more'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t Know' ;
  VALUE REGIONBR  1='(1) United States'
                  2='(2) Mexico, Central America, Caribbean Islands'
                  3='(3) South America' 4='(4) Europe'
                  5='(5) Russia (and former USSR areas)' 6='(6) Africa'
                  7='(7) Middle East' 8='(8) Indian Subcontinent' 9='(9) Asia'
                  10='(10) SE Asia' 11='(11) Elsewhere' 99='(99) Unknown' ;
  VALUE GEOBRTH   1='(1) USA: born in one of the 50 United States or D.C'
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
  VALUE EDUC      0='(0) Never attended/ kindergarten only'
                  12='(12) 12th grade, no diploma' 13='(13) HIGH SCHOOL GRADUATE'
                  14='(14) GED or equivalent' 15='(15) Some college, no degree'
                  16='(16) AA degree: technical or vocational'
                  17='(17) AA degree: academic program'
                  18='(18) Bachelor''s degree (BA, AB, BS, BBA)'
                  19='(19) Master''s degree (MA, MS, MEng, MEd, MBA)'
                  20='(20) Professional degree (MD, DDS, DVM, JD)'
                  21='(21) Doctoral degree (PhD, EdD)'
                  96='(96) Child under 5 years old' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE EDUC_R1f  1='(1) Less/equal to 8th grade'
                  2='(2) 9-12th grade, no high school diploma'
                  3='(3) High school graduate' 4='(4) GED recipient'
                  5='(5) Some college, no degree'
                  6='(6) AA degree, technical or vocational'
                  7='(7) AA degree, academic program'
                  8='(8) Bachelor''s degree (BA, BS, AB, BBA)'
                  9='(9) Master''s, professional, or doctoral degree'
                  96='(96) Child under 5 years of age' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE MILTRYDS  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE DOINGLWf  1='(1) Working for pay at a job or business'
                  2='(2) With a job or business but not at work'
                  3='(3) Looking for work'
                  4='(4) Working, but not for pay, at a job or business'
                  5='(5) Not working and not looking for work' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE WHYNOWKf  1='(1) Taking care of house or family' 2='(2) Going to school'
                  3='(3) Retired' 4='(4) On a planned vacation from work'
                  5='(5) On family or maternity leave'
                  6='(6) Temporarily unable to work for health reasons'
                  7='(7) On layoff' 8='(8) Disabled'
                  9='(9) Have job/contract; off-season' 10='(10) Other' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE WRKHRS    95='(95) 95+ hours' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE WRKFTALL  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE WRKLYR1f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE WRKMYR    97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE MAJR_ACT  1='(1) Working at a job or business' 2='(2) Keeping house'
                  3='(3) Going to school' 4='(4) Something else' 5='(5) Unknown' ;
  VALUE ERNYR_P   1='(1) $01-$4999' 2='(2) $5000-$9999' 3='(3) $10000-$14999'
                  4='(4) $15000-$19999' 5='(5) $20000-$24999' 6='(6) $25000-$34999'
                  7='(7) $35000-$44999' 8='(8) $45000-$54999' 9='(9) $55000-$64999'
                  10='(10) $65000-$74999' 11='(11) $75000 and over' 97='(97) Refused'
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
  VALUE INCGRP    1='(1) 0-$4999' 2='(2) $5000-$9999' 3='(3) $10000-$14999'
                  4='(4) $15000-$19999' 5='(5) $20000-$24999' 6='(6) $25000-$34999'
                  7='(7) $35000-$44999' 8='(8) $45000-$54999' 9='(9) $55000-$64999'
                  10='(10) $65000-$74999' 11='(11) $75000 and over'
                  12='(12) $20000 or more (no detail)'
                  13='(13) Less than $20000 (no detail)' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE AB_BL20K  1='(1) $20,000 or more' 2='(2) Less than $20,000' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE RAT_CAT   1='(1) Under .50' 2='(2) .50 to .74' 3='(3) .75 to .99'
                  4='(4) 1.00 to 1.24' 5='(5) 1.25 to 1.49' 6='(6) 1.50 to 1.74'
                  7='(7) 1.75 to 1.99' 8='(8) 2.00 to 2.49' 9='(9) 2.50 to 2.99'
                  10='(10) 3.00 to 3.49' 11='(11) 3.50 to 3.99' 12='(12) 4.00 to 4.49'
                  13='(13) 4.50 to 4.99' 14='(14) 5.00 and over' 96='(96) Undefinable'
                  99='(99) Unknown' ;
  VALUE HOUSEOWN  1='(1) Owned or being bought' 2='(2) Rented' 3='(3) Other arrangement'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FGAH      1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
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

DATA nhis.person_2003;
INFILE "C:\DATA\NHIS\2003\person2003.sas" LRECL=758;
INPUT
        RECTYPE 1-2             SRVY_YR 3-6
        HHX $7-12               FMX $13-14              PX $15-16
        INTV_QRT 17             SEX 18                  AGE_P 19-20
        R_AGE1 21               R_AGE2 22               DOB_M $23-24
        DOB_Y_P $25-28          ORIGIN_I 29             ORIGIMPT 30
        HISPAN_I 31-32          HISPIMPT 33             RACERPI2 34-35
        RACEIMP2 36             MRACRPI2 37-38          MRACBPI2 39-40
        RACRECI2 41             HISCODI2 42             ERIMPFLG 43
        R_MARITL 44             COHAB1 45               COHAB2 46
        LG_MSTAT 47             CDCMSTAT 48             RRP 49-50
        HH_REF $51-52           HHREFLG $53             FRRP 54-55
        FM_REF $56-57           FMREFLG $58             FM_RESP 59-60
        FMRPFLG $61             SIB_DEG 62              MOTHER $63-64
        MOM_DEG 65              FATHER $66-67           DAD_DEG 68
        GUARD $69-70            PARENTS 71              MOM_ED 72-73
        DAD_ED 74-75            FM_SIZE 76-77           FM_TYPE 78
        FM_STRCP 79-80          FM_STRP 81-82           NOWAF 83
        ASTATFLG 84             CSTATFLG 85             IMMUNFLG 86
        REGION 87               WTIA 88-93              WTFA 94-99
        STRATUM 100-102         PSU 103                 PLAPLYLM 104
        PLAPLYUN 105            PSPEDEIS 106            PSPEDEM 107
        PLAADL 108              LABATH 109              LADRESS 110
        LAEAT 111               LABED 112               LATOILT 113
        LAHOME 114              PLAIADL 115             PLAWKNOW 116
        PLAWKLIM 117            PLAWALK 118             PLAREMEM 119
        PLIMANY 120             LA1AR 121               LAHCC1 122
        LAHCC2 123              LAHCC3 124              LAHCC4 125
        LAHCC5 126              LAHCC6 127              LAHCC7 128
        LAHCC8 129              LAHCC9 130              LAHCC10 131
        LAHCC11 132             LAHCC12 133             LAHCC13 134
        LAHCC90 135             LAHCC91 136             LCTIME1 137-138
        LCUNIT1 139             LCDURA1 140-141         LCDURB1 142
        LCCHRC1 143             LCTIME2 144-145         LCUNIT2 146
        LCDURA2 147-148         LCDURB2 149             LCCHRC2 150
        LCTIME3 151-152         LCUNIT3 153             LCDURA3 154-155
        LCDURB3 156             LCCHRC3 157             LCTIME4 158-159
        LCUNIT4 160             LCDURA4 161-162         LCDURB4 163
        LCCHRC4 164             LCTIME5 165-166         LCUNIT5 167
        LCDURA5 168-169         LCDURB5 170             LCCHRC5 171
        LCTIME6 172-173         LCUNIT6 174             LCDURA6 175-176
        LCDURB6 177             LCCHRC6 178             LCTIME7 179-180
        LCUNIT7 181             LCDURA7 182-183         LCDURB7 184
        LCCHRC7 185             LCTIME8 186-187         LCUNIT8 188
        LCDURA8 189-190         LCDURB8 191             LCCHRC8 192
        LCTIME9 193-194         LCUNIT9 195             LCDURA9 196-197
        LCDURB9 198             LCCHRC9 199             LCTIME10 200-201
        LCUNIT10 202            LCDURA10 203-204        LCDURB10 205
        LCCHRC10 206            LCTIME11 207-208        LCUNIT11 209
        LCDURA11 210-211        LCDURB11 212            LCCHRC11 213
        LCTIME12 214-215        LCUNIT12 216            LCDURA12 217-218
        LCDURB12 219            LCCHRC12 220            LCTIME13 221-222
        LCUNIT13 223            LCDURA13 224-225        LCDURB13 226
        LCCHRC13 227            LCTIME90 228-229        LCUNIT90 230
        LCDURA90 231-232        LCDURB90 233            LCCHRC90 234
        LCTIME91 235-236        LCUNIT91 237            LCDURA91 238-239
        LCDURB91 240            LCCHRC91 241            LAHCA1 242
        LAHCA2 243              LAHCA3 244              LAHCA4 245
        LAHCA5 246              LAHCA6 247              LAHCA7 248
        LAHCA8 249              LAHCA9 250              LAHCA10 251
        LAHCA11 252             LAHCA12 253             LAHCA13 254
        LAHCA14 255             LAHCA15 256             LAHCA16 257
        LAHCA17 258             LAHCA18 259             LAHCA19 260
        LAHCA20 261             LAHCA21 262             LAHCA22 263
        LAHCA23 264             LAHCA24 265             LAHCA25 266
        LAHCA26 267             LAHCA27 268             LAHCA28 269
        LAHCA29 270             LAHCA30 271             LAHCA31 272
        LAHCA32 273             LAHCA33 274             LAHCA34 275
        LAHCA90 276             LAHCA91 277             LATIME1 278-279
        LAUNIT1 280             LADURA1 281-282         LADURB1 283
        LACHRC1 284             LATIME2 285-286         LAUNIT2 287
        LADURA2 288-289         LADURB2 290             LACHRC2 291
        LATIME3 292-293         LAUNIT3 294             LADURA3 295-296
        LADURB3 297             LACHRC3 298             LATIME4 299-300
        LAUNIT4 301             LADURA4 302-303         LADURB4 304
        LACHRC4 305             LATIME5 306-307         LAUNIT5 308
        LADURA5 309-310         LADURB5 311             LACHRC5 312
        LATIME6 313-314         LAUNIT6 315             LADURA6 316-317
        LADURB6 318             LACHRC6 319             LATIME7 320-321
        LAUNIT7 322             LADURA7 323-324         LADURB7 325
        LACHRC7 326             LATIME8 327-328         LAUNIT8 329
        LADURA8 330-331         LADURB8 332             LACHRC8 333
        LATIME9 334-335         LAUNIT9 336             LADURA9 337-338
        LADURB9 339             LACHRC9 340             LATIME10 341-342
        LAUNIT10 343            LADURA10 344-345        LADURB10 346
        LACHRC10 347            LATIME11 348-349        LAUNIT11 350
        LADURA11 351-352        LADURB11 353            LACHRC11 354
        LATIME12 355-356        LAUNIT12 357            LADURA12 358-359
        LADURB12 360            LACHRC12 361            LATIME13 362-363
        LAUNIT13 364            LADURA13 365-366        LADURB13 367
        LACHRC13 368            LATIME14 369-370        LAUNIT14 371
        LADURA14 372-373        LADURB14 374            LACHRC14 375
        LATIME15 376-377        LAUNIT15 378            LADURA15 379-380
        LADURB15 381            LACHRC15 382            LATIME16 383-384
        LAUNIT16 385            LADURA16 386-387        LADURB16 388
        LACHRC16 389            LATIME17 390-391        LAUNIT17 392
        LADURA17 393-394        LADURB17 395            LACHRC17 396
        LATIME18 397-398        LAUNIT18 399            LADURA18 400-401
        LADURB18 402            LACHRC18 403            LATIME19 404-405
        LAUNIT19 406            LADURA19 407-408        LADURB19 409
        LACHRC19 410            LATIME20 411-412        LAUNIT20 413
        LADURA20 414-415        LADURB20 416            LACHRC20 417
        LATIME21 418-419        LAUNIT21 420            LADURA21 421-422
        LADURB21 423            LACHRC21 424            LATIME22 425-426
        LAUNIT22 427            LADURA22 428-429        LADURB22 430
        LACHRC22 431            LATIME23 432-433        LAUNIT23 434
        LADURA23 435-436        LADURB23 437            LACHRC23 438
        LATIME24 439-440        LAUNIT24 441            LADURA24 442-443
        LADURB24 444            LACHRC24 445            LATIME25 446-447
        LAUNIT25 448            LADURA25 449-450        LADURB25 451
        LACHRC25 452            LATIME26 453-454        LAUNIT26 455
        LADURA26 456-457        LADURB26 458            LACHRC26 459
        LATIME27 460-461        LAUNIT27 462            LADURA27 463-464
        LADURB27 465            LACHRC27 466            LATIME28 467-468
        LAUNIT28 469            LADURA28 470-471        LADURB28 472
        LACHRC28 473            LATIME29 474-475        LAUNIT29 476
        LADURA29 477-478        LADURB29 479            LACHRC29 480
        LATIME30 481-482        LAUNIT30 483            LADURA30 484-485
        LADURB30 486            LACHRC30 487            LATIME31 488-489
        LAUNIT31 490            LADURA31 491-492        LADURB31 493
        LACHRC31 494            LATIME32 495-496        LAUNIT32 497
        LADURA32 498-499        LADURB32 500            LACHRC32 501
        LATIME33 502-503        LAUNIT33 504            LADURA33 505-506
        LADURB33 507            LACHRC33 508            LATIME34 509-510
        LAUNIT34 511            LADURA34 512-513        LADURB34 514
        LACHRC34 515            LATIME90 516-517        LAUNIT90 518
        LADURA90 519-520        LADURB90 521            LACHRC90 522
        LATIME91 523-524        LAUNIT91 525            LADURA91 526-527
        LADURB91 528            LACHRC91 529            LCONDRT 530
        LACHRONR 531            PHSTAT 532              PDMED12M 533
        PNMED12M 534            PHOSPYR 535             HOSPNO 536-538
        HPNITE 539-541          PHCHM2W 542             PHCHMN2W 543-544
        PHCPH2WR 545            PHCPHN2W 546-547        PHCDV2W 548
        PHCDVN2W 549-550        P10DVYR 551             HIKINDA 552
        HIKINDB 553             HIKINDC 554             HIKINDD 555
        HIKINDE 556             HIKINDF 557             HIKINDG 558
        HIKINDH 559             HIKINDI 560             HIKINDJ 561
        HIKINDK 562             HIKINDL 563             HIKINDM 564
        HIKINDN 565             MEDICARE 566            MCPART 567
        MCCHOICE 568            MCHMO 569               MCNAME 570-571
        MCREF 572               MCPAYPRE 573            MEDICAID 574
        MACHMD 575              MAPCMD 576              MAREF 577
        SINGLE 578              SSTYPEA 579             SSTYPEB 580
        SSTYPEC 581             SSTYPED 582             SSTYPEE 583
        SSTYPEF 584             SSTYPEG 585             SSTYPEH 586
        SSTYPEI 587             SSTYPEJ 588             SSTYPEK 589
        SSTYPEL 590             PRIVATE 591             HITYPE1 592-593
        WHONAM1 594             PLNWRK1 595             PLNPAY11 596
        PLNPAY21 597            PLNPAY31 598            PLNPAY41 599
        PLNPAY51 600            PLNPAY61 601            PLNPAY71 602
        HICOSTR1 603-607        PLNMGD1 608             MGCHMD1 609
        MGPRMD1 610             MGPYMD1 611             MGPREF1 612
        HITYPE2 613-614         WHONAM2 615             PLNWRK2 616
        PLNPAY12 617            PLNPAY22 618            PLNPAY32 619
        PLNPAY42 620            PLNPAY52 621            PLNPAY62 622
        PLNPAY72 623            HICOSTR2 624-628        PLNMGD2 629
        MGCHMD2 630             MGPRMD2 631             MGPYMD2 632
        MGPREF2 633             HITYPE3 634-635         WHONAM3 636
        PLNWRK3 637             PLNPAY13 638            PLNPAY23 639
        PLNPAY33 640            PLNPAY43 641            PLNPAY53 642
        PLNPAY63 643            PLNPAY73 644            HICOSTR3 645-649
        PLNMGD3 650             MGCHMD3 651             MGPRMD3 652
        MGPYMD3 653             MGPREF3 654             HITYPE4 655-656
        WHONAM4 657             PLNWRK4 658             PLNPAY14 659
        PLNPAY24 660            PLNPAY34 661            PLNPAY44 662
        PLNPAY54 663            PLNPAY64 664            PLNPAY74 665
        HICOSTR4 666-670        PLNMGD4 671             MGCHMD4 672
        MGPRMD4 673             MGPYMD4 674             MGPREF4 675
        IHS 676                 MILITARY 677            CHIP 678
        OTHERPUB 679            OTHERGOV 680            NOTCOV 681
        HILAST 682              HISTOP1 683             HISTOP2 684
        HISTOP3 685             HISTOP4 686             HISTOP5 687
        HISTOP6 688             HISTOP7 689             HISTOP8 690
        HISTOP9 691             HISTOP10 692            HISTOP11 693
        HISTOP12 694            HISTOP13 695            HISTOP14 696
        HISTOP15 697            HINOTYR 698             HINOTMYR 699-700
        HCSPFYR 701             REGIONBR 702-703        GEOBRTH 704
        YRSINUS 705             CITIZENP 706            HEADST 707
        HEADSTV1 708            EDUC 709-710            EDUC_R1 711-712
        MILTRYDS 713            DOINGLW1 714            WHYNOWK1 715-716
        WRKHRS 717-718          WRKFTALL 719            WRKLYR1 720
        WRKMYR 721-722          MAJR_ACT 723            ERNYR_P 724-725
        HIEMPOF 726             PSAL 727                PSEINC 728
        PSSRR 729               PSSRRDB 730             PSSRRD 731
        PPENS 732               POPENS 733              PSSI 734
        PSSID 735               PTANF 736               POWBEN 737
        PINTRSTR 738            PDIVD 739               PCHLDSP 740
        PINCOT 741              INCGRP 742-743          AB_BL20K 744
        RAT_CAT 745-746         HOUSEOWN 747            FGAH 748
        PSSAPL 749              PSDAPL 750              TANFMYR 751-752
        PFSTP 753               FSTPMYR 754-755         ELIGPWIC 756
        PWIC 757                WIC_FLAG 758            ;


* SAS LABEL STATEMENT;

LABEL
   RECTYPE = 'Record Type'
   SRVY_YR = 'Survey Year'
   HHX     = 'Household Serial Number'
   FMX     = 'Family Serial Number'
   PX      = 'Person Number'
   INTV_QRT= 'Interview Quarter'
   SEX     = 'Sex'
   AGE_P   = 'Age'
   R_AGE1  = 'Age Recode #1'
   R_AGE2  = 'Age Recode #2'
   DOB_M   = 'Month of Birth'
   DOB_Y_P = 'Year of Birth'
   ORIGIN_I= 'Hispanic Ethnicity'
   ORIGIMPT= 'Hispanic Origin Imputation Flag'
   HISPAN_I= 'Hispanic subgroup detail'
   HISPIMPT= 'Type of Hispanic Origin Imputation Flag'
   RACERPI2= 'OMB groups w/multiple race'
   RACEIMP2= 'Race Imputation Flag'
   MRACRPI2= 'Race coded to single/multiple race group'
   MRACBPI2= 'Race coded to single/multiple race group'
   RACRECI2= 'Race Recode'
   HISCODI2= 'Race/ethnicity recode'
   ERIMPFLG= 'Ethnicity/Race Imputation Flag'
   R_MARITL= 'Marital status'
   COHAB1  = 'Cohabitor ever married?'
   COHAB2  = 'Legal marital status/cohab. respondent'
   LG_MSTAT= 'Legal marital status'
   CDCMSTAT= 'CDC standard for legal marital status'
   RRP     = 'Relationship to HH reference person'
   HH_REF  = 'Person # of HH reference person'
   HHREFLG = 'HH Reference Person Flag'
   FRRP    = 'Rel to family ref person'
   FM_REF  = 'Person # of family reference person'
   FMREFLG = 'Family Reference Person Flag'
   FM_RESP = 'Person # of family respondent'
   FMRPFLG = 'Family Respondent Flag'
   SIB_DEG = 'Degree of sib rel to HH ref person'
   MOTHER  = 'Mother''s person number'
   MOM_DEG = 'Type of relationship with Mother'
   FATHER  = 'Father''s person number'
   DAD_DEG = 'Type of relationship with Father'
   GUARD   = 'Person number of guardian'
   PARENTS = 'Parent(s) present in the family'
   MOM_ED  = 'Education of Mother'
   DAD_ED  = 'Education of Father'
   FM_SIZE = 'Number of persons in family'
   FM_TYPE = 'Family Type (on the person-level)'
   FM_STRCP= 'Family Structure (at the person-level)'
   FM_STRP = 'Family Structure (on the person-level)'
   NOWAF   = 'Armed Forces - active duty'
   ASTATFLG= 'Sample Adult Flag'
   CSTATFLG= 'Sample Child Flag'
   IMMUNFLG= 'Child Immunization Flag'
   REGION  = 'Region'
   WTIA    = 'Weight - Interim Annual'
   WTFA    = 'Weight - Final Annual'
   STRATUM = 'Stratum for variance estimation'
   PSU     = 'PSU for variance estimation'
   PLAPLYLM= 'Limited in kind/amount play'
   PLAPLYUN= 'Is -- able to play AT ALL'
   PSPEDEIS= 'Does -- receive Spec Ed or EIS'
   PSPEDEM = 'Rec services due to emot or behav prob'
   PLAADL  = 'Does -- need help w/ADL'
   LABATH  = 'Need help with bath/shower'
   LADRESS = 'Need help dressing'
   LAEAT   = 'Need help eating'
   LABED   = 'Need help in/out of bed or chairs'
   LATOILT = 'Need help using the toilet'
   LAHOME  = 'Need help getting around in home'
   PLAIADL = 'Need help with IADL'
   PLAWKNOW= 'Is -- unable to work due to health prob'
   PLAWKLIM= 'Limited in kind/amt of work'
   PLAWALK = 'Difficulty walking w/o equip'
   PLAREMEM= 'Limited by dif remembering'
   PLIMANY = 'Is -- limited in ANY (other) WAY?'
   LA1AR   = 'Any limitation - all persons, all conds'
   LAHCC1  = 'Vision problem'
   LAHCC2  = 'Hearing problem'
   LAHCC3  = 'Speech problem'
   LAHCC4  = 'Asthma/breathing problem'
   LAHCC5  = 'Birth defect'
   LAHCC6  = 'Injury'
   LAHCC7  = 'Mental retardation'
   LAHCC8  = 'Other developmental problem'
   LAHCC9  = 'Other emotional/behavioral problem'
   LAHCC10 = 'Bone/joint/muscle problem'
   LAHCC11 = 'Epilepsy/seizures'
   LAHCC12 = 'Learning disability'
   LAHCC13 = 'ADD/ADHD'
   LAHCC90 = 'Other impairment/problem (1)'
   LAHCC91 = 'Other impairment/problem (2)'
   LCTIME1 = 'Duration of vision prob: # of units'
   LCUNIT1 = 'Duration of vision prob: Time unit'
   LCDURA1 = 'Duration of vision prob (in years)'
   LCDURB1 = 'Duration of vision prob recode 2'
   LCCHRC1 = 'Vision problem condition status'
   LCTIME2 = 'Duration of hearing prob: # of units'
   LCUNIT2 = 'Duration of hearing prob: Time unit'
   LCDURA2 = 'Duration of hearing prob (in years)'
   LCDURB2 = 'Duration of hearing prob recode 2'
   LCCHRC2 = 'Hearing problem condition status'
   LCTIME3 = 'Duration of speech prob: # of units'
   LCUNIT3 = 'Duration of speech prob: Time unit'
   LCDURA3 = 'Duration of speech prob (in years)'
   LCDURB3 = 'Duration of speech prob recode 2'
   LCCHRC3 = 'Speech problem condition status'
   LCTIME4 = 'Dur of asthma/breathing prob: # of units'
   LCUNIT4 = 'Dur of asthma/breathing prob: Time unit'
   LCDURA4 = 'Dur of asthma/breathing prob (in years)'
   LCDURB4 = 'Dur of asthma/breathing prob recode 2'
   LCCHRC4 = 'Asthma/breathing prob condition status'
   LCTIME5 = 'Duration of birth defect: # of units'
   LCUNIT5 = 'Duration of birth defect: Time unit'
   LCDURA5 = 'Duration of birth defect (in years)'
   LCDURB5 = 'Duration of birth defect recode 2'
   LCCHRC5 = 'Birth defect condition status'
   LCTIME6 = 'Duration of injury: # of units'
   LCUNIT6 = 'Duration of injury: Time unit'
   LCDURA6 = 'Duration of injury (in years)'
   LCDURB6 = 'Duration of injury recode 2'
   LCCHRC6 = 'Injury condition status'
   LCTIME7 = 'Dur of mental retardation: # of units'
   LCUNIT7 = 'Dur of mental retardation: Time unit'
   LCDURA7 = 'Dur of mental retardation (in years)'
   LCDURB7 = 'Duration of mental retardation recode 2'
   LCCHRC7 = 'Mental retardation condition status'
   LCTIME8 = 'Duration of other dev prob: # of units'
   LCUNIT8 = 'Duration of other dev prob: Time unit'
   LCDURA8 = 'Duration of other dev prob (in years)'
   LCDURB8 = 'Duration of other dev prob recode 2'
   LCCHRC8 = 'Other dev problem condition status'
   LCTIME9 = 'Dur of otr emot/behav prob: # of units'
   LCUNIT9 = 'Dur of otr emot/behav prob: Time unit'
   LCDURA9 = 'Dur of otr emot/behav prob (in years)'
   LCDURB9 = 'Duration of otr emot/behav prob recode 2'
   LCCHRC9 = 'Otr emot/behav problem condition status'
   LCTIME10= 'Dur of bone/joint/muscl prob: # of units'
   LCUNIT10= 'Dur of bone/joint/muscl prob: Time unit'
   LCDURA10= 'Dur of bone/joint/muscl prob (in years)'
   LCDURB10= 'Dur of bone/joint/muscl prob recode 2'
   LCCHRC10= 'Bone/joint/muscl prob condition status'
   LCTIME11= 'Dur of epilepsy/seizures: # of units'
   LCUNIT11= 'Duration of epilepsy/seizures: Time unit'
   LCDURA11= 'Duration of epilepsy/seizures (in years)'
   LCDURB11= 'Duration of epilepsy/seizures recode 2'
   LCCHRC11= 'Epilepsy/seizures condition status'
   LCTIME12= 'Dur of learning disability: # of units'
   LCUNIT12= 'Dur of learning disability: Time unit'
   LCDURA12= 'Dur of learning disability (in years)'
   LCDURB12= 'Duration of learning disability recode 2'
   LCCHRC12= 'Learning disability condition status'
   LCTIME13= 'Duration of ADD/ADHD: # of units'
   LCUNIT13= 'Duration of ADD/ADHD: Time unit'
   LCDURA13= 'Duration of ADD/ADHD (in years)'
   LCDURB13= 'Duration of ADD/ADHD recode 2'
   LCCHRC13= 'ADD/ADHD condition status'
   LCTIME90= 'Dur of oth impair/prob (1): # of units'
   LCUNIT90= 'Dur of oth impair/prob (1): Time unit'
   LCDURA90= 'Dur of oth impair/prob (1) (in years)'
   LCDURB90= 'Dur of oth impair/prob (1) recode 2'
   LCCHRC90= 'Other impair/prob (1) condition status'
   LCTIME91= 'Dur of oth impair/prob (2): # of units'
   LCUNIT91= 'Dur of oth impair/prob (2): Time unit'
   LCDURA91= 'Dur of oth impair/prob (2) (in years)'
   LCDURB91= 'Dur of oth impair/prob (2) recode 2'
   LCCHRC91= 'Other impair/prob (2) condition status'
   LAHCA1  = 'Vision problem'
   LAHCA2  = 'Hearing problem'
   LAHCA3  = 'Arthritis/rheumatism'
   LAHCA4  = 'Back/neck problem'
   LAHCA5  = 'Fracture/bone/joint injury'
   LAHCA6  = 'Other injury'
   LAHCA7  = 'Heart problem'
   LAHCA8  = 'Stroke'
   LAHCA9  = 'Hypertension/high blood pressure'
   LAHCA10 = 'Diabetes'
   LAHCA11 = 'Lung/breathing prob/asthma/emphysema'
   LAHCA12 = 'Cancer'
   LAHCA13 = 'Birth defect'
   LAHCA14 = 'Mental retardation'
   LAHCA15 = 'Otr developmental prob/cerebral palsy'
   LAHCA16 = 'Senility/dementia/alzheimers'
   LAHCA17 = 'Depression/anxiety/emotional problem'
   LAHCA18 = 'Weight problem/overweight/obesity'
   LAHCA19 = 'Missing or amputated limb/finger/digit'
   LAHCA20 = 'Musculoskeletal/connective tissue prob'
   LAHCA21 = 'Circulation problem'
   LAHCA22 = 'Endocrine/nutritional/metabolic prob'
   LAHCA23 = 'Nervous system/sensory organ condition'
   LAHCA24 = 'Digestive system problem'
   LAHCA25 = 'Genitourinary system problem'
   LAHCA26 = 'Skin/subcutaneous system problem'
   LAHCA27 = 'Blood or blood-forming organ problem'
   LAHCA28 = 'Benign tumor/cyst'
   LAHCA29 = 'Alcohol/drug/substance abuse problem'
   LAHCA30 = 'Otr mental prob/ADD/bipolar/schizophreni'
   LAHCA31 = 'Surgical after-effects/medical treatment'
   LAHCA32 = '''Old age''/elderly/aging-related problem'
   LAHCA33 = 'Fatigue/tiredness/weakness'
   LAHCA34 = 'Pregnancy-related problem'
   LAHCA90 = 'Other prob 1, not elsewhere classified'
   LAHCA91 = 'Other prob 2, not elsewhere classified'
   LATIME1 = 'Duration of vision prob: # of units'
   LAUNIT1 = 'Duration of vision prob: Time unit'
   LADURA1 = 'Duration of vision prob (in years)'
   LADURB1 = 'Duration of vision prob recode 2'
   LACHRC1 = 'Vision problem condition status'
   LATIME2 = 'Duration of hearing prob: # of units'
   LAUNIT2 = 'Duration of hearing prob: Time unit'
   LADURA2 = 'Duration of hearing prob (in years)'
   LADURB2 = 'Duration of hearing prob recode 2'
   LACHRC2 = 'Hearing problem condition status'
   LATIME3 = 'Duration of arthritis/rheum: # of units'
   LAUNIT3 = 'Duration of arthritis/rheum: Time unit'
   LADURA3 = 'Duration of arthritis/rheum (in years)'
   LADURB3 = 'Duration of arthritis/rheum recode 2'
   LACHRC3 = 'Arthritis/rheum condition status'
   LATIME4 = 'Duration of back/neck prob: # of units'
   LAUNIT4 = 'Duration of back/neck prob: Time unit'
   LADURA4 = 'Duration of back/neck prob (in years)'
   LADURB4 = 'Duration of back/neck prob recode 2'
   LACHRC4 = 'Back/neck problem condition status'
   LATIME5 = 'Dur of fract/bone/joint inj: # of units'
   LAUNIT5 = 'Dur of fract/bone/joint inj: Time unit'
   LADURA5 = 'Dur of fract/bone/joint inj (in years)'
   LADURB5 = 'Dur of fract/bone/joint inj recode 2'
   LACHRC5 = 'Fract/bone/joint inj condition status'
   LATIME6 = 'Duration of other injury: # of units'
   LAUNIT6 = 'Duration of other injury: Time unit'
   LADURA6 = 'Duration of other injury (in years)'
   LADURB6 = 'Duration of other injury recode 2'
   LACHRC6 = 'Other injury condition status'
   LATIME7 = 'Duration of heart prob: # of units'
   LAUNIT7 = 'Duration of heart prob: Time unit'
   LADURA7 = 'Duration of heart prob (in years)'
   LADURB7 = 'Duration of heart prob recode 2'
   LACHRC7 = 'Heart problem condition status'
   LATIME8 = 'Duration of stroke: # of units'
   LAUNIT8 = 'Duration of stroke: Time unit'
   LADURA8 = 'Duration of stroke (in years)'
   LADURB8 = 'Duration of stroke recode 2'
   LACHRC8 = 'Stroke condition status'
   LATIME9 = 'Duration of hypertension: # of units'
   LAUNIT9 = 'Duration of hypertension: Time unit'
   LADURA9 = 'Duration of hypertension (in years)'
   LADURB9 = 'Duration of hypertension recode 2'
   LACHRC9 = 'Hypertension condition status'
   LATIME10= 'Duration of diabetes: # of units'
   LAUNIT10= 'Duration of diabetes: Time unit'
   LADURA10= 'Duration of diabetes (in years)'
   LADURB10= 'Duration of diabetes recode 2'
   LACHRC10= 'Diabetes condition status'
   LATIME11= 'Duration of lung/breath prob: # of units'
   LAUNIT11= 'Duration of lung/breath prob: Time unit'
   LADURA11= 'Duration of lung/breath prob (in years)'
   LADURB11= 'Duration of lung/breath prob recode 2'
   LACHRC11= 'Lung/breath prob condition status'
   LATIME12= 'Duration of cancer: # of units'
   LAUNIT12= 'Duration of cancer: Time unit'
   LADURA12= 'Duration of cancer (in years)'
   LADURB12= 'Duration of cancer recode 2'
   LACHRC12= 'Cancer condition status'
   LATIME13= 'Duration of birth defect: # of units'
   LAUNIT13= 'Duration of birth defect: Time unit'
   LADURA13= 'Duration of birth defect (in years)'
   LADURB13= 'Duration of birth defect recode 2'
   LACHRC13= 'Birth defect condition status'
   LATIME14= 'Dur of mental retardation: # of units'
   LAUNIT14= 'Dur of mental retardation: Time unit'
   LADURA14= 'Dur of mental retardation (in years)'
   LADURB14= 'Duration of mental retardation recode 2'
   LACHRC14= 'Mental retardation condition status'
   LATIME15= 'Duration of otr dev prob: # of units'
   LAUNIT15= 'Duration of otr dev prob: Time unit'
   LADURA15= 'Duration of otr dev prob (in years)'
   LADURB15= 'Duration of otr dev prob recode 2'
   LACHRC15= 'Otr dev problem condition status'
   LATIME16= 'Duration of senility: # of units'
   LAUNIT16= 'Duration of senility: Time unit'
   LADURA16= 'Duration of senility (in years)'
   LADURB16= 'Duration of senility recode 2'
   LACHRC16= 'Senility condition status'
   LATIME17= 'Dur of dep/anx/emot prob: # of units'
   LAUNIT17= 'Duration of dep/anx/emot prob: Time unit'
   LADURA17= 'Duration of dep/anx/emot prob (in years)'
   LADURB17= 'Duration of dep/anx/emot prob recode 2'
   LACHRC17= 'Dep/anx/emot problem condition status'
   LATIME18= 'Duration of weight prob: # of units'
   LAUNIT18= 'Duration of weight prob: Time unit'
   LADURA18= 'Duration of weight prob (in years)'
   LADURB18= 'Duration of weight prob recode 2'
   LACHRC18= 'Weight problem condition status'
   LATIME19= 'Dur of miss limb/amputation: # of units'
   LAUNIT19= 'Dur of miss limb/amputation: Time unit'
   LADURA19= 'Dur of miss limb/amputation (in years)'
   LADURB19= 'Dur of miss limb/amputation recode 2'
   LACHRC19= 'Missing limb/amputation condition status'
   LATIME20= 'Dur of musculoskeletal prob: # of units'
   LAUNIT20= 'Dur of musculoskeletal prob: Time unit'
   LADURA20= 'Dur of musculoskeletal prob: (in years)'
   LADURB20= 'Dur of musculoskeletal prob recode 2'
   LACHRC20= 'Musculoskeletal problem condition status'
   LATIME21= 'Duration of circulatory prob: # of units'
   LAUNIT21= 'Duration of circulatory prob: Time unit'
   LADURA21= 'Duration of circulatory prob (in years)'
   LADURB21= 'Duration of circulatory prob recode 2'
   LACHRC21= 'Circulatory problem condition status'
   LATIME22= 'Duration of endocrine prob: # of units'
   LAUNIT22= 'Duration of endocrine problem: Time unit'
   LADURA22= 'Duration of endocrine problem (in years)'
   LADURB22= 'Duration of endocrine problem recode 2'
   LACHRC22= 'Endocrine problem condition status'
   LATIME23= 'Duration of nervous sys cond: # of units'
   LAUNIT23= 'Duration of nervous sys cond: Time unit'
   LADURA23= 'Duration of nervous sys cond (in years)'
   LADURB23= 'Duration of nervous sys cond recode 2'
   LACHRC23= 'Nervous sys condition status'
   LATIME24= 'Dur of digestive prob: # of units'
   LAUNIT24= 'Dur of digestive prob: Time unit'
   LADURA24= 'Dur of digestive prob (in years)'
   LADURB24= 'Duration of digestive prob recode 2'
   LACHRC24= 'Digestive problem condition status'
   LATIME25= 'Dur of genitourinary prob: # of units'
   LAUNIT25= 'Dur of genitourinary prob: Time unit'
   LADURA25= 'Dur of genitourinary prob (in years)'
   LADURB25= 'Duration of genitourinary prob recode 2'
   LACHRC25= 'Genitourinary prob condition status'
   LATIME26= 'Duration of skin problem: # of units'
   LAUNIT26= 'Duration of skin problem: Time unit'
   LADURA26= 'Duration of skin problem (in years)'
   LADURB26= 'Duration of skin problem recode 2'
   LACHRC26= 'Skin problem condition status'
   LATIME27= 'Duration of blood problem: # of units'
   LAUNIT27= 'Duration of blood problem: Time unit'
   LADURA27= 'Duration of blood problem (in years)'
   LADURB27= 'Blood problem recode 2'
   LACHRC27= 'Blood problem condition status'
   LATIME28= 'Duration of benign tumor: # of units'
   LAUNIT28= 'Duration of benign tumor: Time unit'
   LADURA28= 'Duration of benign tumor (in years)'
   LADURB28= 'Duration of benign tumor recode 2'
   LACHRC28= 'Benign tumor condition status'
   LATIME29= 'Dur of alcohol/drug prob: # of units'
   LAUNIT29= 'Duration of alcohol/drug prob: Time unit'
   LADURA29= 'Duration of alcohol/drug prob (in years)'
   LADURB29= 'Duration of alcohol/drug prob recode 2'
   LACHRC29= 'Alcohol or drug prob condition status'
   LATIME30= 'Duration of oth mental prob: # of units'
   LAUNIT30= 'Duration of oth mental prob: Time unit'
   LADURA30= 'Duration of oth mental prob (in years)'
   LADURB30= 'Duration of oth mental prob recode 2'
   LACHRC30= 'Oth mental prob condition status'
   LATIME31= 'Dur of surg after-effects: # of units'
   LAUNIT31= 'Dur of surg after-effects: Time unit'
   LADURA31= 'Dur of surg after-effects (in years)'
   LADURB31= 'Duration of surg after-effects recode 2'
   LACHRC31= 'Surgical after-effects condition status'
   LATIME32= 'Duration of ''old age'': # of units'
   LAUNIT32= 'Duration of ''old age'': Time unit'
   LADURA32= 'Duration of ''old age'' (in years)'
   LADURB32= 'Duration of ''old age'' recode 2'
   LACHRC32= '''Old age'' condition status'
   LATIME33= 'Duration of fatigue prob: # of units'
   LAUNIT33= 'Duration of fatigue prob: Time unit'
   LADURA33= 'Duration of fatigue prob (in years)'
   LADURB33= 'Duration of fatigue prob recode 2'
   LACHRC33= 'Fatigue problem condition status'
   LATIME34= 'Dur of preg-related prob: # of units'
   LAUNIT34= 'Duration of preg-related prob: Time unit'
   LADURA34= 'Duration of preg-related prob (in years)'
   LADURB34= 'Duration of preg-related prob recode 2'
   LACHRC34= 'Pregnancy-related prob condition status'
   LATIME90= 'Dur of oth N.E.C. prob (1): # of units'
   LAUNIT90= 'Dur of oth N.E.C. prob (1): Time unit'
   LADURA90= 'Dur of oth N.E.C. prob (1) (in years)'
   LADURB90= 'Dur of oth N.E.C. prob (1) recode 2'
   LACHRC90= 'Other N.E.C. prob (1) condition status'
   LATIME91= 'Dur of oth N.E.C. prob (2): # of units'
   LAUNIT91= 'Dur of oth N.E.C. prob (2): Time unit'
   LADURA91= 'Dur of oth N.E.C. prob (2) (in years)'
   LADURB91= 'Dur of oth N.E.C. prob (2) recode 2'
   LACHRC91= 'Other N.E.C. prob (2) condition status'
   LCONDRT = 'Chronic cond rec for person with LA'
   LACHRONR= 'Lim of activ recode by chron cond status'
   PHSTAT  = 'Reported health status'
   PDMED12M= 'Was med care delayed for - - (cost), 12m'
   PNMED12M= 'Did--need+NOT get med care (cost), 12m'
   PHOSPYR = 'Was - - in a hospital OVERNIGHT, 12m'
   HOSPNO  = 'Number of times in hosp overnight, 12m'
   HPNITE  = 'Number of nights in hospital, 12m'
   PHCHM2W = 'Did - - rec HOME care by hlth prof, 2 wk'
   PHCHMN2W= 'Number of HOME visits by hlth prof, 2wk'
   PHCPH2WR= 'Did--get adv/test results by phone, 2wk'
   PHCPHN2W= 'Number of PHONE calls to hlth prof, 2wk'
   PHCDV2W = 'Did - - see hlth prof in office etc, 2wk'
   PHCDVN2W= 'Number of times VISITED hlth prof, 2wk'
   P10DVYR = 'Did - - receive care 10+ times, 12m'
   HIKINDA = 'Private hlth ins from employer or work'
   HIKINDB = 'Private hlth ins purchased directly'
   HIKINDC = 'Private health insurance through gov/com'
   HIKINDD = 'Medicare'
   HIKINDE = 'Medi-Gap'
   HIKINDF = 'Medicaid'
   HIKINDG = 'Children''s Health Insurance Program'
   HIKINDH = 'Military hlth care/VA'
   HIKINDI = 'TRICARE/CHAMPUS/CHAMP-VA'
   HIKINDJ = 'Indian Health Service'
   HIKINDK = 'State-sponsored health plan'
   HIKINDL = 'Other government program'
   HIKINDM = 'Single service plan'
   HIKINDN = 'No Health Insurance'
   MEDICARE= 'Medicare coverage recode'
   MCPART  = 'Type of Medicare coverage'
   MCCHOICE= 'Enrolled in Medicare Plus Choice'
   MCHMO   = 'Is - - signed up with an HMO?'
   MCNAME  = 'Type of Medicare HMO'
   MCREF   = 'Need a referral for special care'
   MCPAYPRE= 'More comprehensive benefit plan'
   MEDICAID= 'Medicaid coverage recode'
   MACHMD  = 'Any doc, choose from list, doc assigned'
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
   PRIVATE = 'Private health insurance coverage recode'
   HITYPE1 = 'Name of plan (Plan 1)'
   WHONAM1 = 'Plan in whose name (Plan 1)'
   PLNWRK1 = 'Originally thrgh work or union (Plan 1)'
   PLNPAY11= 'Paid for by self or family (Plan 1)'
   PLNPAY21= 'Paid for by employer or union (Plan 1)'
   PLNPAY31= 'Paid by someone outside household Plan 1'
   PLNPAY41= 'Paid for by Medicare (Plan 1)'
   PLNPAY51= 'Paid for by Medicaid (Plan 1)'
   PLNPAY61= 'Paid for by CHIP (Plan 1)'
   PLNPAY71= 'Paid for by government program (Plan 1)'
   HICOSTR1= 'Out-of-pocket premium cost (Plan 1)'
   PLNMGD1 = 'Type of plan (Plan 1)'
   MGCHMD1 = 'Doctor choice (Plan 1)'
   MGPRMD1 = 'Preferred list (Plan 1)'
   MGPYMD1 = 'Out of plan use (Plan 1)'
   MGPREF1 = 'Private referral (plan 1)'
   HITYPE2 = 'Name of plan (Plan 2)'
   WHONAM2 = 'Plan in whose name (Plan 2)'
   PLNWRK2 = 'Originally thrgh work or union (Plan 2)'
   PLNPAY12= 'Paid for by self or family (Plan 2)'
   PLNPAY22= 'Paid for by employer or union (Plan 2)'
   PLNPAY32= 'Paid by someone outside household Plan 2'
   PLNPAY42= 'Paid for by Medicare (Plan 2)'
   PLNPAY52= 'Paid for by Medicaid (Plan 2)'
   PLNPAY62= 'Paid for by CHIP (Plan 2)'
   PLNPAY72= 'Paid for by government program (Plan 2)'
   HICOSTR2= 'Out-of-pocket premium cost (Plan 2)'
   PLNMGD2 = 'Type of plan (Plan 2)'
   MGCHMD2 = 'Doctor choice (Plan 2)'
   MGPRMD2 = 'Preferred list (Plan 2)'
   MGPYMD2 = 'Out of plan use (Plan 2)'
   MGPREF2 = 'Private referral (plan 2)'
   HITYPE3 = 'Name of plan (Plan 3)'
   WHONAM3 = 'Plan in whose name (Plan 3)'
   PLNWRK3 = 'Originally thrgh work or union (Plan 3)'
   PLNPAY13= 'Paid for by self or family (Plan 3)'
   PLNPAY23= 'Paid for by employer or union (Plan 3)'
   PLNPAY33= 'Paid by someone outside household Plan 3'
   PLNPAY43= 'Paid for by Medicare (Plan 3)'
   PLNPAY53= 'Paid for by Medicaid (Plan 3)'
   PLNPAY63= 'Paid for by CHIP (Plan 3)'
   PLNPAY73= 'Paid for by government program (Plan 3)'
   HICOSTR3= 'Out-of-pocket premium cost (Plan 3)'
   PLNMGD3 = 'Type of plan (Plan 3)'
   MGCHMD3 = 'Doctor choice (Plan 3)'
   MGPRMD3 = 'Preferred list (Plan 3)'
   MGPYMD3 = 'Out of plan use (Plan 3)'
   MGPREF3 = 'Private referral (plan 3)'
   HITYPE4 = 'Name of plan (Plan 4)'
   WHONAM4 = 'Plan in whose name (Plan 4)'
   PLNWRK4 = 'Originally thrgh work or union (Plan 4)'
   PLNPAY14= 'Paid for by self or family (Plan 4)'
   PLNPAY24= 'Paid for by employer or union (Plan 4)'
   PLNPAY34= 'Paid by someone outside household Plan 4'
   PLNPAY44= 'Paid for by Medicare (Plan 4)'
   PLNPAY54= 'Paid for by Medicaid (Plan 4)'
   PLNPAY64= 'Paid for by CHIP (Plan 4)'
   PLNPAY74= 'Paid for by government program (Plan 4)'
   HICOSTR4= 'Out-of-pocket premium cost (Plan 4)'
   PLNMGD4 = 'Type of plan (Plan 4)'
   MGCHMD4 = 'Doctor choice (Plan 4)'
   MGPRMD4 = 'Preferred list (Plan 4)'
   MGPYMD4 = 'Out of plan use (Plan 4)'
   MGPREF4 = 'Private referral (plan 4)'
   IHS     = 'Indian Health Service Recode'
   MILITARY= 'Military coverage recode'
   CHIP    = 'Children''s Hlth Ins Program Recode'
   OTHERPUB= 'Other State-Sponsored Health Plan Recode'
   OTHERGOV= 'Other government programs Recode'
   NOTCOV  = 'Cov stat as used in Health United States'
   HILAST  = 'How long since last had hlth coverage'
   HISTOP1 = 'Lost job or changed employers'
   HISTOP2 = 'Divorced/sep/death of spouse or parent'
   HISTOP3 = 'Ineligible because of age/left school'
   HISTOP4 = 'Employer not offer/not eligible for cov'
   HISTOP5 = 'Cost is too high'
   HISTOP6 = 'Insurance company refused coverage'
   HISTOP7 = 'Medicaid/Medi plan stop after pregnancy'
   HISTOP8 = 'Lost Medicaid new job/increase in income'
   HISTOP9 = 'Lost Medicaid (other)'
   HISTOP10= 'Other'
   HISTOP11= 'Never had health insurance'
   HISTOP12= 'Moved from another county/state/country'
   HISTOP13= 'Self-employed'
   HISTOP14= 'No need for it/chooses not to have'
   HISTOP15= 'Got married'
   HINOTYR = 'No hlth coverage during past 12 months'
   HINOTMYR= 'Months without coverage in past 12 month'
   HCSPFYR = 'Amount family spent for medical care'
   REGIONBR= 'Geographic region of birth recode'
   GEOBRTH = 'Geographic place of birth recode'
   YRSINUS = 'Years that -- has been in the U.S.'
   CITIZENP= 'Citizenship Status'
   HEADST  = 'Now attending Head Start?'
   HEADSTV1= 'Ever attended Head Start?'
   EDUC    = 'Highest level of school completed'
   EDUC_R1 = 'Education Recode'
   MILTRYDS= 'Ever honorably discharged (active duty)?'
   DOINGLW1= 'What was -- doing last week?'
   WHYNOWK1= 'Main reason for not working last week'
   WRKHRS  = 'Total hrs worked last week/usually'
   WRKFTALL= 'Does -- usually work full time?'
   WRKLYR1 = 'Did -- work for pay in last year?'
   WRKMYR  = 'Months in {last yr} person had 1+ jobs'
   MAJR_ACT= 'Major activity in last week'
   ERNYR_P = '{Person''s} total earnings in 2002'
   HIEMPOF = 'Was health ins offered thru workplace?'
   PSAL    = 'Rec inc from wage/sal (last CY)'
   PSEINC  = 'Rec inc from self-employment (last CY)'
   PSSRR   = 'Rec inc from SS or RR (last CY)'
   PSSRRDB = 'Rec''d SS or RR a disability benefit'
   PSSRRD  = 'Rec''d benefit due to disability'
   PPENS   = 'Rec inc from otr disab pens (last CY)'
   POPENS  = 'Rec inc from any otr pens (last CY)'
   PSSI    = 'Rec''d inc from SSI (last CY)'
   PSSID   = 'Rec''d SSI due to disability'
   PTANF   = 'Rec''d inc from Welfare/TANF (last CY)'
   POWBEN  = 'Rec''d otr govt assistance (last CY)'
   PINTRSTR= 'Rec int fr sav/bank accts (last CY)'
   PDIVD   = 'Rec div from stocks/funds/etc. (last CY)'
   PCHLDSP = 'Rec''d inc from child support (last CY)'
   PINCOT  = 'Rec''d inc from any other source (last CY'
   INCGRP  = 'Total Combined Family Income (Grouped)'
   AB_BL20K= 'Fam inc at/above vs. below $20,000'
   RAT_CAT = 'Ratio of fam inc to poverty threshold'
   HOUSEOWN= 'Home Tenure Status'
   FGAH    = 'Paying lower rent due to govt prgm'
   PSSAPL  = 'Ever applied for SSI'
   PSDAPL  = 'Ever applied for SSDI'
   TANFMYR = 'Months rec Welfare/TANF (last CY)'
   PFSTP   = 'Person auth to rec food stmps (last CY)'
   FSTPMYR = 'Months rec food stamps (last CY)'
   ELIGPWIC= 'Anyone age-eligible for the WIC program?'
   PWIC    = 'Rec''d WIC benefits (last CY)'
   WIC_FLAG= 'WIC recipient age-eligible'
        ;


* SAS FORMAT STATEMENT;

/*
  FORMAT RECTYPE RECTYPE. SRVY_YR SRVY_YR. INTV_QRT INTV_QRT.
         SEX SEX. AGE_P AGE_P. R_AGE1 R_AGE1ff.
         R_AGE2 R_AGE2ff. DOB_M $DOB_M. DOB_Y_P $DOB_Y_P.
         ORIGIN_I ORIGIN_I. ORIGIMPT ORIGIMPT. HISPAN_I HISPAN_I.
         HISPIMPT HISPIMPT. RACERPI2 RACERPIf. RACEIMP2 RACEIMPf.
         MRACRPI2 MRACRPIf. MRACBPI2 MRACBPIf. RACRECI2 RACRECIf.
         HISCODI2 HISCODIf. ERIMPFLG ERIMPFLG. R_MARITL R_MARITL.
         COHAB1 COHAB1ff. COHAB2 COHAB2ff. LG_MSTAT LG_MSTAT.
         CDCMSTAT CDCMSTAT. RRP RRP. HH_REF $HH_REF.
         HHREFLG $HHREFLG. FRRP FRRP. FM_REF $FM_REF.
         FMREFLG $FMREFLG. FM_RESP FM_RESP. FMRPFLG $FMRPFLG.
         SIB_DEG SIB_DEG. MOTHER $MOTHER. MOM_DEG MOM_DEG.
         FATHER $FATHER. DAD_DEG DAD_DEG. GUARD $GUARD.
         PARENTS PARENTS. MOM_ED MOM_ED. DAD_ED DAD_ED.
         FM_TYPE FM_TYPE. NOWAF NOWAF. ASTATFLG ASTATFLG.
         CSTATFLG CSTATFLG. IMMUNFLG IMMUNFLG. REGION REGION.
         PLAPLYLM PLAPLYLM. PLAPLYUN PLAPLYUN. PSPEDEIS PSPEDEIS.
         PSPEDEM PSPEDEM. PLAADL PLAADL. LABATH LABATH.
         LADRESS LADRESS. LAEAT LAEAT. LABED LABED.
         LATOILT LATOILT. LAHOME LAHOME. PLAIADL PLAIADL.
         PLAWKNOW PLAWKNOW. PLAWKLIM PLAWKLIM. PLAWALK PLAWALK.
         PLAREMEM PLAREMEM. PLIMANY PLIMANY. LA1AR LA1AR.
         LAHCC1 LAHCC1ff. LAHCC2 LAHCC2ff. LAHCC3 LAHCC3ff.
         LAHCC4 LAHCC4ff. LAHCC5 LAHCC5ff. LAHCC6 LAHCC6ff.
         LAHCC7 LAHCC7ff. LAHCC8 LAHCC8ff. LAHCC9 LAHCC9ff.
         LAHCC10 LAHCC10f. LAHCC11 LAHCC11f. LAHCC12 LAHCC12f.
         LAHCC13 LAHCC13f. LAHCC90 LAHCC90f. LAHCC91 LAHCC91f.
         LCTIME1 LCTIME1f. LCUNIT1 LCUNIT1f. LCDURA1 LCDURA1f.
         LCDURB1 LCDURB1f. LCCHRC1 LCCHRC1f. LCTIME2 LCTIME2f.
         LCUNIT2 LCUNIT2f. LCDURA2 LCDURA2f. LCDURB2 LCDURB2f.
         LCCHRC2 LCCHRC2f. LCTIME3 LCTIME3f. LCUNIT3 LCUNIT3f.
         LCDURA3 LCDURA3f. LCDURB3 LCDURB3f. LCCHRC3 LCCHRC3f.
         LCTIME4 LCTIME4f. LCUNIT4 LCUNIT4f. LCDURA4 LCDURA4f.
         LCDURB4 LCDURB4f. LCCHRC4 LCCHRC4f. LCTIME5 LCTIME5f.
         LCUNIT5 LCUNIT5f. LCDURA5 LCDURA5f. LCDURB5 LCDURB5f.
         LCCHRC5 LCCHRC5f. LCTIME6 LCTIME6f. LCUNIT6 LCUNIT6f.
         LCDURA6 LCDURA6f. LCDURB6 LCDURB6f. LCCHRC6 LCCHRC6f.
         LCTIME7 LCTIME7f. LCUNIT7 LCUNIT7f. LCDURA7 LCDURA7f.
         LCDURB7 LCDURB7f. LCCHRC7 LCCHRC7f. LCTIME8 LCTIME8f.
         LCUNIT8 LCUNIT8f. LCDURA8 LCDURA8f. LCDURB8 LCDURB8f.
         LCCHRC8 LCCHRC8f. LCTIME9 LCTIME9f. LCUNIT9 LCUNIT9f.
         LCDURA9 LCDURA9f. LCDURB9 LCDURB9f. LCCHRC9 LCCHRC9f.
         LCTIME10 LCTIME0f. LCUNIT10 LCUNIT0f. LCDURA10 LCDURA0f.
         LCDURB10 LCDURB0f. LCCHRC10 LCCHRC0f. LCTIME11 LCTIM10f.
         LCUNIT11 LCUNI10f. LCDURA11 LCDUR10f. LCDURB11 LCDUR11f.
         LCCHRC11 LCCHR10f. LCTIME12 LCTIM11f. LCUNIT12 LCUNI11f.
         LCDURA12 LCDUR12f. LCDURB12 LCDUR13f. LCCHRC12 LCCHR11f.
         LCTIME13 LCTIM12f. LCUNIT13 LCUNI12f. LCDURA13 LCDUR14f.
         LCDURB13 LCDUR15f. LCCHRC13 LCCHR12f. LCTIME90 LCTIM13f.
         LCUNIT90 LCUNI13f. LCDURA90 LCDUR16f. LCDURB90 LCDUR17f.
         LCCHRC90 LCCHR13f. LCTIME91 LCTIM14f. LCUNIT91 LCUNI14f.
         LCDURA91 LCDUR18f. LCDURB91 LCDUR19f. LCCHRC91 LCCHR14f.
         LAHCA1 LAHCA1ff. LAHCA2 LAHCA2ff. LAHCA3 LAHCA3ff.
         LAHCA4 LAHCA4ff. LAHCA5 LAHCA5ff. LAHCA6 LAHCA6ff.
         LAHCA7 LAHCA7ff. LAHCA8 LAHCA8ff. LAHCA9 LAHCA9ff.
         LAHCA10 LAHCA10f. LAHCA11 LAHCA11f. LAHCA12 LAHCA12f.
         LAHCA13 LAHCA13f. LAHCA14 LAHCA14f. LAHCA15 LAHCA15f.
         LAHCA16 LAHCA16f. LAHCA17 LAHCA17f. LAHCA18 LAHCA18f.
         LAHCA19 LAHCA19f. LAHCA20 LAHCA20f. LAHCA21 LAHCA21f.
         LAHCA22 LAHCA22f. LAHCA23 LAHCA23f. LAHCA24 LAHCA24f.
         LAHCA25 LAHCA25f. LAHCA26 LAHCA26f. LAHCA27 LAHCA27f.
         LAHCA28 LAHCA28f. LAHCA29 LAHCA29f. LAHCA30 LAHCA30f.
         LAHCA31 LAHCA31f. LAHCA32 LAHCA32f. LAHCA33 LAHCA33f.
         LAHCA34 LAHCA34f. LAHCA90 LAHCA90f. LAHCA91 LAHCA91f.
         LATIME1 LATIME1f. LAUNIT1 LAUNIT1f. LADURA1 LADURA1f.
         LADURB1 LADURB1f. LACHRC1 LACHRC1f. LATIME2 LATIME2f.
         LAUNIT2 LAUNIT2f. LADURA2 LADURA2f. LADURB2 LADURB2f.
         LACHRC2 LACHRC2f. LATIME3 LATIME3f. LAUNIT3 LAUNIT3f.
         LADURA3 LADURA3f. LADURB3 LADURB3f. LACHRC3 LACHRC3f.
         LATIME4 LATIME4f. LAUNIT4 LAUNIT4f. LADURA4 LADURA4f.
         LADURB4 LADURB4f. LACHRC4 LACHRC4f. LATIME5 LATIME5f.
         LAUNIT5 LAUNIT5f. LADURA5 LADURA5f. LADURB5 LADURB5f.
         LACHRC5 LACHRC5f. LATIME6 LATIME6f. LAUNIT6 LAUNIT6f.
         LADURA6 LADURA6f. LADURB6 LADURB6f. LACHRC6 LACHRC6f.
         LATIME7 LATIME7f. LAUNIT7 LAUNIT7f. LADURA7 LADURA7f.
         LADURB7 LADURB7f. LACHRC7 LACHRC7f. LATIME8 LATIME8f.
         LAUNIT8 LAUNIT8f. LADURA8 LADURA8f. LADURB8 LADURB8f.
         LACHRC8 LACHRC8f. LATIME9 LATIME9f. LAUNIT9 LAUNIT9f.
         LADURA9 LADURA9f. LADURB9 LADURB9f. LACHRC9 LACHRC9f.
         LATIME10 LATIME0f. LAUNIT10 LAUNIT0f. LADURA10 LADURA0f.
         LADURB10 LADURB0f. LACHRC10 LACHRC0f. LATIME11 LATIM10f.
         LAUNIT11 LAUNI10f. LADURA11 LADUR10f. LADURB11 LADUR11f.
         LACHRC11 LACHR10f. LATIME12 LATIM11f. LAUNIT12 LAUNI11f.
         LADURA12 LADUR12f. LADURB12 LADUR13f. LACHRC12 LACHR11f.
         LATIME13 LATIM12f. LAUNIT13 LAUNI12f. LADURA13 LADUR14f.
         LADURB13 LADUR15f. LACHRC13 LACHR12f. LATIME14 LATIM13f.
         LAUNIT14 LAUNI13f. LADURA14 LADUR16f. LADURB14 LADUR17f.
         LACHRC14 LACHR13f. LATIME15 LATIM14f. LAUNIT15 LAUNI14f.
         LADURA15 LADUR18f. LADURB15 LADUR19f. LACHRC15 LACHR14f.
         LATIME16 LATIM15f. LAUNIT16 LAUNI15f. LADURA16 LADUR20f.
         LADURB16 LADUR21f. LACHRC16 LACHR15f. LATIME17 LATIM16f.
         LAUNIT17 LAUNI16f. LADURA17 LADUR22f. LADURB17 LADUR23f.
         LACHRC17 LACHR16f. LATIME18 LATIM17f. LAUNIT18 LAUNI17f.
         LADURA18 LADUR24f. LADURB18 LADUR25f. LACHRC18 LACHR17f.
         LATIME19 LATIM18f. LAUNIT19 LAUNI18f. LADURA19 LADUR26f.
         LADURB19 LADUR27f. LACHRC19 LACHR18f. LATIME20 LATIM19f.
         LAUNIT20 LAUNI19f. LADURA20 LADUR28f. LADURB20 LADUR29f.
         LACHRC20 LACHR19f. LATIME21 LATIM20f. LAUNIT21 LAUNI20f.
         LADURA21 LADUR30f. LADURB21 LADUR31f. LACHRC21 LACHR20f.
         LATIME22 LATIM21f. LAUNIT22 LAUNI21f. LADURA22 LADUR32f.
         LADURB22 LADUR33f. LACHRC22 LACHR21f. LATIME23 LATIM22f.
         LAUNIT23 LAUNI22f. LADURA23 LADUR34f. LADURB23 LADUR35f.
         LACHRC23 LACHR22f. LATIME24 LATIM23f. LAUNIT24 LAUNI23f.
         LADURA24 LADUR36f. LADURB24 LADUR37f. LACHRC24 LACHR23f.
         LATIME25 LATIM24f. LAUNIT25 LAUNI24f. LADURA25 LADUR38f.
         LADURB25 LADUR39f. LACHRC25 LACHR24f. LATIME26 LATIM25f.
         LAUNIT26 LAUNI25f. LADURA26 LADUR40f. LADURB26 LADUR41f.
         LACHRC26 LACHR25f. LATIME27 LATIM26f. LAUNIT27 LAUNI26f.
         LADURA27 LADUR42f. LADURB27 LADUR43f. LACHRC27 LACHR26f.
         LATIME28 LATIM27f. LAUNIT28 LAUNI27f. LADURA28 LADUR44f.
         LADURB28 LADUR45f. LACHRC28 LACHR27f. LATIME29 LATIM28f.
         LAUNIT29 LAUNI28f. LADURA29 LADUR46f. LADURB29 LADUR47f.
         LACHRC29 LACHR28f. LATIME30 LATIM29f. LAUNIT30 LAUNI29f.
         LADURA30 LADUR48f. LADURB30 LADUR49f. LACHRC30 LACHR29f.
         LATIME31 LATIM30f. LAUNIT31 LAUNI30f. LADURA31 LADUR50f.
         LADURB31 LADUR51f. LACHRC31 LACHR30f. LATIME32 LATIM31f.
         LAUNIT32 LAUNI31f. LADURA32 LADUR52f. LADURB32 LADUR53f.
         LACHRC32 LACHR31f. LATIME33 LATIM32f. LAUNIT33 LAUNI32f.
         LADURA33 LADUR54f. LADURB33 LADUR55f. LACHRC33 LACHR32f.
         LATIME34 LATIM33f. LAUNIT34 LAUNI33f. LADURA34 LADUR56f.
         LADURB34 LADUR57f. LACHRC34 LACHR33f. LATIME90 LATIM34f.
         LAUNIT90 LAUNI34f. LADURA90 LADUR58f. LADURB90 LADUR59f.
         LACHRC90 LACHR34f. LATIME91 LATIM35f. LAUNIT91 LAUNI35f.
         LADURA91 LADUR60f. LADURB91 LADUR61f. LACHRC91 LACHR35f.
         LCONDRT LCONDRT. LACHRONR LACHRONR. PHSTAT PHSTAT.
         PDMED12M PDMED12M. PNMED12M PNMED12M. PHOSPYR PHOSPYR.
         HOSPNO HOSPNO. HPNITE HPNITE. PHCHM2W PHCHM2W.
         PHCHMN2W PHCHMN2W. PHCPH2WR PHCPH2WR. PHCPHN2W PHCPHN2W.
         PHCDV2W PHCDV2W. PHCDVN2W PHCDVN2W. P10DVYR P10DVYR.
         HIKINDA HIKINDA. HIKINDB HIKINDB. HIKINDC HIKINDC.
         HIKINDD HIKINDD. HIKINDE HIKINDE. HIKINDF HIKINDF.
         HIKINDG HIKINDG. HIKINDH HIKINDH. HIKINDI HIKINDI.
         HIKINDJ HIKINDJ. HIKINDK HIKINDK. HIKINDL HIKINDL.
         HIKINDM HIKINDM. HIKINDN HIKINDN. MEDICARE MEDICARE.
         MCPART MCPART. MCCHOICE MCCHOICE. MCHMO MCHMO.
         MCNAME MCNAME. MCREF MCREF. MCPAYPRE MCPAYPRE.
         MEDICAID MEDICAID. MACHMD MACHMD. MAPCMD MAPCMD.
         MAREF MAREF. SINGLE SINGLE. SSTYPEA SSTYPEA.
         SSTYPEB SSTYPEB. SSTYPEC SSTYPEC. SSTYPED SSTYPED.
         SSTYPEE SSTYPEE. SSTYPEF SSTYPEF. SSTYPEG SSTYPEG.
         SSTYPEH SSTYPEH. SSTYPEI SSTYPEI. SSTYPEJ SSTYPEJ.
         SSTYPEK SSTYPEK. SSTYPEL SSTYPEL. PRIVATE PRIVATE.
         HITYPE1 HITYPE1f. WHONAM1 WHONAM1f. PLNWRK1 PLNWRK1f.
         PLNPAY11 PLNPAY1f. PLNPAY21 PLNPAY2f. PLNPAY31 PLNPAY3f.
         PLNPAY41 PLNPAY4f. PLNPAY51 PLNPAY5f. PLNPAY61 PLNPAY6f.
         PLNPAY71 PLNPAY7f. HICOSTR1 HICOSTRf. PLNMGD1 PLNMGD1f.
         MGCHMD1 MGCHMD1f. MGPRMD1 MGPRMD1f. MGPYMD1 MGPYMD1f.
         MGPREF1 MGPREF1f. HITYPE2 HITYPE2f. WHONAM2 WHONAM2f.
         PLNWRK2 PLNWRK2f. PLNPAY12 PLNPAY0f. PLNPAY22 PLNPAY8f.
         PLNPAY32 PLNPAY9f. PLNPAY42 PLNPA10f. PLNPAY52 PLNPA11f.
         PLNPAY62 PLNPA12f. PLNPAY72 PLNPA13f. HICOSTR2 HICOST0f.
         PLNMGD2 PLNMGD2f. MGCHMD2 MGCHMD2f. MGPRMD2 MGPRMD2f.
         MGPYMD2 MGPYMD2f. MGPREF2 MGPREF2f. HITYPE3 HITYPE3f.
         WHONAM3 WHONAM3f. PLNWRK3 PLNWRK3f. PLNPAY13 PLNPA14f.
         PLNPAY23 PLNPA15f. PLNPAY33 PLNPA16f. PLNPAY43 PLNPA17f.
         PLNPAY53 PLNPA18f. PLNPAY63 PLNPA19f. PLNPAY73 PLNPA20f.
         HICOSTR3 HICOST1f. PLNMGD3 PLNMGD3f. MGCHMD3 MGCHMD3f.
         MGPRMD3 MGPRMD3f. MGPYMD3 MGPYMD3f. MGPREF3 MGPREF3f.
         HITYPE4 HITYPE4f. WHONAM4 WHONAM4f. PLNWRK4 PLNWRK4f.
         PLNPAY14 PLNPA21f. PLNPAY24 PLNPA22f. PLNPAY34 PLNPA23f.
         PLNPAY44 PLNPA24f. PLNPAY54 PLNPA25f. PLNPAY64 PLNPA26f.
         PLNPAY74 PLNPA27f. HICOSTR4 HICOST2f. PLNMGD4 PLNMGD4f.
         MGCHMD4 MGCHMD4f. MGPRMD4 MGPRMD4f. MGPYMD4 MGPYMD4f.
         MGPREF4 MGPREF4f. IHS IHS. MILITARY MILITARY.
         CHIP CHIP. OTHERPUB OTHERPUB. OTHERGOV OTHERGOV.
         NOTCOV NOTCOV. HILAST HILAST. HISTOP1 HISTOP1f.
         HISTOP2 HISTOP2f. HISTOP3 HISTOP3f. HISTOP4 HISTOP4f.
         HISTOP5 HISTOP5f. HISTOP6 HISTOP6f. HISTOP7 HISTOP7f.
         HISTOP8 HISTOP8f. HISTOP9 HISTOP9f. HISTOP10 HISTOP0f.
         HISTOP11 HISTO10f. HISTOP12 HISTO11f. HISTOP13 HISTO12f.
         HISTOP14 HISTO13f. HISTOP15 HISTO14f. HINOTYR HINOTYR.
         HINOTMYR HINOTMYR. HCSPFYR HCSPFYR. REGIONBR REGIONBR.
         GEOBRTH GEOBRTH. YRSINUS YRSINUS. CITIZENP CITIZENP.
         HEADST HEADST. HEADSTV1 HEADSTVf. EDUC EDUC.
         EDUC_R1 EDUC_R1f. MILTRYDS MILTRYDS. DOINGLW1 DOINGLWf.
         WHYNOWK1 WHYNOWKf. WRKHRS WRKHRS. WRKFTALL WRKFTALL.
         WRKLYR1 WRKLYR1f. WRKMYR WRKMYR. MAJR_ACT MAJR_ACT.
         ERNYR_P ERNYR_P. HIEMPOF HIEMPOF. PSAL PSAL.
         PSEINC PSEINC. PSSRR PSSRR. PSSRRDB PSSRRDB.
         PSSRRD PSSRRD. PPENS PPENS. POPENS POPENS.
         PSSI PSSI. PSSID PSSID. PTANF PTANF.
         POWBEN POWBEN. PINTRSTR PINTRSTR. PDIVD PDIVD.
         PCHLDSP PCHLDSP. PINCOT PINCOT. INCGRP INCGRP.
         AB_BL20K AB_BL20K. RAT_CAT RAT_CAT. HOUSEOWN HOUSEOWN.
         FGAH FGAH. PSSAPL PSSAPL. PSDAPL PSDAPL.
         TANFMYR TANFMYR. PFSTP PFSTP. FSTPMYR FSTPMYR.
         ELIGPWIC ELIGPWIC. PWIC PWIC. WIC_FLAG WIC_FLAG.
          ;
*/

RUN ;
