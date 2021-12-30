*options obs=100 ;
options nocenter ;

/*------------------------------------------------
  by Jean Roth	Fri Feb  2 16:50:19 EST 2007
  This program reads the 2004 NCHS Multiple Cause of Death Data Data File

  Report errors to jroth@nber.org
  This program is distributed under the GNU GPL.
  See end of this file and
  http://www.gnu.org/licenses/ for details.
 ----------------------------------------------- */

*  The following line should contain the directory
   where the SAS file is to be stored  ;

libname library "./";

*  The following line should contain
   the complete path and name of the raw data file.
   On a PC, use backslashes in paths as in C:\  ;

*FILENAME datafile pipe "unzip -p /homes/data/mortality/2004/data/mort2004.zip ";

*  The following line should contain the name of the SAS dataset ;

%let dataset = mort2004 ;

DATA library.&dataset ;

INFILE datafile LRECL = 20000 ;
attrib  rectype      length=3     label="Record Type";                          
attrib  restatus     length=3     label="Resident Status";                      
attrib  stateoc      length=$2    label="State of Occurrence (FIPS)";           
attrib  countyoc     length=3     label="County of Occurrence";                 
attrib  exstatoc     length=$2    label="Expanded State of Occurrence Code";    
attrib  popsizoc     length=3     label="Population Size of County of Occurrence";
attrib  staters      length=$2    label="State of Residence (FIPS)";            
attrib  statersr     length=$2    label="State of Residence Recode";            
attrib  countyrs     length=$3    label="County of Residence";                  
attrib  cityrs       length=$5    label="City of Residence (FIPS)";             
attrib  popsize      length=$1    label="Population Size of City of Residence"; 
attrib  metro        length=$1    label="Metropolitan - Nonmetropolitan County of Residence";
attrib  exstares     length=$2    label="Expanded State of Residence Code";     
attrib  pmsares      length=$4    label="PMSA/MSA of Residence (FIPS)";         
attrib  popsizrs     length=$1    label="Population Size of County of Residence";
attrib  popmsa       length=$1    label="PMSA/MSA Population Size";             
attrib  cmsares      length=3     label="CMSA of Residence (FIPS)";             
attrib  statbth      length=$2    label="State of Birth (FIPS)";                
attrib  statbthr     length=$2    label="State of Birth Recode";                
attrib  educ89       length=3     label="Education (1989 revision)";            
attrib  educ         length=3     label="Education (2003 revision)";            
attrib  educflag     length=3     label="Education reporting flag";             
attrib  monthdth     length=3     label="Month of Death";                       
attrib  sex          length=$1    label="Sex";                                  
attrib  age          length=4     label="Detail Age";                           
attrib  ageflag      length=3     label="Age Substitution Flag";                
attrib  ager52       length=3     label="Age Recode 52";                        
attrib  ager27       length=3     label="Age Recode 27";                        
attrib  ager12       length=3     label="Age Recode 12";                        
attrib  ager22       length=3     label="Infant Age Recode 22";                 
attrib  placdth      length=3     label="Place of Death and Decedent's Status"; 
attrib  marstat      length=$1    label="Marital Status";                       
attrib  weekday      length=3     label="Day of Week of Death";                 
attrib  year         length=4     label="Current Data Year";                    
attrib  injwork      length=$1    label="Injury at Work";                       
attrib  mandeath     length=3     label="Manner of death";                      
attrib  methdisp     length=$1    label="Method of disposition";                
attrib  autopsy      length=$1    label="Autopsy";                              
attrib  activity     length=3     label="Activity code";                        
attrib  injury       length=3     label="Place of Injury for Causes W00-Y34 except Y06.- and Y07.-";
attrib  ucod         length=$4    label="ICD Code (10th Revision)";             
attrib  ucr358       length=3     label="358 Cause Recode";                     
attrib  ucr113       length=3     label="113 Cause Recode";                     
attrib  ucr130       length=3     label="130 Cause Recode";                     
attrib  ucr39        length=3     label="39 Cause Recode";                      
attrib  eanum        length=3     label="Number of Entity-Axis Conditions";     
attrib  econdp_1     length=3     label="Part/line number on certificate";      
attrib  econds_1     length=3     label="Sequence of condition within part/line";
attrib  enicon_1     length=$4    label="Condition code";                       
attrib  econdp_2     length=3     label="Part/line number on certificate";      
attrib  econds_2     length=3     label="Sequence of condition within part/line";
attrib  enicon_2     length=$4    label="Condition code";                       
attrib  econdp_3     length=3     label="Part/line number on certificate";      
attrib  econds_3     length=3     label="Sequence of condition within part/line";
attrib  enicon_3     length=$4    label="Condition code";                       
attrib  econdp_4     length=3     label="Part/line number on certificate";      
attrib  econds_4     length=3     label="Sequence of condition within part/line";
attrib  enicon_4     length=$4    label="Condition code";                       
attrib  econdp_5     length=3     label="Part/line number on certificate";      
attrib  econds_5     length=3     label="Sequence of condition within part/line";
attrib  enicon_5     length=$4    label="Condition code";                       
attrib  econdp_6     length=3     label="Part/line number on certificate";      
attrib  econds_6     length=3     label="Sequence of condition within part/line";
attrib  enicon_6     length=$4    label="Condition code";                       
attrib  econdp_7     length=3     label="Part/line number on certificate";      
attrib  econds_7     length=3     label="Sequence of condition within part/line";
attrib  enicon_7     length=$4    label="Condition code";                       
attrib  econdp_8     length=3     label="Part/line number on certificate";      
attrib  econds_8     length=3     label="Sequence of condition within part/line";
attrib  enicon_8     length=$4    label="Condition code";                       
attrib  econdp_9     length=3     label="Part/line number on certificate";      
attrib  econds_9     length=3     label="Sequence of condition within part/line";
attrib  enicon_9     length=$4    label="Condition code";                       
attrib  econdp_10    length=3     label="Part/line number on certificate";      
attrib  econds_10    length=3     label="Sequence of condition within part/line";
attrib  enicon_10    length=$4    label="Condition code";                       
attrib  econdp_11    length=3     label="Part/line number on certificate";      
attrib  econds_11    length=3     label="Sequence of condition within part/line";
attrib  enicon_11    length=$4    label="Condition code";                       
attrib  econdp_12    length=3     label="Part/line number on certificate";      
attrib  econds_12    length=3     label="Sequence of condition within part/line";
attrib  enicon_12    length=$4    label="Condition code";                       
attrib  econdp_13    length=3     label="Part/line number on certificate";      
attrib  econds_13    length=3     label="Sequence of condition within part/line";
attrib  enicon_13    length=$4    label="Condition code";                       
attrib  econdp_14    length=3     label="Part/line number on certificate";      
attrib  econds_14    length=3     label="Sequence of condition within part/line";
attrib  enicon_14    length=$4    label="Condition code";                       
attrib  econdp_15    length=3     label="Part/line number on certificate";      
attrib  econds_15    length=3     label="Sequence of condition within part/line";
attrib  enicon_15    length=$4    label="Condition code";                       
attrib  econdp_16    length=3     label="Part/line number on certificate";      
attrib  econds_16    length=3     label="Sequence of condition within part/line";
attrib  enicon_16    length=$4    label="Condition code";                       
attrib  econdp_17    length=3     label="Part/line number on certificate";      
attrib  econds_17    length=3     label="Sequence of condition within part/line";
attrib  enicon_17    length=$4    label="Condition code";                       
attrib  econdp_18    length=3     label="Part/line number on certificate";      
attrib  econds_18    length=3     label="Sequence of condition within part/line";
attrib  enicon_18    length=$4    label="Condition code";                       
attrib  econdp_19    length=3     label="Part/line number on certificate";      
attrib  econds_19    length=3     label="Sequence of condition within part/line";
attrib  enicon_19    length=$4    label="Condition code";                       
attrib  econdp_20    length=3     label="Part/line number on certificate";      
attrib  econds_20    length=3     label="Sequence of condition within part/line";
attrib  enicon_20    length=$4    label="Condition code";                       
attrib  ranum        length=3     label="Number of Record-Axis Conditions";     
attrib  record_1     length=$4    label="Condition";                            
attrib  record_2     length=$4    label="Condition";                            
attrib  record_3     length=$4    label="Condition";                            
attrib  record_4     length=$4    label="Condition";                            
attrib  record_5     length=$4    label="Condition";                            
attrib  record_6     length=$4    label="Condition";                            
attrib  record_7     length=$4    label="Condition";                            
attrib  record_8     length=$4    label="Condition";                            
attrib  record_9     length=$4    label="Condition";                            
attrib  record_10    length=$4    label="Condition";                            
attrib  record_11    length=$4    label="Condition";                            
attrib  record_12    length=$4    label="Condition";                            
attrib  record_13    length=$4    label="Condition";                            
attrib  record_14    length=$4    label="Condition";                            
attrib  record_15    length=$4    label="Condition";                            
attrib  record_16    length=$4    label="Condition";                            
attrib  record_17    length=$4    label="Condition";                            
attrib  record_18    length=$4    label="Condition";                            
attrib  record_19    length=$4    label="Condition";                            
attrib  record_20    length=$4    label="Condition";                            
attrib  rnifla_20    length=3     label="Nature of Injury Flag and Condition";  
attrib  race         length=3     label="Detail Race";                          
attrib  brace        length=3     label="Bridged Race";                         
attrib  raceimp      length=3     label="Race Imputation Flag";                 
attrib  racer3       length=3     label="Race Recode 3";                        
attrib  racer5       length=3     label="Race Recode 5";                        
attrib  hispanic     length=3     label="Hispanic Origin";                      
attrib  hspanicr     length=3     label="Hispanic Origin/Race Recode";          


