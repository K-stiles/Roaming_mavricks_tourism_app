<%-- Document : login Created on : May 29, 2023, 8:28:44 AM Author : admin --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Tourism App | Login</title>
    <style>
      * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }
      body {
        height: 100vh;
        width: 100vw;
        overflow-x: hidden;
        display: grid;
        place-content: center;
        /* background-color: red; */
      }
      .section {
        max-width: 80%;
        margin: 0 auto;
        padding: 2rem;
        background-color: teal;
      }
    </style>
  </head>
  <body>
    <main>
      <section class="section">
        <!-- form -->
        <form action="" method="">
          <div class="container">
            <h1>Login</h1>
            <p>Kindly provide the following details</p>
            <!-- <hr /> -->

            <label for="email"
              ><b>Email address<span style="color: red">*</span></b></label
            >
            <input
              type="text"
              placeholder="Enter Email"
              name="email"
              id="email"
              required
            />

            <label for="psw"
              ><b>Password<span style="color: red">*</span></b></label
            >
            <input
              type="password"
              placeholder="Enter Password"
              name="psw"
              id="psw"
              required
            />

            <!-- <hr /> -->

            <button type="submit">Login</button>
          </div>
        </form>
      </section>
    </main>
  </body>
</html>
