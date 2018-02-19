/******************************************************************
* Project: 	HDAT9400 - Management and curation of health data
* Purpose:	Set macros and run project programs
* Inputs: 	hospital.sas7bdat; survey.sas7bdat; 
* Outputs:	Proportion of deaths in follow-up period by age and sex
* Author:	Mark Hanly
* Date:		5th Feb 2018
* Note:		Specify the input and output folders in step 1 
* 			(make sure these locations exist in the 
* 			Server Files and Folders section)
*******************************************************************/

/* 1. Set project macros */

* Set the root and output folder macros here;
**************************************************************************************;
*1a. Set the location where you have stored the course data;
%let source = H:/Teaching/HDAT9400/SourceData; 

*1b. Set the location where you have stored the project code;
%let code = H:/Teaching/HDAT9400/Project1/Code; 

*1c. Set the location where you will store your copy of the project data;
%let data = H:/Teaching/HDAT9400; 

*1d. Set the location where you will store your project outputs;
%let output = H:/Teaching/HDAT9400; 
**************************************************************************************;

* Today's date automatically set here;
%let date = %sysfunc(putn(%sysfunc(today()),yymmddn8.));


/* 2. Define libraries based on the above locations */
libname data "&data";
libname output "&output";
libname source "&source";

* Tell SAS where to ignore missing formats;
options nofmterr;


*/ 3. Reproduce the analysis */

* Run the project programs in order;
%INCLUDE "&code/1.PrepData.sas";
%INCLUDE "&code/2.SummVars.sas";
%INCLUDE "&code/3.PrintBarChart.sas";

/* END */
