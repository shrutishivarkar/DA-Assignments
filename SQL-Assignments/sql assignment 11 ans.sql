#Q2. Insert Data into Employees Table
USE pw_assignment1;

#Insert the Employee Records
INSERT INTO employees
(employee_id, first_name, last_name, department, salary, hire_date)
VALUES
(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
(102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
(104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');

#Display All Records
SELECT * FROM employees;


#Q3. Display All Employee Records Sorted by Salary (Lowest to Highest)
SELECT * FROM employees ORDER BY salary ASC;


#Q4. Show Employees Sorted by Department (A–Z) and Salary (High → Low)
SELECT * FROM employees
ORDER BY department ASC, salary DESC;


#Q5. List All Employees in the IT Department, Ordered by Hire Date (Newest First)
SELECT * FROM employees
WHERE department = 'IT'
ORDER BY hire_date DESC;


#Q6. Create and Populate a Sales Table
#Create the Sales Table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount INT,
    sale_date DATE
);

#Insert the Records
INSERT INTO sales
(sale_id, customer_name, amount, sale_date)
VALUES
(1, 'Aditi', 1500, '2024-08-01'),
(2, 'Rohan', 2200, '2024-08-03'),
(3, 'Aditi', 3500, '2024-09-05'),
(4, 'Meena', 2700, '2024-09-15'),
(5, 'Rohan', 4500, '2024-09-25');
SELECT * FROM sales;


#Q7. Display All Sales Records Sorted by Amount (Highest → Lowest)
SELECT * FROM sales
ORDER BY amount DESC;


#Q8. Show All Sales Made by Customer "Aditi"
SELECT * FROM sales
WHERE customer_name = 'Aditi';


#Q9. What is the Difference Between a Primary Key and a Foreign Key?
#PRIMARY KEY
# A Primary Key is a column (or a combination of columns) that uniquely identifies each record in a table.

#Characteristics
# Uniquely identifies each row.
# Cannot contain NULL values.
# Duplicate values are not allowed.
# A table can have only one Primary Key.

#Example:
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
select * from employee;

#FOREIGN KEY
# A Foreign Key is a column in one table that references the Primary Key of another table.
# It is used to create a relationship between two tables and maintain referential integrity.

#Characteristics
# Links two tables together.
# Duplicate values are allowed.
# Can contain NULL values (unless restricted).
# A table can have multiple Foreign Keys.

#Example:
#Table 1: courses
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);
select * from courses;

#Table 2:
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT,
    FOREIGN KEY (course_id)
    REFERENCES courses(course_id)
);
select * from students;

#Q10. What Are Constraints in SQL and Why Are They Used?
# Constraints are rules applied to table columns that control the type of data that can be stored.
# They help maintain the accuracy, consistency, and integrity of the data.

#Constraints are used to:
# Ensure data accuracy.
# Prevent invalid or duplicate data.
# Maintain relationships between tables.
# Improve data consistency.
# Enforce business rules.

#types of constaints:
#PRIMARY KEY  : Uniquely identifies each record.
#FOREIGN KEY  : Creates a relationship between two tables.
#NOT NULL     : Does not allow NULL values.
#UNIQUE       : Does not allow duplicate values.
#DEFAULT      : Assigns a default value.
#CHECK        : Ensures the value satisfies a condition.
