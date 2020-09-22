/********************************************************************************
Mount Rushmore National Memorial is a giant sculpture carved into the side of a mountain in South
Dakota. This exercise creates a data set containing information about the four United States
presidents depicted by this iconic sculpture. The variables will be the president’s name, the date of
his inauguration, and his party affiliation, with the following variable attributes where Num =
numeric and Char = character.
Name: PresName StartDate Party
Label: President NameInauguration Date
Length: 13 8 22
Type: Char Num Char
Format: $13. WORDDATE18. $22.
Informat: $13. DATE9. $22.
a. Open an empty Viewtable window in the SAS windowing environment. Set the variable name,
label, length, type, format, and informat for each variable.
b. Type in the following data values.
G. Washington30apr1789none
T. Jefferson 04mar1801Democratic-Republican
A. Lincoln 04mar1861Republican
T. Roosevelt 14sep1901Republican
c. Save the data set as a permanent SAS data set.
d. In the SAS windowing environment, open the Properties window for the data set and click the
Columns tab. Verify that the attributes for the columns are correct. Sort the columns first by
column name and then again by label.
e. Print the data set along with a report of the contents showing the data set and variable
attributes.

*****************************************************************/



data presidents;
length PresName $ 13. StartDate 8.  Party $ 22. ;
input PresName $ StartDate   Party $;
Informat PresName $ 13. StartDate DATE9. Party $ 22. ;
format  PresName $ 13. StartDate WORDDATE18. Party $ 22. ;
label name="President Name" StartDate ="Inauguration Date";
datalines;
G.Washington 30apr1789 none
T.Jefferson  04mar1801 Democratic-Republican
A.Lincoln    04mar1861 Republican
T.Roosevelt  14sep1901 Republican
run;

proc print data=presidents;
Title "Presidents carved on Mount Rushmore ";
run;

proc contents data=presidents varnum;
Title "Presidents carved on Mount Rushmore ";
run;
