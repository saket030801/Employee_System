<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
<link rel="stylesheet" href="style_employee.css">
</head>
<body>
  <%-- @include file="header.jsp" --%>

  <h1>Add Employee</h1>
  <% String errorMessage = (String) request.getAttribute("errorMessage");
     String missingFields = (String) request.getAttribute("missingFields");
     String invalidValues = (String) request.getAttribute("invalidValues"); %>

  <% if (errorMessage != null) { %>
    <p style="color: red;">Error: <%= errorMessage %></p>
  <% } else if (missingFields != null) { %>
    <p style="color: red;">Missing required fields: <%= missingFields %></p>
  <% } else if (invalidValues != null) { %>
    <p style="color: red;">Invalid field values: <%= invalidValues %></p>
  <% } %>

  <form action="addEmployeeServlet" method="post">
    <fieldset>
      <legend>Employee Information</legend>
      <label for="firstName">First Name (Required):</label>
      <input type="text" id="firstName" name="firstName" required>
      <br>
      <label for="middleName">Middle Name:</label>
      <input type="text" id="middleName" name="middleName">
      <br>
      <label for="lastName">Last Name (Required):</label>
      <input type="text" id="lastName" name="lastName" required>
      <br>
      <label for="birthDate">Birth Date (YYYY-MM-DD) (Required):</label>
      <input type="date" id="birthDate" name="birthDate" required>
      <br>
      <label for="position">Position:</label>
      <input type="text" id="position" name="position">
      <br>
      <input type="submit" value="Add Employee">
    </fieldset>
  </form>
</body>
</html>