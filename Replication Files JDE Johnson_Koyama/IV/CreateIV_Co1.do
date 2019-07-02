set matsize 10000

********************************************************************************
*This .do file creates the IV's used in the paper as well as market access measures
********************************************************************************

********************************************************************************************
* To run, you must do a search and replace on "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth" and replace it with the folder you put the replication files in. This assumes you haven't messed with the folder structure of the "Replication Files JDE Johnson_Koyama" folder.
************************************************************************************************

***************************************
* First we make the Jewish Network IV
****************************************

*IV0k using TravCostCo1

*1200
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1200.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1200
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1200.dta", replace
clear

*1300
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1300.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1300
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1300.dta", replace
clear

*1400
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1400.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1400
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1400.dta", replace
clear

*1500
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1500.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1500
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1500.dta", replace
clear

*1600
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1600.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1600
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1600.dta", replace
clear

*1700
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1700.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1700
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1700.dta", replace
clear

*1750
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1750.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1750
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1750.dta", replace
clear

*1800
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1800.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1800
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1800.dta", replace
clear

*1850
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1850.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1850
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1850.dta", replace
clear

*merge all cross-sections to panel
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1.dta"
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1200.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1300.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1400.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1500.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1600.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1700.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1750.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1800.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1850.dta", update replace
drop _merge

save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1.dta", replace




*IV50k using TravCostCo1

*1200
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1200.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1200
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1200.dta", replace
clear

*1300
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1300.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1300
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1300.dta", replace
clear

*1400
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1400.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1400
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1400.dta", replace
clear

*1500
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1500.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1500
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1500.dta", replace
clear

*1600
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1600.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1600
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1600.dta", replace
clear

*1700
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1700.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1700
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1700.dta", replace
clear

*1750
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1750.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1750
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1750.dta", replace
clear

*1800
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1800.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1800
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1800.dta", replace
clear

*1850
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1850.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1850
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1850.dta", replace
clear

*merge all cross-sections to panel
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1.dta"
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1200.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1300.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1400.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1500.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1600.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1700.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1750.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1800.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1850.dta", update replace
drop _merge

label var NA1_9 "IV, no pop weight, >150km"

save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1.dta", replace






*IV100k using TravCostCo1

*1200
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1200.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1200
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1200.dta", replace
clear

*1300
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1300.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1300
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1300.dta", replace
clear

*1400
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1400.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1400
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1400.dta", replace
clear

*1500
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1500.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1500
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1500.dta", replace
clear

*1600
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1600.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1600
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1600.dta", replace
clear

*1700
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1700.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1700
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1700.dta", replace
clear

*1750
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1750.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1750
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1750.dta", replace
clear

*1800
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1800.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1800
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1800.dta", replace
clear

*1850
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1850.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1850
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1850.dta", replace
clear

*merge all cross-sections to panel
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1.dta"
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1200.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1300.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1400.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1500.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1600.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1700.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1750.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1800.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1850.dta", update replace
drop _merge

save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1.dta", replace

clear


*IV250k using TravCostCo1

*1200
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1200.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1200
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1200.dta", replace
clear

*1300
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1300.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1300
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1300.dta", replace
clear

*1400
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1400.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1400
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1400.dta", replace
clear

*1500
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1500.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1500
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1500.dta", replace
clear

*1600
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1600.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1600
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1600.dta", replace
clear

*1700
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1700.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1700
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1700.dta", replace
clear

*1750
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1750.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1750
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1750.dta", replace
clear

*1800
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1800.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1800
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1800.dta", replace
clear

*1850
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1850.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1850
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1850.dta", replace
clear

*merge all cross-sections to panel
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1.dta"
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1200.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1300.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1400.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1500.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1600.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1700.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1750.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1800.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1850.dta", update replace
drop _merge

save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1.dta", replace

clear




*IV500k using TravCostCo1

*1200
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1200.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1200
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1200.dta", replace
clear

*1300
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1300.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1300
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1300.dta", replace
clear

*1400
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1400.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1400
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1400.dta", replace
clear

*1500
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1500.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1500
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1500.dta", replace
clear

*1600
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1600.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1600
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1600.dta", replace
clear

*1700
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1700.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1700
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1700.dta", replace
clear

*1750
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1750.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1750
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1750.dta", replace
clear

