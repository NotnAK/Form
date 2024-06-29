<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Form</title>
</head>
<body>
<h1><%= "FORM" %>
</h1>
<br/>
<form action="/form" method="POST">
    First Name: <input type="text" name="firstName" required><br>
    Last Name: <input type="text" name="lastName" required><br>
    Age: <input type="number" name="age" required><br>


    Are you male of female?
    <input type="radio" id="qa1" name="question1" value="option1" required>
    <label for="qa1">Male</label>
    <input type="radio" id="qa2" name="question1" value="option2" required>
    <label for="qa2">Female</label>
    <br>


    Do you like football?:
    <input type="radio" id="q1a1" name="question2" value="option1" required>
    <label for="q1a1">Yes</label>
    <input type="radio" id="q1a2" name="question2" value="option2">
    <label for="q1a2">No</label>
    <br>

    Do you like basketball?:
    <input type="radio" id="q2a1" name="question3" value="option1" required>
    <label for="q2a1">Yes</label>
    <input type="radio" id="q2a2" name="question3" value="option2">
    <label for="q2a2">No</label>
    <br>
    <button type="submit">Submit</button>
</form>
</body>
</html>