INPUT

@19   rectype        1. 
@20   restatus       1. 
@21   stateoc       $2. 
@23   countyoc       3. 
@26   exstatoc      $2. 
@28   popsizoc       1. 
@29   staters       $2. 
@33   statersr      $2. 
@35   countyrs      $3. 
@38   cityrs        $5. 
@43   popsize       $1. 
@44   metro         $1. 
@45   exstares      $2. 
@47   pmsares       $4. 
@51   popsizrs      $1. 
@52   popmsa        $1. 
@53   cmsares        2. 
@55   statbth       $2. 
@59   statbthr      $2. 
@61   educ89         2. 
@63   educ           1. 
@64   educflag       1. 
@65   monthdth       2. 
@69   sex           $1. 
@70   age            4. 
@74   ageflag        1. 
@75   ager52         2. 
@77   ager27         2. 
@79   ager12         2. 
@81   ager22         2. 
@83   placdth        1. 
@84   marstat       $1. 
@83   weekday        1. 
@102  year           4. 
@106  injwork       $1. 
@107  mandeath       1. 
@108  methdisp      $1. 
@109  autopsy       $1. 
@144  activity       1. 
@145  injury         1. 
@146  ucod          $4. 
@150  ucr358         3. 
@154  ucr113         3. 
@157  ucr130         3. 
@160  ucr39          2. 
@163  eanum          2. 
@165  econdp_1       1. 
@166  econds_1       1. 
@167  enicon_1      $4. 
@172  econdp_2       1. 
@173  econds_2       1. 
@174  enicon_2      $4. 
@179  econdp_3       1. 
@180  econds_3       1. 
@181  enicon_3      $4. 
@186  econdp_4       1. 
@187  econds_4       1. 
@188  enicon_4      $4. 
@193  econdp_5       1. 
@194  econds_5       1. 
@195  enicon_5      $4. 
@200  econdp_6       1. 
@201  econds_6       1. 
@202  enicon_6      $4. 
@207  econdp_7       1. 
@208  econds_7       1. 
@209  enicon_7      $4. 
@214  econdp_8       1. 
@215  econds_8       1. 
@216  enicon_8      $4. 
@221  econdp_9       1. 
@222  econds_9       1. 
@223  enicon_9      $4. 
@228  econdp_10      1. 
@229  econds_10      1. 
@230  enicon_10     $4. 
@235  econdp_11      1. 
@236  econds_11      1. 
@237  enicon_11     $4. 
@242  econdp_12      1. 
@243  econds_12      1. 
@244  enicon_12     $4. 
@249  econdp_13      1. 
@250  econds_13      1. 
@251  enicon_13     $4. 
@256  econdp_14      1. 
@257  econds_14      1. 
@258  enicon_14     $4. 
@263  econdp_15      1. 
@264  econds_15      1. 
@265  enicon_15     $4. 
@270  econdp_16      1. 
@271  econds_16      1. 
@272  enicon_16     $4. 
@277  econdp_17      1. 
@278  econds_17      1. 
@279  enicon_17     $4. 
@284  econdp_18      1. 
@285  econds_18      1. 
@286  enicon_18     $4. 
@291  econdp_19      1. 
@292  econds_19      1. 
@293  enicon_19     $4. 
@298  econdp_20      1. 
@299  econds_20      1. 
@300  enicon_20     $4. 
@341  ranum          2. 
@344  record_1      $4. 
@349  record_2      $4. 
@354  record_3      $4. 
@359  record_4      $4. 
@364  record_5      $4. 
@369  record_6      $4. 
@374  record_7      $4. 
@379  record_8      $4. 
@384  record_9      $4. 
@389  record_10     $4. 
@394  record_11     $4. 
@399  record_12     $4. 
@404  record_13     $4. 
@409  record_14     $4. 
@414  record_15     $4. 
@419  record_16     $4. 
@424  record_17     $4. 
@429  record_18     $4. 
@434  record_19     $4. 
@439  record_20     $4. 
@440  rnifla_20      1. 
@445  race           2. 
@447  brace          1. 
@448  raceimp        1. 
@449  racer3         1. 
@450  racer5         1. 
@484  hispanic       3. 
@488  hspanicr       1. 
;

proc print data=library.mort2004 (obs=6);

proc contents data=library.mort2004;

/*
Copyright 2007 shared by the National Bureau of Economic Research and Jean Roth

National Bureau of Economic Research.
1050 Massachusetts Avenue
Cambridge, MA 02138
jroth@nber.org

This program and all programs referenced in it are free software. You
can redistribute the program or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
USA.
*/
