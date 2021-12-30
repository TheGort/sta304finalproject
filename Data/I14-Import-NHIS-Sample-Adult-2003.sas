*-------------------------------------------------------------------------*
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 04222
 |                 NATIONAL HEALTH INTERVIEW SURVEY, 2003
 |                     (DATASET 0004:  SAMPLE ADULT)
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
 | "c:\temp\04222-0004Q-data.txt").
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
  VALUE RECSAD    30='(30) Sample Adult' ;
  VALUE SRVY_YR   2003='(2003) 2003' ;
  VALUE INTV_QRT  1='(1) Quarter 1' 2='(2) Quarter 2' 3='(3) Quarter 3' 4='(4) Quarter 4' ;
  VALUE SEX       1='(1) Male' 2='(2) Female' ;
  VALUE AGE_P     85='(85) 85+ years' ;
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
                  98='(98) Not Ascertained' 99='(99) Don''t know' ;
  VALUE AB_BL20K  1='(1) $20,000 or more' 2='(2) Less than $20,000' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE RAT_CAT   1='(1) Under .50' 2='(2) .50 to .74' 3='(3) .75 to .99'
                  4='(4) 1.00 to 1.24' 5='(5) 1.25 to 1.49' 6='(6) 1.50 to 1.74'
                  7='(7) 1.75 to 1.99' 8='(8) 2.00 to 2.49' 9='(9) 2.50 to 2.99'
                  10='(10) 3.00 to 3.49' 11='(11) 3.50 to 3.99' 12='(12) 4.00 to 4.49'
                  13='(13) 4.50 to 4.99' 14='(14) 5.00 and over' 96='(96) Undefinable'
                  99='(99) Unknown' ;
  VALUE R_MARITL  0='(0) Under 14 years' 1='(1) Married - spouse in household'
                  2='(2) Married - spouse not in household'
                  3='(3) Married - spouse in household unknown' 4='(4) Widowed'
                  5='(5) Divorced' 6='(6) Separated' 7='(7) Never married'
                  8='(8) Living with partner' 9='(9) Unknown marital status' ;
  VALUE REGION    1='(1) Northeast' 2='(2) Midwest' 3='(3) South' 4='(4) West' ;
  VALUE PROXYSA   1='(1) Proxy' 2='(2) Not proxy' 3='(3) Unknown' ;
  VALUE HYPEV     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HYPDIFV   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HYBPCKNO  0='(0) Never' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE HYBPCKTP  0='(0) Never' 1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE HYBPCKY   0='(0) Less than 1 year' 85='(85) 85+ years' 96='(96) Never' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE HYBPLEV   1='(1) Not told' 2='(2) High' 3='(3) Normal' 4='(4) Low' 5='(5) Borderline'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CLCKNO    0='(0) Never' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE CLCKTP    0='(0) Never' 1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CLCKY     0='(0) Less than 1 year' 85='(85) 85+ years' 96='(96) Never' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE CLHI      1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE CHDEV     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ANGEV     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MIEV      1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HRTEV     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE STREV     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE EPHEV     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASMEV    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASSTILL  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASMYR    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASMERYR  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASMHSP   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASMMC    1='(1) Yes' 2='(2) No' 3='(3) Still in hospital' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AWZMSWK   0='(0) None' 996='(996) Unable to do this activity' 997='(997) Refused'
                  998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE AWZPIN    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASMINST  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASMPMED  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASMCAN   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASMED    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASMDTP   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASWMP    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AASCLASS  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AAS_REC   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AAS_RES   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AAS_MON   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AAPENVLN  1='(1) Yes' 2='(2) No' 3='(3) Was told no changes needed' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AAPENVDO  0='(0) None' 1='(1) A little' 2='(2) Some' 3='(3) Most' 4='(4) All' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE ULCEV     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ULCYR     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE CANEV     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE CNKIND1f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAGE1f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIND2f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAGE2f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIND3f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAGE3f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIND4f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAGE4f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIND5f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAGE5f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIND6f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAGE6f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIND7f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAGE7f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIND8f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAGE8f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIND9f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAGE9f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIND0f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAGE0f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN10f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG10f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN11f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG11f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN12f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG12f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN13f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG13f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN14f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG14f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN15f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG15f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN16f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG16f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN17f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG17f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN18f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG18f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN19f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG19f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN20f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG20f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN21f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG21f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN22f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG22f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN23f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG23f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN24f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG24f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN25f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG25f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN26f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG26f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN27f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG27f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN28f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG28f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN29f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE CANAG29f  85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CNKIN30f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE BRCANDIG  1='(1) Found by myself by accident'
                  2='(2) Found by myself during a self breast examinatio'
                  3='(3) Found by my spouse or partner'
                  4='(4) Found by a physician during a routine breast ex'
                  5='(5) Found by a mammogram' 6='(6) Other - specify' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE DIBEV     1='(1) Yes' 2='(2) No' 3='(3) Borderline' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE DIBAGE    85='(85) 85+ years' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE DIFAGE2f  0='(0) Within past year' 85='(85) 85+ years'
                  96='(96) 1+ year(s) with diabetes and age is 85+' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t Know' ;
  VALUE INSLN     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE DIBPILL   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE DIBHP     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE DIBHPYR   0='(0) None' 365='(365) 365 or more times' 997='(997) Refused'
                  998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE DIBNDYR   0='(0) None' 365='(365) 365 or more times' 997='(997) Refused'
                  998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE DIBGLNO   0='(0) Never' 996='(996) Unable to do this activity' 997='(997) Refused'
                  998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE DIBGLTP   0='(0) Never' 1='(1) Day' 2='(2) Week' 3='(3) Month' 4='(4) Year'
                  6='(6) Unable to do this activity' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE DGLFREQW  0='(0) Less than one time per day' 95='(95) Never'
                  96='(96) Unable to do this activity' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE DIBA1CKN  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE DIBA1CCK  0='(0) Zero' 53='(53) 53 or more times' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE DIBA1CLL  1='(1) Less than 7' 2='(2) 7 or more, but not more than 8'
                  3='(3) More than 8, but not more than 9'
                  4='(4) More than 9, but not more than 10' 5='(5) More than 10'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE DIBA1CSL  1='(1) Less than 7' 2='(2) 8 or less' 3='(3) 9 or less' 4='(4) 10 or less'
                  5='(5) More than 10' 6='(6) No goal specified' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE DIBFTCK   0='(0) Zero' 53='(53) 53 or more times' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE DIBCKNO   0='(0) Never' 996='(996) Unable to do this type activity'
                  997='(997) Refused' 998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE DIBCKTP   0='(0) Never' 1='(1) Day' 2='(2) Week' 3='(3) Month' 4='(4) Year'
                  6='(6) Unable to do this type activity' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE DCKFREQW  0='(0) Less than once per week' 95='(95) Never'
                  96='(96) Unable to do this type activity' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE DIBEYCKL  1='(1) Less than 1 month' 2='(2) 1 to 12 months'
                  3='(3) 13 to 24 months' 4='(4) More than 2 years' 5='(5) Never'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AHAYFYR   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SINYR     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE CBRCHYR   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE KIDWKYR   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LIVYR     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE JNTSYMP   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE JMTHP1ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP2ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP3ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP4ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP5ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP6ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP7ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP8ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP9ff  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP10f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP11f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP12f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP13f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP14f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP15f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP16f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JMTHP17f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE JNTPN     97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE JNTCHR    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE JNTHP     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ARTH1fff  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ARTHWT    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ARTHPH    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ARTHCLS   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ARTHLMT   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ARTHWRK   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PAINECK   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PAINLB    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PAINLEG   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PAINFACE  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AMIGR     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ACOLD2W   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AINTIL2W  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PREGNOW   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HEARAID   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHEARST   1='(1) Good' 2='(2) Little trouble' 3='(3) Lot of trouble' 4='(4) Deaf'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AVISION   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ABLIND    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LUPPRT    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SAD       1='(1) ALL of the time' 2='(2) MOST of the time'
                  3='(3) SOME of the time' 4='(4) A LITTLE of the time'
                  5='(5) NONE of the time' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE NERVOUS   1='(1) ALL of the time' 2='(2) MOST of the time'
                  3='(3) SOME of the time' 4='(4) A LITTLE of the time'
                  5='(5) NONE of the time' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE RESTLESS  1='(1) ALL of the time' 2='(2) MOST of the time'
                  3='(3) SOME of the time' 4='(4) A LITTLE of the time'
                  5='(5) NONE of the time' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HOPELESS  1='(1) ALL of the time' 2='(2) MOST of the time'
                  3='(3) SOME of the time' 4='(4) A LITTLE of the time'
                  5='(5) NONE of the time' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE EFFORT    1='(1) ALL of the time' 2='(2) MOST of the time'
                  3='(3) SOME of the time' 4='(4) A LITTLE of the time'
                  5='(5) NONE of the time' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE WORTHLS   1='(1) ALL of the time' 2='(2) MOST of the time'
                  3='(3) SOME of the time' 4='(4) A LITTLE of the time'
                  5='(5) NONE of the time' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MHAMTMO   1='(1) A lot' 2='(2) Some' 3='(3) A little' 4='(4) Not at all' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE WRKLYR3f  0='(0) Had job last week'
                  1='(1) No job last week, had job past 12 m'
                  2='(2) No job last week, no job past 12 m' 3='(3) Never worked'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE WKDAYR    0='(0) None' 997='(997) Refused' 998='(998) Not ascertained'
                  999='(999) Don''t know' ;
  VALUE BEDDAYR   0='(0) None' 997='(997) Refused' 998='(998) Not ascertained'
                  999='(999) Don''t know' ;
  VALUE AHSTATYR  1='(1) Better' 2='(2) Worse' 3='(3) About the same' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SPECEQ    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE FLWALK    0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLCLIMB   0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLSTAND   0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLSIT     0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLSTOOP   0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLREACH   0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLGRASP   0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLCARRY   0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLPUSH    0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLSHOP    0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLSOCL    0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLRELAX   0='(0) Not at all difficult' 1='(1) Only a little difficult'
                  2='(2) Somewhat difficult' 3='(3) Very difficult'
                  4='(4) Can''t do at all' 6='(6) Do not do this activity'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE FLA1AR    1='(1) Limited in any way' 2='(2) Not limited in any way'
                  3='(3) Unknown if limited' ;
  VALUE AFLHCA1f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHCA2f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHCA3f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHCA4f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHCA5f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHCA6f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHCA7f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHCA8f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHCA9f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHCA0f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC10f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC11f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC12f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC13f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC14f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC15f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC16f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC17f  1='(1) Mentioned' 2='(2) Not mentioned' 6='(6) No condition at all'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC18f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC19f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC20f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC21f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC22f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC23f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC24f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC25f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC26f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC27f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC28f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC29f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC30f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC31f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC32f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC33f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC34f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AFLHC35f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE ALTIME1f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNIT1f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDURA1f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDURB1f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHRC1f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIME2f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNIT2f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDURA2f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDURB2f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHRC2f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIME3f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNIT3f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDURA3f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDURB3f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHRC3f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIME4f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNIT4f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDURA4f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDURB4f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHRC4f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIME5f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNIT5f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDURA5f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDURB5f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHRC5f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIME6f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNIT6f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDURA6f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDURB6f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHRC6f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIME7f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNIT7f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDURA7f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDURB7f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHRC7f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIME8f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNIT8f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDURA8f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDURB8f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHRC8f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIME9f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNIT9f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDURA9f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDURB9f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHRC9f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIME0f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNIT0f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDURA0f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDURB0f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHRC0f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM10f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI10f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR10f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR11f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR10f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM11f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI11f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR12f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR13f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR11f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM12f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI12f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR14f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR15f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR12f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM13f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI13f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR16f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR17f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR13f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM14f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI14f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR18f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR19f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR14f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM15f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI15f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR20f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR21f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR15f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM16f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI16f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR22f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR23f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR16f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM17f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI17f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR24f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR25f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR17f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM18f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI18f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR26f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR27f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR18f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM19f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI19f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR28f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR29f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR19f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM20f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI20f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR30f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR31f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR20f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM21f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI21f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR32f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR33f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR21f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM22f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI22f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR34f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR35f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR22f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM23f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI23f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR36f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR37f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR23f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM24f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI24f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR38f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR39f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR24f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM25f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI25f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR40f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR41f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR25f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM26f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI26f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR42f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR43f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR26f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM27f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI27f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR44f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR45f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR27f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM28f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI28f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR46f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR47f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR28f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM29f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI29f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR48f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR49f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR29f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM30f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI30f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR50f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR51f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR30f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM31f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI31f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR52f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR53f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR31f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM32f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI32f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR54f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR55f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR32f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM33f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI33f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR56f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR57f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR33f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM34f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI34f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR58f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR59f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR34f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALTIM35f  95='(95) 95+' 96='(96) Since birth' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALUNI35f  1='(1) Day(s)' 2='(2) Week(s)' 3='(3) Month(s)' 4='(4) Year(s)'
                  6='(6) Since birth' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALDUR60f  0='(0) Less than 1 year' 85='(85) 85+ years'
                  96='(96) Unknown number of years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALDUR61f  1='(1) Less than 3 months' 2='(2) 3 - 5 months' 3='(3) 6 - 12 months'
                  4='(4) More than 1 year' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCHR35f  1='(1) Chronic' 2='(2) Not chronic' 9='(9) Unknown if chronic' ;
  VALUE ALCNDRT   1='(1) At least one chronic cond causes functl lim'
                  2='(2) No chronic cond causes functl lim'
                  9='(9) Unk if any chronic cond causes functl lim' ;
  VALUE ALCHRONR  0='(0) Not limited in any way (incl unk if limited)'
                  1='(1) Limited; caused by at least one chronic cond'
                  2='(2) Limited; not caused by chronic cond'
                  3='(3) Limited; unk if cond is chronic' ;
  VALUE SMKEV     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE SMKREG    85='(85) 85 years or older' 96='(96) Never smoked regularly'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE SMKNOW    1='(1) Every day' 2='(2) Some days' 3='(3) Not at all' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SMKQTNO   95='(95) 95+' 97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE SMKQTTP   1='(1) Days' 2='(2) Weeks' 3='(3) Months' 4='(4) Years' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SMKQTY    0='(0) Less than 1 year' 70='(70) 70+ years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE SMKQTD    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE CIGSDA1f  95='(95) 95+ cigarettes' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE CIGDAMO   0='(0) None' 97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE CIGSDA2f  95='(95) 95+ cigarettes' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE CIGSDAY   95='(95) 95+ cigarettes' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t Know' ;
  VALUE SMKSTATf  1='(1) Current' 2='(2) Former' 3='(3) Never'
                  4='(4) Smoker, current status unknown'
                  9='(9) Unknown if ever smoked' ;
  VALUE SMKSTA0f  1='(1) Current every day smoker' 2='(2) Current some day smoker'
                  3='(3) Former smoker' 4='(4) Never smoker'
                  5='(5) Smoker, current status unknown'
                  9='(9) Unknown if ever smoked' ;
  VALUE SMKSTA1f  1='(1) Current every day smoker'
                  2='(2) Current some day smoker (1+ days past mo)'
                  3='(3) Current some day smoker (0 days past mo)'
                  4='(4) Current some day smoker (unknown days past mo)'
                  5='(5) Former smoker' 6='(6) Never smoker'
                  7='(7) Smoker, current status unknown'
                  9='(9) Unknown if ever smoked' ;
  VALUE CIGQTYR   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE VIGNO     0='(0) Never' 996='(996) Unable to do this type activity'
                  997='(997) Refused' 998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE VIGTP     0='(0) Never' 1='(1) Day' 2='(2) Week' 3='(3) Month' 4='(4) Year'
                  6='(6) Unable to do this type activity' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE VIGFREQW  0='(0) Less than once per week' 95='(95) Never'
                  96='(96) Unable to do vig activity' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE VIGLNGNO  997='(997) Refused' 998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE VIGLNGTP  1='(1) Minutes' 2='(2) Hours' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE VIGMIN    997='(997) Refused' 998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE VIGLONGD  1='(1) Less than 20 minutes' 2='(2) 20 minutes or more' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MODNO     0='(0) Never' 996='(996) Unable to do this type activity'
                  997='(997) Refused' 998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE MODTP     0='(0) Never' 1='(1) Day' 2='(2) Week' 3='(3) Month' 4='(4) Year'
                  6='(6) Unable to do this type activity' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE MODFREQW  0='(0) Less than once per week' 95='(95) Never'
                  96='(96) Unable to do light or moderate activity' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE MODLNGNO  997='(997) Refused' 998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE MODLNGTP  1='(1) Minutes' 2='(2) Hours' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE MODMIN    997='(997) Refused' 998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE MODLONGD  1='(1) Less than 20 minutes' 2='(2) 20 minutes or more' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE STRNGNO   0='(0) Never' 996='(996) Unable to do this type activity'
                  997='(997) Refused' 998='(998) Not ascertained' 999='(999) Don''t know' ;
  VALUE STRNGTP   0='(0) Never' 1='(1) Day' 2='(2) Week' 3='(3) Month' 4='(4) Year'
                  6='(6) Unable to do this type activity' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE STRFREQW  0='(0) Less than once per week' 95='(95) Never'
                  96='(96) Unable to do strength activity' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALC1YR    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALCLIFE   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ALC12MNO  0='(0) Never' 997='(997) Refused' 998='(998) Not ascertained'
                  999='(999) Don''t know' ;
  VALUE ALC12MTP  0='(0) Never/None' 1='(1) Week' 2='(2) Month' 3='(3) Year' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE ALC12MMO  0='(0) Less than once a month' 95='(95) Did not drink in past year'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALC12MWK  0='(0) Less than one day per week'
                  95='(95) Did not drink in past year' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE ALC12MYR  0='(0) Never/none' 997='(997) Refused' 998='(998) Not ascertained'
                  999='(999) Don''t know' ;
  VALUE ALCAMT    95='(95) 95+ drinks' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ALC5UPNO  0='(0) Never/None' 997='(997) Refused' 998='(998) Not ascertained'
                  999='(999) Don''t know' ;
  VALUE ALC5UPTP  0='(0) Never/None' 1='(1) Week' 2='(2) Month' 3='(3) Year' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE ALC5UPYR  0='(0) Never/None' 997='(997) Refused' 998='(998) Not ascertained'
                  999='(999) Don''t know' ;
  VALUE ALCSTATf  1='(1) <12 drinks in lifetime' 2='(2) No drinks in past year'
                  3='(3) 1+ drinks in past year' 9='(9) Drinking status unknown' ;
  VALUE ALC7STAT  1='(1) Lifetime abstainer' 2='(2) Former infrequent'
                  3='(3) Former regular' 4='(4) Current infrequent' 5='(5) Current light'
                  6='(6) Current moderate' 7='(7) Current heavier'
                  8='(8) Current drinker, level unknown'
                  9='(9) Drinking status unknown' ;
  VALUE MET_FLGf  1='(1) Metric height measurement volunteered'
                  2='(2) Not reported in metric units' ;
  VALUE MET_FL0f  1='(1) Metric weight measurement volunteered'
                  2='(2) Not reported in metric units' ;
  VALUE AHEIGHT   96='(96) Not available' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE AWEIGHTP  996='(996) Not available' 997='(997) Refused' 998='(998) Not ascertained'
                  999='(999) Don''t know' ;
  VALUE DESIREWT  1='(1) 10% or more below desirable weight'
                  2='(2) 5-9% below desirable weight'
                  3='(3) 4.9% (+/-) of desirable body weight'
                  4='(4) 5-9.9% above desirable body weight'
                  5='(5) 10-19.9% above desirable body weight'
                  6='(6) 20-29.9 % above desirable body weight'
                  7='(7) 30% + above desirable body weight' 9='(9) Unknown' ;
  VALUE BMI       9995='(9995) 99.95+' 9999='(9999) Unknown' ;
  VALUE AUSUALPL  1='(1) Yes' 2='(2) There is NO place'
                  3='(3) There is MORE THAN ONE place' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE APLKIND   1='(1) Clinic or health center' 2='(2) Doctor''s office or HMO'
                  3='(3) Hospital emergency room'
                  4='(4) Hospital outpatient department' 5='(5) Some other place'
                  6='(6) Doesn''t go to one place most often' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE AHCPLROU  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCPLKND  0='(0) Doesn''t get preventive care anywhere'
                  1='(1) Clinic or health center' 2='(2) Doctor''s office or HMO'
                  3='(3) Hospital emergency room'
                  4='(4) Hospital outpatient department' 5='(5) Some other place'
                  6='(6) Doesn''t go to one place most often' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE SOURCELA  1='(1) Same sorc sk care & rout care'
                  2='(2) Sorc sk care, no sorc rout care'
                  3='(3) Sorc sk & rout care, no/unk same sorc'
                  4='(4) Sorc sk care, unk sorc rout care *'
                  5='(5) GE2 sorc sk care, 1 is sorc rout care'
                  6='(6) GE2 sorc sk care, no sorc rout care'
                  7='(7) GE2 sorc sk & rout care, no/unk if same'
                  8='(8) GE2 sorc sk care, unk sorc rout care *'
                  9='(9) No sorc sk care or rout care'
                  10='(10) No sorc sk care, has sorc rout care'
                  11='(11) No sorc sk care, unk sorc rout care *'
                  12='(12) Unk sorc sk care, no sorc rout care'
                  13='(13) Unk sorc sk care, has sorc rout care'
                  14='(14) Unk sorc sk care or sorc rout care *'
                  99='(99) Unknown other' ;
  VALUE AHCCHGYR  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCCHGHI  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCDLYRf  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCDLY0f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCDLY1f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCDLY2f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCDLY3f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCAFYRf  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCAFY0f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCAFY1f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCAFY2f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ADNLONGf  0='(0) Never' 1='(1) 6 Months or less'
                  2='(2) More than 6 mos, but not more than 1 yr ago'
                  3='(3) More than 1 yr, but not more than 2 yrs ago'
                  4='(4) More than 2 yrs, but not more than 5 yrs ago'
                  5='(5) More than 5 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCSYR1f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCSYR2f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCSYR3f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCSYR4f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCSYR5f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCSYR6f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCSYR7f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCSYR8f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCSYR9f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCSYR0f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHERNOYf  0='(0) None' 1='(1) 1' 2='(2) 2-3' 3='(3) 4-5' 4='(4) 6-7' 5='(5) 8-9' 6='(6) 10-12'
                  7='(7) 13-15' 8='(8) 16 or more' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE AHCHYR    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHCHMOYR  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE AHCHNOYf  1='(1) 1' 2='(2) 2-3' 3='(3) 4-5' 4='(4) 6-7' 5='(5) 8-9' 6='(6) 10-12' 7='(7) 13-15'
                  8='(8) 16 or more' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE AHCNOYRf  0='(0) None' 1='(1) 1' 2='(2) 2-3' 3='(3) 4-5' 4='(4) 6-7' 5='(5) 8-9' 6='(6) 10-12'
                  7='(7) 13-15' 8='(8) 16 or more' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE ASRGYR    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ASRGNOYR  95='(95) 95+ Times' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE AMDLONGR  0='(0) Never' 1='(1) 6 months or less'
                  2='(2) More than 6 mos, but not more than 1 yr ago'
                  3='(3) More than 1 yr, but not more than 2 yrs ago'
                  4='(4) More than 2 yrs, but not more than 5 yrs ago'
                  5='(5) More than 5 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SHTFLUYR  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SHTPNUYR  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE APOX      1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE APOX12MO  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHEP      1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE AHEPLIV   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SHTHEPB   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SHEPDOS   1='(1) Received at least 3 doses'
                  2='(2) Received less than 3 doses' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE ALL_SA    1='(1) Currently working' 2='(2) Retired'
                  3='(3) Not currently working but has worked previously'
                  4='(4) Has never worked' 9='(9) Unknown' ;
  VALUE EVERWRK   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE WRKCAT    1='(1) Employee of a PRIVATE company for wages'
                  2='(2) A FEDERAL government employee'
                  3='(3) A STATE government employee'
                  4='(4) A LOCAL government employee'
                  5='(5) Self-emp in OWN business/prof practice/farm'
                  6='(6) Working WITHOUT PAY in fam business/farm' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE WRKCATA   1='(1) Employee of a PRIVATE company for wages'
                  2='(2) A FEDERAL government employee'
                  3='(3) A STATE government employee'
                  4='(4) A LOCAL government employee'
                  5='(5) Self-emp in OWN business/prof practice/farm'
                  6='(6) Working WITHOUT PAY in fam business/farm' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE BUSINC1f  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE BUSINC1A  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LOCALL1f  1='(1) 1-9 employees' 2='(2) 10-24 employees' 3='(3) 25-49 employees'
                  4='(4) 50-99 employees' 5='(5) 100-249 employees'
                  6='(6) 250-499 employees' 7='(7) 500-999 employees'
                  8='(8) 1000 employees or more' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE LOCALL1A  1='(1) 1-9 employees' 2='(2) 10-24 employees' 3='(3) 25-49 employees'
                  4='(4) 50-99 employees' 5='(5) 100-249 employees'
                  6='(6) 250-499 employees' 7='(7) 500-999 employees'
                  8='(8) 1000 employees or more' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE YRSWRK_P  0='(0) Less than 1 year' 35='(35) 35 or more years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE YRSWRKPA  0='(0) Less than 1 year' 35='(35) 35 or more years' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE WRKLONGH  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HOURPD    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HOURPDA   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PDSICK    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE PDSICKA   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE ONEJOB    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SMOKD1ff  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE BLDGV     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE BLDG12M   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HIVTST    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE WHYTST_R  1='(1) Unlikely have been exposed to HIV'
                  2='(2) Afraid to find out if HIV positive'
                  3='(3) Didn''t want to think about HIV/HIV pos.'
                  4='(4) Worried name reported to Govt. if pos.'
                  5='(5) Didn''t know where to get tested'
                  6='(6) Don''t like needles'
                  7='(7) Afraid of losing job if pos. for AIDS'
                  8='(8) Some other reason' 9='(9) No particular reason' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE TST12M_M  1='(1) January' 2='(2) February' 3='(3) March' 4='(4) April' 5='(5) May'
                  6='(6) June' 7='(7) July' 8='(8) August' 9='(9) September' 10='(10) October'
                  11='(11) November' 12='(12) December' 96='(96) Used time period format'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE TST12M_Y  9996='(9996) Used time period format' 9997='(9997) Refused'
                  9998='(9998) Not ascertained' 9999='(9999) Don''t know' ;
  VALUE TIMETST   1='(1) 6 Months or less'
                  2='(2) More than 6 months but not more than 1 yr ago'
                  3='(3) More than 1 yr, but not more than 2 yrs ago'
                  4='(4) More than 2 yrs, but not more than 5 yrs ago'
                  5='(5) More than 5 yrs ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE REATST_C  1='(1) Someone suggested you should be tested'
                  2='(2) Might have been exposed thru sex/drug use'
                  3='(3) Might have been exposed thru work/at work'
                  4='(4) Wanted to find out if infected or not'
                  5='(5) Part of a routine medical check-up/surg proc'
                  6='(6) You were sick or had a medical problem'
                  7='(7) You were pregnant or delivered a baby'
                  8='(8) For health or life insurance coverage'
                  9='(9) Military induction or military service'
                  10='(10) For Immigration'
                  11='(11) For marriage license or to get married'
                  12='(12) Concerned could give HIV to someone'
                  13='(13) Wanted medical care/new treatment if pos'
                  14='(14) Some other reason' 15='(15) No particular reason'
                  97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE REASWHOR  1='(1) Doctor, nurse, or otr hlth care prof' 2='(2) Sex partner'
                  3='(3) Someone at health department'
                  4='(4) Family member or friend' 5='(5) Other' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE LASTST_C  1='(1) Doctor/HMO' 2='(2) AIDS clinic/counseling/testing site'
                  3='(3) Hospital/emergency room/outpatient clinic'
                  4='(4) Other type of clinic' 5='(5) Public health department'
                  6='(6) At home' 7='(7) Drug treatment facility'
                  8='(8) Military induction or military service site'
                  9='(9) Immigration site'
                  10='(10) In a correctional facility (jail or prison)'
                  11='(11) Other location' 97='(97) Refused' 98='(98) Not ascertained'
                  99='(99) Don''t know' ;
  VALUE CLNTYP_C  1='(1) Family planning clinic' 2='(2) Prenatal clinic'
                  3='(3) Tuberculosis clinic' 4='(4) STD clinic'
                  5='(5) Community health clinic'
                  6='(6) Clinic run by employer or ins co' 7='(7) Other' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE WHOADM    1='(1) Nurse or health worker' 2='(2) Self-sampling kit'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE GIVNAM    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE EXTST12M  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE CHNSADSP  1='(1) High/Already have HIV/AIDS' 2='(2) Medium' 3='(3) Low' 4='(4) None'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE STMTRU    1='(1) Yes, at least one statement is true'
                  2='(2) No, none of these statements are true' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE STD       1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE STDDOC    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE STDWHER   1='(1) Private doctor' 2='(2) Family planning clinic'
                  3='(3) STD clinic' 4='(4) Emergency room' 5='(5) Health department'
                  6='(6) Some other place' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE TBHRD     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE TBKNOW    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE TB        1='(1) A lot' 2='(2) Some' 3='(3) A little' 4='(4) Nothing' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE TBSPRD1f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE TBSPRD2f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE TBSPRD3f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE TBSPRD4f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE TBSPRD5f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE TBSPRD6f  1='(1) Mentioned' 2='(2) Not mentioned' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE TBCURED   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE TBCHANC   1='(1) High' 2='(2) Medium' 3='(3) Low' 4='(4) None' 5='(5) Already have TB'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE TBSHAME   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HOMELESS  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE SUN1_SHA  1='(1) Always' 2='(2) Most of the time' 3='(3) Sometimes' 4='(4) Rarely'
                  5='(5) Never' 6='(6) Don''t go out in sun' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t Know' ;
  VALUE SUN1_HAT  1='(1) Always' 2='(2) Most of the time' 3='(3) Sometimes' 4='(4) Rarely'
                  5='(5) Never' 6='(6) Don''t go out in sun' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t Know' ;
  VALUE SUN2_LGS  1='(1) Always' 2='(2) Most of the time' 3='(3) Sometimes' 4='(4) Rarely'
                  5='(5) Never' 6='(6) Don''t go out in sun' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t Know' ;
  VALUE SUN2_SCR  1='(1) Always' 2='(2) Most of the time' 3='(3) Sometimes' 4='(4) Rarely'
                  5='(5) Never' 6='(6) Don''t go out in sun' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t Know' ;
  VALUE SPF       96='(96) More than one, Different ones, Other' 97='(97) Refused'
                  98='(98) Not ascertained' 99='(99) Don''t Know' ;
  VALUE PAPHAD    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE $RPAP1_f  '01'='(01) January' '02'='(02) February' '03'='(03) March' '04'='(04) April'
                  '05'='(05) May' '06'='(06) June' '07'='(07) July' '08'='(08) August'
                  '09'='(09) September' '10'='(10) October' '11'='(11) November'
                  '12'='(12) December' '96'='(96) Time period format' '97'='(97) Refused'
                  '98'='(98) Not ascertained' '99'='(99) Don''t Know'
                  ' '='( ) Not in Universe' ;
  VALUE RPAP1_YR  9996='(9996) Time period format' 9997='(9997) Refused'
                  9998='(9998) Not ascertained' 9999='(9999) Don''t know' ;
  VALUE RPAP1_NO  95='(95) 95+' 97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE RPAP1_TP  1='(1) Days ago' 2='(2) Weeks ago' 3='(3) Months ago' 4='(4) Years ago'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE RPAP2CA   1='(1) A year ago or less'
                  2='(2) More than 1 year but not more than 2 years'
                  3='(3) More than 2 years but not more than 3 years'
                  4='(4) More than 3 years but not more than 5 years'
                  5='(5) Over 5 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE RPAP_MOf  12='(12) 12 months' 24='(24) 24 months' 36='(36) 36 months' 60='(60) 60 months'
                  997='(997) Refused' 998='(998) Not Ascertained' 999='(999) Don''t Know' ;
  VALUE RPAP3fff  1='(1) A year ago or less'
                  2='(2) More than 1 year but not more than 2 years'
                  3='(3) More than 2 years but not more than 3 years'
                  4='(4) More than 3 years but not more than 5 years'
                  5='(5) Over 5 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE PAPREAS   1='(1) Part of a routine physical or pregnancy exam'
                  2='(2) Because of a specific gynecological problem'
                  3='(3) Followup to a previous gynecological exam' 4='(4) Other'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t Know' ;
  VALUE MAMHAD    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE $RMAM1_f  '01'='(01) January' '02'='(02) February' '03'='(03) March' '04'='(04) April'
                  '05'='(05) May' '06'='(06) June' '07'='(07) July' '08'='(08) August'
                  '09'='(09) September' '10'='(10) October' '11'='(11) November'
                  '12'='(12) December' '96'='(96) Time period format' '97'='(97) Refused'
                  '98'='(98) Not ascertained' '99'='(99) Don''t Know'
                  ' '='( ) Not in Universe' ;
  VALUE RMAM1_YR  9996='(9996) Time period format' 9997='(9997) Refused'
                  9998='(9998) Not ascertained' 9999='(9999) Don''t know' ;
  VALUE RMAM1_NO  95='(95) 95+' 97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE RMAM1_TP  1='(1) Days ago' 2='(2) Weeks ago' 3='(3) Months ago' 4='(4) Years ago'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE RMAM2CA   1='(1) A year ago or less'
                  2='(2) More than 1 year but not more than 2 years'
                  3='(3) More than 2 years but not more than 3 years'
                  4='(4) More than 3 years but not more than 5 years'
                  5='(5) Over 5 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE RMAM_MOf  12='(12) 12 months' 24='(24) 24 months' 36='(36) 36 months' 60='(60) 60 months'
                  997='(997) Refused' 998='(998) Not Ascertained' 999='(999) Don''t Know' ;
  VALUE RMAM3fff  1='(1) A year ago or less'
                  2='(2) More than 1 year but not more than 2 years'
                  3='(3) More than 2 years but not more than 3 years'
                  4='(4) More than 3 years but not more than 5 years'
                  5='(5) Over 5 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE MAMREAS   1='(1) Part of a routine physical exam/screen test'
                  2='(2) Because of a specific breast problem'
                  3='(3) Followup to prev identified breast prob'
                  4='(4) Baseline or initial mammogram' 5='(5) Family history'
                  6='(6) Other' 7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t Know' ;
  VALUE PSAHRD    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE PSAHAD    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE $RPSA1_f  '01'='(01) January' '02'='(02) February' '03'='(03) March' '04'='(04) April'
                  '05'='(05) May' '06'='(06) June' '07'='(07) July' '08'='(08) August'
                  '09'='(09) September' '10'='(10) October' '11'='(11) November'
                  '12'='(12) December' '96'='(96) Time period format' '97'='(97) Refused'
                  '98'='(98) Not ascertained' '99'='(99) Don''t Know'
                  ' '='( ) Not in Universe' ;
  VALUE RPSA1_YR  9996='(9996) Time period format' 9997='(9997) Refused'
                  9998='(9998) Not ascertained' 9999='(9999) Don''t know' ;
  VALUE RPSA1_NO  95='(95) 95+' 97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE RPSA1_TP  1='(1) Days ago' 2='(2) Weeks ago' 3='(3) Months ago' 4='(4) Years ago'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE RPSA2fff  1='(1) A year ago or less'
                  2='(2) More than 1 year but not more than 2 years'
                  3='(3) More than 2 years but not more than 3 years'
                  4='(4) More than 3 years but not more than 5 years'
                  5='(5) Over 5 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE RPSA_MOf  12='(12) 12 months' 24='(24) 24 months' 36='(36) 36 months' 60='(60) 60 months'
                  997='(997) Refused' 998='(998) Not Ascertained' 999='(999) Don''t Know' ;
  VALUE RPSA3fff  1='(1) A year ago or less'
                  2='(2) More than 1 year but not more than 2 years'
                  3='(3) More than 2 years but not more than 3 years'
                  4='(4) More than 3 years but not more than 5 years'
                  5='(5) Over 5 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE PSAREAS   1='(1) Part of a routine physical exam/screen test'
                  2='(2) Because of a specific problem'
                  3='(3) Followup test for an earlier exam' 4='(4) Family history'
                  5='(5) Other' 7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t Know' ;
  VALUE CREHAD    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE $RCRE1_f  '01'='(01) January' '02'='(02) February' '03'='(03) March' '04'='(04) April'
                  '05'='(05) May' '06'='(06) June' '07'='(07) July' '08'='(08) August'
                  '09'='(09) September' '10'='(10) October' '11'='(11) November'
                  '12'='(12) December' '96'='(96) Time period format' '97'='(97) Refused'
                  '98'='(98) Not ascertained' '99'='(99) Don''t Know'
                  ' '='( ) Not in Universe' ;
  VALUE RCRE1_YR  9996='(9996) Time period format' 9997='(9997) Refused'
                  9998='(9998) Not ascertained' 9999='(9999) Don''t know' ;
  VALUE RCRE1_NO  95='(95) 95+' 97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE RCRE1_TP  1='(1) Days ago' 2='(2) Weeks ago' 3='(3) Months ago' 4='(4) Years ago'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE RCRE2fff  1='(1) A year ago or less'
                  2='(2) More than 1 year but not more than 2 years'
                  3='(3) More than 2 years but not more than 3 years'
                  4='(4) More than 3 years but not more than 5 years'
                  5='(5) More than 5 years but not more that 10 years'
                  6='(6) More than 10 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE RCRE_MOf  12='(12) 12 months' 24='(24) 24 months' 36='(36) 36 months' 60='(60) 60 months'
                  120='(120) 120 months' 997='(997) Refused' 998='(998) Not Ascertained'
                  999='(999) Don''t Know' ;
  VALUE RCRE3fff  1='(1) A year ago or less'
                  2='(2) More than 1 year but not more than 2 years'
                  3='(3) More than 2 years but not more than 3 years'
                  4='(4) More than 3 years but not more than 5 years'
                  5='(5) More than 5 years but not more than 10 years'
                  6='(6) Over 10 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE CRENAM    1='(1) Sigmoidoscopy' 2='(2) Colonoscopy' 3='(3) Proctoscopy'
                  4='(4) Something else' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE CREREAS   1='(1) Part of a routine physical exam/screen test'
                  2='(2) Because of a specific problem'
                  3='(3) Followup of an earlier test or screen exam'
                  4='(4) Family history' 5='(5) Other' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t Know' ;
  VALUE HFOBHAD   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE $RHFOB1f  '01'='(01) January' '02'='(02) February' '03'='(03) March' '04'='(04) April'
                  '05'='(05) May' '06'='(06) June' '07'='(07) July' '08'='(08) August'
                  '09'='(09) September' '10'='(10) October' '11'='(11) November'
                  '12'='(12) December' '96'='(96) Time period format' '97'='(97) Refused'
                  '98'='(98) Not ascertained' '99'='(99) Don''t Know'
                  ' '='( ) Not in Universe' ;
  VALUE RHFOB1_Y  9996='(9996) Time period format' 9997='(9997) Refused'
                  9998='(9998) Not ascertained' 9999='(9999) Don''t know' ;
  VALUE RHFOB1_N  95='(95) 95+' 97='(97) Refused' 98='(98) Not ascertained' 99='(99) Don''t know' ;
  VALUE RHFOB1_T  1='(1) Days ago' 2='(2) Weeks ago' 3='(3) Months ago' 4='(4) Years ago'
                  7='(7) Refused' 8='(8) Not ascertained' 9='(9) Don''t know' ;
  VALUE RHFOB2ff  1='(1) A year ago or less'
                  2='(2) More than 1 year but not more than 2 years'
                  3='(3) More than 2 years but not more than 3 years'
                  4='(4) More than 3 years but not more than 5 years'
                  5='(5) More than 5 years but not more that 10 years'
                  6='(6) More than 10 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE RHFO_MOf  12='(12) 12 months' 24='(24) 24 months' 36='(36) 36 months' 60='(60) 60 months'
                  120='(120) 120 months' 997='(997) Refused' 998='(998) Not Ascertained'
                  999='(999) Don''t Know' ;
  VALUE RHFOB3ff  1='(1) A year ago or less'
                  2='(2) More than 1 year but not more than 2 years'
                  3='(3) More than 2 years but not more than 3 years'
                  4='(4) More than 3 years but not more than 5 years'
                  5='(5) More than 5 years but not more than 10 years'
                  6='(6) Over 10 years ago' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t Know' ;
  VALUE HFOBREAS  1='(1) Part of a routine physical exam/screening test'
                  2='(2) Because of a specific problem'
                  3='(3) Followup test of an earlier test/screening exam'
                  4='(4) Family history' 5='(5) Other' 7='(7) Refused'
                  8='(8) Not ascertained' 9='(9) Don''t Know' ;
  VALUE HYPPREG   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HLOSWGT   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE WGTADEV   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE WGTADNOW  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LOWSLT    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LOWSLTEV  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE LOWSLTNW  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE EXERC     1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE EXERCEV   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE EXERCNW   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HBPALC    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HBPALCEV  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HBPALCNW  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HYPMEDEV  1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HYPMED    1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
  VALUE HYMDMED   1='(1) Yes' 2='(2) No' 7='(7) Refused' 8='(8) Not ascertained'
                  9='(9) Don''t know' ;
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA NHIS.samadult_2003;
INFILE "C:\DATA\NHIS\2003\04222-0004-Data.txt" LRECL=919;
INPUT
        RECSAD 1-2              SRVY_YR 3-6
        HHX $7-12               FMX $13-14              PX $15-16
        INTV_QRT 17             SEX 18                  AGE_P 19-20
        ORIGIN_I 21             ORIGIMPT 22             HISPAN_I 23-24
        HISPIMPT 25             RACERPI2 26-27          RACEIMP2 28
        MRACRPI2 29-30          MRACBPI2 31-32          RACRECI2 33
        HISCODI2 34             ERIMPFLG 35             EDUC 36-37
        AB_BL20K 38             RAT_CAT 39-40           R_MARITL 41
        FM_SIZE 42-43           REGION 44               WTIA_SA 45-50
        WTFA_SA 51-56           STRATUM 57-59           PSU 60
        PROXYSA 61              HYPEV 62                HYPDIFV 63
        HYBPCKNO 64-65          HYBPCKTP 66             HYBPCKY 67-68
        HYBPLEV 69              CLCKNO 70-71            CLCKTP 72
        CLCKY 73-74             CLHI 75                 CHDEV 76
        ANGEV 77                MIEV 78                 HRTEV 79
        STREV 80                EPHEV 81                AASMEV 82
        AASSTILL 83             AASMYR 84               AASMERYR 85
        AASMHSP 86              AASMMC 87               AWZMSWK 88-90
        AWZPIN 91               AASMINST 92             AASMPMED 93
        AASMCAN 94              AASMED 95               AASMDTP 96
        AASWMP 97               AASCLASS 98             AAS_REC 99
        AAS_RES 100             AAS_MON 101             AAPENVLN 102
        AAPENVDO 103            ULCEV 104               ULCYR 105
        CANEV 106               CNKIND1 107             CANAGE1 108-109
        CNKIND2 110             CANAGE2 111-112         CNKIND3 113
        CANAGE3 114-115         CNKIND4 116             CANAGE4 117-118
        CNKIND5 119             CANAGE5 120-121         CNKIND6 122
        CANAGE6 123-124         CNKIND7 125             CANAGE7 126-127
        CNKIND8 128             CANAGE8 129-130         CNKIND9 131
        CANAGE9 132-133         CNKIND10 134            CANAGE10 135-136
        CNKIND11 137            CANAGE11 138-139        CNKIND12 140
        CANAGE12 141-142        CNKIND13 143            CANAGE13 144-145
        CNKIND14 146            CANAGE14 147-148        CNKIND15 149
        CANAGE15 150-151        CNKIND16 152            CANAGE16 153-154
        CNKIND17 155            CANAGE17 156-157        CNKIND18 158
        CANAGE18 159-160        CNKIND19 161            CANAGE19 162-163
        CNKIND20 164            CANAGE20 165-166        CNKIND21 167
        CANAGE21 168-169        CNKIND22 170            CANAGE22 171-172
        CNKIND23 173            CANAGE23 174-175        CNKIND24 176
        CANAGE24 177-178        CNKIND25 179            CANAGE25 180-181
        CNKIND26 182            CANAGE26 183-184        CNKIND27 185
        CANAGE27 186-187        CNKIND28 188            CANAGE28 189-190
        CNKIND29 191            CANAGE29 192-193        CNKIND30 194
        CANAGE30 195-196        CNKIND31 197            BRCANDIG 198
        DIBEV 199               DIBAGE 200-201          DIFAGE2 202-203
        INSLN 204               DIBPILL 205             DIBHP 206
        DIBHPYR 207-209         DIBNDYR 210-212         DIBGLNO 213-215
        DIBGLTP 216             DGLFREQW 217-218        DIBA1CKN 219
        DIBA1CCK 220-221        DIBA1CLL 222            DIBA1CSL 223
        DIBFTCK 224-225         DIBCKNO 226-228         DIBCKTP 229
        DCKFREQW 230-231        DIBEYCKL 232            AHAYFYR 233
        SINYR 234               CBRCHYR 235             KIDWKYR 236
        LIVYR 237               JNTSYMP 238             JMTHP1 239
        JMTHP2 240              JMTHP3 241              JMTHP4 242
        JMTHP5 243              JMTHP6 244              JMTHP7 245
        JMTHP8 246              JMTHP9 247              JMTHP10 248
        JMTHP11 249             JMTHP12 250             JMTHP13 251
        JMTHP14 252             JMTHP15 253             JMTHP16 254
        JMTHP17 255             JNTPN 256-257           JNTCHR 258
        JNTHP 259               ARTH1 260               ARTHWT 261
        ARTHPH 262              ARTHCLS 263             ARTHLMT 264
        ARTHWRK 265             PAINECK 266             PAINLB 267
        PAINLEG 268             PAINFACE 269            AMIGR 270
        ACOLD2W 271             AINTIL2W 272            PREGNOW 273
        HEARAID 274             AHEARST 275             AVISION 276
        ABLIND 277              LUPPRT 278              SAD 279
        NERVOUS 280             RESTLESS 281            HOPELESS 282
        EFFORT 283              WORTHLS 284             MHAMTMO 285
        WRKLYR3 286             WKDAYR 287-289          BEDDAYR 290-292
        AHSTATYR 293            SPECEQ 294              FLWALK 295
        FLCLIMB 296             FLSTAND 297             FLSIT 298
        FLSTOOP 299             FLREACH 300             FLGRASP 301
        FLCARRY 302             FLPUSH 303              FLSHOP 304
        FLSOCL 305              FLRELAX 306             FLA1AR 307
        AFLHCA1 308             AFLHCA2 309             AFLHCA3 310
        AFLHCA4 311             AFLHCA5 312             AFLHCA6 313
        AFLHCA7 314             AFLHCA8 315             AFLHCA9 316
        AFLHCA10 317            AFLHCA11 318            AFLHCA12 319
        AFLHCA13 320            AFLHCA14 321            AFLHCA15 322
        AFLHCA16 323            AFLHCA17 324            AFLHCA18 325
        AFLHCA19 326            AFLHCA20 327            AFLHCA21 328
        AFLHCA22 329            AFLHCA23 330            AFLHCA24 331
        AFLHCA25 332            AFLHCA26 333            AFLHCA27 334
        AFLHCA28 335            AFLHCA29 336            AFLHCA30 337
        AFLHCA31 338            AFLHCA32 339            AFLHCA33 340
        AFLHCA34 341            AFLHCA90 342            AFLHCA91 343
        ALTIME1 344-345         ALUNIT1 346             ALDURA1 347-348
        ALDURB1 349             ALCHRC1 350             ALTIME2 351-352
        ALUNIT2 353             ALDURA2 354-355         ALDURB2 356
        ALCHRC2 357             ALTIME3 358-359         ALUNIT3 360
        ALDURA3 361-362         ALDURB3 363             ALCHRC3 364
        ALTIME4 365-366         ALUNIT4 367             ALDURA4 368-369
        ALDURB4 370             ALCHRC4 371             ALTIME5 372-373
        ALUNIT5 374             ALDURA5 375-376         ALDURB5 377
        ALCHRC5 378             ALTIME6 379-380         ALUNIT6 381
        ALDURA6 382-383         ALDURB6 384             ALCHRC6 385
        ALTIME7 386-387         ALUNIT7 388             ALDURA7 389-390
        ALDURB7 391             ALCHRC7 392             ALTIME8 393-394
        ALUNIT8 395             ALDURA8 396-397         ALDURB8 398
        ALCHRC8 399             ALTIME9 400-401         ALUNIT9 402
        ALDURA9 403-404         ALDURB9 405             ALCHRC9 406
        ALTIME10 407-408        ALUNIT10 409            ALDURA10 410-411
        ALDURB10 412            ALCHRC10 413            ALTIME11 414-415
        ALUNIT11 416            ALDURA11 417-418        ALDURB11 419
        ALCHRC11 420            ALTIME12 421-422        ALUNIT12 423
        ALDURA12 424-425        ALDURB12 426            ALCHRC12 427
        ALTIME13 428-429        ALUNIT13 430            ALDURA13 431-432
        ALDURB13 433            ALCHRC13 434            ALTIME14 435-436
        ALUNIT14 437            ALDURA14 438-439        ALDURB14 440
        ALCHRC14 441            ALTIME15 442-443        ALUNIT15 444
        ALDURA15 445-446        ALDURB15 447            ALCHRC15 448
        ALTIME16 449-450        ALUNIT16 451            ALDURA16 452-453
        ALDURB16 454            ALCHRC16 455            ALTIME17 456-457
        ALUNIT17 458            ALDURA17 459-460        ALDURB17 461
        ALCHRC17 462            ALTIME18 463-464        ALUNIT18 465
        ALDURA18 466-467        ALDURB18 468            ALCHRC18 469
        ALTIME19 470-471        ALUNIT19 472            ALDURA19 473-474
        ALDURB19 475            ALCHRC19 476            ALTIME20 477-478
        ALUNIT20 479            ALDURA20 480-481        ALDURB20 482
        ALCHRC20 483            ALTIME21 484-485        ALUNIT21 486
        ALDURA21 487-488        ALDURB21 489            ALCHRC21 490
        ALTIME22 491-492        ALUNIT22 493            ALDURA22 494-495
        ALDURB22 496            ALCHRC22 497            ALTIME23 498-499
        ALUNIT23 500            ALDURA23 501-502        ALDURB23 503
        ALCHRC23 504            ALTIME24 505-506        ALUNIT24 507
        ALDURA24 508-509        ALDURB24 510            ALCHRC24 511
        ALTIME25 512-513        ALUNIT25 514            ALDURA25 515-516
        ALDURB25 517            ALCHRC25 518            ALTIME26 519-520
        ALUNIT26 521            ALDURA26 522-523        ALDURB26 524
        ALCHRC26 525            ALTIME27 526-527        ALUNIT27 528
        ALDURA27 529-530        ALDURB27 531            ALCHRC27 532
        ALTIME28 533-534        ALUNIT28 535            ALDURA28 536-537
        ALDURB28 538            ALCHRC28 539            ALTIME29 540-541
        ALUNIT29 542            ALDURA29 543-544        ALDURB29 545
        ALCHRC29 546            ALTIME30 547-548        ALUNIT30 549
        ALDURA30 550-551        ALDURB30 552            ALCHRC30 553
        ALTIME31 554-555        ALUNIT31 556            ALDURA31 557-558
        ALDURB31 559            ALCHRC31 560            ALTIME32 561-562
        ALUNIT32 563            ALDURA32 564-565        ALDURB32 566
        ALCHRC32 567            ALTIME33 568-569        ALUNIT33 570
        ALDURA33 571-572        ALDURB33 573            ALCHRC33 574
        ALTIME34 575-576        ALUNIT34 577            ALDURA34 578-579
        ALDURB34 580            ALCHRC34 581            ALTIME90 582-583
        ALUNIT90 584            ALDURA90 585-586        ALDURB90 587
        ALCHRC90 588            ALTIME91 589-590        ALUNIT91 591
        ALDURA91 592-593        ALDURB91 594            ALCHRC91 595
        ALCNDRT 596             ALCHRONR 597            SMKEV 598
        SMKREG 599-600          SMKNOW 601              SMKQTNO 602-603
        SMKQTTP 604             SMKQTY 605-606          SMKQTD 607
        CIGSDA1 608-609         CIGDAMO 610-611         CIGSDA2 612-613
        CIGSDAY 614-615         SMKSTAT1 616            SMKSTAT2 617
        SMKSTAT3 618            CIGQTYR 619             VIGNO 620-622
        VIGTP 623               VIGFREQW 624-625        VIGLNGNO 626-628
        VIGLNGTP 629            VIGMIN 630-632          VIGLONGD 633
        MODNO 634-636           MODTP 637               MODFREQW 638-639
        MODLNGNO 640-642        MODLNGTP 643            MODMIN 644-646
        MODLONGD 647            STRNGNO 648-650         STRNGTP 651
        STRFREQW 652-653        ALC1YR 654              ALCLIFE 655
        ALC12MNO 656-658        ALC12MTP 659            ALC12MMO 660-661
        ALC12MWK 662-663        ALC12MYR 664-666        ALCAMT 667-668
        ALC5UPNO 669-671        ALC5UPTP 672            ALC5UPYR 673-675
        ALCSTAT1 676            ALC7STAT 677            MET_FLG1 678
        MET_FLG2 679            AHEIGHT 680-681         AWEIGHTP 682-684
        DESIREWT 685            BMI 686-689             AUSUALPL 690
        APLKIND 691             AHCPLROU 692            AHCPLKND 693
        SOURCELA 694-695        AHCCHGYR 696            AHCCHGHI 697
        AHCDLYR1 698            AHCDLYR2 699            AHCDLYR3 700
        AHCDLYR4 701            AHCDLYR5 702            AHCAFYR1 703
        AHCAFYR2 704            AHCAFYR3 705            AHCAFYR4 706
        ADNLONG2 707            AHCSYR1 708             AHCSYR2 709
        AHCSYR3 710             AHCSYR4 711             AHCSYR5 712
        AHCSYR6 713             AHCSYR7 714             AHCSYR8 715
        AHCSYR9 716             AHCSYR10 717            AHERNOY2 718-719
        AHCHYR 720              AHCHMOYR 721-722        AHCHNOY2 723-724
        AHCNOYR2 725-726        ASRGYR 727              ASRGNOYR 728-729
        AMDLONGR 730            SHTFLUYR 731            SHTPNUYR 732
        APOX 733                APOX12MO 734            AHEP 735
        AHEPLIV 736             SHTHEPB 737             SHEPDOS 738
        ALL_SA 739              EVERWRK 740             INDSTRY1 741-742
        INDSTRY2 743-744        INDSTR1A 745-746        INDSTR2A 747-748
        OCCUP1 749-750          OCCUP2 751-752          OCCUP1A 753-754
        OCCUP2A 755-756         WRKCAT 757              WRKCATA 758
        BUSINC1 759             BUSINC1A 760            LOCALL1 761-762
        LOCALL1A 763-764        YRSWRK_P 765-766        YRSWRKPA 767-768
        WRKLONGH 769            HOURPD 770              HOURPDA 771
        PDSICK 772              PDSICKA 773             ONEJOB 774
        SMOKD1 775              BLDGV 776               BLDG12M 777
        HIVTST 778              WHYTST_R 779-780        TST12M_M 781-782
        TST12M_Y 783-786        TIMETST 787             REATST_C 788-789
        REASWHOR 790            LASTST_C 791-792        CLNTYP_C 793-794
        WHOADM 795              GIVNAM 796              EXTST12M 797
        CHNSADSP 798            STMTRU 799              STD 800
        STDDOC 801              STDWHER 802             TBHRD 803
        TBKNOW 804              TB 805                  TBSPRD1 806
        TBSPRD2 807             TBSPRD3 808             TBSPRD4 809
        TBSPRD5 810             TBSPRD6 811             TBCURED 812
        TBCHANC 813             TBSHAME 814             HOMELESS 815
        SUN1_SHA 816            SUN1_HAT 817            SUN2_LGS 818
        SUN2_SCR 819            SPF 820-821             PAPHAD 822
        RPAP1_MT $823-824       RPAP1_YR 825-828        RPAP1_NO 829-830
        RPAP1_TP 831            RPAP2CA 832             RPAP_MO2 833-835
        RPAP3 836               PAPREAS 837             MAMHAD 838
        RMAM1_MT $839-840       RMAM1_YR 841-844        RMAM1_NO 845-846
        RMAM1_TP 847            RMAM2CA 848             RMAM_MO2 849-851
        RMAM3 852               MAMREAS 853             PSAHRD 854
        PSAHAD 855              RPSA1_MT $856-857       RPSA1_YR 858-861
        RPSA1_NO 862-863        RPSA1_TP 864            RPSA2 865
        RPSA_MO2 866-868        RPSA3 869               PSAREAS 870
        CREHAD 871              RCRE1_MT $872-873       RCRE1_YR 874-877
        RCRE1_NO 878-879        RCRE1_TP 880            RCRE2 881
        RCRE_MO2 882-884        RCRE3 885               CRENAM 886
        CREREAS 887             HFOBHAD 888             RHFOB1_M $889-890
        RHFOB1_Y 891-894        RHFOB1_N 895-896        RHFOB1_T 897
        RHFOB2 898              RHFO_MO2 899-901        RHFOB3 902
        HFOBREAS 903            HYPPREG 904             HLOSWGT 905
        WGTADEV 906             WGTADNOW 907            LOWSLT 908
        LOWSLTEV 909            LOWSLTNW 910            EXERC 911
        EXERCEV 912             EXERCNW 913             HBPALC 914
        HBPALCEV 915            HBPALCNW 916            HYPMEDEV 917
        HYPMED 918              HYMDMED 919             ;


