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
    <title>Booking List</title>
</head>
<body>
    <h1>Booking List</h1>
    
    <%-- Get the session object --%>
    <%-- HttpSession session = request.getSession(); %>

    <%-- Check if the session exists --%>
    <% if (session != null && session.getAttribute("tourID") != null) { %>
        <%-- Retrieve the userInfos list from the request object --%>
        <% List<Booking> bookings = (List<Booking>) request.getAttribute("bookings"); %>
        
        <%-- Check if Bookings list exists and is not empty --%>
        <% if (bookings != null && !bookings.isEmpty()) { %>
            <table>
                <tr>
                    <th>Customer Name</th>
                    <th>Tour Name</th>
                    <th>Location</th>
                    <th>Price</th>                    
                    <th>Date</th>
                </tr>
                <%-- Iterate over the userInfos list and display the user information --%>
                <% for (Booking booking : bookings) { %>
                    <tr>
                        <td><%= booking.getCustomerName() %></td>
                        <td><%= booking.getTourName() %></td>
                        <td><%= booking.getLocation() %></td>
                        <td><%= booking.getPrice() %></td>                     
                        <td><%= booking.getDateTime() %></td>
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



