# sql-challenge


**Data Analysis For SQL Homework - Employee Database: A Mystery in Two Parts by Shanil Lobanwala**

## Links to files

I've attached links to the files as I've organized them into the sections they were given us to work on. The first portion is *Data Modeling*. The link to that directory is: [Data Modeling](https://github.com/slobanwala1/sql-challenge/tree/main/my_submission/Data_Modeling). The second portion is *Data Engineering* and heres the link: [Data Engineering](https://github.com/slobanwala1/sql-challenge/tree/main/my_submission/Data_Engineering). The third portion is *Data Analysis* and is located at: [Data Analysis](https://github.com/slobanwala1/sql-challenge/tree/main/my_submission/Data_Analysis). Finally the fun portion to see the data in a visual form was in the *Bonus* portion. That is located at: [Bonus](https://github.com/slobanwala1/sql-challenge/tree/main/my_submission/Bonus). The *graphs* are located in [Images](https://github.com/slobanwala1/sql-challenge/tree/main/my_submission/Images). Heres my analysis after working on the whole project:

### SQL Analysis:


#### Data Modeling:

After working on the ERD's there were a few changes I had to make each time due to missing some relationships between a many to many or a one to many, or vice versa. From what I looked at there were three tables that were pulling the weight of the data. Employees, Departments and Titles. At first I thought it was just Employees and Departments but I realized Titles used title_id as its primary key and was unique however employees did not as multiple employees could have the same title, thus I realized all three had a primary key that was used as a foreign key rather than using a foreign key as a primary key. So from there everything else got easier as both emp_no and dept_no were foreign keys connected to employees and departments. Here's the ERD image:

**ERD (image only)**

<br>
<br>
<img src="https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/Images/Pewlett_Hackard_files_ERD_ImgOnly.PNG" width="500">

Heres the links to the [ERD with the sql code](https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/Images/Pewlett_Hackard_files_ERD.PNG) and a [txt file](https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/Data_Modeling/Pewlett_Hackard_files_ERD_text.txt) with just the sql code.
