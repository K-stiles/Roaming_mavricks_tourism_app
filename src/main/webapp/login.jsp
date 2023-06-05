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
    <style>
      .navigation__links ul li a {
        display: inline-block;
        padding: 0.5rem 1.2rem;
        cursor: pointer;
        text-transform: capitalize;
        position: relative;
        color: var(--dark);
      }
      .login_btn {
        padding: 1rem 2rem;
        border-radius: 4px;
        color: var(--primary);
        background-color: var(--primary-light);
        border: 2px solid var(--primary);
        transition: color 0.3s ease, background-color 0.3s ease;
      }
      .login_btn:hover {
        background-color: var(--primary);
        color: var(--slate);
      }
    </style>
    <title>Tourism App | Login</title>
  </head>
  <body>
    <nav class="auth_nav">
      <a class="auth__home" href="${pageContext.request.contextPath}/">Home</a>
    </nav>

    <%-- Check if the session exists and the desired attribute is set --%> <% if
    (session != null && (session.getAttribute("customerId") != null ||
    session.getAttribute("tourID") != null )) { %> <%-- Session is set, redirect
    to another JSP --%> <% response.sendRedirect("login"); %> <% } else { %>
    <%-- Session is not set, display a message or perform other actions --%>
    <main>
      <section class="auth__section">
        <% if( request.getAttribute("LogMsg") != null ){ %>

        <h5 style="color: red"><%= request.getAttribute("LogMsg") %></h5>

        <% } %> <% if( request.getAttribute("LogMsg2") != null ){ %>

        <h5 style="color: cornflowerblue">
          <%= request.getAttribute("LogMsg2") %>
        </h5>

        <% } %>

        <!-- form -->
        <form action="login" method="post">
          <div class="container">
            <h1 class="header__text">Login</h1>
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
                class="text_input"
              />
            </div>

            <input type="hidden" name="role" value="" />

            <input type="hidden" name="action" value="login" />

            <button type="submit" class="btn">Login</button>
          </div>

          <div class="account">
            <p>Don't have an account? <a href="register">Register</a>.</p>
          </div>
        </form>
      </section>
    </main>

    <% } %>
  </body>
</html>
