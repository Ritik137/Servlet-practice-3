# Servlet-project-3 🧮

A Java web application based on **MVC Architecture** using **Servlet, JSP, JDBC and MySQL**.
This project implements a **Calculator** with database persistence.

---

## 🔧 Technologies Used
- Java 17
- Jakarta Servlet (Tomcat 10.1)
- JSP
- JDBC
- MySQL
- Maven
- Eclipse IDE

---

## 🧱 Project Architecture (MVC)

### 🔹 Model
- `Calculation.java`  
  Holds calculator data (num1, num2, operation, result)

- `CalculationDAO.java`  
  Handles JDBC logic to save calculation data into MySQL database

### 🔹 View
- `home.html`  
  Calculator UI with animated design

- `result.jsp`  
  Displays calculation result using Expression Language (EL)

### 🔹 Controller
- `CalcController.java`  
  Handles user input, performs calculation using methods, saves data to DB and forwards result to JSP

---

## ✨ Features Implemented
- Addition, Subtraction, Multiplication, Division
- MVC separation (Controller, Model, View)
- JDBC integration with MySQL
- Data stored in database table `calculation`
- Animated and responsive UI
- Uses methods for calculator operations
- Error-safe division operation

---

## 🗄️ Database Details
**Database Name:** `calculator_db`  
**Table:** `calculation`

```sql
CREATE TABLE calculation (
  id INT AUTO_INCREMENT PRIMARY KEY,
  num1 INT,
  num2 INT,
  operation VARCHAR(10),
  result INT
);
