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
%let data = Project1/Data; *Set the location where you will store your copy of the project data;	
%let output = Project1/Outputs; *Set the location where you will store your project outputs;
%let code = Project1/Code; *Set the location where you have stored the project code;
%let source = /courses/d98e5a15ba27fe300; *This is the location of the course data in SAS OnDemand, provided by the course coordinator;

* Today's date automatically set here;
%let date = %sysfunc(putn(%sysfunc(today()),yymmddn8.));


/* 2. Define libraries based on the above locations */
libname data "&data";
libname output "&output";
libname source "&source";

*/ 3. Reproduce the analysis */

* Run the project programs in order;
%INCLUDE "&code/1.PrepData.sas";
%INCLUDE "&code/2.SummVars.sas";
%INCLUDE "&code/3.PrintBarChart.sas";

/* END */