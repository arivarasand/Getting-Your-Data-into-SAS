/*The file CancerRates.dat contains data on the top 10 cancer sites in the United States from the
Centers for Disease Control and Prevention (CDC) website. These statistics are condensed across
genders and races. The variables are ranking, cancer site, and incidence rate per 100,000 people.
a. Open the raw data file CancerRates.dat in a simple editor such as WordPad. In a comment in
your program, state the number of variables and observations.
b. Read the raw data file into SAS. View the log to verify that your data set has the same number
of variables and observations as you stated in part a).
c. Print the data set.
d. Copy the CancerRates.dat data set to a different location such as your desktop or a flash drive
and read it into SAS a second time from that new location.*/


data CancerRates;
infile "/folders/myfolders/CancerRates.dat";
input ranking cancer_site $ incidence_rate :3.1 ; 
run;







