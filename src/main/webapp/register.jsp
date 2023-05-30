<%-- Document : register Created on : May 29, 2023, 8:29:05 AM Author : admin
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link
      rel="stylesheet"
      href="http://localhost:8080/Roaming_mavricks_tourism_app/styles/styles.css"
    />

    <title>Tourism App | Register</title>
  </head>
  <body>
    <main>
      <section class="auth__section">
        <!-- form -->
        <form action="" method="">
          <div class="container">
            <h1 class="header__text">Register</h1>
            <p class="p__text">
              For the purpose of industry regulation, your details are required.
            </p>

            <div class="input__filed email">
              <label for="email">
                Your fullname<span style="color: red">*</span>
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
                name="psw"
                id="psw"
                required
              />
            </div>

            <p>I agree to terms & conditions</p>
            <button type="submit" class="btn">Register Account</button>
          </div>
        </form>
      </section>
    </main>
  </body>
</html>
