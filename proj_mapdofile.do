clear all
set more off 

cd "/Users/elizabethalliott/Documents/Bristol/Third Year/Data Science /Core"

capture log close

log using "dsmap.log", replace

clear
insheet using "proj_mapdata.csv"

br

drop if v8=="Under 18 years"
drop if v8=="Stub3"
drop if v8=="Total"
drop if v8=="No health insurance coverage"
drop if v8=="18 to 64 years"
drop if v8=="65 years or over"

br
drop v3 v4 v5 v7
br
//edit in excel -  create new total column for estimate 
clear
insheet using "datamap2.csv"
br

drop if v5=="v9"
br

drop if missing(v5)
br

drop v3 v4
br
rename v1 County
rename v2 State
rename v5 Total
br
