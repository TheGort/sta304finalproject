*-------------------------------------------------------------------------*
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 04349
 |                 NATIONAL HEALTH INTERVIEW SURVEY, 2004
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
 | "c:\temp\04349-0004-data.txt").
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
  VALUE RECTYPE   10='Household' 20='Person' 30='Sample Adult'
                  40='Sample Child' 60='Family' 70='Injury/Poisoning Episode'
                  75='Injury/Poisoning Verbatim' ;
  VALUE SRVY_YR   2004='2004' ;
  VALUE PROXYSA   1='Physical or mental condition prohibits responding'
                  2='Sample adult is able to respond' 3='Unknown' ;
  VALUE PROX1fff  1='Yes' 2='No' ;
  VALUE PROX2fff  1='Relative who lives in household'
                  2='Relative who doesn''t live in household'
                  3='Other caregiver' 4='Other' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE DOINGLWA  1='Working for pay at a job or business'
                  2='With a job or business but not at work'
                  3='Looking for work'
                  4='Working, but not for pay, at a job or business'
                  5='Not working at a job or business and not looking for work'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE WHYNOWKA  1='Taking care of house or family' 2='Going to school'
                  3='Retired' 4='On a planned vacation from work'
                  5='On family or maternity leave'
                  6='Temporarily unable to work for health reasons'
                  7='Have job/contract and off-season' 8='On layoff'
                  9='Disabled' 10='Other' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE EVERWRK   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE WRKCATA   1='Employee of a PRIVATE company for wages'
                  2='A FEDERAL government employee'
                  3='A STATE government employee'
                  4='A LOCAL government employee'
                  5='Self-employed in OWN business, professional practice or farm'
                  6='Working WITHOUT PAY in a family-owned business or farm'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE BUSINC1A  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE LOCALL1A  1='1-9 employees' 2='10-24 employees' 3='25-49 employees'
                  4='50-99 employees' 5='100-249 employees'
                  6='250-499 employees' 7='500-999 employees'
                  8='1000 employees or more' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE YRSWRKPA  0='Less than 1 year' 35='35 or more years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE WRKLONGH  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE HOURPDA   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE PDSICKA   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ONEJOB    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE HYPEV     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE HYPDIFV   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE CHDEV     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ANGEV     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE MIEV      1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE HRTEV     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE STREV     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE EPHEV     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AASMEV    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AASSTILL  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AASMYR    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AASMERYR  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ULCEV     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ULCYR     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE CANEV     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE CNKIND1f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIND2f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIND3f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIND4f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIND5f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIND6f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIND7f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIND8f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIND9f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIND0f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN10f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN11f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN12f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN13f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN14f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN15f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN16f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN17f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN18f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN19f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN20f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN21f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN22f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN23f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN24f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN25f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN26f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN27f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN28f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN29f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CNKIN30f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE CANAGE1f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAGE2f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAGE3f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAGE4f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAGE5f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAGE6f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAGE7f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAGE8f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAGE9f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAGE0f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG10f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG11f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG12f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG13f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG14f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG15f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG16f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG17f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG18f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG19f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG20f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG21f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG22f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG23f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG24f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG25f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG26f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG27f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG28f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CANAG29f  85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE DIBEV     1='Yes' 2='No' 3='Borderline' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE DIBAGE    85='85+ years' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE DIFAGE2f  0='Within past year' 85='85+ years'
                  96='1+ year(s) with diabetes and age is 85+' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE INSLN     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE DIBPILL   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHAYFYR   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE SINYR     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE CBRCHYR   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE KIDWKYR   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE LIVYR     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE JNTSYMP   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE JMTHP1ff  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP2ff  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP3ff  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP4ff  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP5ff  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP6ff  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP7ff  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP8ff  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP9ff  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP10f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP11f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP12f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP13f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP14f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP15f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP16f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JMTHP17f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE JNTCHR    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE JNTHP     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ARTH1fff  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ARTHLMT   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE PAINECK   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE PAINLB    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE PAINLEG   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE PAINFACE  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AMIGR     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ACOLD2W   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AINTIL2W  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE PREGNOW   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE HEARAID   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHEARST   1='Good' 2='A little trouble' 3='A lot of trouble' 4='Deaf'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE AVISION   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ABLIND    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE LUPPRT    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE SAD       1='ALL of the time' 2='MOST of the time'
                  3='SOME of the time' 4='A LITTLE of the time'
                  5='NONE of the time' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE NERVOUS   1='ALL of the time' 2='MOST of the time'
                  3='SOME of the time' 4='A LITTLE of the time'
                  5='NONE of the time' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE RESTLESS  1='ALL of the time' 2='MOST of the time'
                  3='SOME of the time' 4='A LITTLE of the time'
                  5='NONE of the time' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE HOPELESS  1='ALL of the time' 2='MOST of the time'
                  3='SOME of the time' 4='A LITTLE of the time'
                  5='NONE of the time' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE EFFORT    1='ALL of the time' 2='MOST of the time'
                  3='SOME of the time' 4='A LITTLE of the time'
                  5='NONE of the time' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE WORTHLS   1='ALL of the time' 2='MOST of the time'
                  3='SOME of the time' 4='A LITTLE of the time'
                  5='NONE of the time' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE MHAMTMO   1='A lot' 2='Some' 3='A little' 4='Not at all' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE WRKLYR3f  0='Had job last week'
                  1='No job last week, had job past 12 m'
                  2='No job last week, no job past 12 m' 3='Never worked'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE WKDAYR    0='None' 997='Refused' 998='Not ascertained'
                  999='Don''t know' ;
  VALUE BEDDAYR   0='None' 997='Refused' 998='Not ascertained'
                  999='Don''t know' ;
  VALUE AHSTATYR  1='Better' 2='Worse' 3='About the same' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE SPECEQ    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE FLWALK    0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLCLIMB   0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLSTAND   0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLSIT     0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLSTOOP   0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLREACH   0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLGRASP   0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLCARRY   0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLPUSH    0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLSHOP    0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLSOCL    0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLRELAX   0='Not at all difficult' 1='Only a little difficult'
                  2='Somewhat difficult' 3='Very difficult'
                  4='Can''t do at all' 6='Do not do this activity'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE FLA1AR    1='Limited in any way' 2='Not limited in any way'
                  3='Unknown if limited' ;
  VALUE AFLHCA1f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHCA2f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHCA3f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHCA4f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHCA5f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHCA6f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHCA7f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHCA8f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHCA9f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHCA0f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC10f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC11f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC12f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC13f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC14f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC15f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC16f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC17f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC19_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC20_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC21_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC22_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC23_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC24_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC25_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC26_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC27_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC28_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC29_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC30_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC31_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC32_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC33_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC34_  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC18f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AFLHC19f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE ALTIME1f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNIT1f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDURA1f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDURB1f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHRC1f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIME2f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNIT2f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDURA2f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDURB2f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHRC2f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIME3f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNIT3f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDURA3f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDURB3f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHRC3f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIME4f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNIT4f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDURA4f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDURB4f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHRC4f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIME5f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNIT5f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDURA5f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDURB5f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHRC5f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIME6f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNIT6f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDURA6f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDURB6f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHRC6f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIME7f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNIT7f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDURA7f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDURB7f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHRC7f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIME8f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNIT8f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDURA8f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDURB8f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHRC8f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIME9f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNIT9f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDURA9f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDURB9f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHRC9f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIME0f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNIT0f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDURA0f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDURB0f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHRC0f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM10f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI10f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR10f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR11f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR10f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM11f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI11f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR12f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR13f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR11f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM12f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI12f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR14f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR15f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR12f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM13f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI13f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR16f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR17f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR13f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM14f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI14f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR18f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR19f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR14f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM15f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI15f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR20f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR21f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR15f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM16f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI16f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR22f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR23f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR16f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM17f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI17f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR24f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR25f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR17f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM18f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI18f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR26f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR27f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR18f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM19f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI19f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR28f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR29f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR19f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM20f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI20f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR30f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR31f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR20f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM21f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI21f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR32f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR33f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR21f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM22f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI22f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR34f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR35f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR22f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM23f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI23f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR36f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR37f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR23f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM24f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI24f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR38f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR39f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR24f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM25f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI25f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR40f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR41f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR25f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM26f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI26f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR42f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR43f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR26f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM27f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI27f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR44f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR45f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR27f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM28f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI28f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR46f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR47f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR28f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM29f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI29f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR48f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR49f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR29f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM30f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI30f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR50f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR51f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR30f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM31f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI31f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR52f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR53f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR31f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM32f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI32f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR54f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR55f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR32f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM33f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI33f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR56f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR57f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR33f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM34f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI34f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR58f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR59f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR34f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALTIM35f  95='95+' 96='Since birth' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALUNI35f  1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)'
                  6='Since birth' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALDUR60f  0='Less than 1 year' 85='85+ years'
                  96='Unknown number of years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALDUR61f  1='Less than 3 months' 2='3-5 months' 3='6-12 months'
                  4='More than 1 year' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCHR35f  1='Chronic' 2='Not chronic' 9='Unknown if chronic' ;
  VALUE ALCNDRT   1='At least one chronic cond causes functl lim'
                  2='No chronic cond causes functl lim'
                  9='Unk if any chronic cond causes functl lim' ;
  VALUE ALCHRONR  0='Not limited in any way (incl unk if limited)'
                  1='Limited; caused by at least one chronic cond'
                  2='Limited; not caused by chronic cond'
                  3='Limited; unk if cond is chronic' ;
  VALUE SMKEV     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE SMKREG    85='85 years or older' 96='Never smoked regularly'
                  97='Refused' 98='Not ascertained' 99='Don''t know' ;
  VALUE SMKNOW    1='Every day' 2='Some days' 3='Not at all' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE SMKSTATf  1='Current every day smoker' 2='Current some day smoker'
                  3='Former smoker' 4='Never smoker'
                  5='Smoker, current status unknown'
                  9='Unknown if ever smoked' ;
  VALUE SMKQTNO   95='95+' 97='Refused' 98='Not ascertained' 99='Don''t know' ;
  VALUE SMKQTTP   1='Day(s)' 2='Week(s)' 3='Month(s)' 4='Year(s)' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE SMKQTY    0='Less than 1 year' 70='70+ years' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE CIGSDA1f  95='95+ cigarettes' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CIGDAMO   0='None' 97='Refused' 98='Not ascertained' 99='Don''t know' ;
  VALUE CIGSDA2f  95='95+ cigarettes' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CIGSDAY   95='95+ cigarettes' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CIGQTYR   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE VIGNO     0='Never' 996='Unable to do this type activity'
                  997='Refused' 998='Not ascertained' 999='Don''t know' ;
  VALUE VIGTP     0='Never' 1='Per day' 2='Per week' 3='Per month'
                  4='Per year' 6='Unable to do this activity' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE VIGFREQW  0='Less than once per week' 95='Never'
                  96='Unable to do vigorous activity' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE VIGLNGNO  997='Refused' 998='Not ascertained' 999='Don''t know' ;
  VALUE VIGLNGTP  1='Minutes' 2='Hours' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE VIGMIN    997='Refused' 998='Not ascertained' 999='Don''t know' ;
  VALUE MODNO     0='Never' 996='Unable to do this type activity'
                  997='Refused' 998='Not ascertained' 999='Don''t know' ;
  VALUE MODTP     0='Never' 1='Per day' 2='Per week' 3='Per month'
                  4='Per year' 6='Unable to do this activity' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE MODFREQW  0='Less than once per week' 95='Never'
                  96='Unable to do light or moderate activity' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE MODLNGNO  997='Refused' 998='Not ascertained' 999='Don''t know' ;
  VALUE MODLNGTP  1='Minutes' 2='Hours' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE MODMIN    997='Refused' 998='Not ascertained' 999='Don''t know' ;
  VALUE STRNGNO   0='Never' 996='Unable to do this type activity'
                  997='Refused' 998='Not ascertained' 999='Don''t know' ;
  VALUE STRNGTP   0='Never' 1='Per day' 2='Per week' 3='Per month'
                  4='Per year' 6='Unable to do this activity' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE STRFREQW  0='Less than once per week' 95='Never'
                  96='Unable to do strength activity' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALC1YR    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALCLIFE   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ALC12MNO  0='Never' 997='Refused' 998='Not ascertained'
                  999='Don''t know' ;
  VALUE ALC12MTP  0='Never/None' 1='Week' 2='Month' 3='Year' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE ALC12MWK  0='Less than one day per week'
                  95='Did not drink in past year' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE ALC12MYR  0='Never/none' 997='Refused' 998='Not ascertained'
                  999='Don''t know' ;
  VALUE ALCAMT    95='95+ drinks' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ALCSTAT   1='Lifetime abstainer' 2='Former infrequent'
                  3='Former regular' 4='Former, unknown frequency'
                  5='Current infrequent' 6='Current light'
                  7='Current moderate' 8='Current heavier'
                  9='Current drinker, frequency/level unknown'
                  10='Drinking status unknown' ;
  VALUE ALC5UPNO  0='Never/None' 997='Refused' 998='Not ascertained'
                  999='Don''t know' ;
  VALUE ALC5UPTP  0='Never/None' 1='Per week' 2='Per month' 3='Per year'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE ALC5UPYR  0='Never/None' 997='Refused' 998='Not ascertained'
                  999='Don''t know' ;
  VALUE AHEIGHT   96='Not available' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE AWEIGHTP  996='Not available' 997='Refused' 998='Not ascertained'
                  999='Don''t know' ;
  VALUE SLEEP     97='Refused' 98='Not ascertained' 99='Don''t know' ;
  VALUE AUSUALPL  1='Yes' 2='There is NO place'
                  3='There is MORE THAN ONE place' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE APLKIND   1='Clinic or health center' 2='Doctor''s office or HMO'
                  3='Hospital emergency room'
                  4='Hospital outpatient department' 5='Some other place'
                  6='Doesn''t go to one place most often' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AHCPLROU  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCPLKND  0='Doesn''t get preventive care anywhere'
                  1='Clinic or health center' 2='Doctor''s office or HMO'
                  3='Hospital emergency room'
                  4='Hospital outpatient department' 5='Some other place'
                  6='Doesn''t go to one place most often' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE AHCCHGYR  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCCHGHI  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCDLYRf  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCDLY0f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCDLY1f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCDLY2f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCDLY3f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCAFYRf  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCAFY0f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCAFY1f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCAFY2f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ADNLONGf  0='Never' 1='6 months or less'
                  2='More than 6 mos, but not more than 1 yr ago'
                  3='More than 1 yr, but not more than 2 yrs ago'
                  4='More than 2 yrs, but not more than 5 yrs ago'
                  5='More than 5 years ago' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCSYR1f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCSYR2f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCSYR3f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCSYR4f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCSYR5f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCSYR6f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCSYR7f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCSYR8f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCSYR9f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCSYR0f  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHERNOYf  0='None' 1='1' 2='2-3' 3='4-5' 4='6-7' 5='8-9' 6='10-12'
                  7='13-15' 8='16 or more' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE AHCHYR    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHCHMOYR  97='Refused' 98='Not ascertained' 99='Don''t know' ;
  VALUE AHCHNOYf  1='1' 2='2-3' 3='4-5' 4='6-7' 5='8-9' 6='10-12' 7='13-15'
                  8='16 or more' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE AHCNOYRf  0='None' 1='1' 2='2-3' 3='4-5' 4='6-7' 5='8-9' 6='10-12'
                  7='13-15' 8='16 or more' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE ASRGYR    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE ASRGNOYR  95='95+ times' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE AMDLONGR  0='Never' 1='6 months or less'
                  2='More than 6 mos, but not more than 1 yr ago'
                  3='More than 1 yr, but not more than 2 yrs ago'
                  4='More than 2 yrs, but not more than 5 yrs ago'
                  5='More than 5 years ago' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE SHTFLUYR  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE SPRFLUYR  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE SHTPNUYR  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE APOX      1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE APOX12MO  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHEP      1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE AHEPLIV   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE SHTHEPB   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE SHEPDOS   1='Received at least 3 doses'
                  2='Received less than 3 doses' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE BLDGV     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE BLDG12M   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE HIVTST    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE WHYTST_R  1='It''s unlikely you''ve been exposed to HIV'
                  2='You were afraid find out if you were HIV positive (that you'
                  3='You didn''t want to think about HIV or about being HIV positi'
                  4='You were worried your name would be reported to the governm'
                  5='You didn''t know where to get tested'
                  6='You don''t like needles'
                  7='You were afraid of losing job, insurance, housing, friends,'
                  8='Some other reason' 9='No particular reason' 97='Refused'
                  98='Not ascertained' 99='Don''t know' ;
  VALUE TST12M_M  1='January' 2='February' 3='March' 4='April' 5='May'
                  6='June' 7='July' 8='August' 9='September' 10='October'
                  11='November' 12='December' 96='Time period format'
                  97='Refused' 98='Not ascertained' 99='Don''t know' ;
  VALUE TST12M_Y  9996='Time period format' 9997='Refused'
                  9998='Not ascertained' 9999='Don''t know' ;
  VALUE TIMETST   1='6 months or less'
                  2='More than 6 months but not more than 1 year ago'
                  3='More than 1 year, but not more than 2 years ago'
                  4='More than 2 years, but not more than 5 years ago'
                  5='More than 5 years ago' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE REATST_C  1='Someone suggested you should be tested'
                  2='You might have been exposed through sex or drug use'
                  3='You might have been exposed through your work or at work'
                  4='You just wanted to find out if you were infected or not'
                  5='For part of a routine medical check-up, or for hospitalizat'
                  6='You were sick or had a medical problem'
                  7='You were pregnant or delivered a baby'
                  8='For health or life insurance coverage'
                  9='For military induction, separation, or military service'
                  10='For immigration'
                  11='For marriage license or to get married'
                  12='You were concerned you could give HIV to someone'
                  13='You wanted medical care or new treatments if you tested posi'
                  14='Some other reason' 15='No particular reason'
                  97='Refused' 98='Not ascertained' 99='Don''t know' ;
  VALUE REASWHOR  1='Doctor, nurse or other health care professional'
                  2='Sex partner' 3='Someone at health department'
                  4='Family member or friend' 5='Other' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE LASTST_C  1='Private doctor/HMO'
                  2='AIDS clinic/counseling/testing site'
                  3='Hospital, emergency room, outpatient clinic'
                  4='Other type of clinic' 5='Public health department'
                  6='At home' 7='Drug treatment facility'
                  8='Military induction or military service site'
                  9='Immigration site'
                  10='In a correctional facility (jail or prison)'
                  11='Other location' 97='Refused' 98='Not ascertained'
                  99='Don''t know' ;
  VALUE CLNTYP_C  1='Family planning clinic' 2='Prenatal clinic'
                  3='Tuberculosis clinic' 4='STD clinic'
                  5='Community health clinic'
                  6='Clinic run by employer or insurance company' 7='Other'
                  97='Refused' 98='Not ascertained' 99='Don''t know' ;
  VALUE WHOADM    1='Nurse or health worker' 2='Self-sampling kit'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE GIVNAM    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE EXTST12M  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE CHNSADSP  1='High/Already have HIV/AIDS' 2='Medium' 3='Low' 4='None'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE STMTRU    1='Yes, at least one statement is true'
                  2='No, none of these statements are true' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE STD       1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE STDDOC    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE STDWHER   1='Private doctor' 2='Family planning clinic'
                  3='STD clinic' 4='Emergency room' 5='Health department'
                  6='Some other place' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE TBHRD     1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE TBKNOW    1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE TB        1='A lot' 2='Some' 3='A little' 4='Nothing' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE TBSPRD1f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE TBSPRD2f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE TBSPRD3f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE TBSPRD4f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE TBSPRD5f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE TBSPRD6f  1='Mentioned' 2='Not mentioned' 7='Refused'
                  8='Not ascertained' 9='Don''t know' ;
  VALUE TBCURED   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE TBCHANC   1='High' 2='Medium' 3='Low' 4='None' 5='Already have TB'
                  7='Refused' 8='Not ascertained' 9='Don''t know' ;
  VALUE TBSHAME   1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
  VALUE HOMELESS  1='Yes' 2='No' 7='Refused' 8='Not ascertained'
                  9='Don''t know' ;
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA NHIS.samadult_2004;
INFILE "C:\DATA\NHIS\2004\04349-0004-Data.txt" LRECL=705;
INPUT
        RECTYPE 1-2             SRVY_YR 3-6
        HHX $7-12               FMX $13-14              FPX $15-16
        WTIA_SA 17-22           WTFA_SA 23-28           PROXYSA 29
        PROX1 30                PROX2 31                DOINGLWA 32
        WHYNOWKA 33-34          EVERWRK 35              INDSTR1A 36-37
        INDSTR2A 38-39          INDSTRN1 40-41          INDSTRN2 42-43
        OCCUP1A 44-45           OCCUP2A 46-47           OCCUPN1 48-49
        OCCUPN2 50-51           WRKCATA 52              BUSINC1A 53
        LOCALL1A 54-55          YRSWRKPA 56-57          WRKLONGH 58
        HOURPDA 59              PDSICKA 60              ONEJOB 61
        HYPEV 62                HYPDIFV 63              CHDEV 64
        ANGEV 65                MIEV 66                 HRTEV 67
        STREV 68                EPHEV 69                AASMEV 70
        AASSTILL 71             AASMYR 72               AASMERYR 73
        ULCEV 74                ULCYR 75                CANEV 76
        CNKIND1 77              CNKIND2 78              CNKIND3 79
        CNKIND4 80              CNKIND5 81              CNKIND6 82
        CNKIND7 83              CNKIND8 84              CNKIND9 85
        CNKIND10 86             CNKIND11 87             CNKIND12 88
        CNKIND13 89             CNKIND14 90             CNKIND15 91
        CNKIND16 92             CNKIND17 93             CNKIND18 94
        CNKIND19 95             CNKIND20 96             CNKIND21 97
        CNKIND22 98             CNKIND23 99             CNKIND24 100
        CNKIND25 101            CNKIND26 102            CNKIND27 103
        CNKIND28 104            CNKIND29 105            CNKIND30 106
        CNKIND31 107            CANAGE1 108-109         CANAGE2 110-111
        CANAGE3 112-113         CANAGE4 114-115         CANAGE5 116-117
        CANAGE6 118-119         CANAGE7 120-121         CANAGE8 122-123
        CANAGE9 124-125         CANAGE10 126-127        CANAGE11 128-129
        CANAGE12 130-131        CANAGE13 132-133        CANAGE14 134-135
        CANAGE15 136-137        CANAGE16 138-139        CANAGE17 140-141
        CANAGE18 142-143        CANAGE19 144-145        CANAGE20 146-147
        CANAGE21 148-149        CANAGE22 150-151        CANAGE23 152-153
        CANAGE24 154-155        CANAGE25 156-157        CANAGE26 158-159
        CANAGE27 160-161        CANAGE28 162-163        CANAGE29 164-165
        CANAGE30 166-167        DIBEV 168               DIBAGE 169-170
        DIFAGE2 171-172         INSLN 173               DIBPILL 174
        AHAYFYR 175             SINYR 176               CBRCHYR 177
        KIDWKYR 178             LIVYR 179               JNTSYMP 180
        JMTHP1 181              JMTHP2 182              JMTHP3 183
        JMTHP4 184              JMTHP5 185              JMTHP6 186
        JMTHP7 187              JMTHP8 188              JMTHP9 189
        JMTHP10 190             JMTHP11 191             JMTHP12 192
        JMTHP13 193             JMTHP14 194             JMTHP15 195
        JMTHP16 196             JMTHP17 197             JNTCHR 198
        JNTHP 199               ARTH1 200               ARTHLMT 201
        PAINECK 202             PAINLB 203              PAINLEG 204
        PAINFACE 205            AMIGR 206               ACOLD2W 207
        AINTIL2W 208            PREGNOW 209             HEARAID 210
        AHEARST 211             AVISION 212             ABLIND 213
        LUPPRT 214              SAD 215                 NERVOUS 216
        RESTLESS 217            HOPELESS 218            EFFORT 219
        WORTHLS 220             MHAMTMO 221             WRKLYR3 222
        WKDAYR 223-225          BEDDAYR 226-228         AHSTATYR 229
        SPECEQ 230              FLWALK 231              FLCLIMB 232
        FLSTAND 233             FLSIT 234               FLSTOOP 235
        FLREACH 236             FLGRASP 237             FLCARRY 238
        FLPUSH 239              FLSHOP 240              FLSOCL 241
        FLRELAX 242             FLA1AR 243              AFLHCA1 244
        AFLHCA2 245             AFLHCA3 246             AFLHCA4 247
        AFLHCA5 248             AFLHCA6 249             AFLHCA7 250
        AFLHCA8 251             AFLHCA9 252             AFLHCA10 253
        AFLHCA11 254            AFLHCA12 255            AFLHCA13 256
        AFLHCA14 257            AFLHCA15 258            AFLHCA16 259
        AFLHCA17 260            AFLHCA18 261            AFLHC19_ 262
        AFLHC20_ 263            AFLHC21_ 264            AFLHC22_ 265
        AFLHC23_ 266            AFLHC24_ 267            AFLHC25_ 268
        AFLHC26_ 269            AFLHC27_ 270            AFLHC28_ 271
        AFLHC29_ 272            AFLHC30_ 273            AFLHC31_ 274
        AFLHC32_ 275            AFLHC33_ 276            AFLHC34_ 277
        AFLHCA90 278            AFLHCA91 279            ALTIME1 280-281
        ALUNIT1 282             ALDURA1 283-284         ALDURB1 285
        ALCHRC1 286             ALTIME2 287-288         ALUNIT2 289
        ALDURA2 290-291         ALDURB2 292             ALCHRC2 293
        ALTIME3 294-295         ALUNIT3 296             ALDURA3 297-298
        ALDURB3 299             ALCHRC3 300             ALTIME4 301-302
        ALUNIT4 303             ALDURA4 304-305         ALDURB4 306
        ALCHRC4 307             ALTIME5 308-309         ALUNIT5 310
        ALDURA5 311-312         ALDURB5 313             ALCHRC5 314
        ALTIME6 315-316         ALUNIT6 317             ALDURA6 318-319
        ALDURB6 320             ALCHRC6 321             ALTIME7 322-323
        ALUNIT7 324             ALDURA7 325-326         ALDURB7 327
        ALCHRC7 328             ALTIME8 329-330         ALUNIT8 331
        ALDURA8 332-333         ALDURB8 334             ALCHRC8 335
        ALTIME9 336-337         ALUNIT9 338             ALDURA9 339-340
        ALDURB9 341             ALCHRC9 342             ALTIME10 343-344
        ALUNIT10 345            ALDURA10 346-347        ALDURB10 348
        ALCHRC10 349            ALTIME11 350-351        ALUNIT11 352
        ALDURA11 353-354        ALDURB11 355            ALCHRC11 356
        ALTIME12 357-358        ALUNIT12 359            ALDURA12 360-361
        ALDURB12 362            ALCHRC12 363            ALTIME13 364-365
        ALUNIT13 366            ALDURA13 367-368        ALDURB13 369
        ALCHRC13 370            ALTIME14 371-372        ALUNIT14 373
        ALDURA14 374-375        ALDURB14 376            ALCHRC14 377
        ALTIME15 378-379        ALUNIT15 380            ALDURA15 381-382
        ALDURB15 383            ALCHRC15 384            ALTIME16 385-386
        ALUNIT16 387            ALDURA16 388-389        ALDURB16 390
        ALCHRC16 391            ALTIME17 392-393        ALUNIT17 394
        ALDURA17 395-396        ALDURB17 397            ALCHRC17 398
        ALTIME18 399-400        ALUNIT18 401            ALDURA18 402-403
        ALDURB18 404            ALCHRC18 405            ALTIME19 406-407
        ALUNIT19 408            ALDURA19 409-410        ALDURB19 411
        ALCHRC19 412            ALTIME20 413-414        ALUNIT20 415
        ALDURA20 416-417        ALDURB20 418            ALCHRC20 419
        ALTIME21 420-421        ALUNIT21 422            ALDURA21 423-424
        ALDURB21 425            ALCHRC21 426            ALTIME22 427-428
        ALUNIT22 429            ALDURA22 430-431        ALDURB22 432
        ALCHRC22 433            ALTIME23 434-435        ALUNIT23 436
        ALDURA23 437-438        ALDURB23 439            ALCHRC23 440
        ALTIME24 441-442        ALUNIT24 443            ALDURA24 444-445
        ALDURB24 446            ALCHRC24 447            ALTIME25 448-449
        ALUNIT25 450            ALDURA25 451-452        ALDURB25 453
        ALCHRC25 454            ALTIME26 455-456        ALUNIT26 457
        ALDURA26 458-459        ALDURB26 460            ALCHRC26 461
        ALTIME27 462-463        ALUNIT27 464            ALDURA27 465-466
        ALDURB27 467            ALCHRC27 468            ALTIME28 469-470
        ALUNIT28 471            ALDURA28 472-473        ALDURB28 474
        ALCHRC28 475            ALTIME29 476-477        ALUNIT29 478
        ALDURA29 479-480        ALDURB29 481            ALCHRC29 482
        ALTIME30 483-484        ALUNIT30 485            ALDURA30 486-487
        ALDURB30 488            ALCHRC30 489            ALTIME31 490-491
        ALUNIT31 492            ALDURA31 493-494        ALDURB31 495
        ALCHRC31 496            ALTIME32 497-498        ALUNIT32 499
        ALDURA32 500-501        ALDURB32 502            ALCHRC32 503
        ALTIME33 504-505        ALUNIT33 506            ALDURA33 507-508
        ALDURB33 509            ALCHRC33 510            ALTIME34 511-512
        ALUNIT34 513            ALDURA34 514-515        ALDURB34 516
        ALCHRC34 517            ALTIME90 518-519        ALUNIT90 520
        ALDURA90 521-522        ALDURB90 523            ALCHRC90 524
        ALTIME91 525-526        ALUNIT91 527            ALDURA91 528-529
        ALDURB91 530            ALCHRC91 531            ALCNDRT 532
        ALCHRONR 533            SMKEV 534               SMKREG 535-536
        SMKNOW 537              SMKSTAT2 538            SMKQTNO 539-540
        SMKQTTP 541             SMKQTY 542-543          CIGSDA1 544-545
        CIGDAMO 546-547         CIGSDA2 548-549         CIGSDAY 550-551
        CIGQTYR 552             VIGNO 553-555           VIGTP 556
        VIGFREQW 557-558        VIGLNGNO 559-561        VIGLNGTP 562
        VIGMIN 563-565          MODNO 566-568           MODTP 569
        MODFREQW 570-571        MODLNGNO 572-574        MODLNGTP 575
        MODMIN 576-578          STRNGNO 579-581         STRNGTP 582
        STRFREQW 583-584        ALC1YR 585              ALCLIFE 586
        ALC12MNO 587-589        ALC12MTP 590            ALC12MWK 591-592
        ALC12MYR 593-595        ALCAMT 596-597          ALCSTAT 598-599
        ALC5UPNO 600-602        ALC5UPTP 603            ALC5UPYR 604-606
        AHEIGHT 607-608         AWEIGHTP 609-611        BMI 612-615
        SLEEP 616-617           AUSUALPL 618            APLKIND 619
        AHCPLROU 620            AHCPLKND 621            AHCCHGYR 622
        AHCCHGHI 623            AHCDLYR1 624            AHCDLYR2 625
        AHCDLYR3 626            AHCDLYR4 627            AHCDLYR5 628
        AHCAFYR1 629            AHCAFYR2 630            AHCAFYR3 631
        AHCAFYR4 632            ADNLONG2 633            AHCSYR1 634
        AHCSYR2 635             AHCSYR3 636             AHCSYR4 637
        AHCSYR5 638             AHCSYR6 639             AHCSYR7 640
        AHCSYR8 641             AHCSYR9 642             AHCSYR10 643
        AHERNOY2 644-645        AHCHYR 646              AHCHMOYR 647-648
        AHCHNOY2 649-650        AHCNOYR2 651-652        ASRGYR 653
        ASRGNOYR 654-655        AMDLONGR 656            SHTFLUYR 657
        SPRFLUYR 658            SHTPNUYR 659            APOX 660
        APOX12MO 661            AHEP 662                AHEPLIV 663
        SHTHEPB 664             SHEPDOS 665             BLDGV 666
        BLDG12M 667             HIVTST 668              WHYTST_R 669-670
        TST12M_M 671-672        TST12M_Y 673-676        TIMETST 677
        REATST_C 678-679        REASWHOR 680            LASTST_C 681-682
        CLNTYP_C 683-684        WHOADM 685              GIVNAM 686
        EXTST12M 687            CHNSADSP 688            STMTRU 689
        STD 690                 STDDOC 691              STDWHER 692
        TBHRD 693               TBKNOW 694              TB 695
        TBSPRD1 696             TBSPRD2 697             TBSPRD3 698
        TBSPRD4 699             TBSPRD5 700             TBSPRD6 701
        TBCURED 702             TBCHANC 703             TBSHAME 704
        HOMELESS 705            ;