*1800
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1800.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1800
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1800.dta", replace
clear

*1850
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1850.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1850
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1850.dta", replace
clear

*merge all cross-sections to panel
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1.dta"
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1200.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1300.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1400.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1500.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1600.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1700.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1750.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1800.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1850.dta", update replace
drop _merge

label var NA1_8 "IV, no pop weight, >500km"

save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1.dta", replace


clear



**************************************
* Now we make the Expulsion IV
*************************************


*IV0k using TravCostCo1
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1200.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1200
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1200.dta", replace
clear

*1300
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1300.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1300
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1300.dta", replace
clear

*1400
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1400.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1400
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1400.dta", replace
clear

*1500
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1500.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1500
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1500.dta", replace
clear

*1600
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1600.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1600
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1600.dta", replace
clear

*1700
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1700.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1700
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1700.dta", replace
clear

*1750
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1750.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1750
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1750.dta", replace
clear

*1800
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1800.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1800
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1800.dta", replace
clear

*1850
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1850.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_1
label var NA1_1 "Network Access IV  Dist=0, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1850
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1850.dta", replace
clear

*merge all cross-sections to panel
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta"
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1200.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1300.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1400.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1500.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1600.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1700.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1750.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1800.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_1_1850.dta", update replace
drop _merge

save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta", replace




*IV50k using TravCostCo1

*1200
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1200.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1200
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1200.dta", replace
clear

*1300
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1300.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1300
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1300.dta", replace
clear

*1400
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1400.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1400
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1400.dta", replace
clear

*1500
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1500.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1500
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1500.dta", replace
clear

*1600
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1600.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1600
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1600.dta", replace
clear

*1700
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1700.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1700
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1700.dta", replace
clear

*1750
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1750.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1750
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1750.dta", replace
clear

*1800
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1800.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1800
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1800.dta", replace
clear

*1850
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1850.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<50
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_9
rename origin_city Bairoch_id
gen year=1850
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1850.dta", replace
clear

*merge all cross-sections to panel
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta"
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1200.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1300.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1400.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1500.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1600.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1700.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1750.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1800.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_9_1850.dta", update replace
drop _merge

label var NA1_9 "IV, no pop weight, >150km"

save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta", replace






*IV100k using TravCostCo1

*1200
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1200.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1200
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1200.dta", replace
clear

*1300
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1300.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1300
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1300.dta", replace
clear

*1400
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1400.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1400
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1400.dta", replace
clear

*1500
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1500.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1500
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1500.dta", replace
clear

*1600
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1600.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1600
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1600.dta", replace
clear

*1700
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1700.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1700
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1700.dta", replace
clear

*1750
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1750.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1750
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1750.dta", replace
clear

*1800
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1800.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1800
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1800.dta", replace
clear

*1850
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1850.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<100
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_3
label var NA1_3 "Network Access IV  Dist=100, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1850
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1850.dta", replace
clear

*merge all cross-sections to panel
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta"
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1200.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1300.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1400.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1500.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1600.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1700.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1750.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1800.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_3_1850.dta", update replace
drop _merge

save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta", replace

clear


*IV250k using TravCostCo1

*1200
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1200.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1200
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1200.dta", replace
clear

*1300
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1300.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1300
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1300.dta", replace
clear

*1400
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1400.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1400
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1400.dta", replace
clear

*1500
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1500.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1500
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1500.dta", replace
clear

*1600
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1600.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1600
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1600.dta", replace
clear

*1700
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1700.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1700
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1700.dta", replace
clear

*1750
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1750.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1750
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1750.dta", replace
clear

*1800
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1800.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1800
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1800.dta", replace
clear

*1850
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1850.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<250
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_4
label var NA1_4 "Network Access IV  Dist=250, sigma=1, No pop weight"
rename origin_city Bairoch_id
gen year=1850
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1850.dta", replace
clear

*merge all cross-sections to panel
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta"
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1200.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1300.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1400.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1500.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1600.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1700.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1750.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1800.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_4_1850.dta", update replace
drop _merge

save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta", replace

clear




*IV500k using TravCostCo1

*1200
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1200.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1200
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1200.dta", replace
clear

*1300
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1300.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1300
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1300.dta", replace
clear

*1400
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1400.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1400
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1400.dta", replace
clear

