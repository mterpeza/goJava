<%--
  Created by IntelliJ IDEA.
  User: iMac
  Date: 11/4/18
  Time: 11:27 PM
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
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
  <header>
      <nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse fixed-top">
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
  <body class="text-center">
      <form class="form-signin" method="post" id="logIn" name="logIn" action="logIn.go">
          <img class="mb-4" src="img/login.png" alt="" width="72" height="72">

          <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

          <label for="username" class="sr-only">Email address</label>
          <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>

          <label for="password" class="sr-only">Password</label>
          <input type="text" id="password" name="password" class="form-control" placeholder="Password" required>


          <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
          <p class="mt-5 mb-3 text-muted">&copy; 2018</p>
      </form>
  </body>
</html>
