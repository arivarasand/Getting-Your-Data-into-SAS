/*
gourmet pizza restaurant is considering adding new toppings to its menu. Each month they survey
10 customers about their preferences for three different toppings. They want data on several
different toppings, so they don’t always ask about the same three toppings. Customers rate each
topping on a scale of 1(would never order) to 5 (would order often). The restaurant wants to
compute average ratings for all toppings, so the ratings variables need to be numeric. The raw data
file Pizza.csv has variables for the respondent’s ID, and the ratings for five different toppings:
arugula, pine nuts, roasted butternut squash, shrimp, and grilled eggplant. The first two digits in the
ID correspond to the month of the survey.
a. Examine the raw data file Pizza.csv and read it into SAS using the IMPORT procedure.
b. Print the data set.
c. Print a report that describes the contents of the data set to make sure all the variables are the
correct type.
d. Open the raw data file in a simple editor like WordPad and compare the data values to the
output from parts b) and c) to make sure that they were read correctly into SAS. In a comment
in your program, identify any problems with the SAS data set that cannot be resolved using the
IMPORT procedure.
e. Read the same raw data file, Pizza.csv, this time using a DATA step. Be sure to resolve any
issues identified in part d).
f. Print the data set.
*/
proc import datafile="/folders/myfolders/Pizza.csv" out=Pizza dbms=csv replace;
	getnames=yes;
run;

proc print data=Pizza;
Title "gourmet pizza restaurant survey";
run;

proc contents data=Pizza varnum;
Title "gourmet pizza restaurant survey";
run;

data pizza;
	infile "/folders/myfolders/Pizza.csv" dlm=',' truncover firstobs=2;
	input SurveyNum Arugula PineNut Squash Shrimp Eggplant;
	Title "gourmet pizza restaurant survey";
run;