<%-- Document : login Created on : May 29, 2023, 8:28:44 AM Author : admin --%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link
      rel="stylesheet"
      href="http://localhost:8080/Roaming_mavricks_tourism_app/styles/styles.css"
    />
    <title>Tourism App | Login</title>
  </head>

  <body>
      
       <%-- Check if the session exists and the desired attribute is set --%>
    <% if (session != null && (session.getAttribute("customerId") != null 
    || session.getAttribute("tourID") != null )) { %>
        <%-- Session is set, redirect to another JSP --%>
        <% response.sendRedirect("login"); %>
    <% } else { %>
        <%-- Session is not set, display a message or perform other actions --%>
        <main>
      <section class="auth__section">
          
        <% if( request.getAttribute("LogMsg") != null ){ %>

        <h5 style="color: red"><%= request.getAttribute("LogMsg") %></h5>

        <% } %>
        
        <% if( request.getAttribute("LogMsg2") != null ){ %>

        <h5 style="color: cornflowerblue"><%= request.getAttribute("LogMsg2") %></h5>

        <% } %>

        <!-- form -->
        <form action="login" method="post">
          <div class="container">
            <h1 class="header__text">Admin Login</h1>
            <p class="p__text">Kindly provide the following details</p>

            <div class="input__filed email">
              <label for="email">
                Email address<span style="color: red">*</span>
              </label>
              <input
                type="text"
                placeholder="Enter Email"
                name="email"
                id="email"
                required
              />
            </div>

            <div class="input__filed">
              <label for="psw">
                Password<span style="color: red">*</span>
              </label>
              <input
                type="password"
                placeholder="Enter Password"
                name="password"
                id="psw"
                required
              />
            </div>

            <input type="hidden" name="role" value="tour_guide" />

            <input type="hidden" name="action" value="login" />

            <button type="submit" class="btn">Login</button>
          </div>
        </form>
      </section>
    </main>
        
    <% } %>       
        
  </body>
</html>



