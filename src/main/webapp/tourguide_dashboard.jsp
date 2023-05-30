<%-- Document : tourguide_bboard Created on : May 29, 2023, 8:30:02 AM Author :
admin --%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <title>Tourism App | Dashboard</title>
  </head>
  <body>
    <!-- A -->
    <main class="dashboard_body">
      <aside class="aside">
        <div class="aside__flex">
          <div>
            <div class="user__profile">
              <!-- <img
              src="https://plus.unsplash.com/premium_photo-1677002756692-faeffee45d7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
              alt="user profile image"
              class="profile"
            /> -->
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/userprofile.png"
                alt="user profile image"
                class="profile"
              />
              <div class="user__profile__info">
                <h1 class="username">jennifer doe</h1>
                <span> examplejones@gmail.com </span>
              </div>
            </div>

            <ul class="board">
              <p class="board_title">Task Dashboard</p>
              <!-- Tile 1-->
              <li>
                <a href="#" class="board_tile active">
                  <i class="uil uil-analytics tile__icon"></i>
                  <p class="tile__text">bookings</p>
                </a>
              </li>
              <!-- Tile 2-->
              <li>
                <a href="#" class="board_tile">
                  <i class="uil uil-map"></i>
                  <p class="tile__text">tour</p>
                </a>
              </li>
            </ul>
          </div>

          <div class="logout">
            <!-- Tile 3-->
            <div class="board_tile">
              <i class="uil uil-signout"></i>
              <p class="tile__text">Logout</p>
            </div>
          </div>
        </div>
      </aside>

      <!-- D -->
      <section class="dashboard">
        <!-- dashboard__header -->
        <header class="dashboard__header">
          <nav class="dashboard__navbar">
            <h1 class="dashboard_header__text">Booking</h1>
            <div class="nav__left">
              <i class="uil uil-bell"></i>
              <i class="uil uil-search"></i>
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/userprofile.png"
                alt="user profile image"
                class="profile"
              />
            </div>
          </nav>
        </header>

        <div class="dashboard__content">
          <div class="filter__section">
            <button class="filter__btn">Filter</button>
          </div>
          <table id="table">
            <tr class="table__header">
              <th class="table__header_box">
                <!-- <input
                  type="checkbox"
                  id="check_box"
                  onclick="Function()"
                  class="checkbox"
                  checked="checked"
                /> -->
                <label class="box__container">
                  <input type="checkbox" />
                  <span class="checkmark"></span>
                </label>
              </th>
              <th class="table__header_row">Customer Name</th>
              <th class="table__header_row">Customer Address</th>
              <th class="table__header_row">Email</th>
              <th class="table__header_row">Tour Name</th>
              <th class="table__header_row">location name</th>
              <th class="table__header_row">Price</th>
              <th class="table__header_row">booking Date</th>
            </tr>

            <!-- content -->
            <!-- REMOVE && LOOP TABLE CONTENT HERE -->
            <tr class="table__content">
              <td class="table__box">
                <label class="box__container">
                  <input type="checkbox" checked="checked" />
                  <span class="checkmark"></span>
                </label>
              </td>
              <td>Jennifer Doe</td>
              <td>McCarthy Hill</td>
              <td>jennifer@gmail.com</td>
              <td>tour name</td>
              <td>central region</td>
              <td>GHC 290</td>
              <td>July 1st 2023</td>
            </tr>

            <tr class="table__content">
              <td class="table__box">
                <label class="box__container">
                  <input type="checkbox" />
                  <span class="checkmark"></span>
                </label>
              </td>
              <td>Jennifer Doe</td>
              <td>McCarthy Hill</td>
              <td>jennifer@gmail.com</td>
              <td>tour name</td>
              <td>central region</td>
              <td>GHC 290</td>
              <td>July 1st 2023</td>
            </tr>
            <tr class="table__content">
              <td class="table__box">
                <label class="box__container">
                  <input type="checkbox" />
                  <span class="checkmark"></span>
                </label>
              </td>
              <td>Jennifer Doe</td>
              <td>McCarthy Hill</td>
              <td>jennifer@gmail.com</td>
              <td>tour name</td>
              <td>central region</td>
              <td>GHC 290</td>
              <td>July 1st 2023</td>
            </tr>

            <tr class="table__content">
              <td class="table__box">
                <label class="box__container">
                  <input type="checkbox" />
                  <span class="checkmark"></span>
                </label>
              </td>
              <td>Jennifer Doe</td>
              <td>McCarthy Hill</td>
              <td>jennifer@gmail.com</td>
              <td>tour name</td>
              <td>central region</td>
              <td>GHC 290</td>
              <td>July 1st 2023</td>
            </tr>
            <tr class="table__content">
              <td class="table__box">
                <label class="box__container">
                  <input type="checkbox" />
                  <span class="checkmark"></span>
                </label>
              </td>
              <td>Jennifer Doe</td>
              <td>McCarthy Hill</td>
              <td>jennifer@gmail.com</td>
              <td>tour name</td>
              <td>central region</td>
              <td>GHC 290</td>
              <td>July 1st 2023</td>
            </tr>

            <tr class="table__content">
              <td class="table__box">
                <label class="box__container">
                  <input type="checkbox" />
                  <span class="checkmark"></span>
                </label>
              </td>
              <td>Jennifer Doe</td>
              <td>McCarthy Hill</td>
              <td>jennifer@gmail.com</td>
              <td>tour name</td>
              <td>central region</td>
              <td>GHC 290</td>
              <td>July 1st 2023</td>
            </tr>
            <!-- content End -->
          </table>
        </div>
      </section>
    </main>
  </body>
</html>
