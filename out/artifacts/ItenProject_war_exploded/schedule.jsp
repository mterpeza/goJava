<%--
  Created by IntelliJ IDEA.
  User: iMac
  Date: 11/4/18
  Time: 11:27 PM
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="img/favicon.png">

    <title>+ W E L C O M E +</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
</head>
<body>
<header>
    <nav>
        <ul>
            <c:set var="isAdmin" scope="page" value='${sessionScope["user"].isAdmin()}' />
            <c:if test="${isAdmin}">
                <li><a href="adminControlPanel.jsp">Admin control panel</a></li>
            </c:if>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="schedule.jsp">Schedule</a></li>
        </ul>
    </nav>
</header>
</body>
</html>
