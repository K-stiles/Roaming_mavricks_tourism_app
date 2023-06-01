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
            List<Tour> tours = (List<Tour>) request.getAttribute("tours"); 
            List<Tour> userTours = (List<Tour>) request.getAttribute("userTours"); 
            List<UserInfo> user = (List<UserInfo>) request.getAttribute("user"); 
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
                                <a href="#" class="board_tile active">
                                    <i class="uil uil-analytics tile__icon"></i>
                                    <p class="tile__text">Tour Locations</p>
                                </a>
                            </li>
                            <!-- Tile 2-->
                            <li>
                                <a href="user_history" class="board_tile">
                                    <i class="uil uil-map"></i>
                                    <p class="tile__text">History</p>
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
                        <h1 class="dashboard_header__text">Tour Sites</h1>

                        <% if( request.getAttribute("bookingMsg1") != null ){ %>

                        <h5 style="color: green"><%= request.getAttribute("bookingMsg1") %></h5>

                        <% } %>


                        <% if( request.getAttribute("bookingMsg2") != null ){ %>

                        <h5 style="color: red"><%= request.getAttribute("bookingMsg2") %></h5>

                        <% } %>

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
                        <% if (tours != null && !tours.isEmpty()) { %>

                        <%-- Iterate over the list and display the information --%>
                        <% for (Tour tour : tours) { %>

                        <div class="tour__card">
<!--                            <img
                                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                                alt="user profile image"
                                class="tour__img"
                                />-->
                                
<img src="<%= tour.getImgUrl() %>" alt="alt" style="width:  300px;"   />

                            <div class="abs">
                                <!-- site -->
                                <p class="top__site"><%= tour.getTourName() %></p>
                                <!-- location -->
                                <p class="top__location"><%= tour.getLocation() %></p>
                            </div>
                            <div class="tour__img_overlay">
                                <div class="tour__img_overlay_top">
                                    <p class="top__site"><%= tour.getTourName() %></p>
                                    <span style="display: flex; align-items: center; gap: 8px">
                                        <i class="uil uil-estate"></i>
                                        <p class="top__location"><%= tour.getLocation() %></p>
                                    </span>
                                </div>
                                <div class="tour__img_overlay_bot">
                                    <p class="bot__money">$<%= tour.getPrice() %></p>

                                    <%-- Check if the element exists in the array --%>
                                    <% boolean exists = false;
                                        for (Tour userTour : userTours) {
                                            if (userTour.getTourId() == tour.getTourId()) {
                                              exists = true;
                                                break;
                                            }
                                        }
                                     if(exists == true){ %>
                                     
                                    
                                     <p class="board_tile active"><span class="gg-check" style="display: inline;"></span> Booked</p>
                                    
                                    <% }else{ %>

                                    <form action="bookings" method="post">
                                        <button class="bot__btn">Book Now</button>
                                        <input type="hidden" name="tour_id" value="<%= tour.getTourId() %>" />
                                    </form>

                                    <% } %>

                                    <!--<a href="bookings?tour_id=<--% = tour.getTourId() %>" class="bot__btn" style="color: black">Book Now</a>-->
                                </div>
                            </div>
                        </div> 
                        <% } %>

                        <% } else { %>
                        <p>No user information found.</p>
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
    </body>
</html>
