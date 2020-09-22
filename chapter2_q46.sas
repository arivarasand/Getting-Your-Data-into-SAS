/*
Each year, Forbes magazine publishes a list of the world’s 100 biggest companies. Each company
receives a score using four metrics: sales, profits, assets, and market value. The final overall ranking
is based on a composite score of these metrics. The variables in the raw data file BigCompanies.dat
are ranking, company name, country, sales (billions), profits (billions), assets (billions), and market
value (billions).
a. Open the raw data file BigCompanies.dat in a simple editor such as WordPad. In a comment in
your program, state which variables must be read in as character and which variables should be
read in as numeric.
b. Read the raw data file into SAS.
c. Print the data set.

*/

data BigCompanies;
infile "/folders/myfolders/BigCompanies.dat";
INPUT ranking company_name $ 6-34 country $ 34-52 _sales $ _profits $ _assets $	_market $ ;
	
 	sales = input(compress(_sales,'B'),dollar32.);
 	profits = input(compress(_profits ,'B'),dollar32.);
 	assets = input(compress(_assets ,'B'),dollar32.);
 	market = input(compress(_market ,'B'),dollar32.);
	DROP _:;
RUN;