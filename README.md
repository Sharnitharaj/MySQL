
# 🗄️ MySQL Employee Database & SQL Querying

<p align="center">

<img src="https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />
<img src="https://img.shields.io/badge/SQL-Querying-CC2927?style=for-the-badge&logo=mysql&logoColor=white" />
<img src="https://img.shields.io/badge/Focus-Data%20Analysis-6C63FF?style=for-the-badge" />
<img src="https://img.shields.io/badge/Status-Completed-2EA44F?style=for-the-badge" />

</p>

<p align="center">
  <b>A hands-on MySQL project covering database design, DDL commands, constraints, relationships, data manipulation, filtering, aggregation, grouping, and SQL joins.</b>
</p>

---

## 📌 About the Project

This repository contains my practical work with **MySQL and SQL**, built around an **Employee Database**.

The project is divided into two learning areas:

- 🏗️ **Database Design & DDL**: creating databases and tables, applying constraints, modifying table structures, renaming objects, truncating data, and dropping database objects.
- 🔎 **SQL Querying & Analysis**: retrieving, filtering, sorting, updating, aggregating, grouping, and joining employee data to answer business-style questions.

The dataset contains **30 employees**, **13 departments**, and **4 locations**, making it suitable for practicing relational querying patterns.

---

## 🎯 Project Objectives

- 🗄️ Design a relational employee database
- 🧱 Create and modify tables using DDL
- 🔐 Apply SQL constraints for data integrity
- 🔗 Build relationships using primary and foreign keys
- ✏️ Insert and update employee records
- 🔍 Filter and retrieve specific records
- 📊 Perform aggregate calculations
- 📦 Group and summarize data
- 🔀 Work with INNER JOIN, LEFT JOIN, and RIGHT JOIN
- 🧠 Practice SQL questions from a data-analysis perspective

---

## 🏗️ Database Structure

The core database uses three related tables:

~~~text
                    ┌──────────────────────┐
                    │     Departments      │
                    ├──────────────────────┤
                    │ department_id   PK   │
                    │ department_name      │
                    └──────────┬───────────┘
                               │
                               │ FK
                               ▼
                    ┌──────────────────────┐
                    │      Employees       │
                    ├──────────────────────┤
                    │ employee_id     PK   │
                    │ employee_name        │
                    │ gender               │
                    │ age                  │
                    │ hire_date            │
                    │ designation          │
                    │ department_id   FK   │
                    │ location_id     FK   │
                    │ salary               │
                    └──────────┬───────────┘
                               │
                               │ FK
                               ▼
                    ┌──────────────────────┐
                    │       Location       │
                    ├──────────────────────┤
                    │ location_id     PK   │
                    │ location             │
                    └──────────────────────┘
~~~

### 📊 Dataset Snapshot

| Entity | Records | Purpose |
|---|---:|---|
| 👥 Employees | **30** | Employee details, designation, salary & joining date |
| 🏢 Departments | **13** | Organizational departments |
| 📍 Locations | **4** | Employee work locations |

---

## 🧱 Part 1: DDL & Constraints

### 📄 SQL File

**MySQL-employeeDB-ddl-constraints.sql**

This script demonstrates the database-definition workflow.

### 🛠️ DDL Commands Practiced

| Command | What it demonstrates |
|---|---|
| CREATE DATABASE | Creating the employee database |
| CREATE TABLE | Creating relational tables |
| ALTER TABLE | Modifying existing table structures |
| RENAME | Renaming database objects |
| TRUNCATE | Removing table records while retaining structure |
| DROP TABLE | Removing a table |
| DROP DATABASE | Removing a database |

### 🔐 Constraints & Data Integrity

The database design demonstrates:

- 🔑 **PRIMARY KEY** for unique record identification
- 🚫 **NOT NULL** for mandatory fields
- ♻️ **UNIQUE** to prevent duplicate values
- ☑️ **CHECK** for age validation
- ⚙️ **DEFAULT** for automatic hire dates
- 🔢 **AUTO_INCREMENT** for location IDs
- 🔗 **FOREIGN KEY** relationships between tables
- 🧩 **ENUM** for controlled gender values