* SAS LABEL STATEMENT;

LABEL
   RECSAD  = 'Record Type'
   SRVY_YR = 'Survey Year'
   HHX     = 'Household Serial Number'
   FMX     = 'Family Serial Number'
   PX      = 'Person Number'
   INTV_QRT= 'Interview Quarter'
   SEX     = 'Sex'
   AGE_P   = 'Age'
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
   EDUC    = 'Highest level of school completed'
   AB_BL20K= 'Fam inc at/above vs. below $20,000'
   RAT_CAT = 'Ratio of fam inc to poverty threshold'
   R_MARITL= 'Marital status'
   FM_SIZE = 'Number of persons in family'
   REGION  = 'Region'
   WTIA_SA = 'Weight - Interim Annual'
   WTFA_SA = 'Weight - Final Annual'
   STRATUM = 'Stratum for variance estimation'
   PSU     = 'PSU for variance estimation'
   PROXYSA = 'Response status is ......'
   HYPEV   = 'Ever been told you had hypertension'
   HYPDIFV = 'Ever told had hypertension on 2+ visits'
   HYBPCKNO= 'Duration since last BP check: # of units'
   HYBPCKTP= 'Duration since last BP check: Time units'
   HYBPCKY = 'Dur since last BP check (in years)'
   HYBPLEV = 'Told blood pressure was high/normal/low'
   CLCKNO  = 'Dur since cholesterol checked: # units'
   CLCKTP  = 'Dur since cholesterol checked: Time unit'
   CLCKY   = 'Dur since last cholesterol check (years)'
   CLHI    = 'Told blood cholesterol level was high'
   CHDEV   = 'Ever told you had coronary heart disease'
   ANGEV   = 'Ever been told you had angina pectoris'
   MIEV    = 'Ever been told you had a heart attack'
   HRTEV   = 'Ever told you had a heart cond/disease'
   STREV   = 'Ever been told you had a stroke'
   EPHEV   = 'Ever been told you had emphysema'
   AASMEV  = 'Ever been told you had asthma'
   AASSTILL= 'Still have asthma'
   AASMYR  = 'Had an asthma episode/attack, past 12 m'
   AASMERYR= 'Had visit to ER due to asthma, past 12 m'
   AASMHSP = 'Had stayed overnight in hospital due to'
   AASMMC  = 'Talk with health prof about asthma care'
   AWZMSWK = '# days missed due to asthma, past 12 mo.'
   AWZPIN  = 'Ever used prescription inhaler'
   AASMINST= 'Shown how to use inhaler'
   AASMPMED= 'Used oral inhaler, past 3 mo'
   AASMCAN = 'Used more than 3 canisters of mouth inha'
   AASMED  = 'Ever taken preventive asthma meds'
   AASMDTP = 'Now taking asthma meds'
   AASWMP  = 'Given an asthma management plan'
   AASCLASS= 'Ever taken asthma mgmt. class'
   AAS_REC = 'Taught to recognize asthma episode'
   AAS_RES = 'Taught how to respond to asthma episode'
   AAS_MON = 'Taught how to monitor peak flow for dail'
   AAPENVLN= 'Ever advised to change environment'
   AAPENVDO= 'Follow advice'
   ULCEV   = 'Ever been told you had an ulcer'
   ULCYR   = 'Had an ulcer in past 12 months'
   CANEV   = 'Ever told by a doctor you had cancer'
   CNKIND1 = 'What kind of cancer...bladder'
   CANAGE1 = 'Age first diagnosed w/bladder cancer'
   CNKIND2 = 'What kind of cancer...blood'
   CANAGE2 = 'Age first diagnosed w/cancer of blood'
   CNKIND3 = 'What kind of cancer...bone'
   CANAGE3 = 'Age first diagnosed w/bone cancer'
   CNKIND4 = 'What kind of cancer...brain'
   CANAGE4 = 'Age first diagnosed w/ brain cancer'
   CNKIND5 = 'What kind of cancer...breast'
   CANAGE5 = 'Age first diagnosed w/breast cancer'
   CNKIND6 = 'What kind of cancer...cervix'
   CANAGE6 = 'Age first diagnosed w/cervical cancer'
   CNKIND7 = 'What kind of cancer...colon'
   CANAGE7 = 'Age first diagnosed w/colon cancer'
   CNKIND8 = 'What kind of cancer...esophagus'
   CANAGE8 = 'Age first diagnosed w/esophageal cancer'
   CNKIND9 = 'What kind of cancer...gallbladder'
   CANAGE9 = 'Age first diagnosed w/gallbladder cancer'
   CNKIND10= 'What kind of cancer...kidney'
   CANAGE10= 'Age first diagnosed w/kidney cancer'
   CNKIND11= 'What kind of cancer...larynx-windpipe'
   CANAGE11= 'Age first diag w/cancer: larynx-windpipe'
   CNKIND12= 'What kind of cancer...leukemia'
   CANAGE12= 'Age first diagnosed w/leukemia'
   CNKIND13= 'What kind of cancer...liver'
   CANAGE13= 'Age first diagnosed w/liver cancer'
   CNKIND14= 'What kind of cancer...lung'
   CANAGE14= 'Age first diagnosed w/lung cancer'
   CNKIND15= 'What kind of cancer...lymphoma'
   CANAGE15= 'Age first diagnosed w/lymphoma'
   CNKIND16= 'What kind of cancer...melanoma'
   CANAGE16= 'Age first diagnosed w/melanoma'
   CNKIND17= 'What kind of cancer...mouth/tongue/lip'
   CANAGE17= 'Age first diag w/mouth/tongue/lip cancer'
   CNKIND18= 'What kind of cancer...ovarian'
   CANAGE18= 'Age first diagnosed w/ovarian cancer'
   CNKIND19= 'What kind of cancer...pancreatic'
   CANAGE19= 'Age first diagnosed w/pancreatic cancer'
   CNKIND20= 'What kind of cancer...prostate'
   CANAGE20= 'Age first diagnosed w/prostate cancer'
   CNKIND21= 'What kind of cancer...rectum'
   CANAGE21= 'Age first diagnosed w/cancer of rectum'
   CNKIND22= 'What kind of cancer..skin (non-melanoma)'
   CANAGE22= 'Age first diag:skin cancer, non-melanoma'
   CNKIND23= 'What kind of cancer...skin (DK kind)'
   CANAGE23= 'Age first diag w/skin cancer, DK kind'
   CNKIND24= 'Type of cancer..soft tissue (muscle)'
   CANAGE24= 'Age first diagnosed w/soft tissue cancer'
   CNKIND25= 'What kind of cancer...stomach'
   CANAGE25= 'Age first diagnosed w/stomach cancer'
   CNKIND26= 'What kind of cancer ... testicular'
   CANAGE26= 'Age first diagnosed w/testicular cancer'
   CNKIND27= 'What kind of cancer...throat-pharynx'
   CANAGE27= 'Age first diag w/throat-pharynx cancer'
   CNKIND28= 'What kind of cancer...thyroid'
   CANAGE28= 'Age first diagnosed w/thyroid cancer'
   CNKIND29= 'What kind of cancer...uterine'
   CANAGE29= 'Age first diagnosed w/uterine cancer'
   CNKIND30= 'What kind of cancer...other'
   CANAGE30= 'Age first diagnosed w/other cancer'
   CNKIND31= 'What kind of cancer...more than 3 kinds'
   BRCANDIG= 'How breast cancer was found'
   DIBEV   = 'Ever been told that you have diabetes'
   DIBAGE  = 'Age first diagnosed w/diabetes'
   DIFAGE2 = 'Years since first diagnosed w/diabetes'
   INSLN   = 'NOW taking insulin'
   DIBPILL = 'NOW taking diabetic pills'
   DIBHP   = 'Seeing ONE doctor for diabetes'
   DIBHPYR = '# times seen medical doctor for diabetes'
   DIBNDYR = '# times seen nurse/dietician for diabete'
   DIBGLNO = 'How often blood glucose/sugar checked'
   DIBGLTP = 'How often blood glucose/sugar checked'
   DGLFREQW= 'How often blood glucose/sugar checked'
   DIBA1CKN= 'Heard of glycosylated hemoglobin/hemoglo'
   DIBA1CCK= '# times checked for glycosylated hemoglo'
   DIBA1CLL= 'Hemoglobin ''A one C'' level , past 12 mo.'
   DIBA1CSL= 'Safe hemoglobin ''A one C'' level , past 1'
   DIBFTCK = '# times checked feet for irritations, pa'
   DIBCKNO = 'How often feet checked for sores'
   DIBCKTP = 'How often feet checked for sores'
   DCKFREQW= 'How often feet checked for sores'
   DIBEYCKL= 'Eye exam'
   AHAYFYR = 'Told that you had hay fever, past 12 m'
   SINYR   = 'Told that you had sinusitis, past 12 m'
   CBRCHYR = 'Told you had chronic bronchitis, 12 m'
   KIDWKYR = 'Told you had weak/failing kidneys, 12 m'
   LIVYR   = 'Told you had liver condition, past 12 m'
   JNTSYMP = 'Had pain/aching at joints, past 30 d'
   JMTHP1  = 'Which joint affected...shoulder-right'
   JMTHP2  = 'Which joint affected...shoulder-left'
   JMTHP3  = 'Which joint affected...elbow-right'
   JMTHP4  = 'Which joint affected...elbow-left'
   JMTHP5  = 'Which joint affected...hip-right'
   JMTHP6  = 'Which joint affected...hip-left'
   JMTHP7  = 'Which joint affected...wrist-right'
   JMTHP8  = 'Which joint affected...wrist-left'
   JMTHP9  = 'Which joint affected...knee-right'
   JMTHP10 = 'Which joint affected...knee-left'
   JMTHP11 = 'Which joint affected...ankle-right'
   JMTHP12 = 'Which joint affected...ankle-left'
   JMTHP13 = 'Which joint affected...toes-right'
   JMTHP14 = 'Which joint affected...toes-left'
   JMTHP15 = 'Which jnt affected..fingers/thumb-right'
   JMTHP16 = 'Which jnt affected..fingers/thumb-left'
   JMTHP17 = 'Which joint affected...other, not listed'
   JNTPN   = 'Rate your joint pain, past 30 days'
   JNTCHR  = 'Joint symp began 3+ months ago'
   JNTHP   = 'Ever seen a dr. for joint symptoms'
   ARTH1   = 'Ever told you had arthritis, gout, lupus'
   ARTHWT  = 'Ever told to lose weight to help arth'
   ARTHPH  = 'Ever told to exercise to help arthritis'
   ARTHCLS = 'Ever taken a class to help arthritis'
   ARTHLMT = 'Limited in activities due to arthritis'
   ARTHWRK = 'Limited in work due to arthritis'
   PAINECK = 'Had neck pain, past 3 months'
   PAINLB  = 'Had low back pain, past 3 months'
   PAINLEG = 'Pain spread down leg/below knees'
   PAINFACE= 'Had pain in jaw/front of ear, past 3 m'
   AMIGR   = 'Had severe headache/migraine, past 3 m'
   ACOLD2W = 'Had a head/chest cold past 2 weeks'
   AINTIL2W= 'Had stomach prob w/vomit/diarrhea, 2 w'
   PREGNOW = 'Currently pregnant'
   HEARAID = 'Had ever worn a hearing aid'
   AHEARST = 'Description of hearing w/o hearing aid'
   AVISION = 'Trouble seeing even w/glasses/lenses'
   ABLIND  = 'Blind or unable to see at all'
   LUPPRT  = 'Lost all upper & lower natural teeth'
   SAD     = 'So sad nothing cheers you up, past 30 d'
   NERVOUS = 'How often felt nervous, past 30 days'
   RESTLESS= 'How often restless/fidgety, past 30 days'
   HOPELESS= 'How often felt hopeless, past 30 days'
   EFFORT  = 'Felt everything was an effort, past 30 d'
   WORTHLS = 'How often felt worthless, past 30 days'
   MHAMTMO = 'Feelings interfered w/life, past 30 days'
   WRKLYR3 = 'Work status: last week, past 12 m'
   WKDAYR  = 'Number of work loss days, past 12 months'
   BEDDAYR = 'Number of bed days, past 12 months'
   AHSTATYR= 'Hlth better/worse/same, comp w/12m ago'
   SPECEQ  = 'Have hlth prob that requires spec equip'
   FLWALK  = 'How dif walk 1/4 mile w/o spec equip'
   FLCLIMB = 'How dif walk up 10 steps w/o spec equip'
   FLSTAND = 'How dif stand for 2 hrs w/o spec equip'
   FLSIT   = 'How dif sit for 2 hrs w/o spec equip'
   FLSTOOP = 'How dif stoop/bend/kneel w/o spec equip'
   FLREACH = 'How dif reach over head w/o spec equip'
   FLGRASP = 'How dif grasp objects w/o spec equip'
   FLCARRY = 'How dif lift/carry 10 lbs w/o spec equip'
   FLPUSH  = 'How dif push large object w/o spec equip'
   FLSHOP  = 'How dif go out to events w/o spec equip'
   FLSOCL  = 'How dif social activities w/o spec equip'
   FLRELAX = 'How dif do acts to relax w/o spec equip'
   FLA1AR  = 'Any functional limitation, all conds'
   AFLHCA1 = 'Vision problem'
   AFLHCA2 = 'Hearing problem'
   AFLHCA3 = 'Arthritis/rheumatism'
   AFLHCA4 = 'Back/neck problem'
   AFLHCA5 = 'Fracture/bone/joint injury'
   AFLHCA6 = 'Other injury'
   AFLHCA7 = 'Heart problem'
   AFLHCA8 = 'Stroke problem'
   AFLHCA9 = 'Hypertension/high blood pressure'
   AFLHCA10= 'Diabetes'
   AFLHCA11= 'Lung/breathing prob/asthma/emphysema'
   AFLHCA12= 'Cancer'
   AFLHCA13= 'Birth defect'
   AFLHCA14= 'Mental retardation'
   AFLHCA15= 'Otr developmental prob/cerebral palsy'
   AFLHCA16= 'Senility/dementia/alzheimers'
   AFLHCA17= 'Depression/anxiety/emotional problem'
   AFLHCA18= 'Weight problem/overweight/obesity'
   AFLHCA19= 'Missing or amputated limb/finger/digit'
   AFLHCA20= 'Musculoskeletal/connective tissue prob'
   AFLHCA21= 'Circulation problem'
   AFLHCA22= 'Endocrine/nutritional/metabolic prob'
   AFLHCA23= 'Nervous system/sensory organ condition'
   AFLHCA24= 'Digestive system problem'
   AFLHCA25= 'Genitourinary system problem'
   AFLHCA26= 'Skin/subcutaneous system problem'
   AFLHCA27= 'Blood or blood-forming organ problem'
   AFLHCA28= 'Benign tumor/cyst'
   AFLHCA29= 'Alcohol/drug/substance abuse problem'
   AFLHCA30= 'Otr mental prob/ADD/bipolar/schizophreni'
   AFLHCA31= 'Surgical after-effects/medical treatment'
   AFLHCA32= '''Old age''/elderly/aging-related problem'
   AFLHCA33= 'Fatigue/tiredness/weakness'
   AFLHCA34= 'Pregnancy-related problem'
   AFLHCA90= 'Other prob 1, not elsewhere classified'
   AFLHCA91= 'Other prob 2, not elsewhere classified'
   ALTIME1 = 'Duration of vision prob: # of units'
   ALUNIT1 = 'Duration of vision prob: Time unit'
   ALDURA1 = 'Duration of vision prob (in years)'
   ALDURB1 = 'Duration of vision prob recode 2'
   ALCHRC1 = 'Vision problem condition status'
   ALTIME2 = 'Duration of hearing prob: # of units'
   ALUNIT2 = 'Duration of hearing prob: Time unit'
   ALDURA2 = 'Duration of hearing prob (in years)'
   ALDURB2 = 'Duration of hearing prob recode 2'
   ALCHRC2 = 'Hearing problem condition status'
   ALTIME3 = 'Duration of arthritis/rheum: # of units'
   ALUNIT3 = 'Duration of arthritis/rheum: Time unit'
   ALDURA3 = 'Duration of arthritis/rheum (in years)'
   ALDURB3 = 'Duration of arthritis/rheum recode 2'
   ALCHRC3 = 'Arthritis/rheum condition status'
   ALTIME4 = 'Duration of back/neck prob: # of units'
   ALUNIT4 = 'Duration of back/neck prob: Time unit'
   ALDURA4 = 'Duration of back/neck prob (in years)'
   ALDURB4 = 'Duration of back/neck prob recode 2'
   ALCHRC4 = 'Back/neck problem condition status'
   ALTIME5 = 'Dur of fract/bone/joint inj: # of units'
   ALUNIT5 = 'Dur of fract/bone/joint inj: Time unit'
   ALDURA5 = 'Dur of fract/bone/joint inj (in years)'
   ALDURB5 = 'Dur of fract/bone/joint inj recode 2'
   ALCHRC5 = 'Fract/bone/joint inj condition status'
   ALTIME6 = 'Duration of other injury: # of units'
   ALUNIT6 = 'Duration of other injury: Time unit'
   ALDURA6 = 'Duration of other injury (in years)'
   ALDURB6 = 'Duration of other injury recode 2'
   ALCHRC6 = 'Other injury condition status'
   ALTIME7 = 'Duration of heart prob: # of units'
   ALUNIT7 = 'Duration of heart prob: Time unit'
   ALDURA7 = 'Duration of heart prob (in years)'
   ALDURB7 = 'Duration of heart prob recode 2'
   ALCHRC7 = 'Heart problem condition status'
   ALTIME8 = 'Duration of stroke: # of units'
   ALUNIT8 = 'Duration of stroke: Time unit'
   ALDURA8 = 'Duration of stroke (in years)'
   ALDURB8 = 'Duration of stroke recode 2'
   ALCHRC8 = 'Stroke condition status'
   ALTIME9 = 'Duration of hypertension: # of units'
   ALUNIT9 = 'Duration of hypertension: Time unit'
   ALDURA9 = 'Duration of hypertension (in years)'
   ALDURB9 = 'Duration of hypertension recode 2'
   ALCHRC9 = 'Hypertension condition status'
   ALTIME10= 'Duration of diabetes: # of units'
   ALUNIT10= 'Duration of diabetes: Time unit'
   ALDURA10= 'Duration of diabetes (in years)'
   ALDURB10= 'Duration of diabetes recode 2'
   ALCHRC10= 'Diabetes condition status'
   ALTIME11= 'Duration of lung/breath prob: # of units'
   ALUNIT11= 'Duration of lung/breath prob: Time unit'
   ALDURA11= 'Duration of lung/breath prob (in years)'
   ALDURB11= 'Duration of lung/breath prob recode 2'
   ALCHRC11= 'Lung/breath prob condition status'
   ALTIME12= 'Duration of cancer: # of units'
   ALUNIT12= 'Duration of cancer: Time unit'
   ALDURA12= 'Duration of cancer (in years)'
   ALDURB12= 'Duration of cancer recode 2'
   ALCHRC12= 'Cancer condition status'
   ALTIME13= 'Duration of birth defect: # of units'
   ALUNIT13= 'Duration of birth defect: Time unit'
   ALDURA13= 'Duration of birth defect (in years)'
   ALDURB13= 'Duration of birth defect recode 2'
   ALCHRC13= 'Birth defect condition status'
   ALTIME14= 'Dur of mental retardation: # of units'
   ALUNIT14= 'Dur of mental retardation: Time unit'
   ALDURA14= 'Dur of mental retardation (in years)'
   ALDURB14= 'Duration of mental retardation recode 2'
   ALCHRC14= 'Mental retardation condition status'
   ALTIME15= 'Duration of otr dev prob: # of units'
   ALUNIT15= 'Duration of otr dev prob: Time unit'
   ALDURA15= 'Duration of otr dev prob (in years)'
   ALDURB15= 'Duration of otr dev prob recode 2'
   ALCHRC15= 'Otr dev problem condition status'
   ALTIME16= 'Duration of senility: # of units'
   ALUNIT16= 'Duration of senility: Time unit'
   ALDURA16= 'Duration of senility (in years)'
   ALDURB16= 'Duration of senility recode 2'
   ALCHRC16= 'Senility condition status'
   ALTIME17= 'Dur of dep/anx/emot prob: # of units'
   ALUNIT17= 'Duration of dep/anx/emot prob: Time unit'
   ALDURA17= 'Duration of dep/anx/emot prob (in years)'
   ALDURB17= 'Duration of dep/anx/emot prob recode 2'
   ALCHRC17= 'Dep/anx/emot problem condition status'
   ALTIME18= 'Duration of weight prob: # of units'
   ALUNIT18= 'Duration of weight prob: Time unit'
   ALDURA18= 'Duration of weight prob (in years)'
   ALDURB18= 'Duration of weight prob recode 2'
   ALCHRC18= 'Weight problem condition status'
   ALTIME19= 'Dur of miss limb/amputation: # of units'
   ALUNIT19= 'Dur of miss limb/amputation: Time unit'
   ALDURA19= 'Dur of miss limb/amputation (in years)'
   ALDURB19= 'Dur of miss limb/amputation recode 2'
   ALCHRC19= 'Missing limb/amputation condition status'
   ALTIME20= 'Dur of musculoskeletal prob: # of units'
   ALUNIT20= 'Dur of musculoskeletal prob: Time unit'
   ALDURA20= 'Dur of musculoskeletal prob: (in years)'
   ALDURB20= 'Dur of musculoskeletal prob recode 2'
   ALCHRC20= 'Musculoskeletal problem condition status'
   ALTIME21= 'Duration of circulatory prob: # of units'
   ALUNIT21= 'Duration of circulatory prob: Time unit'
   ALDURA21= 'Duration of circulatory prob (in years)'
   ALDURB21= 'Duration of circulatory prob recode 2'
   ALCHRC21= 'Circulatory problem condition status'
   ALTIME22= 'Duration of endocrine prob: # of units'
   ALUNIT22= 'Duration of endocrine problem: Time unit'
   ALDURA22= 'Duration of endocrine problem (in years)'
   ALDURB22= 'Duration of endocrine problem recode 2'
   ALCHRC22= 'Endocrine problem condition status'
   ALTIME23= 'Duration of nervous sys cond: # of units'
   ALUNIT23= 'Duration of nervous sys cond: Time unit'
   ALDURA23= 'Duration of nervous sys cond (in years)'
   ALDURB23= 'Duration of nervous sys cond recode 2'
   ALCHRC23= 'Nervous sys condition status'
   ALTIME24= 'Duration of digestive prob: # of units'
   ALUNIT24= 'Duration of digestive prob: Time unit'
   ALDURA24= 'Duration of digestive prob (in years)'
   ALDURB24= 'Duration of digestive problem recode 2'
   ALCHRC24= 'Digestive problem condition status'
   ALTIME25= 'Dur of genitourinary prob: # of units'
   ALUNIT25= 'Dur of genitourinary prob: Time unit'
   ALDURA25= 'Dur of genitourinary prob (in years)'
   ALDURB25= 'Duration of genitourinary prob recode 2'
   ALCHRC25= 'Genitourinary prob condition status'
   ALTIME26= 'Duration of skin problem: # of units'
   ALUNIT26= 'Duration of skin problem: Time unit'
   ALDURA26= 'Duration of skin problem (in years)'
   ALDURB26= 'Duration of skin problem recode 2'
   ALCHRC26= 'Skin problem condition status'
   ALTIME27= 'Duration of blood problem: # of units'
   ALUNIT27= 'Duration of blood problem: Time unit'
   ALDURA27= 'Duration of blood problem (in years)'
   ALDURB27= 'Duration of blood problem recode 2'
   ALCHRC27= 'Blood problem condition status'
   ALTIME28= 'Duration of benign tumor: # of units'
   ALUNIT28= 'Duration of benign tumor: Time unit'
   ALDURA28= 'Duration of benign tumor (in years)'
   ALDURB28= 'Duration of benign tumor recode 2'
   ALCHRC28= 'Benign tumor condition status'
   ALTIME29= 'Dur of alcohol/drug prob: # of units'
   ALUNIT29= 'Duration of alcohol/drug prob: Time unit'
   ALDURA29= 'Duration of alcohol/drug prob (in years)'
   ALDURB29= 'Duration of alcohol/drug prob recode 2'
   ALCHRC29= 'Alcohol or drug prob condition status'
   ALTIME30= 'Duration of oth mental prob: # of units'
   ALUNIT30= 'Duration of oth mental prob: Time unit'
   ALDURA30= 'Duration of oth mental prob (in years)'
   ALDURB30= 'Duration of oth mental prob recode 2'
   ALCHRC30= 'Oth mental prob condition status'
   ALTIME31= 'Dur of surg after-effects: # of units'
   ALUNIT31= 'Dur of surg after-effects: Time unit'
   ALDURA31= 'Dur of surg after-effects (in years)'
   ALDURB31= 'Duration of surg after-effects recode 2'
   ALCHRC31= 'Surgical after-effects condition status'
   ALTIME32= 'Duration of ''old age'': # of units'
   ALUNIT32= 'Duration of ''old age'': Time unit'
   ALDURA32= 'Duration of ''old age'' (in years)'
   ALDURB32= 'Duration of ''old age'' recode 2'
   ALCHRC32= '''Old age'' condition status'
   ALTIME33= 'Duration of fatigue prob: # of units'
   ALUNIT33= 'Duration of fatigue prob: Time unit'
   ALDURA33= 'Duration of fatigue prob (in years)'
   ALDURB33= 'Duration of fatigue prob recode 2'
   ALCHRC33= 'Fatigue problem condition status'
   ALTIME34= 'Dur of preg-related prob: # of units'
   ALUNIT34= 'Duration of preg-related prob: Time unit'
   ALDURA34= 'Duration of preg-related prob (in years)'
   ALDURB34= 'Duration of preg-related prob recode 2'
   ALCHRC34= 'Pregnancy-related prob condition status'
   ALTIME90= 'Dur of oth N.E.C. prob (1): # of units'
   ALUNIT90= 'Dur of oth N.E.C. prob (1): Time unit'
   ALDURA90= 'Dur of oth N.E.C. prob (1) (in years)'
   ALDURB90= 'Dur of oth N.E.C. prob (1) recode 2'
   ALCHRC90= 'Other N.E.C. prob (1) condition status'
   ALTIME91= 'Dur of oth N.E.C. prob (2): # of units'
   ALUNIT91= 'Dur of oth N.E.C. prob (2): Time unit'
   ALDURA91= 'Dur of oth N.E.C. prob (2) (in years)'
   ALDURB91= 'Dur of oth N.E.C. prob (2) recode 2'
   ALCHRC91= 'Other N.E.C. prob (2) condition status'
   ALCNDRT = 'Chronic cond rec for ind w/functl lim'
   ALCHRONR= 'Overall functl lim recode by cond status'
   SMKEV   = 'Ever smoked 100 cigarettes'
   SMKREG  = 'Age first smoked fairly regularly'
   SMKNOW  = 'Smoke freq:every day/some day/not at all'
   SMKQTNO = 'Time since quit smoking: # of units'
   SMKQTTP = 'Time since quit smoking: Time unit'
   SMKQTY  = 'Time since quit smoking (in years)'
   SMKQTD  = 'Quit smoking since {month, 1 year ago}'
   CIGSDA1 = 'Number cigs per day (daily smokers)'
   CIGDAMO = 'Number days smoked in past 30 days'
   CIGSDA2 = 'Number cigs in a day (some day smokers)'
   CIGSDAY = 'Number cigs a day (all smokers)'
   SMKSTAT1= 'Smoking Status: Recode 1'
   SMKSTAT2= 'Smoking Status: Recode 2'
   SMKSTAT3= 'Smoking Status: Recode 3'
   CIGQTYR = 'Tried quit smoking 1+ days, past 12 m'
   VIGNO   = 'Freq vigorous activity: # of units'
   VIGTP   = 'Freq vigorous activity: Time units'
   VIGFREQW= 'Freq vigorous activity (times per wk)'
   VIGLNGNO= 'Duration vig activity: # of units'
   VIGLNGTP= 'Duration vigorous activity: Time unit'
   VIGMIN  = 'Duration vigorous activity (in minutes)'
   VIGLONGD= 'Dur of vigorous activity: <20 or 20+ min'
   MODNO   = 'Freq light/mod activity: # of units'
   MODTP   = 'Freq light/mod activity: Time units'
   MODFREQW= 'Freq light/mod activity (times per wk)'
   MODLNGNO= 'Duration light/mod activity: # of units'
   MODLNGTP= 'Duration light/mod activity: Time unit'
   MODMIN  = 'Duration light/mod activity (in minutes)'
   MODLONGD= 'Dur light/mod activity: <20 or 20+ min'
   STRNGNO = 'Freq strengthening activity: # of units'
   STRNGTP = 'Freq strengthening activity: Time unit'
   STRFREQW= 'Freq strength activity (times per wk)'
   ALC1YR  = 'Ever had 12+ drinks in any one year'
   ALCLIFE = 'Had 12+ drinks in ENTIRE LIFE'
   ALC12MNO= 'Freq drank alcohol past year: # of units'
   ALC12MTP= 'Freq drank alcohol past year: Time unit'
   ALC12MMO= 'Freq drank alcohol: Days per month'
   ALC12MWK= 'Freq drank alcohol: Days per week'
   ALC12MYR= 'Freq drank alcohol: Days in past year'
   ALCAMT  = 'Average # drinks on days drank'
   ALC5UPNO= 'Days had 5+ drinks, past year: # of days'
   ALC5UPTP= 'Days had 5+ drinks past year: Time unit'
   ALC5UPYR= 'Number of days had 5+ drinks past year'
   ALCSTAT1= 'Alcohol Drinking Status: Recode'
   ALC7STAT= 'Current alcohol drinking status: Recode'
   MET_FLG1= 'Flag: Metric units reported for height'
   MET_FLG2= 'Flag: Metric units reported for weight'
   AHEIGHT = 'Total height in inches'
   AWEIGHTP= 'Weight w/o shoes (pounds)'
   DESIREWT= 'Desirable Body Weight'
   BMI     = 'Body Mass Index (BMI)'
   AUSUALPL= 'Place USUALLY go when sick'
   APLKIND = 'Place to go when sick (most often)'
   AHCPLROU= 'USUALLY go there for routine/prev care'
   AHCPLKND= 'Place usually go for routine prev care'
   SOURCELA= 'Source of medical care recode'
   AHCCHGYR= 'Change health care place, past 12 mo'
   AHCCHGHI= 'Change due to hlth insurance'
   AHCDLYR1= 'Couldn''t get through on phone, past 12 m'
   AHCDLYR2= 'Couldn''t get appt soon enough, past 12 m'
   AHCDLYR3= 'Wait too long in dr''s office, past 12 mo'
   AHCDLYR4= 'Not open when you could go, past 12 mo'
   AHCDLYR5= 'No transportation, past 12 mo'
   AHCAFYR1= 'Can''t afford presc medicine, past 12 mo'
   AHCAFYR2= 'Can''t afford mental care/counsel, 12 mo'
   AHCAFYR3= 'Can''t afford dental care, past 12 mo'
   AHCAFYR4= 'Can''t afford eyeglasses, past 12 mo'
   ADNLONG2= 'Time since last saw a dentist'
   AHCSYR1 = 'Seen/talk to mental hlth prof, past 12 m'
   AHCSYR2 = 'Seen/talk to eye doctor, past 12 mo'
   AHCSYR3 = 'Seen/talk to foot doctor, past 12 mo'
   AHCSYR4 = 'Seen/talk to a chiropractor, past 12 mo'
   AHCSYR5 = 'Seen/talk to therapist (PT/OT) past 12 m'
   AHCSYR6 = 'Seen/talk to a NP/PA/midwife, past 12 mo'
   AHCSYR7 = 'Seen/talk to OB/GYN, past 12 mo'
   AHCSYR8 = 'Seen/talk to a med specialist, past 12 m'
   AHCSYR9 = 'Seen/talk to a general doctor, past 12 m'
   AHCSYR10= 'Does that Dr treat both kids and adults'
   AHERNOY2= '# times in ER/ED, past 12 mo'
   AHCHYR  = 'Get home care from hlth prof, past 12 mo'
   AHCHMOYR= 'How many months of home care, past 12 mo'
   AHCHNOY2= 'Total number of home visits'
   AHCNOYR2= 'Total number of office visits, past 12 m'
   ASRGYR  = 'Had surgery in the past 12 mo'
   ASRGNOYR= 'Total # of surgeries in the past 12 mo'
   AMDLONGR= 'Time since last saw/talked to hlth prof'
   SHTFLUYR= 'Had flu shot past 12 mo'
   SHTPNUYR= 'Ever had pneumonia shot'
   APOX    = 'Ever had chickenpox'
   APOX12MO= 'Had chickenpox, past 12 mo'
   AHEP    = 'Ever had hepatitis'
   AHEPLIV = 'Ever lived w/ someone w/ hepatitis'
   SHTHEPB = 'Ever received hepatitis B vaccine'
   SHEPDOS = '# doses of hepatitis B vaccine received'
   ALL_SA  = 'Employment status'
   EVERWRK = 'Ever worked'
   INDSTRY1= 'Detailed industry classification'
   INDSTRY2= 'Simple industry classification'
   INDSTR1A= 'Detailed industry classification'
   INDSTR2A= 'Simple industry classification'
   OCCUP1  = 'Detailed occupation classification'
   OCCUP2  = 'Simple occupation classification'
   OCCUP1A = 'Detailed occupation classification'
   OCCUP2A = 'Simple occupation classification'
   WRKCAT  = 'Class of worker'
   WRKCATA = 'Class of worker'
   BUSINC1 = 'Current job an incorporated business'
   BUSINC1A= 'Current/last/longest-held job inc bus'
   LOCALL1 = 'Number of employees at work'
   LOCALL1A= 'Number of employees at work'
   YRSWRK_P= 'Years on the job'
   YRSWRKPA= 'Years on the job'
   WRKLONGH= 'Duration of current/most recent job'
   HOURPD  = 'Paid by the hour at current job'
   HOURPDA = 'Paid by hr at current/most recent job'
   PDSICK  = 'Paid sick leave at current job'
   PDSICKA = 'Paid sick leave current/most recent job'
   ONEJOB  = 'Have more than one job'
   SMOKD1  = 'Smoke alarm'
   BLDGV   = 'Donated blood since March 1985'
   BLDG12M = 'Donated blood past 12 m'
   HIVTST  = 'Ever been tested for HIV?'
   WHYTST_R= 'Reason why you have not been tested?'
   TST12M_M= 'Month of last test for HIV'
   TST12M_Y= 'Year of last test for HIV'
   TIMETST = 'Was it:'
   REATST_C= 'Main reason for last HIV test'
   REASWHOR= 'Who suggested you should be tested'
   LASTST_C= 'Location of last HIV test'
   CLNTYP_C= 'Type of clinic for last HIV test'
   WHOADM  = 'Who administered the test?'
   GIVNAM  = 'Gave your first and last names?'
   EXTST12M= 'HIV test in the next 12 m'
   CHNSADSP= 'Chances of getting AIDS virus'
   STMTRU  = 'Are any of these statements true'
   STD     = 'Had an STD otr than HIV/AIDS, past 5 yrs'
   STDDOC  = 'Saw a doctor or health professional'
   STDWHER = 'Place where checked'
   TBHRD   = 'Ever heard of tuberculosis'
   TBKNOW  = 'Ever personally known anyone who had TB'
   TB      = 'How much do you know about TB?'
   TBSPRD1 = 'Breathing air around person sick with TB'
   TBSPRD2 = 'Sharing eating/drinking utensils'
   TBSPRD3 = 'Thru semen/vaginal secretions (sex)'
   TBSPRD4 = 'From smoking'
   TBSPRD5 = 'From mosquito or other insect bites'
   TBSPRD6 = 'Other'
   TBCURED = 'Can TB be cured?'
   TBCHANC = 'Chances of getting TB'
   TBSHAME = 'Ashamed if you/family diagnosed with TB'
   HOMELESS= 'Spent 24+ hrs living in st., shltr, jail'
   SUN1_SHA= 'Stay in shade on sunny day'
   SUN1_HAT= 'Wear wide-brimmed hat on sunny day'
   SUN2_LGS= 'Wear long sleeved shirt on sunny day'
   SUN2_SCR= 'Use sunscreen on sunny day'
   SPF     = 'SPF number of sunscreen used most often'
   PAPHAD  = 'Ever had Pap smear test'
   RPAP1_MT= 'Month of most recent Pap smear'
   RPAP1_YR= 'Year of most recent Pap smear'
   RPAP1_NO= 'Time ago date of pap smear: # of units'
   RPAP1_TP= 'Time ago date of pap smear: Time unit'
   RPAP2CA = 'Most recent Pap smear time categories'
   RPAP_MO2= 'Months since last pap smear exam'
   RPAP3   = 'Most recent pap smear exam, time categor'
   PAPREAS = 'Reason for most recent Pap smear'
   MAMHAD  = 'Ever had mammogram'
   RMAM1_MT= 'Month of most recent mammogram'
   RMAM1_YR= 'Year of most recent mammogram'
   RMAM1_NO= 'Time ago date of mammogram: # of units'
   RMAM1_TP= 'Time ago date of mammogram: time unit'
   RMAM2CA = 'Most recent mammogram, time categories'
   RMAM_MO2= 'Months since last mammogram'
   RMAM3   = 'Most recent mammogram, time categories'
   MAMREAS = 'Reason for most recent mammogram'
   PSAHRD  = 'Ever heard of PSA test'
   PSAHAD  = 'Ever had PSA test'
   RPSA1_MT= 'Month of most recent PSA test'
   RPSA1_YR= 'Year of most recent PSA test'
   RPSA1_NO= 'Time ago date of PSA test: # of units'
   RPSA1_TP= 'Time ago date of PSA test: time unit'
   RPSA2   = 'Most recent PSA test, time categories'
   RPSA_MO2= 'Months since last PSA test'
   RPSA3   = 'Most recent PSA test, time categories'
   PSAREAS = 'Reason for most recent PSA test'
   CREHAD  = 'Ever had colorectal screening exam'
   RCRE1_MT= 'Month of most recent colorectal exam'
   RCRE1_YR= 'Year of most recent colorectal exam'
   RCRE1_NO= 'Time ago date of exam: # of units'
   RCRE1_TP= 'Time ago date of exam: time unit'
   RCRE2   = 'Most recent colorectal exam, time catego'
   RCRE_MO2= 'Months since last colorectal exam'
   RCRE3   = 'Most recent colorectal exam, time catego'
   CRENAM  = 'Type of recent colorectal exam'
   CREREAS = 'Reason for most recent colorectal exam'
   HFOBHAD = 'Had blood stool test using home test kit'
   RHFOB1_M= 'Month of most recent home blood stool te'
   RHFOB1_Y= 'Year of most recent home blood stool tes'
   RHFOB1_N= 'Time ago date of exam: # of units'
   RHFOB1_T= 'Time ago date of exam: time unit'
   RHFOB2  = 'Home blood stool test, time categories'
   RHFO_MO2= 'Months since last home fecal occult bloo'
   RHFOB3  = 'Most recent home fecal occult blood test'
   HFOBREAS= 'Reas for recent home blood stool test'
   HYPPREG = 'Was your HBP only during pregnancy'
   HLOSWGT = 'Ever advised to change diet to lower HBP'
   WGTADEV = 'Ever follow advice to change diet (HBP)'
   WGTADNOW= 'Now following advice to change diet'
   LOWSLT  = 'Ever told to reduce salt due to your HBP'
   LOWSLTEV= 'Ever follow advice to reduce salt (HBP)'
   LOWSLTNW= 'Now following advice to reduce salt'
   EXERC   = 'Ever told to exercise due to HBP'
   EXERCEV = 'Ever follow advice to exercise (HBP)'
   EXERCNW = 'Now following advice to exercise (HBP)'
   HBPALC  = 'Ever told to reduce alcohol due to HBP'
   HBPALCEV= 'Ever follow advice to reduce alcohol use'
   HBPALCNW= 'Now following advice to reduce alcohol'
   HYPMEDEV= 'Ever prescribed medicine for HBP'
   HYPMED  = 'NOW taking medicine prescribed for HBP'
   HYMDMED = 'Advised to stop taking medicine for HBP'
        ;