* SAS LABEL STATEMENT;

LABEL
   RECTYPE = 'File type identifier'
   SRVY_YR = 'Year of National Health Interview Survey'
   HHX     = 'HH identifier'
   FMX     = 'Family Serial Number'
   FPX     = 'Person Number (in family)'
   WTIA_SA = 'Weight - Interim Annual'
   WTFA_SA = 'Weight - Final Annual'
   PROXYSA = 'Sample adult status'
   PROX1   = 'Knowledgeable proxy for Sample Adult available'
   PROX2   = 'Relationship of SA proxy to SA'
   DOINGLWA= 'Corrected employment status last week'
   WHYNOWKA= 'Main reason for not working last week'
   EVERWRK = 'Ever worked'
   INDSTR1A= 'Detailed industry classification (1987 SIC)'
   INDSTR2A= 'Simple industry classification (1987 SIC)'
   INDSTRN1= 'Detailed industry classification (1997 NAICS)'
   INDSTRN2= 'Simple industry classification (1997 NAICS)'
   OCCUP1A = 'Detailed occupation classification (1987 SOC)'
   OCCUP2A = 'Simple occupation classification (1987 SOC)'
   OCCUPN1 = 'Detailed occupation classification (2000 SOC)'
   OCCUPN2 = 'Simple occupation classification (2000 SOC)'
   WRKCATA = 'Class of worker'
   BUSINC1A= 'Current job an incorporated business'
   LOCALL1A= 'Number of employees at work'
   YRSWRKPA= 'Years on the job'
   WRKLONGH= 'Current/most recent job also longest held job'
   HOURPDA = 'Paid by the hour at current/most recent job'
   PDSICKA = 'Paid sick leave at current/most recent job'
   ONEJOB  = 'Have more than one job'
   HYPEV   = 'Ever been told you have hypertension'
   HYPDIFV = 'Ever had hypertension on 2+ visits'
   CHDEV   = 'Ever been told you had coronary heart disease'
   ANGEV   = 'Ever been told you had angina pectoris'
   MIEV    = 'Ever been told you had a heart attack'
   HRTEV   = 'Ever been told you had a heart condition/disease'
   STREV   = 'Ever been told you had a stroke'
   EPHEV   = 'Ever been told you had emphysema'
   AASMEV  = 'Ever been told you had asthma'
   AASSTILL= 'Still have asthma'
   AASMYR  = 'Had an asthma episode/attack past 12 m'
   AASMERYR= 'Had visit to ER due to asthma past 12 m'
   ULCEV   = 'Ever been told you have an ulcer'
   ULCYR   = 'Had ulcer in past 12 m'
   CANEV   = 'Ever told by a doctor you had cancer'
   CNKIND1 = 'What kind of cancer ... Bladder'
   CNKIND2 = 'What kind of cancer ... Blood'
   CNKIND3 = 'What kind of cancer ... Bone'
   CNKIND4 = 'What kind of cancer ... Brain'
   CNKIND5 = 'What kind of cancer ... Breast'
   CNKIND6 = 'What kind of cancer ... Cervix'
   CNKIND7 = 'What kind of cancer ... Colon'
   CNKIND8 = 'What kind of cancer ... Esophagus'
   CNKIND9 = 'What kind of cancer ... Gallbladder'
   CNKIND10= 'What kind of cancer ... Kidney'
   CNKIND11= 'What kind of cancer ... larynx-windpipe'
   CNKIND12= 'What kind of cancer ... Leukemia'
   CNKIND13= 'What kind of cancer ... Liver'
   CNKIND14= 'What kind of cancer ... Lung'
   CNKIND15= 'What kind of cancer ... Lymphoma'
   CNKIND16= 'What kind of cancer ... Melanoma'
   CNKIND17= 'What kind of cancer ... mouth/tongue/lip'
   CNKIND18= 'What kind of cancer ... Ovary'
   CNKIND19= 'What kind of cancer ... Pancreas'
   CNKIND20= 'What kind of cancer ... Prostate'
   CNKIND21= 'What kind of cancer ... Rectum'
   CNKIND22= 'What kind of cancer ... skin (non-melanoma)'
   CNKIND23= 'What kind of cancer ... skin (DK what kind)'
   CNKIND24= 'What kind of cancer ... soft tissue (muscle or fat)'
   CNKIND25= 'What kind of cancer ... Stomach'
   CNKIND26= 'What kind of cancer ... Testis'
   CNKIND27= 'What kind of cancer ... throat - pharynx'
   CNKIND28= 'What kind of cancer ... Thyroid'
   CNKIND29= 'What kind of cancer ... Uterus'
   CNKIND30= 'What kind of cancer ... Other'
   CNKIND31= 'What kind of cancer ... more than 3 kinds'
   CANAGE1 = 'Age first diagnosed w/bladder cancer'
   CANAGE2 = 'Age first diagnosed w/blood cancer'
   CANAGE3 = 'Age first diagnosed w/bone cancer'
   CANAGE4 = 'Age first diagnosed w/brain cancer'
   CANAGE5 = 'Age first diagnosed w/breast cancer'
   CANAGE6 = 'Age first diagnosed w/cervical cancer'
   CANAGE7 = 'Age first diagnosed w/colon cancer'
   CANAGE8 = 'Age first diagnosed w/esophageal cancer'
   CANAGE9 = 'Age first diagnosed w/gallbladder cancer'
   CANAGE10= 'Age first diagnosed w/kidney cancer'
   CANAGE11= 'Age first diagnosed w/larynx-windpipe cancer'
   CANAGE12= 'Age first diagnosed w/leukemia'
   CANAGE13= 'Age first diagnosed w/liver cancer'
   CANAGE14= 'Age first diagnosed w/lung cancer'
   CANAGE15= 'Age first diagnosed w/lymphoma'
   CANAGE16= 'Age first diagnosed w/melanoma'
   CANAGE17= 'Age first diagnosed w/mouth/tongue/lip cancer'
   CANAGE18= 'Age first diagnosed w/ovarian cancer'
   CANAGE19= 'Age first diagnosed w/pancreatic cancer'
   CANAGE20= 'Age first diagnosed w/prostate cancer'
   CANAGE21= 'Age first diagnosed w/rectal cancer'
   CANAGE22= 'Age first diagnosed w/skin (non-melanoma) cancer'
   CANAGE23= 'Age first diagnosed w/skin (DK kind) cancer'
   CANAGE24= 'Age first diagnosed w/soft tissue cancer'
   CANAGE25= 'Age first diagnosed w/stomach cancer'
   CANAGE26= 'Age first diagnosed w/testicular cancer'
   CANAGE27= 'Age first diagnosed w/throat/pharynx cancer'
   CANAGE28= 'Age first diagnosed w/thyroid cancer'
   CANAGE29= 'Age first diagnosed w/uterine cancer'
   CANAGE30= 'Age first diagnosed w/other cancer'
   DIBEV   = 'Ever been told that you have diabetes'
   DIBAGE  = 'Age first diagnosed w/diabetes'
   DIFAGE2 = 'Years since first diagnosed w/diabetes'
   INSLN   = 'NOW taking insulin'
   DIBPILL = 'NOW taking diabetic pills'
   AHAYFYR = 'Told that you had hay fever, past 12 m'
   SINYR   = 'Told that you had sinusitis, past 12 m'
   CBRCHYR = 'Told you had chronic bronchitis, 12 m'
   KIDWKYR = 'Told you had weak/failing kidneys, 12 m'
   LIVYR   = 'Told you had liver condition, past 12 m'
   JNTSYMP = 'Symptoms of joint pain/aching/stiffness past 30 d'
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
   JMTHP15 = 'Which joint affected...fingers/thumb-right'
   JMTHP16 = 'Which joint affected...fingers/thumb-left'
   JMTHP17 = 'Which joint affected...other joint not listed'
   JNTCHR  = 'Symptoms begin more than 3 m ago'
   JNTHP   = 'Ever seen doctor or hlth prof for joint symptoms'
   ARTH1   = 'Ever been told you had arthritis'
   ARTHLMT = 'Limited due to arthritis or joint symptoms'
   PAINECK = 'Had neck pain, past 3 m'
   PAINLB  = 'Had low back pain, past 3 m'
   PAINLEG = 'Pain spread down leg/below knees'
   PAINFACE= 'Had pain in jaw/front of ear, past 3 m'
   AMIGR   = 'Had severe headache/migraine, past 3 m'
   ACOLD2W = 'Had a head/chest cold past 2 w'
   AINTIL2W= 'Had stomach prob w/vomit/diarrhea, 2 w'
   PREGNOW = 'Currently pregnant'
   HEARAID = 'Have ever worn a hearing aid'
   AHEARST = 'Description of hearing w/o hearing aid'
   AVISION = 'Trouble seeing even w/glasses/lenses'
   ABLIND  = 'Blind or unable to see at all'
   LUPPRT  = 'Lost all upper & lower natural teeth'
   SAD     = 'So sad nothing cheers you up, past 30 days'
   NERVOUS = 'How often felt nervous, past 30 days'
   RESTLESS= 'How often restless/fidgety, past 30 days'
   HOPELESS= 'How often felt hopeless, past 30 days'
   EFFORT  = 'How often felt everything was an effort, past 30 days'
   WORTHLS = 'How often felt worthless, past 30 days'
   MHAMTMO = 'Feelings interfered w/life, past 30 days'
   WRKLYR3 = 'Work status: last week, past 12 m'
   WKDAYR  = 'Number of work loss days, past 12 m'
   BEDDAYR = 'Number of bed days, past 12 m'
   AHSTATYR= 'Health better/worse/same, compared w/ 12 m ago'
   SPECEQ  = 'Have health problem that requires special equipment'
   FLWALK  = 'How difficult to walk 1/4 mile w/o special equipment'
   FLCLIMB = 'How difficult to climb 10 steps w/o special equipment'
   FLSTAND = 'How difficult to stand 2 hours w/o special equipment'
   FLSIT   = 'How difficult to sit 2 hours w/o special equipment'
   FLSTOOP = 'How difficult to stoop, bend or kneel w/o special equipment'
   FLREACH = 'How difficult to reach over head w/o special equipment'
   FLGRASP = 'How difficult to grasp small objects w/o special equipment'
   FLCARRY = 'How difficult lift/carry 10 lbs w/o special equipment'
   FLPUSH  = 'How difficult to push large objects w/o special equipment'
   FLSHOP  = 'How difficult to go out to events w/o special equipment'
   FLSOCL  = 'How difficult to participate in social activities w/o sp eq'
   FLRELAX = 'How difficult to relax at home w/o special equipment'
   FLA1AR  = 'Any functional limitation, all conds'
   AFLHCA1 = 'Vision problem causes difficulty with activity'
   AFLHCA2 = 'Hearing problem causes difficulty with activity'
   AFLHCA3 = 'Arthritis/rheumatism causes difficulty with activity'
   AFLHCA4 = 'Back/neck prob causes difficulty with activity'
   AFLHCA5 = 'Fract/bone/joint inj causes difficulty with activity'
   AFLHCA6 = 'Other injury causes difficulty with activity'
   AFLHCA7 = 'Heart prob causes difficulty with activity'
   AFLHCA8 = 'Stroke causes difficulty with activity'
   AFLHCA9 = 'Hypertension causes difficulty with activity'
   AFLHCA10= 'Diabetes causes difficulty with activity'
   AFLHCA11= 'Lung/breath prob causes difficulty with activity'
   AFLHCA12= 'Cancer causes difficulty with activity'
   AFLHCA13= 'Birth defect causes difficulty with activity'
   AFLHCA14= 'Mental retardation causes difficulty with activity'
   AFLHCA15= 'Otr dev prob causes difficulty with activity'
   AFLHCA16= 'Senility/dementia/alzheimers causes difficulty with activity'
   AFLHCA17= 'Dep/anx/emot prob causes difficulty with activity'
   AFLHCA18= 'Weight prob causes difficulty with activity'
   AFLHC19_= 'Missing or amputated limb/finger/digit'
   AFLHC20_= 'Musculoskeletal/connective tissue prob'
   AFLHC21_= 'Circulation problem'
   AFLHC22_= 'Endocrine/nutritional/metabolic prob'
   AFLHC23_= 'Nervous system/sensory organ condition'
   AFLHC24_= 'Digestive system problem'
   AFLHC25_= 'Genitourinary system problem'
   AFLHC26_= 'Skin/subcutaneous system problem'
   AFLHC27_= 'Blood or blood-forming organ problem'
   AFLHC28_= 'Benign tumor/cyst'
   AFLHC29_= 'Alcohol/drug/substance abuse problem'
   AFLHC30_= 'Otr mental prob/ADD/Bipolar/Schizophrenic'
   AFLHC31_= 'Surgical after-effects/medical treatment'
   AFLHC32_= '''Old age''/elderly/aging-related problem'
   AFLHC33_= 'Fatigue/tiredness/weakness'
   AFLHC34_= 'Pregnancy related problem'
   AFLHCA90= 'Other impair/prob(1) causes difficulty with activity'
   AFLHCA91= 'Other impair/prob(2) causes difficulty with activity'
   ALTIME1 = 'Duration of vision prob: Number of units'
   ALUNIT1 = 'Duration of vision prob: Time unit'
   ALDURA1 = 'Duration of vision prob (in years)'
   ALDURB1 = 'Duration of vision prob recode 2'
   ALCHRC1 = 'Vision problem condition status'
   ALTIME2 = 'Duration of hearing prob: Number of units'
   ALUNIT2 = 'Duration of hearing prob: Time unit'
   ALDURA2 = 'Duration of hearing prob (in years)'
   ALDURB2 = 'Duration of hearing prob recode 2'
   ALCHRC2 = 'Hearing problem condition status'
   ALTIME3 = 'Duration of arthritis/rheumatism: Number of units'
   ALUNIT3 = 'Duration of arthritis/rheumatism: Time unit'
   ALDURA3 = 'Duration of arthritis or rheumatism prob (in years)'
   ALDURB3 = 'Duration of arthritis or rheumatism prob recode 2'
   ALCHRC3 = 'Arthritis or rheumatism problem condition status'
   ALTIME4 = 'Duration of back or neck problem: Number of units'
   ALUNIT4 = 'Duration of back or neck problem: Time unit'
   ALDURA4 = 'Duration of back or neck prob (in years)'
   ALDURB4 = 'Duration of back or neck prob recode 2'
   ALCHRC4 = 'Back or neck condition status'
   ALTIME5 = 'Duration of fracture, bone/joint injury: Number of units'
   ALUNIT5 = 'Duration of fracture, bone/joint injury: Time unit'
   ALDURA5 = 'Duration of fracture, bone/joint injury prob (in years)'
   ALDURB5 = 'Duration of fracture, bone/joint injury prob recode 2'
   ALCHRC5 = 'Fracture, bone/joint injury condition status'
   ALTIME6 = 'Duration of other injury: Number of units'
   ALUNIT6 = 'Duration of other injury: Time unit'
   ALDURA6 = 'Duration of other injury problem (in years)'
   ALDURB6 = 'Duration of other injury problem recode 2'
   ALCHRC6 = 'Other injury condition status'
   ALTIME7 = 'Duration of heart problem: Number of units'
   ALUNIT7 = 'Duration of heart problem: Time unit'
   ALDURA7 = 'Duration of heart problem (in years)'
   ALDURB7 = 'Duration of heart problem recode 2'
   ALCHRC7 = 'Heart problem condition status'
   ALTIME8 = 'Duration of stroke problem: Number of units'
   ALUNIT8 = 'Duration of stroke problem: Time unit'
   ALDURA8 = 'Duration of stroke problem (in years)'
   ALDURB8 = 'Duration of stroke problem recode 2'
   ALCHRC8 = 'Stroke problem condition status'
   ALTIME9 = 'Duration of hypertension/hgh blood pressure problem: Number of units'
   ALUNIT9 = 'Duration of hypertension/hgh blood pressure problem: Time unit'
   ALDURA9 = 'Duration of hypertension/hgh blood pressure problem (in years)'
   ALDURB9 = 'Duration of hypertension/hgh  problem  recode 2'
   ALCHRC9 = 'Hypertension/hgh blood pressure problem condition status'
   ALTIME10= 'Duration of diabetes: Number of units'
   ALUNIT10= 'Duration of diabetes: Time unit'
   ALDURA10= 'Duration of diabetes (in years)'
   ALDURB10= 'Duration of diabetes prob recode 2'
   ALCHRC10= 'Diabetes problem condition status'
   ALTIME11= 'Duration of lung/breathing problem: Number of units'
   ALUNIT11= 'Duration of lung/breathing problem: Time unit'
   ALDURA11= 'Duration of lung/breathing problem (in years)'
   ALDURB11= 'Duration of lung/breathing problem recode 2'
   ALCHRC11= 'Lung/breathing problem condition status'
   ALTIME12= 'Duration of cancer: Number of units'
   ALUNIT12= 'Duration of cancer: Time unit'
   ALDURA12= 'Duration of cancer problem (in years)'
   ALDURB12= 'Duration of cancer problem recode 2'
   ALCHRC12= 'Cancer problem condition status'
   ALTIME13= 'Duration of birth defect: Number of units'
   ALUNIT13= 'Duration of birth defect: Time unit'
   ALDURA13= 'Duration of birth defect problem (in years)'
   ALDURB13= 'Duration of birth defect problem prob recode 2'
   ALCHRC13= 'Birth defect problem condition status'
   ALTIME14= 'Duration of mental retardation: Number of units'
   ALUNIT14= 'Duration of mental retardation: Time unit'
   ALDURA14= 'Duration of mental retardation problem (in years)'
   ALDURB14= 'Duration of mental retardation problem prob recode 2'
   ALCHRC14= 'Mental retardation problem condition status'
   ALTIME15= 'Duration of other developmental problem: Number of units'
   ALUNIT15= 'Duration of other developmental problem: Time unit'
   ALDURA15= 'Duration of other developmental problem (in years)'
   ALDURB15= 'Duration of other developmental problem  recode 2'
   ALCHRC15= 'Other developmental problem condition status'
   ALTIME16= 'Duration of senility: Number of units'
   ALUNIT16= 'Duration of senility: Time unit'
   ALDURA16= 'Duration of senility problem (in years)'
   ALDURB16= 'Duration of senility problem recode 2'
   ALCHRC16= 'Senility problem condition status'
   ALTIME17= 'Duration of depression/anxiety/emotnl prob: Number of units'
   ALUNIT17= 'Duration of depression/anxiety/emotional problem: Time unit'
   ALDURA17= 'Duration of depression/anxiety/emotional problem (in years)'
   ALDURB17= 'Duration of depression/anxiety/emotional problem recode 2'
   ALCHRC17= 'Depression/anxiety/emotional problem condition status'
   ALTIME18= 'Duration of weight problem: Number of units'
   ALUNIT18= 'Duration of weight problem: Time unit'
   ALDURA18= 'Duration of weight problem (in years)'
   ALDURB18= 'Duration of weight problem recode 2'
   ALCHRC18= 'Weight problem condition status'
   ALTIME19= 'Duration of missing limbs: Number of units'
   ALUNIT19= 'Duration of missing limbs: Time unit'
   ALDURA19= 'Duration of missing limbs problem (in years)'
   ALDURB19= 'Duration of missing limbs problem recode 2'
   ALCHRC19= 'Missing limbs problem condition status'
   ALTIME20= 'Duration of musculoskeletal problem: Number of units'
   ALUNIT20= 'Duration of musculoskeletal problem: Time unit'
   ALDURA20= 'Duration of musculoskeletal problem (in years)'
   ALDURB20= 'Duration of musculoskeletal problem recode 2'
   ALCHRC20= 'Musculoskeletal problem condition status'
   ALTIME21= 'Duration of circulatory problem: Number of units'
   ALUNIT21= 'Duration of circulatory problem: Time unit'
   ALDURA21= 'Duration of circulatory problem (in years)'
   ALDURB21= 'Duration of circulatory problem recode 2'
   ALCHRC21= 'Circulatory problem condition status'
   ALTIME22= 'Duration of endocrine problem: Number of units'
   ALUNIT22= 'Duration of endocrine problem: Time unit'
   ALDURA22= 'Duration of endocrine problem (in years)'
   ALDURB22= 'Duration of endocrine problem recode 2'
   ALCHRC22= 'Endocrine problem condition status'
   ALTIME23= 'Duration of nervous system condition: Number of units'
   ALUNIT23= 'Duration of nervous system condition: Time unit'
   ALDURA23= 'Duration of nervous system condition (in years)'
   ALDURB23= 'Duration of nervous system condition recode 2'
   ALCHRC23= 'Nervous system condition status'
   ALTIME24= 'Duration of digestive problems: Number of units'
   ALUNIT24= 'Duration of digestive problems: Number of units'
   ALDURA24= 'Duration of digestive problem (in years)'
   ALDURB24= 'Duration of digestive problem recode 2'
   ALCHRC24= 'Digestive problem condition status'
   ALTIME25= 'Duration of genitourinary problem: Number of units'
   ALUNIT25= 'Duration of genitourinary problem: Time unit'
   ALDURA25= 'Duration of genitourinary problem (in years)'
   ALDURB25= 'Duration of genitourinary problem recode 2'
   ALCHRC25= 'Genitourinary problem condition status'
   ALTIME26= 'Duration of skin problems: Number of units'
   ALUNIT26= 'Duration of skin problems: Time unit'
   ALDURA26= 'Duration of skin problem (in years)'
   ALDURB26= 'Duration of skin problem recode 2'
   ALCHRC26= 'Skin problems condition status'
   ALTIME27= 'Duration of blood problem: Number of units'
   ALUNIT27= 'Duration of blood problem: Time unit'
   ALDURA27= 'Duration of blood problem (in years)'
   ALDURB27= 'Duration of blood problem recode 2'
   ALCHRC27= 'Blood problem condition status'
   ALTIME28= 'Duration of benign tumor: Number of units'
   ALUNIT28= 'Duration of benign tumor: Time unit'
   ALDURA28= 'Duration of benign tumor (in years)'
   ALDURB28= 'Duration of benign tumor recode 2'
   ALCHRC28= 'Benign tumor condition status'
   ALTIME29= 'Duration of alcohol or drug problem: Number of units'
   ALUNIT29= 'Duration of alcohol or drug problem: Time unit'
   ALDURA29= 'Duration of alcohol or drug problem (in years)'
   ALDURB29= 'Duration of alcohol or drug problem recode 2'
   ALCHRC29= 'Alcohol or drug problem condition status'
   ALTIME30= 'Duration of other mental problem: Number of units'
   ALUNIT30= 'Duration of other mental problem: Time unit'
   ALDURA30= 'Duration of other mental problem (in years)'
   ALDURB30= 'Duration of other mental problem recode 2'
   ALCHRC30= 'Other mental problem condition status'
   ALTIME31= 'Duration of surgical after-effects: Number of units'
   ALUNIT31= 'Duration of surgical after-effects: Time unit'
   ALDURA31= 'Duration of surgical after-effects (in years)'
   ALDURB31= 'Duration of surgical after-effects recode 2'
   ALCHRC31= 'Surgical after-effects condition status'
   ALTIME32= 'Duration of ''old age'': Number of units'
   ALUNIT32= 'Duration of ''old age'': Number of units'
   ALDURA32= 'Duration of ''old age'' (in years)'
   ALDURB32= 'Duration of ''old age'', recode 2'
   ALCHRC32= '''Old age'' condition status'
   ALTIME33= 'Duration of fatigue problem: Number of units'
   ALUNIT33= 'Duration of fatigue problem: Time unit'
   ALDURA33= 'Duration of fatigue problem (in years)'
   ALDURB33= 'Duration of fatigue problem recode 2'
   ALCHRC33= 'Fatigue problem condition status'
   ALTIME34= 'Duration of pregnancy-related problem: Number of units'
   ALUNIT34= 'Duration of pregnancy-related problem: Time unit'
   ALDURA34= 'Duration of pregnancy-related problem (in years)'
   ALDURB34= 'Duration of pregnancy-related problem recode 2'
   ALCHRC34= 'Pregnancy-related condition status'
   ALTIME90= 'Duration of other N.E.C. problem (1): Number of units'
   ALUNIT90= 'Duration of other N.E.C. problem (1): Time unit'
   ALDURA90= 'Duration of other N.E.C. problem (1) (in years)'
   ALDURB90= 'Duration of other N.E.C. problem (1) recode 2'
   ALCHRC90= 'Other N.E.C. problem (1) condition status'
   ALTIME91= 'Duration of other N.E.C. problem (2): Number of units'
   ALUNIT91= 'Duration of other N.E.C. problem (2): Time unit'
   ALDURA91= 'Duration of other N.E.C. problem (2) (in years)'
   ALDURB91= 'Duration of other N.E.C. problem (2) recode2'
   ALCHRC91= 'Other N.E.C. problem (2) condition status'
   ALCNDRT = 'Chronic cond rec for ind w/functl lim'
   ALCHRONR= 'Overall functl lim recode by cond status'
   SMKEV   = 'Ever smoked 100 cigarettes'
   SMKREG  = 'Age first smoked fairly regularly'
   SMKNOW  = 'Smoke freq: everyday/some days/not at all'
   SMKSTAT2= 'Smoking Status: Recode'
   SMKQTNO = 'Time since quit: # of units'
   SMKQTTP = 'Time since quit: time period'
   SMKQTY  = 'Time since quit smoking (in years)'
   CIGSDA1 = 'Number cigs per day (daily smokers)'
   CIGDAMO = 'Number days smoked in past 30 days'
   CIGSDA2 = 'Number cigs per day (some day smokers)'
   CIGSDAY = 'Number of cigarettes a day (all current smokers)'
   CIGQTYR = 'Tried quit smoking 1+ days, past 12 m'
   VIGNO   = 'Freq vigorous activity: # of units'
   VIGTP   = 'Freq vigorous activity: Time units'
   VIGFREQW= 'Freq vigorous activity (times per wk)'
   VIGLNGNO= 'Duration vigorous activity: # units'
   VIGLNGTP= 'Duration vigorous activity: Time unit'
   VIGMIN  = 'Duration vigorous activity (in minutes)'
   MODNO   = 'Freq moderate activity: # of units'
   MODTP   = 'Freq moderate activity: Time units'
   MODFREQW= 'Freq light/moderate activity (times per wk)'
   MODLNGNO= 'Duration moderate activity: # of units'
   MODLNGTP= 'Duration moderate activity: Time unit'
   MODMIN  = 'Duration light/moderate activity (in minutes)'
   STRNGNO = 'Strength activity freq: # of units'
   STRNGTP = 'Strength activity freq: Time units'
   STRFREQW= 'Freq strength activity (times per wk)'
   ALC1YR  = 'Ever had 12+ drinks in any  one year'
   ALCLIFE = 'Had 12+ drinks in ENTIRE LIFE'
   ALC12MNO= 'Freq drank alcohol pst yr:  # of units'
   ALC12MTP= 'Freq drank alcohol pst yr:  Time unit'
   ALC12MWK= 'Freq drank alcohol: Days per week'
   ALC12MYR= 'Freq drank alcohol: Days in past year'
   ALCAMT  = 'Average # drinks on days drank'
   ALCSTAT = 'Alcohol drinking status: Recode'
   ALC5UPNO= 'Days 5+ drinks, past yr: # days'
   ALC5UPTP= 'Days 5+ drinks, past yr: Time unit'
   ALC5UPYR= 'Number of days had 5+ drinks past year'
   AHEIGHT = 'Total height in inches'
   AWEIGHTP= 'Weight without shoes (pounds)'
   BMI     = 'Body Mass Index (BMI)'
   SLEEP   = 'Hours of sleep'
   AUSUALPL= 'Place USUALLY go when sick'
   APLKIND = 'Place to go when sick (most often)'
   AHCPLROU= 'USUALLY go there for routine/preventive care'
   AHCPLKND= 'Place USUALLY go for routine/preventive care'
   AHCCHGYR= 'Change health care place, past 12 m'
   AHCCHGHI= 'Change related to health insurance'
   AHCDLYR1= 'Couldn''t get through on phone, past 12 m'
   AHCDLYR2= 'Couldn''t get appt soon enough, past 12 m'
   AHCDLYR3= 'Wait too long in dr''s office, past 12 m'
   AHCDLYR4= 'Not open when you could go, past 12 m'
   AHCDLYR5= 'No transportation, past 12 m'
   AHCAFYR1= 'Can''t afford prescription medicine, past 12 m'
   AHCAFYR2= 'Can''t afford mental health care/counseling, 12 m'
   AHCAFYR3= 'Can''t afford dental care, past 12 m'
   AHCAFYR4= 'Can''t afford eyeglasses, past 12 m'
   ADNLONG2= 'Time since last saw a dentist'
   AHCSYR1 = 'Seen/talked to mental health professional, past 12 m'
   AHCSYR2 = 'Seen/talked to eye doctor, past 12 m'
   AHCSYR3 = 'Seen/talked to foot doctor, past 12 m'
   AHCSYR4 = 'Seen/talked to a chiropractor, past 12 m'
   AHCSYR5 = 'Seen/talked to therapist (PT/OT/etc.), past 12 m'
   AHCSYR6 = 'Seen/talked to a NP/PA/midwife, past 12 m'
   AHCSYR7 = 'Seen/talked to OB/GYN, past 12 m'
   AHCSYR8 = 'Seen/talked to a medical specialist, past 12 m'
   AHCSYR9 = 'Seen/talked to a general doctor, past 12 m'
   AHCSYR10= 'Doctor treats both kids and adults'
   AHERNOY2= '# times in ER/ED, past 12 m'
   AHCHYR  = 'Received home care from health professional, past 12 m'
   AHCHMOYR= '# months of home care, past 12 m'
   AHCHNOY2= 'Total number of home visits'
   AHCNOYR2= 'Total number of office visits, past 12 m'
   ASRGYR  = 'Surgery/surgical procedure, past 12 m'
   ASRGNOYR= '# of surgeries, past 12 m'
   AMDLONGR= 'Time since last seen/talked to health professional'
   SHTFLUYR= 'Flu shot past 12 m'
   SPRFLUYR= 'Flu spray past 12 m'
   SHTPNUYR= 'Pneumonia shot (EVER)'
   APOX    = 'Ever had chickenpox'
   APOX12MO= 'Chickenpox, past 12 m'
   AHEP    = 'Ever had hepatitis'
   AHEPLIV = 'Ever lived w/ someone w/ hepatitis'
   SHTHEPB = 'Hepatitis B vaccine (EVER)'
   SHEPDOS = '# doses of hepatitis B vaccine received'
   BLDGV   = 'Donated blood since March 1985'
   BLDG12M = 'Donated blood past 12 months'
   HIVTST  = 'Ever been tested for HIV'
   WHYTST_R= 'Reason why you have not been tested for HIV/AIDS'
   TST12M_M= 'Month of last test for HIV'
   TST12M_Y= 'Year of last test for HIV'
   TIMETST = 'Time period of most recent HIV test'
   REATST_C= 'Main reason for last HIV test'
   REASWHOR= 'Who suggested you should be tested'
   LASTST_C= 'Location of last HIV test'
   CLNTYP_C= 'Type of clinic for last HIV test'
   WHOADM  = 'Who administered the test'
   GIVNAM  = 'Gave your first and last names'
   EXTST12M= 'HIV test in the next 12 months'
   CHNSADSP= 'Chances of getting AIDS virus'
   STMTRU  = 'Are any of these statements true'
   STD     = 'Had STD other than HIV/AIDS, past 5 yrs'
   STDDOC  = 'Saw a doctor or other health professional'
   STDWHER = 'Place where checked'
   TBHRD   = 'Ever heard of tuberculosis'
   TBKNOW  = 'Ever personally known anyone who had TB'
   TB      = 'How much do you know about TB'
   TBSPRD1 = 'Breathing air around person sick with TB'
   TBSPRD2 = 'Sharing eating/drinking utensils'
   TBSPRD3 = 'Through semen/vaginal secretions (sex)'
   TBSPRD4 = 'From smoking'
   TBSPRD5 = 'From mosquito or other insect bites'
   TBSPRD6 = 'Other'
   TBCURED = 'Can TB be cured?'
   TBCHANC = 'Chances of getting TB'
   TBSHAME = 'Ashamed if you/family diagnosed with TB'
   HOMELESS= 'Spent 24+ hrs living in street, shelter, jail/prison'
        ;