### 🔧 Table Modification Examples

~~~text
ADD column
    ↓
MODIFY column datatype
    ↓
DROP column
    ↓
RENAME column
~~~

The Employees table is modified by adding an email column, changing the designation datatype, removing the age column, and renaming the joining-date column.

---

## 🔎 Part 2: SQL Querying & Analysis

### 📁 Folder

**Querying data/**

### 📄 Files

- Querying datas.sql
- Querying Datas Document.pdf

The querying section contains practical SQL questions based on the employee dataset.

### 🧠 SQL Concepts Practiced

| Category | Concepts |
|---|---|
| 🔍 Retrieval | SELECT, DISTINCT, column selection |
| 🏷️ Aliases | AS |
| 🎯 Filtering | WHERE, comparison operators, LIKE |
| 🔄 Updating | UPDATE |
| ↕️ Sorting | ORDER BY |
| 📅 Date Analysis | YEAR(), date filtering |
| 📊 Aggregation | SUM(), MIN(), MAX(), AVG(), COUNT() |
| 📦 Grouping | GROUP BY |
| 🚦 Group Filtering | HAVING |
| 🔗 Relationships | INNER JOIN |
| ↔️ Outer Joins | LEFT JOIN, RIGHT JOIN |

---

## 📈 Analysis Questions Covered

The query set answers questions such as:

- 💰 Which employees earn above a specified salary and were hired before a given date?
- 📅 Who were the first employees hired in 2018?
- 💵 What is the total salary in the Finance department?
- 👶 What is the minimum employee age?
- 📍 What is the maximum salary at each location?
- 🧑‍💼 What is the average salary for designations containing **Analyst**?
- 🏢 Which departments have fewer than three employees?
- 👩 Which locations have female employees with an average age below 30?
- 🔗 How can employee details be combined with department information?
- 📊 How many employees belong to each department, including departments with no employees?
- 📍 How can all locations be displayed together with their assigned employees?

These exercises helped me practice translating **business questions into SQL queries**.

---

## 🔄 Project Workflow

~~~text
       🗄️ Create Database
              ↓
       🧱 Create Tables
              ↓
       🔐 Apply Constraints
              ↓
       🔗 Establish Relationships
              ↓
       📝 Insert Employee Data
              ↓
       🔎 Query & Filter Data
              ↓
       📊 Aggregate & Group
              ↓
       🔀 Join Related Tables
              ↓
       💡 Answer Business Questions
~~~

---

## 📂 Repository Structure

~~~text
MySQL/
│
├── 📄 MySQL-employeeDB-ddl-constraints.sql
│
├── 📄 MySQL_Employee_Database_Documentation.pdf
│
├── 📁 Querying data/
│   ├── 📄 Querying datas.sql
│   └── 📄 Querying Datas Document.pdf
│
└── 📄 README.md
~~~

---

## 🧰 Tools & Technologies

<p align="center">

<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />
<img src="https://img.shields.io/badge/SQL-CC2927?style=for-the-badge&logo=mysql&logoColor=white" />
<img src="https://img.shields.io/badge/MySQL%20Workbench-00758F?style=for-the-badge&logo=mysql&logoColor=white" />
<img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" />

</p>

---

## 💡 Key Learning Outcomes

Through this project, I strengthened my understanding of:

- 🗃️ Relational database design
- 🧱 DDL and table structure management
- 🔐 Constraints and data integrity
- 🔗 Primary and foreign key relationships
- 🔎 Data filtering and conditional logic
- 📊 Aggregate functions and grouped analysis
- 🔀 SQL joins
- 📅 Date-based filtering
- 🧠 Converting business questions into SQL queries

---

## 👩‍💻 Author

**Sharnitha Raj**

🎓 Bachelor of Computer Science  
📊 Aspiring Data Analyst

> **"Behind every number lies a story waiting to be understood."**

---

<p align="center">

⭐ <b>Built with MySQL • Practiced with SQL • Focused on Data Analytics</b> ⭐

</p>
