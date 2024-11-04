Project Name:  

CSC 511 Course Programming Project - Electronics Vendor

Project Overview:  

This project is a web-based application integrated with a full database management system that allows users to fully interact with the front end of the website which will alter data in the database.  Users may run queries in the database in numerous ways using the vast amount of tables.  The backend is built using Node.JS with Express while the frontend is built with HTML, CSS, and JavaScript.  The database was created using MySQL for database management. 

Table of Contents

1.  Requirements
2.  Installation
3.  Database Setup
4.  Starting the Project
5.  Usage
6.  Troubleshooting
7.  Acknowledgement


--REQUIREMENTS--

Noe.js version 14.x or later
npm - installed with Node.js
MySQL Server version 8.0 or later
Visual Stud Code 1.94.2 or later (Not reqd but recommended)


-------------INSTALLATION--------------


1.Download and install Node.js from https://nodejs.org/en

	a) Verify installation using bash
	b) node -v
	c) npm -v

2. Set up the project folder.  Would be easiest to create a user (mjj0) to mimic C:\Users\mjj0\Desktop\School\CSC511 DBMS or you will have to change          the code.

	a) open up command prompt
	b) Type cd path/to/project
	c) npm install (installs node.js dependencies)

3. Set up project sub folders (Customer Server Lookup Tool, Call Center Staff Tool, Stocking Clerk Receive Inventory Tool)

	a) Under "submodules" folder these three folders need to be moved to the desktop and renamed so they work with the file path in the code.
		1) CallCenterStaff renamed to CCS Staff
		2) CSlookuptool renamed to CSLookupTool
		3) ReceiveInventoryTool renamed to Stocking_Clerks
	b) open up command prompt
	c) Type cd path/to/project (for each folder)
	d) npm install (for each folder)


------------DATABASE SETUP-------------


Install MySQL Server from https://dev.mysql.com/downloads/mysql/

Import the database from the project folder. 
	
	a) Go to MySQL Workbench andtype mysql -u root -p < complete_database.sql (can also use MySQL Shell).
	b) There are many scripts that are saved in the directory as related to the project.  These can be opened by
	   going to File > Open Script
	c) There is also a "Stored Procedure" labeled 'GetMonthlySales'.  Click the lightning bolt and select the year to run this.


---------STARTING THE PROJECT---------


	a) Open command prompt
	b) Type cd path/to/project (select the folder for whichever web page you want to load - main page for this example).
	c) Type node app.js
	** You should get the message Server running at http://localhost:3000 Connected to MySQL database**

	For other directory examples see below:
	***C:\Users\mjj0\Desktop\CCS Staff - Server running on http//localhost:5000 Connected to the MySQL database.
	***C:\Users\mjj0\Desktop\CSLookupTool - Server running on http://localhost:4000 Connected to the MySQL database.
	***C:\Users\mjj0\Desktop\Stocking_Clerks - Server running on http://localhost:8000 Connected to the MySQL database.


------------------USAGE---------------


	a) Open your web browser and go to http://localhost:3000 (Use other ports for other websites above)
	b) Perform operation like going through various menus, adding items to cart, entering names, credit cards and clicking "Place Order".
	c) Use MySQL to manage orders, view customer data, etc.


------------TROUBLESHOOTING-----------


	a) Check port conflicts and make sure the ports needed are open.  Change the port in app.js if needed.
	b) Check proper configuration of database credentials if you run into database connectivity isses.
	c) If you run into errors related to missing packagges, run npm install.  


-----------ACKNOWLEDGEMENT-------------


Project developed by Michael Jones at University of Southern Mississippi for CSC511 0 Course Programming Project with Dr. Bo Li
