<%-- Document : user_dashboard Created on : May 29, 2023, 8:30:15 AM Author :
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
    <link
      rel="stylesheet"
      href="http://localhost:8080/Roaming_mavricks_tourism_app/styles/userDashboard.css"
    />
    <title>Tourism App | User</title>
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
                <a href="#" class="board_tile">
                  <i class="uil uil-map"></i>
                  <p class="tile__text">History</p>
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
            <h1 class="dashboard_header__text">Tour Sites</h1>
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
          <div class="tour__cards">
            <!-- main card -->
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <!-- site -->
                <p class="top__site">Zayaa Mud Mosque</p>
                <!-- location -->
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>

            <!-- --------------- EXTRAS NB: Remove --------------- -->
            <!-- --------------- EXTRAS NB: Remove --------------- -->
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <p class="top__site">Zayaa Mud Mosque</p>
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <p class="top__site">Zayaa Mud Mosque</p>
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <p class="top__site">Zayaa Mud Mosque</p>
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <p class="top__site">Zayaa Mud Mosque</p>
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <p class="top__site">Zayaa Mud Mosque</p>
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <p class="top__site">Zayaa Mud Mosque</p>
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <p class="top__site">Zayaa Mud Mosque</p>
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <p class="top__site">Zayaa Mud Mosque</p>
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <p class="top__site">Zayaa Mud Mosque</p>
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <p class="top__site">Zayaa Mud Mosque</p>
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>
            <div class="tour__card">
              <img
                src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/tourimg.jpg"
                alt="user profile image"
                class="tour__img"
              />
              <div class="abs">
                <p class="top__site">Zayaa Mud Mosque</p>
                <p class="top__location">Wulugu</p>
              </div>
              <div class="tour__img_overlay">
                <div class="tour__img_overlay_top">
                  <p class="top__site">Zayaa Mud Mosque</p>
                  <span style="display: flex; align-items: center; gap: 8px">
                    <i class="uil uil-estate"></i>
                    <p class="top__location">Wulugu</p>
                  </span>
                </div>
                <div class="tour__img_overlay_bot">
                  <p class="bot__money">$72.00</p>
                  <button class="bot__btn">Book Now</button>
                </div>
              </div>
            </div>

            <!-- --------------- EXTRAS END NB: Remove --------------- -->
            <!-- --------------- EXTRAS END NB: Remove --------------- -->
          </div>
        </div>
      </section>
    </main>
  </body>
</html>
