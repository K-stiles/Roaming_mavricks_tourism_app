<%-- Document : user_dashboard Created on : May 29, 2023, 8:30:15 AM Author :
admin --%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.List"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link
            rel="stylesheet"
            href="https://unicons.iconscout.com/release/v4.0.8/css/line.css"
            />
        <link
            rel="stylesheet"
            href="http://localhost:8080/Roaming_mavricks_tourism_app/styles/styles.css"
            />
        <link
            rel="stylesheet"
            href="http://localhost:8080/Roaming_mavricks_tourism_app/styles/userDashboard.css"
            />
        <link href='https://unpkg.com/css.gg@2.0.0/icons/css/check.css' rel='stylesheet'>
        <title>Tourism App | User</title>
    </head>
    <body>
        <%-- Check if the session exists --%>
        <% if (session != null && session.getAttribute("customerId") != null) { %>
        <%-- Retrieve the userInfos list from the request object --%>
        <%
            List<UserInfo> user = (List<UserInfo>) request.getAttribute("user");
            List<Booking> userTours = (List<Booking>) request.getAttribute("userTours");
        %>
        <!-- A -->
        <main class="dashboard_body">
            <aside class="aside">
                <div class="aside__flex">
                    <div>
                        <div class="user__profile">
                            <img
                                src="https://plus.unsplash.com/premium_photo-1677002756692-faeffee45d7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
                                alt="user profile image"
                                class="profile"
                                />
                            <!-- <img
                              src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/userprofile.png"
                              alt="user profile image"
                              class="profile"
                            /> -->
                            <div class="user__profile__info">
                                <%-- Check if userInfos list exists and is not empty --%>
                                <% if (user != null && !user.isEmpty()) { %>
                                <%-- Accessing element at index 0 --%>
                                <% UserInfo userInfo = user.get(0); %>
                                <h1 class="username"><%= userInfo.getName() %></h1>
                                <span> <%= userInfo.getEmail() %></span>
                                <% } else { %>
                                <p>No user information found.</p>
                                <% } %>
                            </div>
                        </div>

                        <ul class="board">
                            <p class="board_title">Dashboard</p>
                            <!-- Tile 1-->
                            <li>
                                <a href="login" class="board_tile">
                                    <i class="uil uil-analytics tile__icon"></i>
                                    <p class="tile__text">Tour Locations</p>
                                </a>
                            </li>
                            <!-- Tile 2-->
                            <li>
                                <a href="#" class="board_tile active">
                                    <i class="uil uil-presentation-line"></i>
                                    <p class="tile__text">History</p>
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/" class="board_tile">
                                    <i class="uil uil-estate"></i>
                                    <p class="tile__text">Back to Home</p>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="logout">
                        <!-- Tile 3-->
                        <a href="logout" >
                            <div class="board_tile">
                                <i class="uil uil-signout"></i>
                                <p class="tile__text">Logout</p>
                            </div>
                        </a>
                    </div>
                </div>
            </aside>

            <!-- D -->
            <section class="dashboard">
                <!-- dashboard__header -->
                <header class="dashboard__header">
                    <nav class="dashboard__navbar">
                        <h1 class="dashboard_header__text">Tour History</h1>

                        <div class="nav__left">
                            <i class="uil uil-bell"></i>
                            <i class="uil uil-search"></i>
                            <!-- <img
                              src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/userprofile.png"
                              alt="user profile image"
                              class="profile"
                            /> -->
                            <img
                                src="https://plus.unsplash.com/premium_photo-1677002756692-faeffee45d7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
                                alt="user profile image"
                                class="profile"
                                />
                        </div>
                    </nav>
                </header>

                <div class="dashboard__content">
                    <div class="tour__cards">
                        <!-- main card -->

                        <%-- Check if tours list exists and is not empty --%>
                        <% if (userTours != null && !userTours.isEmpty()) { %>

                        <table id="table">
                            <tr class="table__header">
                                <!--                                <th class="table__header_box">
                                                                    <label class="box__container">
                                                                        <input type="checkbox" />
                                                                        <span class="checkmark"></span>
                                                                    </label>
                                                                </th>-->
                                <th class="table__header_row">Tour Name</th>
                                <th class="table__header_row">location name</th>
                                <th class="table__header_row">Price</th>
                                <th class="table__header_row">booking Date</th>
                            </tr>

                        <%-- Iterate over the list and display the information --%>
                        <% for (Booking tour : userTours) {
                            // Create a SimpleDateFormat object for parsing
                            java.text.SimpleDateFormat inputDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

                            // Parse the input date string
                            java.util.Date inputDate = inputDateFormat.parse(tour.getDateTime());

                            // Create a SimpleDateFormat object for formatting the month
                            java.text.SimpleDateFormat monthFormat = new java.text.SimpleDateFormat("MMMM");

                            // Create a SimpleDateFormat object for formatting the day
                            java.text.SimpleDateFormat dayFormat = new java.text.SimpleDateFormat("d");

                            // Get the month and day as strings
                            String monthStr = monthFormat.format(inputDate);
                            String dayStr = dayFormat.format(inputDate);

                            // Add the appropriate suffix to the day
                            String dayWithSuffix = addDaySuffix(dayStr);

                            // Create a SimpleDateFormat object for formatting the year
                            java.text.SimpleDateFormat yearFormat = new java.text.SimpleDateFormat("yyyy");

                            // Get the year as a string
                            String yearStr = yearFormat.format(inputDate);

                            // Concatenate the formatted date components
                            String outputDateStr = monthStr + " " + dayWithSuffix + " " + yearStr;
                        %>

                            <!-- content -->
                            <!-- REMOVE && LOOP TABLE CONTENT HERE -->
                            <tr class="table__content">

                                <td><%= tour.getTourName() %></td>
                                <td><%= tour.getLocation() %></td>
                                <td>GHC <%= tour.getPrice() %></td>
                                <td><%= outputDateStr %></td>
                                <!--<td>July 1st 2023</td>-->
                            </tr>

                            <!-- content End -->

                        <% } %>
                        </table>

                        <% } else { %>
                        <p>No information found.</p>
                        <% } %>

                        <!-- --------------- EXTRAS END NB: Remove --------------- -->
                        <!-- --------------- EXTRAS END NB: Remove --------------- -->
                    </div>
                </div>
            </section>
        </main>

        <% } else { %>
        <p>Page not found.</p>
        <% } %>
        

    <%!
        public String addDaySuffix(String dayStr) {
            int day = Integer.parseInt(dayStr);
            String suffix;

            if (day >= 11 && day <= 13) {
                suffix = "th";
            } else {
                switch (day % 10) {
                    case 1:
                        suffix = "st";
                        break;
                    case 2:
                        suffix = "nd";
                        break;
                    case 3:
                        suffix = "rd";
                        break;
                    default:
                        suffix = "th";
                        break;
                }
            }

            return dayStr + suffix;
        }
    %>
</body>
</html>


<%--<%!
    public String formatDateWithSuffix(java.util.Date date, java.text.SimpleDateFormat format) {
        // Format the date without the suffix
        String formattedDate = format.format(date);

        // Get the day value from the formatted date
        String day = formattedDate.substring(formattedDate.indexOf(" ") + 1);

        // Check the last character of the day value to determine the suffix
        char lastChar = day.charAt(day.length() - 1);
        String suffix;
        switch (lastChar) {
            case '1':
                suffix = "st";
                break;
            case '2':
                suffix = "nd";
                break;
            case '3':
                suffix = "rd";
                break;
            default:
                suffix = "th";
                break;
        }

        // Replace the last space with the suffix
        return formattedDate.substring(0, formattedDate.lastIndexOf(" ")) + " " + day + suffix;
    }
%>--%>

