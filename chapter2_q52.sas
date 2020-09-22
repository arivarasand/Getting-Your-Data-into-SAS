proc import datafile="/folders/myfolders/Oscars.xlsx"
out=oscar
dbms=xlsx replace;
getnames=yes;
run;


PROC EXPORT 
     DATA=oscar
     OUTFILE='/folders/myfolders/Oscars.dat' 
     DBMS=tab
     REPLACE;
RUN;

Data Oscar;
infile "/folders/myfolders/Oscars.dat" dlm="09"x dsd truncover ;
input ID $ year $  host :$100. best_picture :$ 100. best_actor :$ 100. best_actress :$ 100. best_director :$ 100. best_screenplay :$ 100. ;

ID=compress(ID,'_');
year=input(compress(year,"_"), year4.);
format year YEAR4.;
run;
