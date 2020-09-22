/*

Information Technology Services (ITS) at Central State University has a computing service called
”the Grid,” which is offered to faculty, staff, and students. This supercomputer is a cluster of 10
computers that, if programmed correctly in a grid environment, can process much faster by
distributing the work across 10 machines. University users that would like to use the Grid
computing environment must register with ITS. The raw data file CompUsers.dat contains the
variables user ID, classification group (faculty, staff, or student), first name, last name, email
address, campus phone number, and department.
a. Examine the raw data file CompUsers.dat and read it into SAS.
b. Print the data set.
c. Write another DATA step to read the raw data file and remove the student records. Do this as
efficiently as possible by testing the classification group as it is being read in with the INPUT
statement.
d. Print the data set.

*/
DATA CompUsers;
INFILE"/folders/myfolders/CompUsers.dat";
INPUT userid group $ first $ last $ @"email:" email :$35. @"phone:" phone $ major $ @@;
RUN;

data Nonstudents;
set CompUsers;
if group="Student" then delete;
run;



