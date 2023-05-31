<!DOCTYPE html>
<html>
  <head>
    <title>Start Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link
      rel="stylesheet"
      href="https://unicons.iconscout.com/release/v4.0.8/css/line.css"
    />
    <link
      rel="stylesheet"
      href="http://localhost:8080/Roaming_mavricks_tourism_app/styles/homeStyles.css"
    />
    <link
      rel="stylesheet"
      href="http://localhost:8080/Roaming_mavricks_tourism_app/styles/userDashboard.css"
    />
  </head>
  <body>
    <!-- Navigation bar -->
    <%@include file="WEB-INF/jspf/navbar.jspf"%>

    <!-- Main body -->
    <main class="main__body">
      <div class="body__img_container">
        <img
          src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/left_bg_img.png"
          alt=""
          class="body__img"
        />
      </div>

      <!-- hero -->
      <header id="home" class="section">
        <div class="left-col">
          <p class="p_text">Discover incredible stops along your path</p>
          <h1 class="h_text">Find all of your TOURISM PLANS in one spot.</h1>
          <p class="desc">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
            ad minim veniam, quis nostrud exercitation
          </p>
          <div class="btn__rows">
            <button class="hero__btn">Book Now</button>
            <button class="hero__outline_btn">See all tourist sites</button>
          </div>
        </div>

        <div class="right-col">
          <img
            src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/hero_image.png"
            alt=""
            class="hero__img"
          />
        </div>
      </header>

      <!-- Tour Sites -->
      <section id="toursites" class="sites__section">
        <div class="sites__header">
          <h1 class="sites__title">Tour Sites</h1>
          <p class="sites__p">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
            eiusmod tempor incididunt ut labore et
          </p>
        </div>

        <div class="tour__cards">
          <!-- main card -->
          <%@include file="WEB-INF/jspf/tourcard.jspf"%>
          <!-- --------------- EXTRAS NB: Remove --------------- -->
          <!-- --------------- EXTRAS NB: Remove --------------- -->
          <%@include file="WEB-INF/jspf/tourcard.jspf"%> <%@include
          file="WEB-INF/jspf/tourcard.jspf"%> <%@include
          file="WEB-INF/jspf/tourcard.jspf"%> <%@include
          file="WEB-INF/jspf/tourcard.jspf"%> <%@include
          file="WEB-INF/jspf/tourcard.jspf"%> <%@include
          file="WEB-INF/jspf/tourcard.jspf"%> <%@include
          file="WEB-INF/jspf/tourcard.jspf"%> <%@include
          file="WEB-INF/jspf/tourcard.jspf"%> <%@include
          file="WEB-INF/jspf/tourcard.jspf"%> <%@include
          file="WEB-INF/jspf/tourcard.jspf"%> <%@include
          file="WEB-INF/jspf/tourcard.jspf"%> <%@include
          file="WEB-INF/jspf/tourcard.jspf"%>
          <!-- --------------- EXTRAS END NB: Remove --------------- -->
          <!-- --------------- EXTRAS END NB: Remove --------------- -->
        </div>
      </section>

      <!-- contact us -->
      <section id="contactus" class="sites__section">
        <div class="sites__header">
          <h1 class="sites__title">Contact us</h1>
          <p class="sites__p">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
            eiusmod tempor incididunt ut labore et
          </p>
        </div>

        <div class="contact_content">
          <!-- image -->
          <div class="contact__img_wrapper">
            <img
              src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/contactus.png"
              alt=""
              class="contact__img"
            />
          </div>
          <!-- text -->
          <div class="contact__text_wrapper">
            <!-- info -->
            <div class="contact__info">
              <div class="icon__wrapper"><i class="uil uil-phone"></i></div>
              <div>
                <p class="cp">Customer Support</p>
                <p>
                  Aliquam erat volutpat. Integer malesuada turpis id fringilla
                  suscipit. Maecenas ultrices.
                </p>
              </div>
            </div>

            <div class="contact__info">
              <div class="icon__wrapper" style="background-color: #ee81b3">
                <i class="uil uil-pricetag-alt"></i>
              </div>
              <div>
                <p class="cp">Best Price Guarantted</p>
                <p>
                  Aliquam erat volutpat. Integer malesuada turpis id fringilla
                  suscipit. Maecenas ultrices.
                </p>
              </div>
            </div>

            <div class="contact__info">
              <div class="icon__wrapper" style="background-color: #810955">
                <i class="uil uil-map-marker-alt"></i>
              </div>
              <div>
                <p class="cp">Many Location</p>
                <p>
                  Aliquam erat volutpat. Integer malesuada turpis id fringilla
                  suscipit. Maecenas ultrices.
                </p>
              </div>
            </div>
            <!-- info -->
          </div>
        </div>
      </section>

      <!-- TODO: Testimonial -->
      <section id="testimonial" class="sites__section">
        <div class="sites__header">
          <h1 class="sites__title" style="max-width: 700px">
            Trusted by Thousands of Happy Customer
          </h1>
          <p class="sites__p">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
            eiusmod tempor incididunt ut labore et
          </p>
        </div>

        <div class="testimonial__card">
          <div class="test__row1">
            <div class="test__row2">
              <!-- <div class="user__profile">
                <img
                  src="https://plus.unsplash.com/premium_photo-1677002756692-faeffee45d7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
                  alt="user profile image"
                  class="profile"
                />
              </div> -->
              <div>
                <p>Viezh Robert</p>
                <p>Warsaw, Poland</p>
              </div>
            </div>
            <p>4.5</p>
          </div>
          <!-- <div>
            <p>
              "Wow... I am very happy to use this VPN, it turned out to be more
              than my expectations and so far there have been no problems.
              LaslesVPN always the best".
            </p>
          </div> -->
        </div>
      </section>
    </main>

    <!-- Footer -->
    <%@include file="WEB-INF/jspf/footer.jspf"%>
  </body>
</html>

<!-- <h1>Welcome to the Landing Page</h1>
      <a href="tourguide_dashboard.jsp">Tourguide_dashboard</a>
      <a href="user_dashboard.jsp">user_dashboard</a>
      <a href="tourdashboard.jsp">Tour dashboard</a> -->
