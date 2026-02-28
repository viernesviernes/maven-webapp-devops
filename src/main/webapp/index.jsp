<%@ page import="java.util.Calendar" %>
<html>
<body>
<%
    Calendar calendar = Calendar.getInstance();
    int hour = calendar.get(Calendar.HOUR_OF_DAY);
    String greeting = (hour < 12) ? "Good morning" : "Good afternoon";
%>
<h2><%= greeting %>, [Your Name], Welcome to COMP367</h2>
</body>
</html>
