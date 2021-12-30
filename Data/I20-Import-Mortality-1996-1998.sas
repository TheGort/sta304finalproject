

libname library "C:\CarlosDobkin\";

options compress = yes obs = max;

%macro imp_96_98(i_file,year);
DATA library.&i_file. ;
   INFILE "C:\CarlosDobkin\&i_file..dat" LRECL = 20000 ;
   format dob dod date.;
   INPUT
        /*@1      R1              $char2.*/
        /*@3      R2              $char1.*/
        /*@4      certificate   $char6.*/
        /*@10     R3              $char2.*/
        /*@12     seq           $char7.*/
          @19     rectype       $char1.
          @20     resstat       $char1.
          @21     stocc           $char2.
          @23     ctyocc          $char3.
          @26     regocc          $char1.
          @27     divstocc        $char2. 
          @29     stoccexp        $char2.
          @31     stateres        $char2.
		  @33     cntyres         $char3.
		  @36     cityres         $char3.
		  @39     pop             $char1.
		  @40     metro           $char1.
		  @41     regres          $char1.
		  @42     divstres        $char3.   
		  @44     stresexp        $char2.
		  @46     nchspmsm        $char3.
		  @49     popocc          $char1.
          @50     popres          $char1.
		  @51     poppmsa         $char1.
		@52     educ            $char2.
		@54     educr           $char1. 
		@55     monthd          $char2.  
        @57     datd            $char2.
		@59     sex             $char1.
		@60     drace           $char2.
		  @62     racer3          $char1.
		  @63     racer2          $char1.
		@64     dage            $char3. 
		  @67     ager52          $char2.
		  @69     ager27          $char2. 
		  @71     ager12          $char2.
		  @73     iager22         $char2.
		@75     placed          $char1.
		/*@76     R4              $char1.*/                                   
		@77     marstat         $char1. 
		@78     stateb          $char2.
		@80     hispanic        $char2.
		@82     hispanicr       $char1. 
		@83     dwkd            $char1. 
	    @84     autopsy         $char1.
		@85     business        $char3. 
		@88     occupation      $char3. 
		@91     cause52         $char3.
		/*@94     R6              $char3.*/
		@97     placeres        $char5.
		@102    month         $char2.
		@104    dabth         $char2.  
		@106    yrbth         $char4.
		/*@110    monrecd       $char2.*/
		/*@112    dayrecd       $char2.*/
		/*@114    yrrecd        $char1.*/
		@115    curyear         $char4.
		@119    fipstocc        $char2.
		@121    fipsctyocc      $char3.
		@124    fipstres        $char2.
		@126    fipsctyres      $char3.
		@129    fipspmsres      $char4.
		/*@133    R7              $char1.*/
		@134    cmsa            $char2.
		@136    injwork         $char1.
		@137    raceimp         $char1.
		@138    ageflag         $char1.
		/*@139    R8              $char2.*/
		@141    placeacc        $char1.
		@142    ucod            $char4.
		@146    rcod282         $char5. 
		@151    rcod72          $char3.
		@154    rcod61          $char3.
		@157    rcod34          $char3.
		@160    nument          $char2.
		@162    entax1          $char7.  
		@169    entax2          $char7.
		@176    entax3          $char7.
		@183    entax4          $char7.
		@190    entax5          $char7. 
		@197    entax6          $char7.
		@204    entax7          $char7.
		@211    entax8          $char7.  
		@218    entax9          $char7.
		@225    entax10         $char7.
		@232    entax11         $char7.
		@239    entax12         $char7.
		@246    entax13         $char7.
		@253    entax14         $char7.
		@260    entax15         $char7.
		@267    entax16         $char7.
		@274    entax17         $char7.
		@281    entax18         $char7.
		@288    entax19         $char7.
		@295    entax20         $char7.
		/*@302    R9              $char36.*/
		@338    numrecaxc       $char2.
		/*@340    R10             $char1.*/
		@341    recaxcnd1       $char5.
		@346    recaxcnd2       $char5.
		@351    recaxcnd3       $char5.
		@356    recaxcnd4       $char5.
		@361    recaxcnd5       $char5. 
		@366    recaxcnd6       $char5.
		@371    recaxcnd7       $char5.
		@376    recaxcnd8       $char5.
		@381    recaxcnd9       $char5.
		@386    recaxcnd10      $char5.
		@391    recaxcnd11      $char5.
		@396    recaxcnd12      $char5. 
		@401    recaxcnd13      $char5.
		@406    recaxcnd14      $char5.
		@411    recaxcnd15      $char5.
		@416    recaxcnd16      $char5.
		@421    recaxcnd17      $char5.
		@426    recaxcnd18      $char5.
		@431    recaxcnd19      $char5.
		@436    recaxcnd20      $char5.;
        
		dob = mdy(month,dabth,yrbth);
		dod = mdy(monthd,datd,&year.);

  *Handle people not born on leap years;
   if (month(dob) ne 2 or day(dob) ne 29) then age21 = mdy(month(dob),day(dob),year(dob)+21);
  *Handle people born on leap years;
   if month(dob) = 2 and day(dob) = 29 then age21 = mdy(3,1,year(dob)+21);
  *Compute it in days;
   days_to_21 = intck('days',age21,dod);
  *These age variables are nto quite right;
   age = intck('days',dob,dod)/365.24;
   age_yrs= floor(age);
   if dage < 100 then diff = dage - age_yrs;
   if dage in ('018','019','020','021','022','023');
run; 
proc freq data = library.&i_file. ;
   tables datd dabth diff age_yrs curyear age_yrs dage;
   title "freqs for &year.";
run;
%mend;

%imp_96_98(mort96,1996);
%imp_96_98(mort97,1997);
%imp_96_98(mort98,1998);
