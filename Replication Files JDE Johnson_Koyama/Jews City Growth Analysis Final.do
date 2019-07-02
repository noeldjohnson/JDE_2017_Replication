set matsize 10000

**************************************************************************************************
* To run this .do file do a search and replace on "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth" and replace with the location you've placed the "Replication Files JDE Johnson_Koyama" folder. This assumes you haven't altered the folder's structure.
*************************************************************************************************

use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/Base Jewish Cities Data Final.dta", replace

log using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/Jews City Growth Analysis Final.log", replace


************************************************
************************************************
* This is the analysis using D-in-D specifications and 1400-1850 sample *
************************************************
************************************************


************************************************
* Clean up the data set *
************************************************

sort Bairoch_id year

* Drop the 5 cities that are in the middle of nowhere (and out of frame in the gis file) *

* Bergen
drop if Bairoch_id==1648
*Trondheim
drop if Bairoch_id==1656
*Ponta-Delgada
drop if Bairoch_id==1805
*Falun
drop if Bairoch_id==2078
*Gaevle
drop if Bairoch_id==2079

xtset Bairoch_id year


*************************************************
* Create Some Variables *
*************************************************

by Bairoch_id: egen meanjewspresentdummy=mean(jewspresentDummy)
gen JewishCity=0
replace JewishCity=1 if  meanjewspresentdummy>0
label var JewishCity "=1 if city ever has a Jewish community"
drop  meanjewspresentdummy

sort Bairoch_id year
by Bairoch_id: gen lag1pop=pop[_n-1]
gen lngrowth= ln(pop/lag1pop)
gen  lag1lnpop =ln(lag1pop)

sort Bairoch_id year
gen altpop=pop
replace altpop=.5 if pop==.
replace altpop=.5 if pop==0

gen lpop=ln(pop)
gen lnpopB = ln(pop_bairoch)



drop if year<1400

************************************************************************
*create sample variables to hold constant the city samples over time
************************************************************************


sort  Bairoch_id year
gen growthexist1400=.
replace growthexist1400=1 if (lpop~=. & year==1400)
replace growthexist1400=1 if (lpop~=. & year==1500)
replace growthexist1400=1 if (lpop~=. & year==1600)
replace growthexist1400=1 if (lpop~=. & year==1700)
replace growthexist1400=1 if (lpop~=. & year==1750)
replace growthexist1400=1 if (lpop~=. & year==1800)
replace growthexist1400=1 if (lpop~=. & year==1850)
by Bairoch_id: egen temp=sum(growthexist1400)
replace growthexist1400=1 if temp==7
replace growthexist1400=0 if temp<7 
drop temp

sort  Bairoch_id year
gen growthexist1500=.
replace growthexist1500=1 if (lpop~=. & year==1500)
replace growthexist1500=1 if (lpop~=. & year==1600)
replace growthexist1500=1 if (lpop~=. & year==1700)
replace growthexist1500=1 if (lpop~=. & year==1750)
replace growthexist1500=1 if (lpop~=. & year==1800)
replace growthexist1500=1 if (lpop~=. & year==1850)
by Bairoch_id: egen temp=sum(growthexist1500)
replace growthexist1500=1 if temp==6
replace growthexist1500=0 if temp<6 
drop temp


sort  Bairoch_id year
gen growthexist1600=.
replace growthexist1600=1 if (lpop~=. & year==1600)
replace growthexist1600=1 if (lpop~=. & year==1700)
replace growthexist1600=1 if (lpop~=. & year==1750)
replace growthexist1600=1 if (lpop~=. & year==1800)
replace growthexist1600=1 if (lpop~=. & year==1850)
by Bairoch_id: egen temp=sum(growthexist1600)
replace growthexist1600=1 if temp==5
replace growthexist1600=0 if temp<5 
drop temp


sort  Bairoch_id year
gen growthexist1700=.
replace growthexist1700=1 if (lpop~=. & year==1700)
replace growthexist1700=1 if (lpop~=. & year==1750)
replace growthexist1700=1 if (lpop~=. & year==1800)
replace growthexist1700=1 if (lpop~=. & year==1850)
by Bairoch_id: egen temp=sum(growthexist1700)
replace growthexist1700=1 if temp==4
replace growthexist1700=0 if temp<4 
drop temp


************************************************************************
*import the instruments
************************************************************************

*expulsion iv
sort  Bairoch_id year
merge m:m Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/jewishcityivs_Co1_Expulsion.dta"
drop _merge

rename NA1_1 IV0k_exp
rename NA1_9 IV50k_exp
rename NA1_3 IV100k_exp
rename NA1_4 IV250k_exp
rename NA1_8 IV500k_exp
rename NA1_7 IV_MA


gen lnIV0k_exp = ln(IV0k_exp)
gen lnIV50k_exp = ln(IV50k_exp)
gen lnIV100k_exp = ln(IV100k_exp)
gen lnIV250k_exp = ln(IV250k_exp)
gen lnIV500k_exp = ln(IV500k_exp)
gen lnIV_MA=ln(IV_MA)

drop if year<1400



*non-expulsion iv
sort  Bairoch_id year
merge m:m Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/jewishcityivs_Co1.dta"
drop _merge

rename NA1_1 IV0k
rename NA1_9 IV50k
rename NA1_3 IV100k
rename NA1_4 IV250k
rename NA1_8 IV500k
drop NA1_7

gen lnIV0k = ln(IV0k)
gen lnIV50k = ln(IV50k)
gen lnIV100k = ln(IV100k)
gen lnIV250k = ln(IV250k)
gen lnIV500k = ln(IV500k)

drop if year<1400



************************************************************************
*import imputed black death mortality rates
************************************************************************

drop  pmort185
sort Bairoch_id year
merge m:1 Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/Data Sets/FinalMortalityData.dta"
*Drop Alexandria, Ceuta, Tunis, et al...
drop if _merge==1
drop _merge


************************************************************************
*Fix 1850 coding mistakes (due to RA miscommunication)
************************************************************************


