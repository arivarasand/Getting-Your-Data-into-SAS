/*Crayola crayons were introduced in 1903, and since then numerous standard colors have been
released. Each crayon has a unique name, which corresponds to a hexadecimal code and RGB
triplet. The raw data file Crayons.dat contains information on these standard crayon colors with
variables corresponding to crayon number, color name, hexadecimal code, RGB triplet, pack size,
year issued, and year retired.
a. Open the raw data file Crayons.dat in a simple editor such as WordPad. In a comment in your
program, state which variables must be read in as character and which variables should be read
in as numeric.
b. Read the raw data file into a permanent SAS data set.
c. Print the data set.*/

data Crayon;
infile "/folders/myfolders/Crayons.dat";
input crayon number $ 1-4
color_name $ 5-30
hexadecimal_code $ 32-39
RGB_triplet 41-56 
pack_size 58-61
year_issued 
year_retired ;
format year_issued year_retired year4. ;
run;

proc print data = Crayon;
run;

