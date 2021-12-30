options compress = yes;
libname library "C:\CarlosDobkin\Data\Mortality 1990 2004";

*Use macro with year specific lines;
%macro extr_y(year,yr);
*icd9_1-icd9_20 icd10_1-icd10_20;
data narrow&yr. (keep = alcohol drugs homicide MVA suicide external prin_icd_9 prin_icd_10 
                          year male black white hispanic_r married alcohol_e homicide_e 
                          suicide_e MVA_e drugs_e external_other age days_to_21 dod dob ucod educ
                          HS_drop HS college ed_missing all female internal);
   set library.mort&yr.;
   year = &year.;
   if days_to_21 >= -3*366 and days_to_21 <= 3*366;
  *Set up arrays;
   array record_{20} $ recaxcnd1-recaxcnd20;
   array icd10_{20} $ icd10_1-icd10_20;
  *array condition_{20} $ condition_1-condition_20;
   array icd9_{20} $ icd9_1-icd9_20;
   array n_code_{20} $ n_code_1-n_code_20;
  *Code up gender;
   if year in (1990,1991,1992,1993,1994) then do;
      if sex =1 then male = 1; else male = 0;
	  if racer3 = '1' and hispanic = 0 then white = 1; else white = 0;
	  if racer3 = '3' and hispanic = 0 then black = 1; else black = 0;
	  if hispanic ne 0 then hispanic_r = 1; else hispanic_r = 0; 
	  if marstat = 2 then married = 1; else married = 0;
	  Prin_icd_9 = ucod;
	  do i = 1 to 20;
         if year in (1990,1991,1992,1993,1994) and substr(record_{i},5,1) = '1' then n_code_{i} = substr(record_{i},1,4);
         if year in (1990,1991,1992,1993,1994) and substr(record_{i},5,1) = '0' then icd9_{i} = substr(record_{i},1,4);
      end;
   end;
   if year in (1995,1996,1997,1998,1999) then do;
      if sex =1 then male = 1; else male = 0;
	  if racer3 = '1' and hispanic = 0 then white = 1; else white = 0;
	  if racer3 = '3' and hispanic = 0 then black = 1; else black = 0;
	  if hispanic ne 0 then hispanic_r = 1; else hispanic_r = 0; 
	  if marstat = 2 then married = 1; else married = 0;
	  Prin_icd_9 = ucod;
	  do i = 1 to 20;
	     if year in (1995,1996,1997,1998) and substr(record_{i},5,1) = '1' then n_code_{i} = substr(record_{i},1,4);	
	     if year in (1995,1996,1997,1998) and substr(record_{i},5,1) = '0' then icd9_{i} = substr(record_{i},1,4); 
         if year = 1999 then icd10_{i} = record_{i};
	  end;
   end;
   if year in (2000,2001,2002) then do;
      if sex =1 then male = 1; else male = 0;
	  if racer3 = '1' and hispanic = 0 then white = 1; else white = 0;
	  if racer3 = '3' and hispanic = 0 then black = 1; else black = 0;
	  if hispanic ne 0 then hispanic_r = 1; else hispanic_r = 0; 
	  if marstat = 2 then married = 1; else married = 0;
     *Primary code;
	  prin_icd_10 = ucod;
	  do i = 1 to 20;
	     icd10_{i} = record_{i};
	  end;
   end;
   if year in (2003,2004) then do;
      if sex = 'M' then male = 1; else male = 0;
	  if racer2 = '1' and hispanic = 100 then white = 1; else white = 0;
	  if racer2 = '3' and hispanic = 100 then black = 1; else black = 0;
	  if hispanic ne 100 then hispanic_r = 1; else hispanic_r = 0;
	  if maritals = 'M' then married = 1; else married = 0; 
	 *Primary code;
	  prin_icd_10 = ucod;
	  do i = 1 to 20;
	     icd10_{i} = record_{i};
	  end;
	  educ = educ89;
   end;
  *Flag external for the ecode;
   external = 0;
  *Go by cause;
   alcohol = 0;
   drugs = 0;
   suicide = 0;
   mva = 0;
   homicide = 0;
   do i = 1 to 20;
	  if substr(icd9_{i},1,1) in ('8','9')then external = 1; *This will cover the ICD9;
      if substr(icd10_{i},1,1) in ('V','W','X','Y','Z') then external = 1;
	 *Alcohol;
	  if substr(icd10_{i},1,3) in ('F10','K70','X45','X65','Y15','Y91','K70','T51','X46',
                                   'X65','Y15','Y90','Y91') then alcohol = 1;
	  if substr(icd10_{i},1,4) in ('G312','G621','I426','K292','R780','E244','G721','K852',
                                   'K860','Z502','Z714','Z721','K860','T518','T519') then alcohol = 1;
	  if substr(icd9_{i},1,3) in ('291','303','860') then alcohol = 1; 
	  if substr(icd9_{i},1,4) in ('3050','3575','4255','5353','5710','5711','5712','5713','7903') then alcohol = 1;
 
        *Drugs; 
      if substr(icd10_{i},1,3) in ('F11','F12','F13','F14','F15','F16','F17','F18','F19','F55','T40','T41','T43','F55','X40','X42') and
         substr(icd10_{i},1,4) not in ('F116','F126','F136','F146','F156','F166','F176',
                                       'F171','F172','F186','F196') then drugs = 1;				   
      if substr(icd9_{i},1,3) in ('292','304','850','851','852','853','854','855','856','857','858') then drugs = 1;
      if substr(icd9_{i},1,4) in ('3321','3576','3051','3052','3053','3054','3055','3056','3057','3058','3059') then drugs = 1;
     *MVA;
      /*if substr(icd10_{i},1,2) in ('V2','V3','V4','V5','V6','V7') then MVA = 1;
      if substr(icd10_{i},1,3) in ('V02','V03','V04','V12','V13','V14','V83','V84',
                                   'V85','V86') then MVA = 1;
      if substr(icd10_{i},1,4) in ('V090','V091','V092','V190','V191','V192','V194','V195',
                                   'V196','V803','V804','V805','V810','V811','V820','V821',
                                   'V870','V871','V872','V873','V874','V875','V876','V878',
                                   'V880','V881','V882','V883','V884','V885','V886','V887',
                                   'V888','V890','V892') then MVA = 1;
	  */
      if substr(icd10_{i},1,2) in ('V0','V1','V2','V3','V4','V5','V6','V7','V8') then MVA = 1;
      if substr(icd9_{i},1,2) = '81' then MVA = 1;
      if substr(icd9_{i},1,3) in ('820','821','822','823','824','825') then MVA = 1;
     *Homicide;
	  if substr(icd10_{i},1,3) in ('X85','X86','X87','X88','X89') or 
         substr(icd10_{i},1,2) in ('X9','Y0') then homicide = 1;
      if substr(icd9_{i},1,2) = '96' then homicide = 1;
	 *Suicide;
		if substr(icd10_{i},1,2) in ('X6','X7') then suicide = 1;
		if substr(icd10_{i},1,3) in ('X80','X81','X82','X83','X84') then suicide = 1;
		if substr(icd10_{i},1,4) = 'X870' then suicide = 1;
        if substr(icd9_{i},1,2) = '95' then suicide = 1;
   end;
   *Code up other external; 
   if alcohol = 0 and homicide = 0 and suicide = 0 and MVA = 0 and drugs = 0 and  external = 1
      then external_other = 1; else external_other = 0;
   *Create mutually exclusive categories;
   if homicide = 1 then homicide_e = 1; else homicide_e = 0;
   if homicide = 0 and suicide = 1 then suicide_e = 1; else suicide_e = 0;
   if homicide = 0 and suicide = 0 and MVA = 1 then MVA_e = 1; else MVA_e = 0;
   if homicide = 0 and suicide = 0 and MVA = 0 and alcohol = 1 then alcohol_e = 1; else alcohol_e = 0;
   if homicide = 0 and suicide = 0 and MVA = 0 and alcohol = 0 and drugs = 1 then drugs_e = 1; else drugs_e = 0;
  *Code up education;
   if educ >0 and educ < 12 then HS_drop = 1; else HS_drop = 0; 
   if educ = 12 then HS = 1; else HS = 0;
   if educ > 12 and educ < 20 then college = 1; else college = 0;
   if HS_drop = 0 and HS = 0 and college = 0 then ed_missing = 1; else ed_missing = 0;
   all = 1;
   if male = 1 then female = 0; 
   if male = 0 then female = 1;
   if external = 0 then internal = 1; else internal = 0;
