<%-- Document : tourguide_bboard Created on : May 29, 2023, 8:30:02 AM Author :
admin --%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style>
      :root {
        --aside: #fff;
        --board: #f5f5f5;
        --primary: #610c63;
        --slate: #f1f1f1;
        --dark: #222;
      }
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

      /* dashboard */
      .dashboard_body {
        width: 100%;
        height: 100%;
        display: grid;
        grid-template-columns: 1fr 5fr;
      }

      .aside {
        display: flex;
        flex-direction: column;
        width: 100%;
        padding: 0 0 0 0.5px;
        /* background-color: teal; */
        background-color: var(--aside);
      }
      .dashb {
        width: 100%;
        padding: 1rem;
        background-color: var(--board);
      }
      .user__profile {
        width: 85%;
        margin: 1rem auto 0 auto;
        display: flex;
        align-items: center;
        gap: 4px;
        padding: 0.5rem;
        border-radius: 4px;
        background-color: var(--slate);
      }
      .profile {
        width: 40px;
        height: 40px;
        object-fit: cover;
      }
      .username {
        font-size: 1rem;
        font-weight: 600;
        text-transform: capitalize;
      }
      li,
      a {
        display: block;
        list-style: none;
        text-decoration: none;
        color: inherit;
      }
      .board {
        margin-top: 2.5rem;
      }
      .board_title {
        font-size: 1.2rem;
        margin-left: 1rem;
        font-weight: 600;
      }
      .board_tile {
        display: flex;
        gap: 8px;
        padding: 1rem;
        margin: 1rem 0;
        cursor: pointer;
        color: var(--slate);
        position: relative;
        border-left: 4px solid var(--aside);
        background-color: var(--primary);
      }
      .board_tile.active {
        color: var(--dark);
        border-left: 4px solid var(--primary);
        background-color: var(--slate);
      }
      .tile__text {
        text-transform: capitalize;
        font-size: 1rem;
        font-weight: bold;
      }
      .tile__divider {
        width: 95%;
        height: 1px;
        background-color: #bbb;
        position: absolute;
        bottom: 0;
        left: 0;
      }
      .logout {
        margin-top: auto;
      }
    </style>
    <title>Tourism App | Dashboard</title>
  </head>
  <body>
    <!-- A -->
    <main class="dashboard_body">
      <aside class="aside">
        <div>
          <div class="user__profile">
            <!-- image -->
            <!-- <img
              src="${pageContext.request.contextPath}/assets/userprofile.png"
              alt="user profile image"
              class="profile"
            /> -->
            <div>
              <h1 class="username">jennifer doe</h1>
              <p>examplejones@gmail.com</p>
            </div>
          </div>

          <ul class="board">
            <p class="board_title">Task Dashboard</p>
            <!-- Tile 1-->
            <li>
              <a href="#" class="board_tile active">
                <p>icon</p>
                <p class="tile__text">bookings</p>
              </a>
            </li>
            <!-- Tile 2-->
            <li>
              <a href="#" class="board_tile">
                <p>icon</p>
                <p class="tile__text">tour</p>
              </a>
            </li>
          </ul>
        </div>

        <div class="logout">
          <!-- Tile 3-->
          <div class="board_tile">
            <p>icon</p>
            <p class="tile__text">Logout</p>
          </div>
        </div>
      </aside>
      <!-- D -->
      <section class="dashb">
        <!-- nav -->
        <nav>
          <h1 class="header__text">Booking</h1>
        </nav>
      </section>
    </main>
  </body>
</html>

<!-- 6 slides
10mins-15mins -->