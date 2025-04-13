# Coca_Cola
DBMS Mini-project

# Coca-Cola Employee Management System 🚀

This is a mini-project developed for academic purposes, showcasing the implementation of a relational database management system for a company-based use case. The system simulates employee management operations at Coca-Cola, including storing personal information, contact details, performance tracking, and order status.

---

## 🛠️ Technologies Used

- **Database**: MySQL
- **Language**: SQL
- **Tools**: MySQL Workbench

---

## 🧱 Database Structure

### 1. `Employee_info`
Stores the core information of each employee.

| Column         | Data Type      | Constraints                        |
|----------------|----------------|------------------------------------|
| E_ID           | INT            | PRIMARY KEY                        |
| E_Name         | VARCHAR(20)    | NOT NULL                           |
| E_Department   | CHAR(10)       |                                    |
| Age            | INT            | CHECK(Age > 21)                    |
| Aadhar_Card    | VARCHAR(15)    | UNIQUE, NOT NULL                   |
| PAN_Number     | VARCHAR(15)    |                                    |
| E_Salary       | DECIMAL(10,2)  |                                    |

---

### 2. `Employee_add`
Stores additional contact information.

| Column         | Data Type      | Constraints                        |
|----------------|----------------|------------------------------------|
| E_ID           | INT            | FOREIGN KEY → Employee_info(E_ID) |
| E_Address      | VARCHAR(20)    |                                    |
| Phone_Number   | VARCHAR(15)    |                                    |
| Other_Number   | VARCHAR(15)    |                                    |
| Email          | VARCHAR(30)    |                                    |

---

### 3. `performance`
Tracks the targets and performance of employees.

| Column          | Data Type     | Constraints                        |
|-----------------|---------------|------------------------------------|
| E_ID            | INT           | FOREIGN KEY → Employee_info(E_ID) |
| Performance     | CHAR(2)       |                                    |
| next_target     | INT           |                                    |
| previous_target | INT           |                                    |
| achived         | INT           |                                    |

---

### 4. `last_status`
Records the last activity status of employees.

| Column           | Data Type     | Constraints                         |
|------------------|---------------|-------------------------------------|
| E_ID             | INT           | FOREIGN KEY → Employee_info(E_ID)  |
| activity_status  | CHAR(3)       |                                     |
| O_ID             | INT           | UNIQUE                              |
| Items            | VARCHAR(10)   |                                     |
| Payment_methord  | VARCHAR(10)   |                                     |
| Amount           | INT           |                                     |

---

## 📥 Sample Queries Included

- **Data Insertion**
- **Update & Alter Commands**
- **Aggregate Functions**:
  - COUNT
  - AVG
  - MAX
- **Conditional Filtering**
- **LIKE, BETWEEN, IN, NOT IN**
- **JOINS**: `INNER`, `LEFT`, `RIGHT`, `NATURAL`
- **UNION**
- **Table Management**: `DROP`, `TRUNCATE`, `DESC`

---

## 📊 Output Examples

Includes outputs of:
- Joined tables (Employee Info with Address, Performance)
- Average salary calculation
- Department-wise grouping
- Employees over age 40, specific departments, and more

---

## 🧾 Project Highlights

- Normalized schema with primary and foreign keys
- Realistic data structure for a business use case
- Data integrity maintained using constraints
- Comprehensive set of queries for analytics

---

## 📌 How to Run

1. Open MySQL Workbench or preferred SQL client
2. Copy the code and execute it

🙋‍♂️ Author
Utsav Raj
BCA 4th Semester
UID: 23BCA10816
Section: 4A
