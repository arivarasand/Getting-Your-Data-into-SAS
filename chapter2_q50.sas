/*
The World Health Organization (WHO) collected data in countries across the world regarding the
outbreak of swine flu cases and deaths in 2009. The data in the file SwineFlu2009.dat include
counts per country by month during the epidemic. There are many variables in the raw data file
with the following descriptions:
By date, ID for sorting by first case date
By continent, ID (X.YY) for sorting by first case date within a continent where X represents
continent X, and YY represents the YYth country with the next first case
Country
Date of first case reported
Number of cumulative cases reported on the first day of the month for April, May, June, July, and
August (across the columns, respectively)
Last reported cumulative number of cases reported to WHO as of August 9, 2009
By date, ID for sorting by first death date
By continent, ID (X.YY) for sorting by first death date within a continent where X represents
continent X, and YY represents the YYth country with the next first death
Date of first death
Number of cumulative deaths reported on the first day of the month for May, June, July, August,
September, October, November, and December (across the columns, respectively)
a. Examine the raw data file SwineFlu2009.dat and read it into SAS.
b. Create a permanent label for each variable based on the preceding descriptions.
c. Print a report that describes the contents of the data set including the labels that you’ve created
and other attributes of the variables.
*/
DATA swineflu;
	INFILE "/folders/myfolders/SwineFlu2009.dat" TRUNCOVER;
	INPUT id $ 1-3 contry_case $ 14-17 country $ 28-60 date_firstcase $ 61-70 
		cases_apr 89-95 cases_may 99-104 cases_jun 109-114 cases_jul 119-125 
		cases_aug 129-135 cases_last 145-150 cont_death $ 155-158 
		date_firstdeath $ 169-178 deaths_may 194-199 deaths_jun 204-209 deaths_jul 
		214-219 deaths_aug 224-229 deaths_sep 234-239 deaths_oct 244-249 deaths_nov 
		256-261 deaths_dec 266-269;
	LABEL id="Country ID for sorting" contry_case="1st Case ID (X.YY) where X represents continent X, and YY represents the YYth country with the next first case" 
		country="Country" date_firstcase="Date first case reported" cases_apr="Cumulative number of cases reported by the 1st of the month in April" 
		cases_may="Cumulative number of cases reported by the 1st of the month in May" 
		cases_jun="Cumulative number of cases reported by the 1st of the month in Jun" 
		cases_jul="Cumulative number of cases reported by the 1st of the month in July" cases_aug="Cumulative number of cases reported by the 1st of the month in August" cases_last="Last reported cumulative number of cases reported to WHO as of August 9, 2009" cont_death="1st Death ID (X.YY) where X represents continent X, and YY represents the YYth country with the next first death" 
		date_firstdeath="Date of first death" deaths_may="Cumulative number of deaths reported by the 1st of the month in May" deaths_jun="Cumulative number of deaths reported by the 1st of the month in June" deaths_jul="Cumulative number of deaths reported by the 1st of the month in July" deaths_aug="Cumulative number of deaths reported by the 1st of the month in August" deaths_sep="Cumulative number of deaths reported by the 1st of the month in September" deaths_oct="Cumulative number of deaths reported by the 1st of the month in October" deaths_nov="Cumulative number of deaths reported by the 1st of the month in November" deaths_dec="Cumulative number of deaths reported by the 1st of the month in December";
RUN;

proc contents data =swineflu varnum;
run;
