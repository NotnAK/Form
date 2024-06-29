<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <title>Stats</title>
</head>
<body>
<h1>Response statistics</h1>
<p>Number of responses to the first question: (Male or female?)</p>
<ul>
    <%
        Map<String, Integer> question1Stats = (Map<String, Integer>) session.getAttribute("question1Stats");
        Map<String, Integer> question2Stats = (Map<String, Integer>) session.getAttribute("question2Stats");
        Map<String, Integer> question3Stats = (Map<String, Integer>) session.getAttribute("question3Stats");
    %>
    <li>Yes: <%= question1Stats.get("option1") %></li>
    <li>No: <%= question1Stats.get("option2") %></li>

</ul>
<p>Number of responses to the second question: (Do you like football)?</p>
<ul>
    <li>Yes: <%= question2Stats.get("option1") %></li>
    <li>No: <%= question2Stats.get("option2") %></li>
</ul>
<p>Number of responses to the second question: (Do you like basketball)?</p>
<ul>
    <li>Yes: <%= question3Stats.get("option1") %></li>
    <li>No: <%= question3Stats.get("option2") %></li>
</ul>
<a href="index.jsp">Fill out the form again</a>
</body>
</html>
