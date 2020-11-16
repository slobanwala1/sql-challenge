
# sql-challenge


**Data Analysis For SQL Homework - Employee Database: A Mystery in Two Parts by Shanil Lobanwala**

## Links to files

I've attached links to the files as I've organized them into the sections they were given us to work on. The first portion is *Data Modeling*. The link to that directory is: [Data Modeling](https://github.com/slobanwala1/sql-challenge/tree/main/my_submission/Data_Modeling). The second portion is *Data Engineering* and heres the link: [Data Engineering](https://github.com/slobanwala1/sql-challenge/tree/main/my_submission/Data_Engineering). The third portion is *Data Analysis* and is located at: [Data Analysis](https://github.com/slobanwala1/sql-challenge/tree/main/my_submission/Data_Analysis). Finally the fun portion to see the data in a visual form was in the *Bonus* portion. That is located at: [Bonus](https://github.com/slobanwala1/sql-challenge/tree/main/my_submission/Bonus). The *graphs* are located in [Images](https://github.com/slobanwala1/sql-challenge/tree/main/my_submission/Images). Here's the link to the [Instructor prompt](https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/README.md). Heres my analysis after working on the whole project:

### SQL Analysis:


#### Data Modeling:

After working on the ERD's there were a few changes I had to make each time due to missing some relationships between a many to many or a one to many, or vice versa. From what I looked at there were three tables that were pulling the weight of the data. Employees, Departments and Titles. At first I thought it was just Employees and Departments but I realized Titles used title_id as its primary key and was unique however employees did not as multiple employees could have the same title, thus I realized all three had a primary key that was used as a foreign key rather than using a foreign key as a primary key. So from there everything else got easier as both emp_no and dept_no were foreign keys connected to employees and departments. Here's the ERD image:

**ERD (image only)**

<br>
<br>
<img src="https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/Images/Pewlett_Hackard_files_ERD_ImgOnly.PNG" width="681">

Heres the links to the [ERD with the sql code](https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/Images/Pewlett_Hackard_files_ERD.PNG) and a [txt file](https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/Data_Modeling/Pewlett_Hackard_files_ERD_text.txt) with just the sql code.

#### Data Engineering:

After creating the ERD it was easier to do the analysis except we had to make a composite key for dept_manager and dept_emp we had to make a primary key that connected both emp_no and dept_no so
one employee and one department cant have duplicates but an employee can have multiple departments or vice versa. Then I had an issue with dropping tables unless I make sure they exist and cascade them when dropping them to remove dependencies. After this it was just inserting tables in the correct order and then importing them in the correct order because if there's dependencies than the tables won't connect. For example titles had to be imported first, then employees and departments and finally the last three tables. Here's the link to the [create tables file](https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/Data_Engineering/table_schema.sql).

#### Data Analysis:

Data analysis did not give too many issues as once the tables were set up and data was imported it was a matter of joining tables and googling different keywords that SQL uses. No issues here however the last question had me quite interested that so many last names had such a huge count. Meaning lots of last names had more than 200 people for them. Here's the link to the [sql queries](https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/Data_Analysis/Pewlett_Hackard_queries.sql).

#### Bonus:

The analysis for the bonus section was quite interesting. First here's the visuals. The first visual is a histogram of the salaries, the y column cut out is Employee count:

<br>
<br>
<img src="https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/Images/Salary_Histogram.png" width="500">

Second is the bar graph of Avg Salaries by Employee title:

<br>
<br>
<img src="https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/Images/Salary_vs_EmpTitle.png" width="500">

Lets first analyze the histogram. From what I see > 70% of the staff makes around $40,000 while very little make > $100,000. The average is above 50,000 and nearing 60,000. This make sense as there's more labor staff or Jr. level positions working while less Sr. level positions managing the others or working as leads on a project or in the Clientele side. This was expected but still interesting to see. The second graph shows us Avg salary by Employee Title. Sadly some of it was cutoff because plt.savefig() likes to make life difficult for names above the size of 5. However you can see the names in the [Python Jupyter Notebook](https://github.com/slobanwala1/sql-challenge/blob/main/my_submission/Bonus/sql_challenge_bonus_analysis.ipynb), but for the sake of the analysis I can tell you what those columns are. One is Staff and Senior Staff, which means one is ambigious for making so much money while the other has more expierence in the company thus making sense as promotions every year/salary raises. I believe the point of the homework was to find that what does Staff mean since it's one of the two titles that has the highest average salary and that was the analysis besides learning all these other things. The homework was interesting, and this portion was definetly worth the work. I could not get sqlalchemy to work for me, so I went another route: using psycopg2 as the way to connect to pgadmin. I used youtube tutorials and documentation as well as stackoverflow, but once it connected everything else was much more interesting for the bonus analysis. Thanks for taking the time to read the README documentation for this HW and hopefully you enjoyed the journey as much as I did.