run;

proc freq data = narrow&yr.;
   tables male black white hispanic_r married external alcohol drugs homicide MVA suicide;
   title " For File &year.";
run;
*proc print data = narrow&yr. (obs = 1); run;

%mend;
%extr_y(1990,90);
%extr_y(1991,91);
%extr_y(1992,92);
%extr_y(1993,93);
%extr_y(1994,94);
%extr_y(1995,95);
%extr_y(1996,96);
%extr_y(1997,97);
%extr_y(1998,98);
%extr_y(1999,99);
%extr_y(2000,00);
%extr_y(2001,01);
%extr_y(2002,02);
%extr_y(2003,03);
%extr_y(2004,04);

data library.combined;
   set narrow90  narrow91 
       narrow92  narrow93 
       narrow94  narrow95 
       narrow96  narrow97 
       narrow98  narrow99 
       narrow00  narrow01 
       narrow02  narrow03 
       narrow04;
run;
proc freq data = library.combined;
   tables    educ;
run;
proc freq data = library.combined;
   tables    alcohol*(suicide MVA Homicide)
             alcohol*drugs
			 drugs*(suicide MVA Homicide);
run;
proc means data = library.combined noprint;
   var male black white hispanic_r married external alcohol drugs homicide MVA suicide 
       alcohol_e homicide_e suicide_e MVA_e drugs_e external_other HS_drop HS college ed_missing;
   by year;
   output out = check_vars (where=(_stat_ = 'MEAN'));
run;
PROC EXPORT DATA= check_vars 
            OUTFILE= "C:\CarlosDobkin\Fix up Code for AEJ\Fix it code\P06 Check Stability.csv" 
            DBMS=csv REPLACE;
RUN;