* SAS FORMAT STATEMENT;

/*
  FORMAT RECSAD RECSAD. SRVY_YR SRVY_YR. INTV_QRT INTV_QRT.
         SEX SEX. AGE_P AGE_P. ORIGIN_I ORIGIN_I.
         ORIGIMPT ORIGIMPT. HISPAN_I HISPAN_I. HISPIMPT HISPIMPT.
         RACERPI2 RACERPIf. RACEIMP2 RACEIMPf. MRACRPI2 MRACRPIf.
         MRACBPI2 MRACBPIf. RACRECI2 RACRECIf. HISCODI2 HISCODIf.
         ERIMPFLG ERIMPFLG. EDUC EDUC. AB_BL20K AB_BL20K.
         RAT_CAT RAT_CAT. R_MARITL R_MARITL. REGION REGION.
         PROXYSA PROXYSA. HYPEV HYPEV. HYPDIFV HYPDIFV.
         HYBPCKNO HYBPCKNO. HYBPCKTP HYBPCKTP. HYBPCKY HYBPCKY.
         HYBPLEV HYBPLEV. CLCKNO CLCKNO. CLCKTP CLCKTP.
         CLCKY CLCKY. CLHI CLHI. CHDEV CHDEV.
         ANGEV ANGEV. MIEV MIEV. HRTEV HRTEV.
         STREV STREV. EPHEV EPHEV. AASMEV AASMEV.
         AASSTILL AASSTILL. AASMYR AASMYR. AASMERYR AASMERYR.
         AASMHSP AASMHSP. AASMMC AASMMC. AWZMSWK AWZMSWK.
         AWZPIN AWZPIN. AASMINST AASMINST. AASMPMED AASMPMED.
         AASMCAN AASMCAN. AASMED AASMED. AASMDTP AASMDTP.
         AASWMP AASWMP. AASCLASS AASCLASS. AAS_REC AAS_REC.
         AAS_RES AAS_RES. AAS_MON AAS_MON. AAPENVLN AAPENVLN.
         AAPENVDO AAPENVDO. ULCEV ULCEV. ULCYR ULCYR.
         CANEV CANEV. CNKIND1 CNKIND1f. CANAGE1 CANAGE1f.
         CNKIND2 CNKIND2f. CANAGE2 CANAGE2f. CNKIND3 CNKIND3f.
         CANAGE3 CANAGE3f. CNKIND4 CNKIND4f. CANAGE4 CANAGE4f.
         CNKIND5 CNKIND5f. CANAGE5 CANAGE5f. CNKIND6 CNKIND6f.
         CANAGE6 CANAGE6f. CNKIND7 CNKIND7f. CANAGE7 CANAGE7f.
         CNKIND8 CNKIND8f. CANAGE8 CANAGE8f. CNKIND9 CNKIND9f.
         CANAGE9 CANAGE9f. CNKIND10 CNKIND0f. CANAGE10 CANAGE0f.
         CNKIND11 CNKIN10f. CANAGE11 CANAG10f. CNKIND12 CNKIN11f.
         CANAGE12 CANAG11f. CNKIND13 CNKIN12f. CANAGE13 CANAG12f.
         CNKIND14 CNKIN13f. CANAGE14 CANAG13f. CNKIND15 CNKIN14f.
         CANAGE15 CANAG14f. CNKIND16 CNKIN15f. CANAGE16 CANAG15f.
         CNKIND17 CNKIN16f. CANAGE17 CANAG16f. CNKIND18 CNKIN17f.
         CANAGE18 CANAG17f. CNKIND19 CNKIN18f. CANAGE19 CANAG18f.
         CNKIND20 CNKIN19f. CANAGE20 CANAG19f. CNKIND21 CNKIN20f.
         CANAGE21 CANAG20f. CNKIND22 CNKIN21f. CANAGE22 CANAG21f.
         CNKIND23 CNKIN22f. CANAGE23 CANAG22f. CNKIND24 CNKIN23f.
         CANAGE24 CANAG23f. CNKIND25 CNKIN24f. CANAGE25 CANAG24f.
         CNKIND26 CNKIN25f. CANAGE26 CANAG25f. CNKIND27 CNKIN26f.
         CANAGE27 CANAG26f. CNKIND28 CNKIN27f. CANAGE28 CANAG27f.
         CNKIND29 CNKIN28f. CANAGE29 CANAG28f. CNKIND30 CNKIN29f.
         CANAGE30 CANAG29f. CNKIND31 CNKIN30f. BRCANDIG BRCANDIG.
         DIBEV DIBEV. DIBAGE DIBAGE. DIFAGE2 DIFAGE2f.
         INSLN INSLN. DIBPILL DIBPILL. DIBHP DIBHP.
         DIBHPYR DIBHPYR. DIBNDYR DIBNDYR. DIBGLNO DIBGLNO.
         DIBGLTP DIBGLTP. DGLFREQW DGLFREQW. DIBA1CKN DIBA1CKN.
         DIBA1CCK DIBA1CCK. DIBA1CLL DIBA1CLL. DIBA1CSL DIBA1CSL.
         DIBFTCK DIBFTCK. DIBCKNO DIBCKNO. DIBCKTP DIBCKTP.
         DCKFREQW DCKFREQW. DIBEYCKL DIBEYCKL. AHAYFYR AHAYFYR.
         SINYR SINYR. CBRCHYR CBRCHYR. KIDWKYR KIDWKYR.
         LIVYR LIVYR. JNTSYMP JNTSYMP. JMTHP1 JMTHP1ff.
         JMTHP2 JMTHP2ff. JMTHP3 JMTHP3ff. JMTHP4 JMTHP4ff.
         JMTHP5 JMTHP5ff. JMTHP6 JMTHP6ff. JMTHP7 JMTHP7ff.
         JMTHP8 JMTHP8ff. JMTHP9 JMTHP9ff. JMTHP10 JMTHP10f.
         JMTHP11 JMTHP11f. JMTHP12 JMTHP12f. JMTHP13 JMTHP13f.
         JMTHP14 JMTHP14f. JMTHP15 JMTHP15f. JMTHP16 JMTHP16f.
         JMTHP17 JMTHP17f. JNTPN JNTPN. JNTCHR JNTCHR.
         JNTHP JNTHP. ARTH1 ARTH1fff. ARTHWT ARTHWT.
         ARTHPH ARTHPH. ARTHCLS ARTHCLS. ARTHLMT ARTHLMT.
         ARTHWRK ARTHWRK. PAINECK PAINECK. PAINLB PAINLB.
         PAINLEG PAINLEG. PAINFACE PAINFACE. AMIGR AMIGR.
         ACOLD2W ACOLD2W. AINTIL2W AINTIL2W. PREGNOW PREGNOW.
         HEARAID HEARAID. AHEARST AHEARST. AVISION AVISION.
         ABLIND ABLIND. LUPPRT LUPPRT. SAD SAD.
         NERVOUS NERVOUS. RESTLESS RESTLESS. HOPELESS HOPELESS.
         EFFORT EFFORT. WORTHLS WORTHLS. MHAMTMO MHAMTMO.
         WRKLYR3 WRKLYR3f. WKDAYR WKDAYR. BEDDAYR BEDDAYR.
         AHSTATYR AHSTATYR. SPECEQ SPECEQ. FLWALK FLWALK.
         FLCLIMB FLCLIMB. FLSTAND FLSTAND. FLSIT FLSIT.
         FLSTOOP FLSTOOP. FLREACH FLREACH. FLGRASP FLGRASP.
         FLCARRY FLCARRY. FLPUSH FLPUSH. FLSHOP FLSHOP.
         FLSOCL FLSOCL. FLRELAX FLRELAX. FLA1AR FLA1AR.
         AFLHCA1 AFLHCA1f. AFLHCA2 AFLHCA2f. AFLHCA3 AFLHCA3f.
         AFLHCA4 AFLHCA4f. AFLHCA5 AFLHCA5f. AFLHCA6 AFLHCA6f.
         AFLHCA7 AFLHCA7f. AFLHCA8 AFLHCA8f. AFLHCA9 AFLHCA9f.
         AFLHCA10 AFLHCA0f. AFLHCA11 AFLHC10f. AFLHCA12 AFLHC11f.
         AFLHCA13 AFLHC12f. AFLHCA14 AFLHC13f. AFLHCA15 AFLHC14f.
         AFLHCA16 AFLHC15f. AFLHCA17 AFLHC16f. AFLHCA18 AFLHC17f.
         AFLHCA19 AFLHC18f. AFLHCA20 AFLHC19f. AFLHCA21 AFLHC20f.
         AFLHCA22 AFLHC21f. AFLHCA23 AFLHC22f. AFLHCA24 AFLHC23f.
         AFLHCA25 AFLHC24f. AFLHCA26 AFLHC25f. AFLHCA27 AFLHC26f.
         AFLHCA28 AFLHC27f. AFLHCA29 AFLHC28f. AFLHCA30 AFLHC29f.
         AFLHCA31 AFLHC30f. AFLHCA32 AFLHC31f. AFLHCA33 AFLHC32f.
         AFLHCA34 AFLHC33f. AFLHCA90 AFLHC34f. AFLHCA91 AFLHC35f.
         ALTIME1 ALTIME1f. ALUNIT1 ALUNIT1f. ALDURA1 ALDURA1f.
         ALDURB1 ALDURB1f. ALCHRC1 ALCHRC1f. ALTIME2 ALTIME2f.
         ALUNIT2 ALUNIT2f. ALDURA2 ALDURA2f. ALDURB2 ALDURB2f.
         ALCHRC2 ALCHRC2f. ALTIME3 ALTIME3f. ALUNIT3 ALUNIT3f.
         ALDURA3 ALDURA3f. ALDURB3 ALDURB3f. ALCHRC3 ALCHRC3f.
         ALTIME4 ALTIME4f. ALUNIT4 ALUNIT4f. ALDURA4 ALDURA4f.
         ALDURB4 ALDURB4f. ALCHRC4 ALCHRC4f. ALTIME5 ALTIME5f.
         ALUNIT5 ALUNIT5f. ALDURA5 ALDURA5f. ALDURB5 ALDURB5f.
         ALCHRC5 ALCHRC5f. ALTIME6 ALTIME6f. ALUNIT6 ALUNIT6f.
         ALDURA6 ALDURA6f. ALDURB6 ALDURB6f. ALCHRC6 ALCHRC6f.
         ALTIME7 ALTIME7f. ALUNIT7 ALUNIT7f. ALDURA7 ALDURA7f.
         ALDURB7 ALDURB7f. ALCHRC7 ALCHRC7f. ALTIME8 ALTIME8f.
         ALUNIT8 ALUNIT8f. ALDURA8 ALDURA8f. ALDURB8 ALDURB8f.
         ALCHRC8 ALCHRC8f. ALTIME9 ALTIME9f. ALUNIT9 ALUNIT9f.
         ALDURA9 ALDURA9f. ALDURB9 ALDURB9f. ALCHRC9 ALCHRC9f.
         ALTIME10 ALTIME0f. ALUNIT10 ALUNIT0f. ALDURA10 ALDURA0f.
         ALDURB10 ALDURB0f. ALCHRC10 ALCHRC0f. ALTIME11 ALTIM10f.
         ALUNIT11 ALUNI10f. ALDURA11 ALDUR10f. ALDURB11 ALDUR11f.
         ALCHRC11 ALCHR10f. ALTIME12 ALTIM11f. ALUNIT12 ALUNI11f.
         ALDURA12 ALDUR12f. ALDURB12 ALDUR13f. ALCHRC12 ALCHR11f.
         ALTIME13 ALTIM12f. ALUNIT13 ALUNI12f. ALDURA13 ALDUR14f.
         ALDURB13 ALDUR15f. ALCHRC13 ALCHR12f. ALTIME14 ALTIM13f.
         ALUNIT14 ALUNI13f. ALDURA14 ALDUR16f. ALDURB14 ALDUR17f.
         ALCHRC14 ALCHR13f. ALTIME15 ALTIM14f. ALUNIT15 ALUNI14f.
         ALDURA15 ALDUR18f. ALDURB15 ALDUR19f. ALCHRC15 ALCHR14f.
         ALTIME16 ALTIM15f. ALUNIT16 ALUNI15f. ALDURA16 ALDUR20f.
         ALDURB16 ALDUR21f. ALCHRC16 ALCHR15f. ALTIME17 ALTIM16f.
         ALUNIT17 ALUNI16f. ALDURA17 ALDUR22f. ALDURB17 ALDUR23f.
         ALCHRC17 ALCHR16f. ALTIME18 ALTIM17f. ALUNIT18 ALUNI17f.
         ALDURA18 ALDUR24f. ALDURB18 ALDUR25f. ALCHRC18 ALCHR17f.
         ALTIME19 ALTIM18f. ALUNIT19 ALUNI18f. ALDURA19 ALDUR26f.
         ALDURB19 ALDUR27f. ALCHRC19 ALCHR18f. ALTIME20 ALTIM19f.
         ALUNIT20 ALUNI19f. ALDURA20 ALDUR28f. ALDURB20 ALDUR29f.
         ALCHRC20 ALCHR19f. ALTIME21 ALTIM20f. ALUNIT21 ALUNI20f.
         ALDURA21 ALDUR30f. ALDURB21 ALDUR31f. ALCHRC21 ALCHR20f.
         ALTIME22 ALTIM21f. ALUNIT22 ALUNI21f. ALDURA22 ALDUR32f.
         ALDURB22 ALDUR33f. ALCHRC22 ALCHR21f. ALTIME23 ALTIM22f.
         ALUNIT23 ALUNI22f. ALDURA23 ALDUR34f. ALDURB23 ALDUR35f.
         ALCHRC23 ALCHR22f. ALTIME24 ALTIM23f. ALUNIT24 ALUNI23f.
         ALDURA24 ALDUR36f. ALDURB24 ALDUR37f. ALCHRC24 ALCHR23f.
         ALTIME25 ALTIM24f. ALUNIT25 ALUNI24f. ALDURA25 ALDUR38f.
         ALDURB25 ALDUR39f. ALCHRC25 ALCHR24f. ALTIME26 ALTIM25f.
         ALUNIT26 ALUNI25f. ALDURA26 ALDUR40f. ALDURB26 ALDUR41f.
         ALCHRC26 ALCHR25f. ALTIME27 ALTIM26f. ALUNIT27 ALUNI26f.
         ALDURA27 ALDUR42f. ALDURB27 ALDUR43f. ALCHRC27 ALCHR26f.
         ALTIME28 ALTIM27f. ALUNIT28 ALUNI27f. ALDURA28 ALDUR44f.
         ALDURB28 ALDUR45f. ALCHRC28 ALCHR27f. ALTIME29 ALTIM28f.
         ALUNIT29 ALUNI28f. ALDURA29 ALDUR46f. ALDURB29 ALDUR47f.
         ALCHRC29 ALCHR28f. ALTIME30 ALTIM29f. ALUNIT30 ALUNI29f.
         ALDURA30 ALDUR48f. ALDURB30 ALDUR49f. ALCHRC30 ALCHR29f.
         ALTIME31 ALTIM30f. ALUNIT31 ALUNI30f. ALDURA31 ALDUR50f.
         ALDURB31 ALDUR51f. ALCHRC31 ALCHR30f. ALTIME32 ALTIM31f.
         ALUNIT32 ALUNI31f. ALDURA32 ALDUR52f. ALDURB32 ALDUR53f.
         ALCHRC32 ALCHR31f. ALTIME33 ALTIM32f. ALUNIT33 ALUNI32f.
         ALDURA33 ALDUR54f. ALDURB33 ALDUR55f. ALCHRC33 ALCHR32f.
         ALTIME34 ALTIM33f. ALUNIT34 ALUNI33f. ALDURA34 ALDUR56f.
         ALDURB34 ALDUR57f. ALCHRC34 ALCHR33f. ALTIME90 ALTIM34f.
         ALUNIT90 ALUNI34f. ALDURA90 ALDUR58f. ALDURB90 ALDUR59f.
         ALCHRC90 ALCHR34f. ALTIME91 ALTIM35f. ALUNIT91 ALUNI35f.
         ALDURA91 ALDUR60f. ALDURB91 ALDUR61f. ALCHRC91 ALCHR35f.
         ALCNDRT ALCNDRT. ALCHRONR ALCHRONR. SMKEV SMKEV.
         SMKREG SMKREG. SMKNOW SMKNOW. SMKQTNO SMKQTNO.
         SMKQTTP SMKQTTP. SMKQTY SMKQTY. SMKQTD SMKQTD.
         CIGSDA1 CIGSDA1f. CIGDAMO CIGDAMO. CIGSDA2 CIGSDA2f.
         CIGSDAY CIGSDAY. SMKSTAT1 SMKSTATf. SMKSTAT2 SMKSTA0f.
         SMKSTAT3 SMKSTA1f. CIGQTYR CIGQTYR. VIGNO VIGNO.
         VIGTP VIGTP. VIGFREQW VIGFREQW. VIGLNGNO VIGLNGNO.
         VIGLNGTP VIGLNGTP. VIGMIN VIGMIN. VIGLONGD VIGLONGD.
         MODNO MODNO. MODTP MODTP. MODFREQW MODFREQW.
         MODLNGNO MODLNGNO. MODLNGTP MODLNGTP. MODMIN MODMIN.
         MODLONGD MODLONGD. STRNGNO STRNGNO. STRNGTP STRNGTP.
         STRFREQW STRFREQW. ALC1YR ALC1YR. ALCLIFE ALCLIFE.
         ALC12MNO ALC12MNO. ALC12MTP ALC12MTP. ALC12MMO ALC12MMO.
         ALC12MWK ALC12MWK. ALC12MYR ALC12MYR. ALCAMT ALCAMT.
         ALC5UPNO ALC5UPNO. ALC5UPTP ALC5UPTP. ALC5UPYR ALC5UPYR.
         ALCSTAT1 ALCSTATf. ALC7STAT ALC7STAT. MET_FLG1 MET_FLGf.
         MET_FLG2 MET_FL0f. AHEIGHT AHEIGHT. AWEIGHTP AWEIGHTP.
         DESIREWT DESIREWT. BMI BMI. AUSUALPL AUSUALPL.
         APLKIND APLKIND. AHCPLROU AHCPLROU. AHCPLKND AHCPLKND.
         SOURCELA SOURCELA. AHCCHGYR AHCCHGYR. AHCCHGHI AHCCHGHI.
         AHCDLYR1 AHCDLYRf. AHCDLYR2 AHCDLY0f. AHCDLYR3 AHCDLY1f.
         AHCDLYR4 AHCDLY2f. AHCDLYR5 AHCDLY3f. AHCAFYR1 AHCAFYRf.
         AHCAFYR2 AHCAFY0f. AHCAFYR3 AHCAFY1f. AHCAFYR4 AHCAFY2f.
         ADNLONG2 ADNLONGf. AHCSYR1 AHCSYR1f. AHCSYR2 AHCSYR2f.
         AHCSYR3 AHCSYR3f. AHCSYR4 AHCSYR4f. AHCSYR5 AHCSYR5f.
         AHCSYR6 AHCSYR6f. AHCSYR7 AHCSYR7f. AHCSYR8 AHCSYR8f.
         AHCSYR9 AHCSYR9f. AHCSYR10 AHCSYR0f. AHERNOY2 AHERNOYf.
         AHCHYR AHCHYR. AHCHMOYR AHCHMOYR. AHCHNOY2 AHCHNOYf.
         AHCNOYR2 AHCNOYRf. ASRGYR ASRGYR. ASRGNOYR ASRGNOYR.
         AMDLONGR AMDLONGR. SHTFLUYR SHTFLUYR. SHTPNUYR SHTPNUYR.
         APOX APOX. APOX12MO APOX12MO. AHEP AHEP.
         AHEPLIV AHEPLIV. SHTHEPB SHTHEPB. SHEPDOS SHEPDOS.
         ALL_SA ALL_SA. EVERWRK EVERWRK. WRKCAT WRKCAT.
         WRKCATA WRKCATA. BUSINC1 BUSINC1f. BUSINC1A BUSINC1A.
         LOCALL1 LOCALL1f. LOCALL1A LOCALL1A. YRSWRK_P YRSWRK_P.
         YRSWRKPA YRSWRKPA. WRKLONGH WRKLONGH. HOURPD HOURPD.
         HOURPDA HOURPDA. PDSICK PDSICK. PDSICKA PDSICKA.
         ONEJOB ONEJOB. SMOKD1 SMOKD1ff. BLDGV BLDGV.
         BLDG12M BLDG12M. HIVTST HIVTST. WHYTST_R WHYTST_R.
         TST12M_M TST12M_M. TST12M_Y TST12M_Y. TIMETST TIMETST.
         REATST_C REATST_C. REASWHOR REASWHOR. LASTST_C LASTST_C.
         CLNTYP_C CLNTYP_C. WHOADM WHOADM. GIVNAM GIVNAM.
         EXTST12M EXTST12M. CHNSADSP CHNSADSP. STMTRU STMTRU.
         STD STD. STDDOC STDDOC. STDWHER STDWHER.
         TBHRD TBHRD. TBKNOW TBKNOW. TB TB.
         TBSPRD1 TBSPRD1f. TBSPRD2 TBSPRD2f. TBSPRD3 TBSPRD3f.
         TBSPRD4 TBSPRD4f. TBSPRD5 TBSPRD5f. TBSPRD6 TBSPRD6f.
         TBCURED TBCURED. TBCHANC TBCHANC. TBSHAME TBSHAME.
         HOMELESS HOMELESS. SUN1_SHA SUN1_SHA. SUN1_HAT SUN1_HAT.
         SUN2_LGS SUN2_LGS. SUN2_SCR SUN2_SCR. SPF SPF.
         PAPHAD PAPHAD. RPAP1_MT $RPAP1_f. RPAP1_YR RPAP1_YR.
         RPAP1_NO RPAP1_NO. RPAP1_TP RPAP1_TP. RPAP2CA RPAP2CA.
         RPAP_MO2 RPAP_MOf. RPAP3 RPAP3fff. PAPREAS PAPREAS.
         MAMHAD MAMHAD. RMAM1_MT $RMAM1_f. RMAM1_YR RMAM1_YR.
         RMAM1_NO RMAM1_NO. RMAM1_TP RMAM1_TP. RMAM2CA RMAM2CA.
         RMAM_MO2 RMAM_MOf. RMAM3 RMAM3fff. MAMREAS MAMREAS.
         PSAHRD PSAHRD. PSAHAD PSAHAD. RPSA1_MT $RPSA1_f.
         RPSA1_YR RPSA1_YR. RPSA1_NO RPSA1_NO. RPSA1_TP RPSA1_TP.
         RPSA2 RPSA2fff. RPSA_MO2 RPSA_MOf. RPSA3 RPSA3fff.
         PSAREAS PSAREAS. CREHAD CREHAD. RCRE1_MT $RCRE1_f.
         RCRE1_YR RCRE1_YR. RCRE1_NO RCRE1_NO. RCRE1_TP RCRE1_TP.
         RCRE2 RCRE2fff. RCRE_MO2 RCRE_MOf. RCRE3 RCRE3fff.
         CRENAM CRENAM. CREREAS CREREAS. HFOBHAD HFOBHAD.
         RHFOB1_M $RHFOB1f. RHFOB1_Y RHFOB1_Y. RHFOB1_N RHFOB1_N.
         RHFOB1_T RHFOB1_T. RHFOB2 RHFOB2ff. RHFO_MO2 RHFO_MOf.
         RHFOB3 RHFOB3ff. HFOBREAS HFOBREAS. HYPPREG HYPPREG.
         HLOSWGT HLOSWGT. WGTADEV WGTADEV. WGTADNOW WGTADNOW.
         LOWSLT LOWSLT. LOWSLTEV LOWSLTEV. LOWSLTNW LOWSLTNW.
         EXERC EXERC. EXERCEV EXERCEV. EXERCNW EXERCNW.
         HBPALC HBPALC. HBPALCEV HBPALCEV. HBPALCNW HBPALCNW.
         HYPMEDEV HYPMEDEV. HYPMED HYPMED. HYMDMED HYMDMED.
          ;
*/

RUN ;
