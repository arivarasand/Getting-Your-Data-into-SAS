/*The American Kennel Club (AKC) reports rankings of dog breeds by year based on the number of
registrations. These data are found in the raw data file AKCbreeds.dat. For each breed, the data
include the name of the breed, and ranking for each of four years. Breeds with missing ranks were
not recognized by the AKC during that year.
a. Open the raw data file AKCbreeds.dat in a simple editor such as WordPad. In a comment in
your program, state the number of variables and observations.
b. Read the raw data file into SAS. View the log to verify that your data set has the same number
of variables and observations as you stated in part a).
c. Print the data set.*/

data akc;
infile "/folders/myfolders/AKCbreeds.dat";
input Breed_name $ 1-39
  	  rank1 40-43
  	  rank2 45-48
  	  rank3 50-53
  	  rank4 54-57 ;
run;
