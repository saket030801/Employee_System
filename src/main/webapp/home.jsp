<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><%= application.getAttribute("applicationName") %></title>
<link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <nav>
      <a href="#">
        <img src="ibm_logo.png" alt="IBM Logo">
        <h1>IBM HR Management</h1>
      </a>
      <ul>
        <li><a href="#">My Profile</a></li>
        <li><a href="#">Logout</a></li>
      </ul>
    </nav>
  </header>
  <main>
    <section class="welcome">
      <h2>Welcome, HR Manager!</h2>
      <p>This application helps you manage your HR needs efficiently.</p>
    </section>
    <section class="features">
      <h2>Actions</h2>
      <ul>
        <li><a href="addEmployee.jsp">Add Employees</a></li>
        <li><a href="viewEditEmployee.jsp">View/Edit Employees</a></li>
      </ul>
    </section>
  </main>
</body>
</html>