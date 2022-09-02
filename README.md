# SQL Employee Database Analysis

## Objective: 
Using sql views and queries, analysis the database for business. Find potential mentorship candidates, which employees are retiring and from which departments. 

## Tools & databases used:
- PostgreSQL
- SQL

## Preparing Analysis:

**Creating database:**

In order to understand the schema needed for this database, I decided to mock up a quick diagram to better understand which keys are needed.

![diagram](https://github.com/Ryndine/sql_employee_database/blob/main/Images/ERDiagram.jpg)

From here I decided to go with this schema [(SQL File)](https://github.com/Ryndine/sql_employee_database/blob/main/schema.sql) and import the data from the csv files:  

**Creating views:**

To gain further insight into the database I wanted to look at the following data:
- Retirment eligibility
- Retirement for current employees in the company
- Employees gender and salary
- Department managers
- Employees in each department
- Find overlap in departments, such as sales and development.
- Further break down retirement to make sure there are no duplicates
- See if any employees qualify for mentorship

Since I wanted this data to be temporary for the goal of quickly getting query results back, I decided they were best used as views.

## Analysis:

[(SQL File) Example of the postgres database:](https://github.com/Ryndine/sql_employee_database/blob/main/simple_queries.sql)  
![example](https://github.com/Ryndine/sql_employee_database/blob/main/Images/database_example.jpg)

[(SQL File) All retiring employees:](https://github.com/Ryndine/sql_employee_database/blob/main/view_retiring_employees.sql)  
![employees](https://github.com/Ryndine/sql_employee_database/blob/main/Images/retiring_employees.jpg)

[(SQL File) Retiring employees without duplicates:](https://github.com/Ryndine/sql_employee_database/blob/main/view_unique_titles.sql)  
![retiring](https://github.com/Ryndine/sql_employee_database/blob/main/Images/unique_titles.jpg)

[(SQL File) Number of employees retiring by title:](https://github.com/Ryndine/sql_employee_database/blob/main/view_number_retiring.sql)  
![titles](https://github.com/Ryndine/sql_employee_database/blob/main/Images/retiring_titles.jpg)

[(SQL File) Employees eligilible for mentorship:](https://github.com/Ryndine/sql_employee_database/blob/main/view_mentorship_eligibility.sql)  
![mentorship](https://github.com/Ryndine/sql_employee_database/blob/main/Images/mentorship.jpg)
