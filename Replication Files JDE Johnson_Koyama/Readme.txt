This is the readme file to accompany the data replication files for Johnson & Koyama, "Jewish Communities and City Growth in Preindustrial Europe" published in the Journal of Development Economics (forthcoming).

The .do file that replicates all the Tables and Figures in the paper is "Jews City Growth Analysis Final.do". In order to run the .do file do a search and replace on "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth" and replace with the location you've placed the "Replication Files JDE Johnson_Koyama" folder. This assumes you haven't altered the folder's structure.

The folder "Data Sets" contains data that are imported into the Analysis .do file. 

"FinalMortalityData.dta" contains Black Death mortality rates for the Bairoch Cities that are imputed using known mortality rates for 263 cities compiled by Jedwab, Johnson, and Koyama for use in their paper "Bones, Bacteria, and Break Points: The Effects of the Black Death on Urban Development".

"SephardicHebrewPressData" contains data on Sephardic communities, cities with Hebrew Presses, and Port Jews. See the paper's data appendix for citations.

"emancipation" contains data on cities with emancipated Jewish communities. See the paper's data appendix for data sources.

The folder "IV" contains the data and code to recreate the instruments used in the paper (Jewish Network IV and Expulsion IV) as well as the market access measures. To recreate the varables, run the "CreateIV_Co1.do" file. To run, you must do a search and replace on "/Users/Noel Johnson Notebook/Desktop/Dropbox/Research/Jews City Growth" and replace it with the folder you put the replication files in. This assumes you haven't altered the folder structure of the "Replication Files JDE Johnson_Koyama" folder.

The "CreateIV_Co1.do" file creates the Jewish Network IV's first, then the Expulsions IV's, and lastly the Market Access measures.

The file "AllBairochDist.dta" contains the linear distance and least cost travel cost between each pair of cities in the Bairoch dataset (as well as a few mediterranean cities we don't use in the published paper). There are 3,234,572 pairs. The least cost travel costs are calculated using a grid size of 5km x 5km, data on roman roads, medieval trade routes, seas, and rivers. Djikstra's algorithm was used assuming knight contiguity. See the published paper's data appendix for more information on the sources for the data and cost weights used for the different travel technologies.

The data on expulsions used to create the Expulsion IV's are contained in the file "Base Jewish Cities Data Panel Expulsions.dta" in the folder Intermediate IV files -> Jewish Presence CrossSections. They come from Anderson, Johnson, & Koyama, "Jewish Persecution and Weather Shocks: 1100-1800" published in the Economic Journal (forthcoming), but were extended to 1850.