*1500
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1500.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1500
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1500.dta", replace
clear

*1600
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1600.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1600
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1600.dta", replace
clear

*1700
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1700.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1700
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1700.dta", replace
clear

*1750
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1750.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1750
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1750.dta", replace
clear

*1800
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1800.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1800
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1800.dta", replace
clear

*1850
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1850.dta"
drop _merge
gen Bairoch_id=dest_city
merge m:m year Bairoch_id using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/Base Jewish Cities Data Panel Expulsions.dta"
keep if _merge==3
drop Bairoch_id
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen DJew =  (JewishCity*jewspresentDummy*expulsion)/((TravCostCo1)^1)
replace DJew=0 if Dkm<500
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_8
rename origin_city Bairoch_id
gen year=1850
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1850.dta", replace
clear

*merge all cross-sections to panel
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta"
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1200.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1300.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1400.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1500.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1600.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1700.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1750.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1800.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_8_1850.dta", update replace
drop _merge

label var NA1_8 "IV, no pop weight, >500km"

save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta", replace



*************************************************
* Now we make the market access measure
*************************************************


*IVMA using TravCostCo1

*1200
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1200.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen lnpop=ln(pop)
gen DJew =  (pop)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_7
label var NA1_7 "Network Access IV  Dist=0, sigma=1, Yes pop weight"
rename origin_city Bairoch_id
gen year=1200
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1200.dta", replace
clear

*1300
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1300.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen lnpop=ln(pop)
gen DJew =  (pop)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_7
label var NA1_7 "Network Access IV  Dist=0, sigma=1, Yes pop weight"
rename origin_city Bairoch_id
gen year=1300
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1300.dta", replace
clear

*1400
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1400.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen lnpop=ln(pop)
gen DJew =  (pop)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_7
label var NA1_7 "Network Access IV  Dist=0, sigma=1, Yes pop weight"
rename origin_city Bairoch_id
gen year=1400
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1400.dta", replace
clear

*1500
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1500.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen lnpop=ln(pop)
gen DJew =  (pop)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_7
label var NA1_7 "Network Access IV  Dist=0, sigma=1, Yes pop weight"
rename origin_city Bairoch_id
gen year=1500
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1500.dta", replace
clear

*1600
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1600.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen lnpop=ln(pop)
gen DJew =  (pop)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_7
label var NA1_7 "Network Access IV  Dist=0, sigma=1, Yes pop weight"
rename origin_city Bairoch_id
gen year=1600
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1600.dta", replace
clear

*1700
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1700.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen lnpop=ln(pop)
gen DJew =  (pop)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_7
label var NA1_7 "Network Access IV  Dist=0, sigma=1, Yes pop weight"
rename origin_city Bairoch_id
gen year=1700
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1700.dta", replace
clear

*1750
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1750.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen lnpop=ln(pop)
gen DJew =  (pop)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_7
label var NA1_7 "Network Access IV  Dist=0, sigma=1, Yes pop weight"
rename origin_city Bairoch_id
gen year=1750
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1750.dta", replace
clear

*1800
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1800.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen lnpop=ln(pop)
gen DJew =  (pop)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_7
label var NA1_7 "Network Access IV  Dist=0, sigma=1, Yes pop weight"
rename origin_city Bairoch_id
gen year=1800
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1800.dta", replace
clear

*1850
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/AllBairochDist.dta", replace
merge m:1 dest_city using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/Jewish Presence CrossSections/JewishData1850.dta"
drop _merge
sort  origin_city dest_city 
gen Dkm=distance/1000
gen lnpop=ln(pop)
gen DJew =  (pop)/((TravCostCo1)^1)
collapse (sum) DJew, by(origin_city)
count
rename DJew NA1_7
label var NA1_7 "Market Access Measure"
rename origin_city Bairoch_id
gen year=1850
save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1850.dta", replace
clear

*merge all cross-sections to panel
use "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta"
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1200.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1300.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1400.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1500.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1600.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1700.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1750.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1800.dta", update replace
drop _merge
merge 1:1 Bairoch_id year using "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/Intermediate IV files/NA1_7_1850.dta", update replace
drop _merge

label var NA1_7 "Market Access Measure"

save "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth/Replication Files JDE Johnson_Koyama/IV/JewishCityIVs_Co1_Expulsion.dta", replace

clear




