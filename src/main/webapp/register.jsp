<%-- Document : register Created on : May 29, 2023, 8:29:05 AM Author : admin
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
        font-family: sans-serif;
      }

      .auth__section {
        padding: 1rem;
        width: 80%;
        margin: 10% auto;
      }

      .container {
        padding: 2rem;
        width: 40%;
        margin: auto;
        border-radius: 8px;
      }
      .header__text {
        font-size: 3rem;
        color: #222;
      }
      .p__text {
        font-size: 1rem;
        color: #222;
        margin: 0.5rem 0;
      }
      .input__filed label {
        font-size: 1rem;
        color: #222;
      }
      .email {
        margin-top: 2rem;
      }
      input[type="text"],
      input[type="password"] {
        width: 100%;
        border-radius: 4px;
        padding: 0.9rem;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: 1px solid #610c63;
        outline: none;
        background: #fff;
      }
      .btn {
        color: white;
        border-radius: 4px;
        font-size: 1.1rem;
        font-weight: 700;
        padding: 16px 20px;
        margin: 8px 0;
        border: none;
        outline: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
        background-color: #610c63;
      }

      .btn:hover {
        opacity: 1;
      }

      input[type="text"]:focus,
      input[type="password"]:focus {
        background-color: #ecdeec;
        outline: none;
      }
    </style>
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
