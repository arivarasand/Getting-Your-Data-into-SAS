/*

The data in the file BenAndJerrys.dat represent various ice cream flavors and their nutritional
information. The variables in the raw data file are flavor name, portion size (g), calories, calories
from fat, fat (g), saturated fat (g), trans fat (g), cholesterol (mg), sodium (mg), total carbohydrate
(g), dietary fiber (g), sugars (g), protein (g), year introduced, year retired, content description, and
notes.
a. Examine the raw data file BenAndJerrys.dat and read it into SAS.
b. Print the data set.

*/
data Benandjerry;
	infile "/folders/myfolders/BenAndJerrys.dat" DSD delimiter="," TRUNCOVER;
	INPUT flavor :$200. portion_size_g calories calories_fat fat_g saturated_fat_g 
		trans_fat_g cholesterol_mg sodium_mg carbs_g fiber_g $ sugar_g protein_g 
		introduced_year retired_year description :$200. notes :$200.;
RUN;