# 🗄️ MySQL Employee Database | DDL & Constraints

<p align="center">

<img src="https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />

<img src="https://img.shields.io/badge/SQL-DDL-orange?style=for-the-badge" />

<img src="https://img.shields.io/badge/Project-Employee%20Database-success?style=for-the-badge" />

</p>

<p align="center">
  <b>A hands-on MySQL project demonstrating Database Creation, DDL Commands, Table Relationships, and Data Integrity Constraints.</b>
</p>

---

## 📌 Project Overview

This project focuses on designing and managing an **Employee Database using MySQL**.

The project demonstrates how to create a database and tables, modify table structures, rename tables, truncate data, and remove database objects using **DDL (Data Definition Language)** commands.

It also implements different **SQL constraints** to maintain data integrity and establish relationships between tables.

---

## 🎯 Objectives

The main objectives of this project are:

* 🗄️ Create an **Employee Database**
* 📋 Create `Departments`, `Location`, and `Employees` tables
* 🔧 Modify table structures using **ALTER**
* ✏️ Rename tables using **RENAME**
* 🧹 Remove table records using **TRUNCATE**
* 🗑️ Remove tables and databases using **DROP**
* 🔐 Implement SQL **constraints**
* 🔗 Establish relationships using **Foreign Keys**
* ✅ Maintain **data integrity**

---

## 🏗️ Database Structure

The database contains three main tables:

```text
                    ┌──────────────────┐
                    │   Departments    │
                    ├──────────────────┤
                    │ department_id PK │
                    │ department_name  │
                    └────────┬─────────┘
                             │
                             │
                             ▼
                    ┌──────────────────┐
                    │    Employees     │
                    ├──────────────────┤
                    │ employee_id PK   │
                    │ employee_name    │
                    │ gender           │
                    │ age              │
                    │ designation      │
                    │ hire_date        │
                    │ department_id FK │
                    │ location_id FK   │
                    └────────┬─────────┘
                             │
                             │
                             ▼
                    ┌──────────────────┐
                    │     Location     │
                    ├──────────────────┤
                    │ location_id PK   │
                    │ location         │
                    └──────────────────┘
```

The `Employees` table is connected to the `Departments` and `Location` tables through **foreign key relationships**.

---

## 🛠️ DDL Commands Covered

| Command    | Purpose                          |
| ---------- | -------------------------------- |
| `CREATE`   | Creates databases and tables     |
| `ALTER`    | Modifies an existing table       |
| `RENAME`   | Renames tables                   |
| `TRUNCATE` | Removes all records from a table |
| `DROP`     | Deletes tables or databases      |

---

## 🔐 Constraints Implemented

The project demonstrates the following SQL constraints and database features:

| Constraint / Feature | Purpose                                  |
| -------------------- | ---------------------------------------- |
| 🔑 `PRIMARY KEY`     | Uniquely identifies records              |
| 🚫 `NOT NULL`        | Prevents missing values                  |
| ♻️ `UNIQUE`          | Prevents duplicate values                |
| ✅ `CHECK`            | Restricts acceptable values              |
| 📅 `DEFAULT`         | Automatically assigns a default value    |
| 🔢 `AUTO_INCREMENT`  | Generates sequential IDs                 |
| 🔗 `FOREIGN KEY`     | Establishes relationships between tables |

The assignment specifically requires unique department identification, non-null and unique department names, automatically generated location IDs, mandatory employee names, gender restrictions, an age condition, a default hire date, and foreign-key relationships.

---

## 🔄 Project Workflow

```text
        🗄️ Create Database
                ↓
        📋 Create Tables
                ↓
        🔐 Apply Constraints
                ↓
        🔗 Establish Relationships
                ↓
        🔧 Alter Table Structure
                ↓
        ✏️ Rename Tables
                ↓
        🧹 Truncate Table
                ↓
        🗑️ Drop Table
                ↓
        💥 Drop Database
```

---

## 🔧 Table Alterations

The `Employees` table was modified using `ALTER TABLE`.

### Changes performed:

* ➕ Added an `email` column
* 🔄 Modified the `designation` data type
* ❌ Removed the `age` column
* ✏️ Renamed `hire_date` to `date_of_joining`

These modifications follow the scenarios specified in the assignment.

---

## ✏️ Table Renaming

The following tables were renamed:

```text
Departments  →  Departments_Info

Location     →  Locations
```

This demonstrates the use of the `RENAME` command.

---

## 🧹 TRUNCATE Operation

The `Employees` table was truncated using:

```sql
TRUNCATE TABLE Employees;
```

This removes the records while keeping the table structure.

---

## 🗑️ DROP Operations

The project also demonstrates removing database objects using `DROP`.

```sql
DROP TABLE Employees;

DROP DATABASE employee;
```

The assignment requires dropping the `Employees` table and subsequently dropping the `employee` database.

---

## 📂 Project Files

```text
📁 mysql-employee-database-ddl-constraints
│
├── 📄 README.md
│
├── 📁 sql
│   └── 📜 employee_database.sql
│
└── 📁 documentation
    └── 📄 MySQL_Employee_Database_Documentation.docx
```

### 📜 SQL File

**`employee_database.sql`**

Contains the complete SQL statements used for database creation, table creation, alterations, constraints, renaming, truncation, and dropping.

### 📄 Documentation

**`MySQL_Employee_Database_Documentation.docx`**

Contains the step-by-step explanation of the SQL operations performed in the project.

---

## 💡 Key Learning Outcomes

Through this project, I gained practical understanding of:

* 🗄️ **Database and table creation**
* 🧱 **DDL commands**
* 🔐 **SQL constraints**
* 🔗 **Primary & Foreign Keys**
* 🛠️ **Table modification**
* 🔄 **Database structure management**
* 🧹 **Data removal operations**
* 📊 **Maintaining data integrity**

---

## 🧰 Tools & Technologies

<p align="left">

<img src="https://img.shields.io/badge/MySQL-Database-4479A1?style=flat-square&logo=mysql&logoColor=white" />

<img src="https://img.shields.io/badge/SQL-Querying-orange?style=flat-square" />

<img src="https://img.shields.io/badge/GitHub-Version%20Control-black?style=flat-square&logo=github" />

</p>

---

## 👩‍💻 Author

**Sharnitha**

🎓 Bachelor of Computer Science
📊 Aspiring Data Analyst

---

<p align="center">

⭐ <b>Thank you for visiting this project!</b> ⭐

</p>