* SAS FORMAT STATEMENT;

/*
  FORMAT RECTYPE RECTYPE. SRVY_YR SRVY_YR. PROXYSA PROXYSA.
         PROX1 PROX1fff. PROX2 PROX2fff. DOINGLWA DOINGLWA.
         WHYNOWKA WHYNOWKA. EVERWRK EVERWRK. WRKCATA WRKCATA.
         BUSINC1A BUSINC1A. LOCALL1A LOCALL1A. YRSWRKPA YRSWRKPA.
         WRKLONGH WRKLONGH. HOURPDA HOURPDA. PDSICKA PDSICKA.
         ONEJOB ONEJOB. HYPEV HYPEV. HYPDIFV HYPDIFV.
         CHDEV CHDEV. ANGEV ANGEV. MIEV MIEV.
         HRTEV HRTEV. STREV STREV. EPHEV EPHEV.
         AASMEV AASMEV. AASSTILL AASSTILL. AASMYR AASMYR.
         AASMERYR AASMERYR. ULCEV ULCEV. ULCYR ULCYR.
         CANEV CANEV. CNKIND1 CNKIND1f. CNKIND2 CNKIND2f.
         CNKIND3 CNKIND3f. CNKIND4 CNKIND4f. CNKIND5 CNKIND5f.
         CNKIND6 CNKIND6f. CNKIND7 CNKIND7f. CNKIND8 CNKIND8f.
         CNKIND9 CNKIND9f. CNKIND10 CNKIND0f. CNKIND11 CNKIN10f.
         CNKIND12 CNKIN11f. CNKIND13 CNKIN12f. CNKIND14 CNKIN13f.
         CNKIND15 CNKIN14f. CNKIND16 CNKIN15f. CNKIND17 CNKIN16f.
         CNKIND18 CNKIN17f. CNKIND19 CNKIN18f. CNKIND20 CNKIN19f.
         CNKIND21 CNKIN20f. CNKIND22 CNKIN21f. CNKIND23 CNKIN22f.
         CNKIND24 CNKIN23f. CNKIND25 CNKIN24f. CNKIND26 CNKIN25f.
         CNKIND27 CNKIN26f. CNKIND28 CNKIN27f. CNKIND29 CNKIN28f.
         CNKIND30 CNKIN29f. CNKIND31 CNKIN30f. CANAGE1 CANAGE1f.
         CANAGE2 CANAGE2f. CANAGE3 CANAGE3f. CANAGE4 CANAGE4f.
         CANAGE5 CANAGE5f. CANAGE6 CANAGE6f. CANAGE7 CANAGE7f.
         CANAGE8 CANAGE8f. CANAGE9 CANAGE9f. CANAGE10 CANAGE0f.
         CANAGE11 CANAG10f. CANAGE12 CANAG11f. CANAGE13 CANAG12f.
         CANAGE14 CANAG13f. CANAGE15 CANAG14f. CANAGE16 CANAG15f.
         CANAGE17 CANAG16f. CANAGE18 CANAG17f. CANAGE19 CANAG18f.
         CANAGE20 CANAG19f. CANAGE21 CANAG20f. CANAGE22 CANAG21f.
         CANAGE23 CANAG22f. CANAGE24 CANAG23f. CANAGE25 CANAG24f.
         CANAGE26 CANAG25f. CANAGE27 CANAG26f. CANAGE28 CANAG27f.
         CANAGE29 CANAG28f. CANAGE30 CANAG29f. DIBEV DIBEV.
         DIBAGE DIBAGE. DIFAGE2 DIFAGE2f. INSLN INSLN.
         DIBPILL DIBPILL. AHAYFYR AHAYFYR. SINYR SINYR.
         CBRCHYR CBRCHYR. KIDWKYR KIDWKYR. LIVYR LIVYR.
         JNTSYMP JNTSYMP. JMTHP1 JMTHP1ff. JMTHP2 JMTHP2ff.
         JMTHP3 JMTHP3ff. JMTHP4 JMTHP4ff. JMTHP5 JMTHP5ff.
         JMTHP6 JMTHP6ff. JMTHP7 JMTHP7ff. JMTHP8 JMTHP8ff.
         JMTHP9 JMTHP9ff. JMTHP10 JMTHP10f. JMTHP11 JMTHP11f.
         JMTHP12 JMTHP12f. JMTHP13 JMTHP13f. JMTHP14 JMTHP14f.
         JMTHP15 JMTHP15f. JMTHP16 JMTHP16f. JMTHP17 JMTHP17f.
         JNTCHR JNTCHR. JNTHP JNTHP. ARTH1 ARTH1fff.
         ARTHLMT ARTHLMT. PAINECK PAINECK. PAINLB PAINLB.
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
         AFLHC19_ AFLHC19_. AFLHC20_ AFLHC20_. AFLHC21_ AFLHC21_.
         AFLHC22_ AFLHC22_. AFLHC23_ AFLHC23_. AFLHC24_ AFLHC24_.
         AFLHC25_ AFLHC25_. AFLHC26_ AFLHC26_. AFLHC27_ AFLHC27_.
         AFLHC28_ AFLHC28_. AFLHC29_ AFLHC29_. AFLHC30_ AFLHC30_.
         AFLHC31_ AFLHC31_. AFLHC32_ AFLHC32_. AFLHC33_ AFLHC33_.
         AFLHC34_ AFLHC34_. AFLHCA90 AFLHC18f. AFLHCA91 AFLHC19f.
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
         SMKREG SMKREG. SMKNOW SMKNOW. SMKSTAT2 SMKSTATf.
         SMKQTNO SMKQTNO. SMKQTTP SMKQTTP. SMKQTY SMKQTY.
         CIGSDA1 CIGSDA1f. CIGDAMO CIGDAMO. CIGSDA2 CIGSDA2f.
         CIGSDAY CIGSDAY. CIGQTYR CIGQTYR. VIGNO VIGNO.
         VIGTP VIGTP. VIGFREQW VIGFREQW. VIGLNGNO VIGLNGNO.
         VIGLNGTP VIGLNGTP. VIGMIN VIGMIN. MODNO MODNO.
         MODTP MODTP. MODFREQW MODFREQW. MODLNGNO MODLNGNO.
         MODLNGTP MODLNGTP. MODMIN MODMIN. STRNGNO STRNGNO.
         STRNGTP STRNGTP. STRFREQW STRFREQW. ALC1YR ALC1YR.
         ALCLIFE ALCLIFE. ALC12MNO ALC12MNO. ALC12MTP ALC12MTP.
         ALC12MWK ALC12MWK. ALC12MYR ALC12MYR. ALCAMT ALCAMT.
         ALCSTAT ALCSTAT. ALC5UPNO ALC5UPNO. ALC5UPTP ALC5UPTP.
         ALC5UPYR ALC5UPYR. AHEIGHT AHEIGHT. AWEIGHTP AWEIGHTP.
         SLEEP SLEEP. AUSUALPL AUSUALPL. APLKIND APLKIND.
         AHCPLROU AHCPLROU. AHCPLKND AHCPLKND. AHCCHGYR AHCCHGYR.
         AHCCHGHI AHCCHGHI. AHCDLYR1 AHCDLYRf. AHCDLYR2 AHCDLY0f.
         AHCDLYR3 AHCDLY1f. AHCDLYR4 AHCDLY2f. AHCDLYR5 AHCDLY3f.
         AHCAFYR1 AHCAFYRf. AHCAFYR2 AHCAFY0f. AHCAFYR3 AHCAFY1f.
         AHCAFYR4 AHCAFY2f. ADNLONG2 ADNLONGf. AHCSYR1 AHCSYR1f.
         AHCSYR2 AHCSYR2f. AHCSYR3 AHCSYR3f. AHCSYR4 AHCSYR4f.
         AHCSYR5 AHCSYR5f. AHCSYR6 AHCSYR6f. AHCSYR7 AHCSYR7f.
         AHCSYR8 AHCSYR8f. AHCSYR9 AHCSYR9f. AHCSYR10 AHCSYR0f.
         AHERNOY2 AHERNOYf. AHCHYR AHCHYR. AHCHMOYR AHCHMOYR.
         AHCHNOY2 AHCHNOYf. AHCNOYR2 AHCNOYRf. ASRGYR ASRGYR.
         ASRGNOYR ASRGNOYR. AMDLONGR AMDLONGR. SHTFLUYR SHTFLUYR.
         SPRFLUYR SPRFLUYR. SHTPNUYR SHTPNUYR. APOX APOX.
         APOX12MO APOX12MO. AHEP AHEP. AHEPLIV AHEPLIV.
         SHTHEPB SHTHEPB. SHEPDOS SHEPDOS. BLDGV BLDGV.
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
         HOMELESS HOMELESS.  ;
*/

RUN ;