replace jewspresentDummy=1 if city_jjk=="HALBERSTADT" & year==1850
replace jewspresentDummy=1 if city_jjk=="HEIDELBERG" & year==1850
replace jewspresentDummy=1 if city_jjk=="SCHWERIN" & year==1850
replace jewspresentDummy=1 if city_jjk=="WISMAR" & year==1850
replace jewspresentDummy=1 if city_jjk=="ROVIGO" & year==1850
replace jewspresentDummy=1 if city_jjk=="LUENENBERG" & year==1850
replace jewspresentDummy=1 if city_jjk=="OLDENBERG" & year==1850
replace jewspresentDummy=1 if city_jjk=="PASSAU" & year==1850
replace jewspresentDummy=1 if city_jjk=="LUGO" & year==1850
replace jewspresentDummy=1 if city_jjk=="NARBONNE" & year==1850
replace jewspresentDummy=1 if city_jjk=="IPSWICH" & year==1850
replace jewspresentDummy=1 if city_jjk=="SUNDERLAND" & year==1850
replace jewspresentDummy=1 if city_jjk=="PITIGLIANO" & year==1850
replace jewspresentDummy=1 if city_jjk=="GUESTROW" & year==1850
replace jewspresentDummy=1 if city_jjk=="ROSTOCK" & year==1850
replace jewspresentDummy=1 if city_jjk=="ALKMAAR" & year==1850
replace jewspresentDummy=1 if city_jjk=="AMERSFOORT" & year==1850
replace jewspresentDummy=1 if city_jjk=="GRONINGEN" & year==1850
replace jewspresentDummy=1 if city_jjk=="HAARLEM" & year==1850
replace jewspresentDummy=1 if city_jjk=="LEEUWARDEN" & year==1850
replace jewspresentDummy=1 if city_jjk=="ROTTERDAM" & year==1850
replace jewspresentDummy=1 if city_jjk=="SGRAVENHAGUE" & year==1850
replace jewspresentDummy=1 if city_jjk=="WORKUM" & year==1850
replace jewspresentDummy=1 if city_jjk=="ZWOLLE" & year==1850
replace jewspresentDummy=1 if city_jjk=="NYSA" & year==1850
replace jewspresentDummy=1 if city_jjk=="WARSZAWA" & year==1850
replace jewspresentDummy=1 if city_jjk=="OSTRAVA" & year==1850



order  city_jjk Bairoch_id year JewishCity jewspresentDummy jewspresentYears persecutions expulsion pogrom lpop lngrowth    pop_bairoch pop countryname


*************************************************
** Summary Statistics ***************************
*************************************************

**************************
* Figure A.8 Main Sample Histogram *
*************************

sort year
by year: count if JewishCity==1  & lpop~=.

graph bar (mean)  jewspresentDummy if JewishCity==1 & lpop~=., over(year)


**************************
* Table A.3 Main Sample Stats *
*************************

xtsum jewspresentDummy lpop cereal50k university DAnySeas DRivers DMedRds lnIV100k lnIV100k_exp lnIV_MA if JewishCity==1 & lpop~=.


**************************
* Figure A.9 Main Sample Histogram *
*************************


sort year
by year: count if lpop~=.

graph bar (mean)  jewspresentDummy if  lpop~=., over(year)

**************************
* Table A.4 Extended Sample Stats *
*************************

xtsum jewspresentDummy lpop cereal50k university DAnySeas DRivers DMedRds lnIV_MA if lpop~=.


**************************************************************
* Figure A.5: conditional relevance of instrument (IV100k vs jewishdummy)  *
**************************************************************

xi: quietly: reg jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds  i.Bairoch_id if JewishCity==1,
predict jewsresid,r

xi: quietly: reg lnIV100k i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   i.Bairoch_id  if JewishCity==1,
predict lnIV100kresid,r

lpoly lnIV100kresid jewsresid   if JewishCity==1 ,noscat ci

drop lnIV100kresid

**************************************************************
* Figure A.6: conditional relevance of instrument (IV100k_exp vs jewishdummy)  *
**************************************************************

xi: quietly: reg lnIV100k_exp i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   i.Bairoch_id  if JewishCity==1,
predict lnIV100kresid_exp,r

lpoly lnIV100kresid jewsresid   if JewishCity==1 ,noscat ci

drop lnIV100kresid jewsresid



************************************************************************
* Table 1:  Reduced Form Regressions: growth
************************************************************************


* Reg 1: lpop, year dummies
eststo: xi: quietly: reg  lpop jewspresentDummy i.year  if JewishCity==1 & year>1300, robust

* Reg 2: lpop, year dummies, controlsXyear
eststo: xi: quietly: reg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if JewishCity==1 & year>1300, robust

* Reg 3: lpop, year dummies, controlsXyear, city FE's
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if JewishCity==1 & year>1300, fe robust

esttab, replace se scalars(r2) k(jewspresentDummy )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


* Reg 4: lpop, year dummies
eststo: xi: quietly: reg  lpop jewspresentDummy i.year  if year>1300, robust

* Reg 5: lpop, year dummies, controlsXyear
eststo: xi: quietly: reg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if year>1300 , robust

* Reg 6: lpop, year dummies, controlsXyear, city FE's
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if year>1300, fe robust

esttab, replace se scalars(r2) k(jewspresentDummy )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


************************************************************************
* Table 2 Panel A: IV Regressions: Reduced Form, lpop, JewishCity==1
************************************************************************


* Jewish Network IV's

