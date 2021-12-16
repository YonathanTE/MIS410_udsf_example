# MIS410_udsf_example

The user-defined scalar function has been created with SQL Server 2014. The following details were the guidelines asked the students to complete.

## Guidelines
Complete provided SQL to create a user-defined scalar function, that given:
- userID CHAR(16)
- browseYear INT

Returns total number of visits in the browseYear by ID corresponding to userID

NOTE: Each visit in a unique sessionID; and if they are not recorded browsing session in the browseYear - the returned value should be zero.
Use starting code provided below:

CREATE FUNCTION udsf_numVisitsInYear(
