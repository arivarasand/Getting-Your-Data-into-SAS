/*The tallest mountains in the world are located in central and southern Asia. The raw data file
Mountains.dat contains information on mountains over 7,200 meters (23,622 ft). Researchers
measure the prominence of a mountain as the height above the highest saddle connecting it to a
higher summit. The variables in this file are mountain name, height (m), height (ft), year of first
ascent, and prominence (m).
a. Open the raw data file Mountains.dat in a simple editor such as WordPad. In a comment in your
program, state which variables must be read in as character and which variables should be read
in as numeric.
b. Read the raw data file into SAS.
c. Print the data set.*/


data Mountains;
infile "/folders/myfolders/Mountains.dat";
input mountain_name $ 1-38
height_m  
height_ft 
year_of_first_ascent 
prominence ;

informat height_m  height_ft prominence comma8. year_of_first_ascent year4.;
format height_m  height_ft prominence comma8. year_of_first_ascent year4.;
run;

proc print data=Mountains;
run;

