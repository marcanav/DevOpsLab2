<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to COMP367</title>
</head>
<body>
<%
    java.util.Calendar calendar = java.util.Calendar.getInstance();
    int hour = calendar.get(java.util.Calendar.HOUR_OF_DAY);
    String greeting;
    if (hour < 12) {
        greeting = "Good morning";
    } else if (hour < 18) {
        greeting = "Good afternoon";
    } else {
        greeting = "Good evening";
    }
    String name = "Maria Navarrete"; //write your name here (Maria Navarrete)
%>
<h1><%= greeting %>, <%= name %>, Welcome to COMP367</h1>
</body>
</html>
