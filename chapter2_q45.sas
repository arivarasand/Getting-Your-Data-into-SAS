/* The World Health Organization (WHO) monitors vaccine recommendations in countries around the
world. The raw data file Vaccines.dat contains the recommended vaccines for a sample of 13
countries. The variables in this file are vaccine name, mode of disease transmission, worldwide
incidence, worldwide deaths, and recommendations (stored in 13 individual columns for the
respective countries of Chile, Cuba, United States, United Kingdom, Finland, Germany, Saudi
Arabia, Ethiopia, Botswana, India, Australia, China, and Japan).
a. Open the raw data file Vaccines.dat in a simple editor such as WordPad. In a comment in your
program, state the number of variables and observations.
b. Read the raw data file into SAS. View the log to verify that your data set has the same number
20
of variables and observations as you stated in part a).
c. Print the data set. */

data Vaccines;
infile "/folders/myfolders/Vaccines.dat";
input vaccine_name $ 1-30 disease_transmission $ 32-50 worldwide_count 51-59 worldwide_deaths 61-68 Chile $ 71-73 Cuba $ 77-79
	United_States $ 83-85 United_Kingdom $ 89-91 Finland $ 94-97 Germany $ 100-103 Saudi_Arabia $ 106-109 Ethiopia $ 112-115 
	Botswana $ 118-121 India $ 124-127 Australia $ 130-133 China $ 136-139 Japan $ 142-145;
run;