<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random,java.text.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java In HTML</title>
</head>
<body>

    <h1>Пример как не надо делать</h1>

    <%
        Random random = new Random();

        // Returns a random number (0, 1 or 2)
        int randomInt = random.nextInt(3);


        if (randomInt == 0) {
    %>

    <h2>Random value =<%=randomInt%></h2>

    <%
        } else if (randomInt == 1) {
    %>

    <h2>Random value =<%=randomInt%></h2>

    <%
        } else {
    %>
     <h2>Random value =<%=randomInt%></h2>
    <%
        }
    %>

    <a href="<%= request.getRequestURI() %>">Try Again</a>

</body>
</html>