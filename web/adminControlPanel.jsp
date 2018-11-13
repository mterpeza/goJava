<%--
  Created by IntelliJ IDEA.
  User: iMac
  Date: 11/4/18
  Time: 11:27 PM
--%>
<%@ page import="java.util.List" %>
<%@ page import="Models.Event" %>
<%@ page import="DAO.EventDaoImp" %>
<%@ page import="java.util.ArrayList" %>
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
<main>
    <h2>To add an event just fill in and submit this form </h2>
    <form method="post" id="addEvent" name="addEvent" action="addEvent.go">
        <input title="Event Name:" type="text" id="eventName" name="eventName">
        <input title="Date:" type="text" id="date" name="date" placeholder="mm/dd/yyyy">
        <input title="Start Time:" type="text" id="startTime" name="startTime" placeholder="">
        <input title="End Time:" type="text" id="endTime" name="endTime" placeholder="">
        <textarea title="Description:" name="eventDescription" id="eventDescription"></textarea>
        <button type="submit">Add event</button>
    </form>
    <h2>Click the delete button to remove a scheduled event</h2>
    <%
        EventDaoImp eventDB = new EventDaoImp();
        eventDB.getConnection();
        List<Event> events = eventDB.getAllEvents();

        if(events != null) {
            for(Event e: events) {
                out.print("<dl>" +
                        "<dt>" + e.getEventName() + "</dt>" +
                        "<dd>" + e.getDate() + "</dt>" +
                        "<dd>" + e.getStartTime() + "</dd>" +
                        "<dd>" + e.getEndTime() + "</dd>" +
                        "<dd>" + e.getEventDescription() + "</dd>" +
                        "<dd><form method='post' action='deleteEvent.go'>" +
                            "<button type='submit' name='delete' value='"+e.getEventID()+"'>Delete</button>" +
                        "</form></dd></dl>"

                );
            }
        }
    %>
</main>
</body>
</html>
