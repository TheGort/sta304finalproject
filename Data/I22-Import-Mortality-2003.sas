libname library "C:\CarlosDobkin\";

options compress = yes obs = max;

%macro imp_03(i_file,year);
DATA library.&i_file. ;
   INFILE "C:\CarlosDobkin\&i_file..dat" LRECL = 20000 ;
   format dob dod date.;
   INPUT
/* @1      R1              $char2.*/
     /*   @3      reparea         $char1.*/
     /*   @4      certificate     $char6.*/
     /*   @10     R3              $char2.*/
     /*   @12     seq             $char7.*/
        @19     rectype         $char1.
        @20     resstat         $char1.
        @21     fipstoc         $char2.
        @23     fipctyoc        $char3.
        @26     stoccexp        $char2.
        @28     popsize         $char1. 
        @29     stateres        $char2.
		@31     cntryres        $char2.
		@33     stctryrec       $char2.
		@35     cntyres         $char3.
		@38     ctyres          $char5.
		@43     popctysize      $char1.
		@44     metrocty        $char1.           
        @45     stresexp        $char2.
		@47     fipspmsm        $char4.
		@51     popres          $char1.
		@52     poppmsa         $char1.
		@53     cmsares         $char2.
		@55     stateb          $char2.  
		@57     countryb        $char2.  
		@59     stcntbrec       $char2.
		@61     educ89          $char2.
		@63     educ03          $char1.
		@64     educfl          $char1.
		@65     monthd          $char2. 
	  	@67     datd            $char2.
		@69     sex             $char1. 
		@70     dage            $char4.      
		@74     agsubf          $char1.    
		@75     age52           $char2.		                               
		@77     age27           $char2. 
		@79     age12           $char2.
		@81     infage22        $char2.
		@83     pldth           $char1. 
		@84     maritals        $char1.		
		@85     weekdayd        $char1.
          @86     monthb          $char2. 
	   	@88     dateb           $char2. 
	   	@90     yearb           $char4.  
        /*  @86     monthb          $char2. */
	  /* 	@88     dateb           $char2. */
	  /* 	@90     yearb           $char4. */ 
     /*   @94     monthrec        $char2.*/
     /*   @96     dayrec          $char2.*/
	/*	@98     yearec          $char4.*/
		@102    curyr           $char4.
		@106    injwk           $char1.  
		@107    manner          $char1.
		@108    disp            $char1.
		@109    autopsy         $char1.
	/*	@110    certifier       $char1.*/
	/*	@111    certlit         $char30.*/
	/*	@141    R4              $char1.*/
	/*	@142    tobacco         $char1.*/
	/*	@143    pregstat        $char1.*/ 
		@144    activity        $char1. 
		@145    plinjury        $char1.
		@146    ucod            $char4.
		@150    rcod358         $char3.
	/*	@153    R5              $char1.*/
		@154    rcod113         $char3.
		@157    rcod130         $char3.
		@160    rcod39          $char2.
	/*	@162    R8              $char1.*/
		@163    nument          $char2.
        @165    entax1          $char7.  
		@172    entax2          $char7.
		@179    entax3          $char7.
		@186    entax4          $char7.
		@193    entax5          $char7. 
		@200    entax6          $char7.
		@207    entax7          $char7.
		@214    entax8          $char7.  
		@221    entax9          $char7.
		@228    entax10         $char7.
		@235    entax11         $char7.
		@242    entax12         $char7.
		@249    entax13         $char7.
		@256    entax14         $char7.
		@263    entax15         $char7.
		@270    entax16         $char7.
		@277    entax17         $char7.
		@284    entax18         $char7.
		@291    entax19         $char7.
		@298    entax20         $char7.
		@305    R9              $char36.
		@341    numrecaxc       $char2.
		@343    R10             $char1.
		@344    recaxcnd1       $char5.
		@349    recaxcnd2       $char5.
		@354    recaxcnd3       $char5.
		@359    recaxcnd4       $char5.
		@364    recaxcnd5       $char5. 
		@369    recaxcnd6       $char5.
		@374    recaxcnd7       $char5.
		@379    recaxcnd8       $char5.
		@384    recaxcnd9       $char5.
		@389    recaxcnd10      $char5.
		@394    recaxcnd11      $char5.
		@399    recaxcnd12      $char5. 
		@404    recaxcnd13      $char5.
		@409    recaxcnd14      $char5.
		@414    recaxcnd15      $char5.
		@419    recaxcnd16      $char5.
		@424    recaxcnd17      $char5.
		@429    recaxcnd18      $char5.
		@434    recaxcnd19      $char5.
		@439    recaxcnd20      $char5.
	/*	@444    sourcef         $char1.*/
		@445    drace           $char2.
        @447    brace           $char1.
		@448    imprace         $char1.
		@449    racer2          $char1.
		@450    racer3          $char1.
	/*	@451    multrace1       $char3.*/
	/*	@454    R11             $char1.*/
	/*	@455    multrace2       $char3.*/
	/*	@458    R12             $char1.*/
	/*	@459    multrace3       $char3.*/
	/*	@462    R13             $char1.*/
    /*  @463    multrace4       $char3.*/
	/*	@466    R14             $char1.*/
	/*	@467    multrace5       $char3.*/
	/*	@470    R15             $char1.*/
	/*	@471    multrace6       $char3.*/
	/*	@474    R16             $char1.*/
	/*	@475    multrace7       $char3.*/
	/*	@478    R17             $char1.*/
	/*	@479    multrace8       $char3.*/
	/*	@482    R18             $char1.*/
	/*	@483    R19             $char1.*/
		@484    hispanic        $char3.
		@487    R20             $char1.
        @488    hispanicr       $char1.;

 		dob = mdy(monthb,dateb,yearb);
		dod = mdy(monthd,datd,&year.);

  *Handle people not born on leap years;
   if (month(dob) ne 2 or day(dob) ne 29) then age21 = mdy(month(dob),day(dob),year(dob)+21);
  *Handle people born on leap years;
   if month(dob) = 2 and day(dob) = 29 then age21 = mdy(3,1,year(dob)+21);
  *Compute it in days;
   days_to_21 = intck('days',age21,dod);
   age = intck('days',dob,dod)/365.24;
   age_yrs= floor(age);
   if dage < 2000 then diff = dage - 1000 - age_yrs;
   if dage in ('1018','1019','1020','1021','1022','1023');
run; 
proc freq data = library.&i_file. ;
   tables datd dateb diff age_yrs curyr age_yrs dage;
   title "freqs for &year.";
run;
proc freq data = library.&i_file. ;
   tables days_to_21;
   where diff in (-1,1);
   title "freqs for &year.";
run;
%mend;

%imp_03(mort03,2003);
