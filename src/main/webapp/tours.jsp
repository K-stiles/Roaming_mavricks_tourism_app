<%-- 
    Document   : bookingList
    Created on : 29 May 2023, 9:16:14 am
    Author     : abdulmac
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.List"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tour List</title>
</head>
<body>
    <h1>Tour List</h1>
    
    <%-- Get the session object --%>
    <%-- HttpSession session = request.getSession(); %>

    <%-- Check if the session exists --%>
    <% if (session != null && session.getAttribute("customerId") != null) { %>
        <%-- Retrieve the userInfos list from the request object --%>
        <% List<Tour> tours = (List<Tour>) request.getAttribute("tours"); %>
        
        <%-- Check if tours list exists and is not empty --%>
        <% if (tours != null && !tours.isEmpty()) { %>
            <table>
                <tr>
                    <th>Tour ID</th>
                    <th>Name</th>
                    <th>Location</th>
                    <th>Price</th>
                </tr>
                <%-- Iterate over the userInfos list and display the user information --%>
                <% for (Tour tour : tours) { %>
                    <tr>
                        <td><%= tour.getTourId() %></td>
                        <td><%= tour.getTourName() %></td>
                        <td><%= tour.getLocation() %></td>
                        <td><%= tour.getPrice() %></td>
                    </tr>
                <% } %>
            </table>
        <% } else { %>
            <p>No user information found.</p>
        <% } %>
    <% } else { %>
        <p>Page not found.</p>
    <% } %>
</body>
</html>