*Reg 1: lpop, 0k
eststo: xi: xtivreg2  lpop (jewspresentDummy=lnIV0k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds  if JewishCity==1 & year>1300,fe robust ffirst

*Reg 2: lpop, 50k
eststo: xi: xtivreg2  lpop (jewspresentDummy=lnIV50k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1300,fe robust ffirst

*Reg : lpop, 100k
eststo: xi: xtivreg2  lpop (jewspresentDummy=lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if JewishCity==1 & year>1300,fe robust ffirst

esttab, replace se scalars(r2) k(jewspresentDummy )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

*Reg : lpop, 250k
eststo: xi: xtivreg2  lpop (jewspresentDummy=lnIV250k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1300,fe robust ffirst

*Reg : lpop, 500k
eststo: xi: xtivreg2  lpop (jewspresentDummy=lnIV500k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1300,fe robust ffirst

esttab, replace se scalars(r2) k(jewspresentDummy )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


************************************************************************
* Table 2 Panel B: IV Regressions: Reduced Form, lpop, JewishCity==1
************************************************************************


* Jewish Expulsions IV's

*Reg 1: lpop, 0k
eststo: xi: xtivreg2  lpop (jewspresentDummy=lnIV0k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds  if JewishCity==1 & year>1300,fe robust ffirst

*Reg 2: lpop, 50k
eststo: xi: xtivreg2  lpop (jewspresentDummy=lnIV50k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1300,fe robust ffirst

*Reg : lpop, 100k
eststo: xi: xtivreg2  lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1300,fe robust ffirst

esttab, replace se scalars(r2) k(jewspresentDummy )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

*Reg : lpop, 250k
eststo: xi: xtivreg2  lpop (jewspresentDummy=lnIV250k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1300,fe robust ffirst

*Reg : lpop, 500k
eststo: xi: xtivreg2  lpop (jewspresentDummy=lnIV500k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1300,fe robust ffirst

esttab, replace se scalars(r2) k(jewspresentDummy )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear






************************************************************************
* Table 3: Robustness
************************************************************************


*reg: potato, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   i.year*potato50k if JewishCity==1, fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    i.year*potato50k, fe robust
*reg: potato, iv
eststo: quietly: xi:  xtivreg2 lpop (jewspresentDummy=lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds        i.year*potato50k if JewishCity==1, fe robust ffirst
eststo: quietly: xi:  xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    i.year*potato50k if JewishCity==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*reg: Dummy for 10km of Atlantic Coast, ols
gen DAtlantic10k=0
replace DAtlantic10k=1 if  DAtlantic<=10000
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   i.year*DAtlantic10k if JewishCity==1, fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    i.year*DAtlantic10k, fe robust
*reg: Dummy for 10km of Atlantic Coast, iv
eststo: quietly: xi:  xtivreg2 lpop (jewspresentDummy=lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds        i.year*DAtlantic10k if JewishCity==1, fe robust ffirst
eststo: quietly: xi:  xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    i.year*DAtlantic10k if JewishCity==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear



*reg: MA, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   i.year*DAnySeas  i.year*DRivers i.year*DMedRds i.year*IV_MA    if JewishCity==1, fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   i.year*DAnySeas  i.year*DRivers i.year*DMedRds i.year*IV_MA  , fe robust
*reg: MA, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    i.year*DAnySeas  i.year*DRivers i.year*DMedRds i.year*IV_MA  if JewishCity==1, fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   i.year*DAnySeas  i.year*DRivers i.year*DMedRds i.year*IV_MA  if JewishCity==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*reg: persecutions, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      i.year*persecutions if JewishCity==1, fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      i.year*persecutions, fe robust
*reg: persecutions, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       i.year*persecutions if JewishCity==1, fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       i.year*persecutions if JewishCity==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*reg: BD mortality, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       i.year*mortality263 if JewishCity==1, fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       i.year*mortality263, fe robust
*reg: BD mortality, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       i.year*mortality263 if JewishCity==1, fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds        i.year*mortality263 if JewishCity==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*reg: continuous years, ols
eststo: xi: quietly: xtreg  lpop jewspresentYears i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if JewishCity==1, fe robust
eststo: xi: quietly: xtreg  lpop jewspresentYears i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      , fe robust
*reg: continuous years, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentYears=lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1, fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentYears=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds        if JewishCity==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentYears   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*reg: 1200 sample, ols

************************************************************************
* THIS REQUIRES THE DATA TO BE RELOADED WITH THE PRE-1400 VALUES
************************************************************************

************************************************************************
* THE RELOADING BEGINS HERE
************************************************************************


clear
set matsize 10000
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Data/Analysis/Base Jewish Cities Data 12-29-15.dta", replace
sort Bairoch_id year

* Drop the 5 cities that are in the middle of nowhere (and out of frame in the gis file) *

* Bergen
drop if Bairoch_id==1648
*Trondheim
drop if Bairoch_id==1656
*Ponta-Delgada
drop if Bairoch_id==1805
*Falun
drop if Bairoch_id==2078
*Gaevle
drop if Bairoch_id==2079

xtset Bairoch_id year


*************************************************
* Create Some Variables *
*************************************************

by Bairoch_id: egen meanjewspresentdummy=mean(jewspresentDummy)
gen JewishCity=0
replace JewishCity=1 if  meanjewspresentdummy>0
label var JewishCity "=1 if city ever has a Jewish community"
drop  meanjewspresentdummy

sort Bairoch_id year
by Bairoch_id: gen lag1pop=pop[_n-1]
gen lngrowth= ln(pop/lag1pop)
gen  lag1lnpop =ln(lag1pop)

sort Bairoch_id year
gen altpop=pop
replace altpop=.5 if pop==.
replace altpop=.5 if pop==0
by Bairoch_id: gen altlag1pop=altpop[_n-1]
gen altlngrowth= ln(altpop/altlag1pop)
gen alt  =ln(altlag1pop)
gen laltpop=ln(altpop)

sort Bairoch_id year
by Bairoch_id: gen lag1popB=pop_bairoch[_n-1]
gen lngrowthB= ln(pop_bairoch/lag1popB)
gen   Blag1lnpop=ln(lag1popB)

gen lpop=ln(pop)
gen lnpopB = ln(pop_bairoch)

*create sample variables to hold constant the city samples over time

sort  Bairoch_id year
gen growthexist1400=.
replace growthexist1400=1 if (lpop~=. & year==1400)
replace growthexist1400=1 if (lpop~=. & year==1500)
replace growthexist1400=1 if (lpop~=. & year==1600)
replace growthexist1400=1 if (lpop~=. & year==1700)
replace growthexist1400=1 if (lpop~=. & year==1750)
replace growthexist1400=1 if (lpop~=. & year==1800)
replace growthexist1400=1 if (lpop~=. & year==1850)
by Bairoch_id: egen temp=sum(growthexist1400)
replace growthexist1400=1 if temp==7
replace growthexist1400=0 if temp<7 
drop temp

sort  Bairoch_id year
gen growthexist1500=.
replace growthexist1500=1 if (lpop~=. & year==1500)
replace growthexist1500=1 if (lpop~=. & year==1600)
replace growthexist1500=1 if (lpop~=. & year==1700)
replace growthexist1500=1 if (lpop~=. & year==1750)
replace growthexist1500=1 if (lpop~=. & year==1800)
replace growthexist1500=1 if (lpop~=. & year==1850)
by Bairoch_id: egen temp=sum(growthexist1500)
replace growthexist1500=1 if temp==6
replace growthexist1500=0 if temp<6 
drop temp


sort  Bairoch_id year
gen growthexist1600=.
replace growthexist1600=1 if (lpop~=. & year==1600)
replace growthexist1600=1 if (lpop~=. & year==1700)
replace growthexist1600=1 if (lpop~=. & year==1750)
replace growthexist1600=1 if (lpop~=. & year==1800)
replace growthexist1600=1 if (lpop~=. & year==1850)
by Bairoch_id: egen temp=sum(growthexist1600)
replace growthexist1600=1 if temp==5
replace growthexist1600=0 if temp<5 
drop temp


sort  Bairoch_id year
gen growthexist1700=.
replace growthexist1700=1 if (lpop~=. & year==1700)
replace growthexist1700=1 if (lpop~=. & year==1750)
replace growthexist1700=1 if (lpop~=. & year==1800)
replace growthexist1700=1 if (lpop~=. & year==1850)
by Bairoch_id: egen temp=sum(growthexist1700)
replace growthexist1700=1 if temp==4
replace growthexist1700=0 if temp<4 
drop temp



*import the instruments
*expulsion iv
sort  Bairoch_id year
merge m:m Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/jewishcityivs_Co1_Expulsion.dta"
drop _merge

rename NA1_1 IV0k_exp
rename NA1_9 IV50k_exp
rename NA1_3 IV100k_exp
rename NA1_4 IV250k_exp
rename NA1_8 IV500k_exp
rename NA1_7 IV_MA


gen lnIV0k_exp = ln(IV0k_exp)
gen lnIV50k_exp = ln(IV50k_exp)
gen lnIV100k_exp = ln(IV100k_exp)
gen lnIV250k_exp = ln(IV250k_exp)
gen lnIV500k_exp = ln(IV500k_exp)
gen lnIV_MA=ln(IV_MA)

*non-expulsion iv
sort  Bairoch_id year
merge m:m Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/jewishcityivs_Co1.dta"
drop _merge

rename NA1_1 IV0k
rename NA1_9 IV50k
rename NA1_3 IV100k
rename NA1_4 IV250k
rename NA1_8 IV500k
drop NA1_7

gen lnIV0k = ln(IV0k)
gen lnIV50k = ln(IV50k)
gen lnIV100k = ln(IV100k)
gen lnIV250k = ln(IV250k)
gen lnIV500k = ln(IV500k)

*Fix 1850 coding mistakes

replace jewspresentDummy=1 if city_jjk=="HALBERSTADT" & year==1850
replace jewspresentDummy=1 if city_jjk=="HEIDELBERG" & year==1850
replace jewspresentDummy=1 if city_jjk=="SCHWERIN" & year==1850
replace jewspresentDummy=1 if city_jjk=="WISMAR" & year==1850
replace jewspresentDummy=1 if city_jjk=="ROVIGO" & year==1850
replace jewspresentDummy=1 if city_jjk=="LUENENBERG" & year==1850
replace jewspresentDummy=1 if city_jjk=="OLDENBERG" & year==1850
replace jewspresentDummy=1 if city_jjk=="PASSAU" & year==1850
replace jewspresentDummy=1 if city_jjk=="LUGO" & year==1850
replace jewspresentDummy=1 if city_jjk=="NARBONNE" & year==1850
replace jewspresentDummy=1 if city_jjk=="IPSWICH" & year==1850
replace jewspresentDummy=1 if city_jjk=="SUNDERLAND" & year==1850
replace jewspresentDummy=1 if city_jjk=="PITIGLIANO" & year==1850
replace jewspresentDummy=1 if city_jjk=="GUESTROW" & year==1850
replace jewspresentDummy=1 if city_jjk=="ROSTOCK" & year==1850
replace jewspresentDummy=1 if city_jjk=="ALKMAAR" & year==1850
replace jewspresentDummy=1 if city_jjk=="AMERSFOORT" & year==1850
replace jewspresentDummy=1 if city_jjk=="GRONINGEN" & year==1850
replace jewspresentDummy=1 if city_jjk=="HAARLEM" & year==1850
replace jewspresentDummy=1 if city_jjk=="LEEUWARDEN" & year==1850
replace jewspresentDummy=1 if city_jjk=="ROTTERDAM" & year==1850
replace jewspresentDummy=1 if city_jjk=="SGRAVENHAGUE" & year==1850
replace jewspresentDummy=1 if city_jjk=="WORKUM" & year==1850
replace jewspresentDummy=1 if city_jjk=="ZWOLLE" & year==1850
replace jewspresentDummy=1 if city_jjk=="NYSA" & year==1850
replace jewspresentDummy=1 if city_jjk=="WARSZAWA" & year==1850
replace jewspresentDummy=1 if city_jjk=="OSTRAVA" & year==1850

drop if year<1200

order  city_jjk Bairoch_id year JewishCity jewspresentDummy jewspresentYears persecutions expulsion pogrom lpop lngrowth    pop_bairoch pop countryname

************************************************************************
* THE RELOADING ENDS HERE
************************************************************************



eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if JewishCity==1, fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     , fe robust
*reg: lpopBairoch, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if JewishCity==1, fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if JewishCity==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

drop if year<1400



*reg: solow specification
eststo: xi: quietly: reg  lngrowth jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    lag1lnpop      if JewishCity==1,  robust
eststo: xi: quietly: reg  lngrowth jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    lag1lnpop   , robust
*reg: solow specification, iv
eststo: quietly: xi: ivreg2  lngrowth (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     lag1lnpop   if JewishCity==1, robust ffirst
eststo: quietly: xi: ivreg2  lngrowth (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      lag1lnpop   if JewishCity==1,  robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*reg: assume cities not in sample have population of 500
eststo: xi: quietly: xtreg  laltpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if JewishCity==1, fe robust
eststo: xi: quietly: xtreg  laltpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   , fe robust
*reg: assume cities not in sample have population of 500, iv
eststo: quietly: xi: xtivreg2  laltpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if JewishCity==1, fe robust ffirst
eststo: quietly: xi: xtivreg2  laltpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*reg: cluster se modern country, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if JewishCity==1, fe cluster(countryname)
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     , fe cluster(countryname)
*reg: cluster se modern country, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1, fe cluster(countryname) ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1, fe cluster(countryname) ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

*reg: cities exist 1400, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1  & growthexist1400==1, fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if  growthexist1400==1, fe robust
*reg: cities exist 1400, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1 & growthexist1400==1, fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1 & growthexist1400==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

*reg: cities exist 1500, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1 & growthexist1500==1, fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if  growthexist1500==1, fe robust
*reg: cities exist 1500, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1 & growthexist1500==1, fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if JewishCity==1 & growthexist1500==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

*reg: cities exist 1600, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds        if JewishCity==1 & growthexist1600==1, fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if  growthexist1600==1, fe robust
*reg: cities exist 1600, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if JewishCity==1 & growthexist1600==1, fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds        if JewishCity==1 & growthexist1600==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

*reg: cities exist 1700, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if JewishCity==1 & growthexist1700==1, fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds        if  growthexist1700==1, fe robust
*reg: cities exist 1700, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1 & growthexist1700==1, fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if JewishCity==1 & growthexist1700==1, fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

*reg: exclude UK, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if JewishCity==1 & countryname~="United Kingdom", fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if  countryname~="United Kingdom", fe robust
*reg: exclude UK, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if JewishCity==1 & countryname~="United Kingdom", fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if JewishCity==1 & countryname~="United Kingdom", fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*reg: exclude Netherlands, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if JewishCity==1 & countryname~="The Netherlands", fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if  countryname~="The Netherlands", fe robust
*reg: exclude Netherlands, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1 & countryname~="The Netherlands", fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1 & countryname~="The Netherlands", fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*reg: exclude France, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if JewishCity==1 & countryname~="France", fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if  countryname~="France", fe robust
*reg: exclude France, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1 & countryname~="France", fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if JewishCity==1 & countryname~="France", fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*reg: exclude Germany, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if JewishCity==1 & countryname~="Germany", fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if  countryname~="Germany", fe robust
*reg: exclude Germany, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if JewishCity==1 & countryname~="Germany", fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1 & countryname~="Germany", fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

*reg: exclude Italy, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if JewishCity==1 & countryname~="Italy", fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds        if  countryname~="Italy", fe robust
*reg: exclude Italy, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds        if JewishCity==1 & countryname~="Italy", fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if JewishCity==1 & countryname~="Italy", fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*reg: exclude Spain, ols
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds      if JewishCity==1 & countryname~="Spain", fe robust
eststo: xi: quietly: xtreg  lpop jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if  countryname~="Spain", fe robust
*reg: exclude Spain, iv
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy =lnIV100k) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds       if JewishCity==1 & countryname~="Spain", fe robust ffirst
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy=lnIV100k_exp) i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds     if JewishCity==1 & countryname~="Spain", fe robust ffirst
esttab, replace se scalars(r2) k(jewspresentDummy   )  star(* 0.10 ** 0.05 *** 0.01)
eststo clear



****************************************************
* Table 4:  Flexible Regressions 
****************************************************

* Reg 1: lpop fe base sample
xi: quietly: xtreg  lpop i.year*jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1300, fe  robust

lincom jewspresentDummy + _IyeaXjew_1500
lincom jewspresentDummy + _IyeaXjew_1600
lincom jewspresentDummy + _IyeaXjew_1700
lincom jewspresentDummy + _IyeaXjew_1750
lincom jewspresentDummy + _IyeaXjew_1800
lincom jewspresentDummy + _IyeaXjew_1850


xi i.year*jewspresentDummy i.year*lnIV100k i.year*lnIV100k_exp i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   

*Reg 2: lpop fe iv100k base sample
xtivreg2  lpop (jewspresentDummy _IyeaXjew_1500 _IyeaXjew_1600 _IyeaXjew_1700 _IyeaXjew_1750 _IyeaXjew_1800 _IyeaXjew_1850 = lnIV100k _IyeaXlnI_1500 _IyeaXlnI_1600 _IyeaXlnI_1700 _IyeaXlnI_1750 _IyeaXlnI_1800 _IyeaXlnI_1850) _Iyear_1500 _Iyear_1600  _Iyear_1700 _Iyear_1750 _Iyear_1800 _Iyear_1850 _IyeaXcer_1500 _IyeaXcer_1600 _IyeaXcer_1700 _IyeaXcer_1750 _IyeaXcer_1800 _IyeaXcer_1850 _IyeaXuni_1500 _IyeaXuni_1600 _IyeaXuni_1700 _IyeaXuni_1750 _IyeaXuni_1800 _IyeaXuni_1850 _IyeaXDAn_1500 _IyeaXDAn_1600 _IyeaXDAn_1700 _IyeaXDAn_1750 _IyeaXDAn_1800 _IyeaXDAn_1850 _IyeaXDRi_1500 _IyeaXDRi_1600 _IyeaXDRi_1700 _IyeaXDRi_1750 _IyeaXDRi_1800 _IyeaXDRi_1850 _IyeaXDMe_1500 _IyeaXDMe_1600 _IyeaXDMe_1700 _IyeaXDMe_1750 _IyeaXDMe_1800 _IyeaXDMe_1850  cereal50k university  DAnySeas DRivers DMedRds  if JewishCity==1 & year>1300 , fe robust ffirst

lincom jewspresentDummy + _IyeaXjew_1500
lincom jewspresentDummy + _IyeaXjew_1600
lincom jewspresentDummy + _IyeaXjew_1700
lincom jewspresentDummy + _IyeaXjew_1750
lincom jewspresentDummy + _IyeaXjew_1800
lincom jewspresentDummy + _IyeaXjew_1850


*Reg 3: lpop fe iv100k_exp base sample
xtivreg2  lpop (jewspresentDummy _IyeaXjew_1500 _IyeaXjew_1600 _IyeaXjew_1700 _IyeaXjew_1750 _IyeaXjew_1800 _IyeaXjew_1850 = lnIV100k_exp _IyeaXlnIa1500 _IyeaXlnIa1600 _IyeaXlnIa1700 _IyeaXlnIa1750 _IyeaXlnIa1800 _IyeaXlnIa1850) _Iyear_1500 _Iyear_1600 _Iyear_1700 _Iyear_1750 _Iyear_1800 _Iyear_1850 _IyeaXcer_1500 _IyeaXcer_1600 _IyeaXcer_1700 _IyeaXcer_1750 _IyeaXcer_1800 _IyeaXcer_1850 _IyeaXuni_1500 _IyeaXuni_1600 _IyeaXuni_1700 _IyeaXuni_1750 _IyeaXuni_1800 _IyeaXuni_1850 _IyeaXDAn_1500 _IyeaXDAn_1600 _IyeaXDAn_1700 _IyeaXDAn_1750 _IyeaXDAn_1800 _IyeaXDAn_1850 _IyeaXDRi_1500 _IyeaXDRi_1600 _IyeaXDRi_1700 _IyeaXDRi_1750 _IyeaXDRi_1800 _IyeaXDRi_1850 _IyeaXDMe_1500 _IyeaXDMe_1600 _IyeaXDMe_1700 _IyeaXDMe_1750 _IyeaXDMe_1800 _IyeaXDMe_1850  cereal50k university DAnySeas DRivers DMedRds  if JewishCity==1 & year>1300 , fe robust ffirst

lincom jewspresentDummy + _IyeaXjew_1500
lincom jewspresentDummy + _IyeaXjew_1600
lincom jewspresentDummy + _IyeaXjew_1700
lincom jewspresentDummy + _IyeaXjew_1750
lincom jewspresentDummy + _IyeaXjew_1800
lincom jewspresentDummy + _IyeaXjew_1850


*Reg 4: lpop fe iv100k base sample control for market access
xtivreg2  lpop (jewspresentDummy _IyeaXjew_1500 _IyeaXjew_1600 _IyeaXjew_1700 _IyeaXjew_1750 _IyeaXjew_1800 _IyeaXjew_1850 = lnIV100k _IyeaXlnI_1500 _IyeaXlnI_1600 _IyeaXlnI_1700 _IyeaXlnI_1750 _IyeaXlnI_1800 _IyeaXlnI_1850) _Iyear_1500 _Iyear_1600  _Iyear_1700 _Iyear_1750 _Iyear_1800 _Iyear_1850 _IyeaXcer_1500 _IyeaXcer_1600 _IyeaXcer_1700 _IyeaXcer_1750 _IyeaXcer_1800 _IyeaXcer_1850 _IyeaXuni_1500 _IyeaXuni_1600 _IyeaXuni_1700 _IyeaXuni_1750 _IyeaXuni_1800 _IyeaXuni_1850 _IyeaXDAn_1500 _IyeaXDAn_1600 _IyeaXDAn_1700 _IyeaXDAn_1750 _IyeaXDAn_1800 _IyeaXDAn_1850 _IyeaXDRi_1500 _IyeaXDRi_1600 _IyeaXDRi_1700 _IyeaXDRi_1750 _IyeaXDRi_1800 _IyeaXDRi_1850 _IyeaXDMe_1500 _IyeaXDMe_1600 _IyeaXDMe_1700 _IyeaXDMe_1750 _IyeaXDMe_1800 _IyeaXDMe_1850  cereal50k university  DAnySeas DRivers DMedRds IV_MA if JewishCity==1 & year>1300 , fe robust ffirst

lincom jewspresentDummy + _IyeaXjew_1500
lincom jewspresentDummy + _IyeaXjew_1600
lincom jewspresentDummy + _IyeaXjew_1700
lincom jewspresentDummy + _IyeaXjew_1750
lincom jewspresentDummy + _IyeaXjew_1800
lincom jewspresentDummy + _IyeaXjew_1850


*Reg 5: lpop fe iv100k_exp base sample control for market access
xtivreg2  lpop (jewspresentDummy _IyeaXjew_1500 _IyeaXjew_1600 _IyeaXjew_1700 _IyeaXjew_1750 _IyeaXjew_1800 _IyeaXjew_1850 = lnIV100k_exp _IyeaXlnIa1500 _IyeaXlnIa1600 _IyeaXlnIa1700 _IyeaXlnIa1750 _IyeaXlnIa1800 _IyeaXlnIa1850) _Iyear_1500 _Iyear_1600 _Iyear_1700 _Iyear_1750 _Iyear_1800 _Iyear_1850 _IyeaXcer_1500 _IyeaXcer_1600 _IyeaXcer_1700 _IyeaXcer_1750 _IyeaXcer_1800 _IyeaXcer_1850 _IyeaXuni_1500 _IyeaXuni_1600 _IyeaXuni_1700 _IyeaXuni_1750 _IyeaXuni_1800 _IyeaXuni_1850 _IyeaXDAn_1500 _IyeaXDAn_1600 _IyeaXDAn_1700 _IyeaXDAn_1750 _IyeaXDAn_1800 _IyeaXDAn_1850 _IyeaXDRi_1500 _IyeaXDRi_1600 _IyeaXDRi_1700 _IyeaXDRi_1750 _IyeaXDRi_1800 _IyeaXDRi_1850 _IyeaXDMe_1500 _IyeaXDMe_1600 _IyeaXDMe_1700 _IyeaXDMe_1750 _IyeaXDMe_1800 _IyeaXDMe_1850  cereal50k university DAnySeas DRivers DMedRds IV_MA if JewishCity==1 & year>1300 , fe robust ffirst

lincom jewspresentDummy + _IyeaXjew_1500
lincom jewspresentDummy + _IyeaXjew_1600
lincom jewspresentDummy + _IyeaXjew_1700
lincom jewspresentDummy + _IyeaXjew_1750
lincom jewspresentDummy + _IyeaXjew_1800
lincom jewspresentDummy + _IyeaXjew_1850


* Reg 6: lpop fe extended sample
xi: quietly: xtreg  lpop i.year*jewspresentDummy i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if  year>1300, fe  robust

lincom jewspresentDummy + _IyeaXjew_1500
lincom jewspresentDummy + _IyeaXjew_1600
lincom jewspresentDummy + _IyeaXjew_1700
lincom jewspresentDummy + _IyeaXjew_1750
lincom jewspresentDummy + _IyeaXjew_1800
lincom jewspresentDummy + _IyeaXjew_1850


****************************************************
*Table 5: Mechanisms Regressions
****************************************************



*Merge in some variables

*merge in the Sephardic and Hewbrew Press and Port Jew Data
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/Data Sets/SephardicHebrewPressData.dta"
drop _merge

*merge in the emancipation Data
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/Data Sets/emancipation.dta"
drop _merge

*clean up Emancipation data
replace Emancipation=0 if city_jjk=="GRAZ" & year>=1800
replace Emancipation=0 if city_jjk=="SALZBURG" & year==1800
replace Emancipation=.06 if city_jjk=="SALZBURG" & year==1850

*create EmancipationAlt in which Habsburg Empire cities ==0
gen EmancipationAlt=Emancipation
replace EmancipationAlt=0 if countryname=="Austria"
replace EmancipationAlt=0 if countryname=="Czech Republic"
replace EmancipationAlt=0 if countryname=="Slovakia"


*Create interactions and clean up variables
gen DAnySeas5km=0
replace DAnySeas5km=1 if  DAnySeas<=5000
gen JewsDummyXIV_MA = jewspresentDummy*lnIV_MA
gen lnIV100k_JewsDummyXIV_MA = lnIV100k*lnIV_MA
replace Sephardic=1 if (Sephardic>0 & Sephardic<1)
replace Sephardic=0 if jewspresentDummy==0
replace HebrewPress=1 if (HebrewPress>0 & HebrewPress<1)
gen jewspresentDummyXHebrewPress = jewspresentDummy*HebrewPress
gen IV100kXHebrewPress = lnIV100k*HebrewPress
gen jewspresentDummyXSephardic = jewspresentDummy*Sephardic
gen IV100kXSephardic = lnIV100k*Sephardic
gen IV_PortInteraction = lnIV100k*DAnySeas5km
gen lnIV100k_exp_JewsDummyXIV_MA = lnIV100k_exp*lnIV_MA
gen jewspresentDummyXEmancipation = jewspresentDummy*Emancipation
gen lnIV100k_JewsDummyXEmancip = lnIV100k*Emancipation
gen jewspresentDummyXEmancipatAlt = jewspresentDummy*EmancipationAlt
gen lnIV100kXEmancipatAlt = lnIV100k*EmancipationAlt


sum jewspresentDummy Sephardic HebrewPress PortJewInteraction Emancipation lnIV_MA if JewishCity==1 & lpop~=.



*mechanisms table 6
*OLS & IV100k, Base Sample

* Reg 1: Sephardic Interaction, OLS
eststo: quietly: xi: xtreg  lpop jewspresentDummy jewspresentDummyXSephardic  i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if JewishCity==1 & year>1300, fe robust

* Reg 2: Sephardic Interaction, IV
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy jewspresentDummyXSephardic = lnIV100k IV100kXSephardic)  i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1300, fe robust

esttab, replace se scalars(r2) k(jewspresentDummy jewspresentDummyXSephardic)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


* Reg 3: Hebrew Printing Press, OLS
eststo: xi: quietly: xtreg  lpop jewspresentDummy jewspresentDummyXHebrewPress HebrewPress i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds  if JewishCity==1 & year>1300, fe robust

* Reg 4: Hebrew Printing Press, IV
eststo: xi: quietly: xtivreg2  lpop (jewspresentDummy jewspresentDummyXHebrewPress = lnIV100k IV100kXHebrewPress) HebrewPress i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1300, fe robust

esttab, replace se scalars(r2) k(jewspresentDummy jewspresentDummyXHebrewPress HebrewPress)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


* Reg 5: Ports, OLS 
eststo: xi: quietly: xtreg  lpop jewspresentDummy PortJewInteraction DAnySeas5km i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if JewishCity==1 & year>1300, fe robust

* Reg 6: Ports,IV 
eststo: xi: quietly: xtivreg2  lpop (jewspresentDummy PortJewInteraction= lnIV100k IV_PortInteraction) DAnySeas5km i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if JewishCity==1 & year>1300, fe robust

esttab, replace se scalars(r2) k(jewspresentDummy PortJewInteraction)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

*Reg 7: Emancipation
eststo: quietly: xi: xtreg lpop jewspresentDummy jewspresentDummyXEmancipation Emancipation  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1300,  fe robust


*Reg 8: Emancipation
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy jewspresentDummyXEmancipation = lnIV100k   lnIV100k_JewsDummyXEmancip ) Emancipation  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1300,  fe robust

esttab, replace se scalars(r2) k(jewspresentDummy jewspresentDummyXEmancipation Emancipation)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*Reg 9: Market Access
eststo: quietly: xi: xtreg lpop jewspresentDummy JewsDummyXIV_MA lnIV_MA  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1300,  fe robust


*Reg 10: Market Access
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy JewsDummyXIV_MA = lnIV100k lnIV100k_JewsDummyXIV_MA ) lnIV_MA  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1300,  fe robust

esttab, replace se scalars(r2) k(jewspresentDummy JewsDummyXIV_MA lnIV_MA)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

*************************************************
*Table A2. mechanisms post-1700
*************************************************

*OLS & IV100k, Full Sample

* 1 Sephardic Interaction, OLS
eststo: quietly: xi: xtreg  lpop jewspresentDummy jewspresentDummyXSephardic  i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if JewishCity==1 & year>1700, fe robust

* 2 Sephardic Interaction, IV
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy jewspresentDummyXSephardic = lnIV100k IV100kXSephardic)  i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1700, fe robust

esttab, replace se scalars(r2) k(jewspresentDummy jewspresentDummyXSephardic)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


* 3 Hebrew Printing Press, OLS
eststo: xi: quietly: xtreg  lpop jewspresentDummy jewspresentDummyXHebrewPress HebrewPress i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds  if JewishCity==1 & year>1700, fe robust

* 4 Hebrew Printing Press, IV
eststo: xi: quietly: xtivreg2  lpop (jewspresentDummy jewspresentDummyXHebrewPress = lnIV100k IV100kXHebrewPress) HebrewPress i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds   if JewishCity==1 & year>1700, fe robust

esttab, replace se scalars(r2) k(jewspresentDummy jewspresentDummyXHebrewPress)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


* 5 Ports, OLS 
eststo: xi: quietly: xtreg  lpop jewspresentDummy PortJewInteraction DAnySeas5km i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if JewishCity==1 & year>1700, fe robust

* 6 Ports,IV 
eststo: xi: quietly: xtivreg2  lpop (jewspresentDummy PortJewInteraction= lnIV100k IV_PortInteraction) DAnySeas5km i.year i.year*cereal50k i.year*university   i.year*DAnySeas  i.year*DRivers i.year*DMedRds    if JewishCity==1 & year>1700, fe robust

esttab, replace se scalars(r2) k(jewspresentDummy PortJewInteraction)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear

*Reg 7: Emancipation post 1700
eststo: quietly: xi: xtreg lpop jewspresentDummy jewspresentDummyXEmancipation Emancipation  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1700,  fe robust


*Reg 8: Emancipation post 1700
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy jewspresentDummyXEmancipation = lnIV100k   lnIV100k_JewsDummyXEmancip ) Emancipation  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1700,  fe robust

esttab, replace se scalars(r2) k(jewspresentDummy jewspresentDummyXEmancipation Emancipation)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*Reg 9: Market Access
eststo: quietly: xi: xtreg lpop jewspresentDummy JewsDummyXIV_MA lnIV_MA  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1700,  fe robust


*Reg 10: Market Access
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy JewsDummyXIV_MA = lnIV100k lnIV100k_JewsDummyXIV_MA ) lnIV_MA  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1700,  fe robust

esttab, replace se scalars(r2) k(jewspresentDummy JewsDummyXIV_MA lnIV_MA)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*************************************************
*Table A.1 Emancipation without Habsburg Empire
*************************************************


*Reg 1: Emancipation
eststo: quietly: xi: xtreg lpop jewspresentDummy jewspresentDummyXEmancipation Emancipation  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1300,  fe robust


*Reg 2: Emancipation
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy jewspresentDummyXEmancipation = lnIV100k   lnIV100k_JewsDummyXEmancip ) Emancipation  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1300,  fe robust

esttab, replace se scalars(r2) k(jewspresentDummy jewspresentDummyXEmancipation Emancipation)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear


*Reg 3: EmancipationAlt
eststo: quietly: xi: xtreg lpop jewspresentDummy jewspresentDummyXEmancipatAlt EmancipationAlt  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1300,  fe robust


*Reg 4: EmancipationAlt
eststo: quietly: xi: xtivreg2 lpop (jewspresentDummy jewspresentDummyXEmancipatAlt = lnIV100k   lnIV100kXEmancipatAlt ) EmancipationAlt  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1300,  fe robust

esttab, replace se scalars(r2) k(jewspresentDummy jewspresentDummyXEmancipatAlt EmancipationAlt)  star(* 0.10 ** 0.05 *** 0.01)
eststo clear





***********************************************************************************
*Figure 6: data for line graph of avg MA in Jewish cities and non-Jewish cities (assuming JewishCity==1)
**************************************************************************************

drop if year<1400

sort year
by year: egen JewishmeanIV_MA=mean(lnIV_MA) if JewishCity==1 & lpop~=. & jewspresentDummy==1

sort year
by year: egen NonJewishmeanIV_MA=mean(lnIV_MA) if JewishCity==1 & lpop~=. & jewspresentDummy==0

graph twoway line JewishmeanIV_MA year || line NonJewishmeanIV_MA year

sort year
by year: sum JewishmeanIV_MA
by year: sum NonJewishmeanIV_MA





********************************************************************
*Figure 7: interaction plot for market access and jewish community OLS
*******************************************************************


xi: quietly: xtreg lpop jewspresentDummy JewsDummyXIV_MA lnIV_MA  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1300,  fe robust

*************************************generate MV=(_n)replace  MV=. if _n>9.57replace  MV=. if _n<4.85*     ****************************************************************  **       Grab elements of the coefficient and variance-covariance matrix **       that are required to calculate the marginal effect and standard **       errors.                                                         **     ****************************************************************  *matrix b=e(b) matrix V=e(V) scalar b1=b[1,1] scalar b3=b[1,2]scalar b2=b[1,3]scalar varb1=V[1,1] scalar varb2=V[3,3] scalar varb3=V[2,2]scalar covb1b3=V[1,2] scalar covb2b3=V[3,2]scalar list b1 b2 b3 varb1 varb2 varb3 covb1b3 covb2b3*     ****************************************************************  **       Calculate the marginal effect of X on Y for all MV values of    **       the modifying variable Z.                                       **     ****************************************************************  *gen conb=b1+b3*MV if _n<9.57*     ****************************************************************  **       Calculate the standard errors for the marginal effect of X on Y **       for all MV values of the modifying variable Z.                  **     ****************************************************************  *gen conse=sqrt(varb1+varb3*(MV^2)+2*covb1b3*MV) if _n<9.57*     ****************************************************************  **       Generate upper and lower bounds of the confidence interval.     **       Specify the significance of the confidence interval.            **     ****************************************************************  *gen a=1.96*conse gen upper=conb+a gen lower=conb-a*     ****************************************************************  **       Graph the marginal effect of X on Y across the desired range of **       the modifying variable Z.  Show the confidence interval.        **     ****************************************************************  *graph twoway line conb MV,  clwidth(medium) clcolor(blue) clcolor(black) || line upper  MV, clpattern(dash) clwidth(thin) clcolor(black) ||line lower  MV, clpattern(dash) clwidth(thin) clcolor(black) || ,  yscale(noline) xscale(noline) legend(col(1) order(1 2) label(1 "Marginal Effect of Jewish Community") label(2 "95% Confidence Interval") label(3 " ")) yline(0, lcolor(black)) title("", size(3)) subtitle(" " "DID Effect of Jewish Community on Log City Size as Market Access Increases" " ", size(3)) xtitle( "Market Access", size(3)  ) xsca(titlegap(2)) ysca(titlegap(2)) ytitle("Marginal Effect of Jewish Community", size(3)) scheme(s2mono) graphregion(fcolor(white))drop  MV conb conse a upper lower










******************************************************************
* Figure A.7: interaction plot for market access and jewish community IV
******************************************************************


xi: quietly: xtivreg2 lpop (jewspresentDummy JewsDummyXIV_MA = lnIV100k lnIV100k_JewsDummyXIV_MA ) lnIV_MA  i.year i.year*cereal50k i.year*university  i.year*DRR i.year*DAnySeas i.year*DRivers i.year*DMedRds if JewishCity==1 & year>1300,  fe robust

*************************************generate MV=(_n)replace  MV=. if _n>9.57replace  MV=. if _n<4.85*     ****************************************************************  **       Grab elements of the coefficient and variance-covariance matrix **       that are required to calculate the marginal effect and standard **       errors.                                                         **     ****************************************************************  *matrix b=e(b) matrix V=e(V) scalar b1=b[1,1] scalar b3=b[1,2]scalar b2=b[1,3]scalar varb1=V[1,1] scalar varb2=V[3,3] scalar varb3=V[2,2]scalar covb1b3=V[1,2] scalar covb2b3=V[3,2]scalar list b1 b2 b3 varb1 varb2 varb3 covb1b3 covb2b3*     ****************************************************************  **       Calculate the marginal effect of X on Y for all MV values of    **       the modifying variable Z.                                       **     ****************************************************************  *gen conb=b1+b3*MV if _n<9.57*     ****************************************************************  **       Calculate the standard errors for the marginal effect of X on Y **       for all MV values of the modifying variable Z.                  **     ****************************************************************  *gen conse=sqrt(varb1+varb3*(MV^2)+2*covb1b3*MV) if _n<9.57*     ****************************************************************  **       Generate upper and lower bounds of the confidence interval.     **       Specify the significance of the confidence interval.            **     ****************************************************************  *gen a=1.96*conse gen upper=conb+a gen lower=conb-a*     ****************************************************************  **       Graph the marginal effect of X on Y across the desired range of **       the modifying variable Z.  Show the confidence interval.        **     ****************************************************************  *graph twoway line conb MV,  clwidth(medium) clcolor(blue) clcolor(black) || line upper  MV, clpattern(dash) clwidth(thin) clcolor(black) ||line lower  MV, clpattern(dash) clwidth(thin) clcolor(black) || ,  yscale(noline) xscale(noline) legend(col(1) order(1 2) label(1 "Marginal Effect of Jewish Community") label(2 "95% Confidence Interval") label(3 " ")) yline(0, lcolor(black)) title("", size(3)) subtitle(" " "DID Effect of Jewish Community on Log City Size as Market Access Increases" " ", size(3)) xtitle( "Market Access", size(3)  ) xsca(titlegap(2)) ysca(titlegap(2)) ytitle("Marginal Effect of Jewish Community", size(3)) scheme(s2mono) graphregion(fcolor(white))drop  MV conb conse a upper lower






log close












