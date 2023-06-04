<!DOCTYPE html>
<html>
  <head>
    <title>Start Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
      crossorigin="anonymous"
    />
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
    <link
      rel="stylesheet"
      href="http://localhost:8080/Roaming_mavricks_tourism_app/styles/dropdown.css"
    />
    <script src="http://localhost:8080/Roaming_mavricks_tourism_app/js/index.js"></script>
  </head>
  <body>
    <!-- Navigation bar -->
    <%@include file="WEB-INF/jspf/navbar.jspf"%>
    <!-- Drop Navigation bar 2-->
    <%@include file="WEB-INF/jspf/dropdownNav.jspf"%>

    <!-- Main body -->
    <main class="main__body">
      <div class="body__img_container">
        <img
          src="http://localhost:8080/Roaming_mavricks_tourism_app/assets/left_bg_img.png"
          alt=""
          class="body__img"
        />
      </div>

      <div class="hero__body">
        <!-- hero -->
        <header id="home" class="section">
          <div class="left-col">
            <p class="p_text">Discover incredible stops along your path</p>
            <h1 class="h_text">Find all of your TOURISM PLANS in one spot.</h1>
            <p class="desc">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
              enim ad minim veniam, quis nostrud exercitation
            </p>
            <div class="btn__rows">
              <a href="login"><button class="hero__btn">Book Now</button></a>
              <a class="link" href="#toursites"
                ><button class="hero__outline_btn">
                  See all tourist sites
                </button></a
              >
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
      </div>

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

      <!-- Testimonial -->
      <section id="testimonial" class="sites__section">
        <div class="sites__header">
          <h1 class="sites__title" style="max-width: 700px">Testimonials</h1>
          <p class="sites__p">Trusted by Thousands of Happy Customer</p>
        </div>

        <!-- testimonial__cards -->
        <div class="testimonial__card_rows">
          <%@include file="WEB-INF/jspf/testimonialcard.jspf"%> <%@include
          file="WEB-INF/jspf/testimonialcard.jspf"%> <%@include
          file="WEB-INF/jspf/testimonialcard.jspf"%> <%@include
          file="WEB-INF/jspf/testimonialcard.jspf"%>
        </div>
      </section>
    </main>

    <!-- Footer -->
    <%@include file="WEB-INF/jspf/footer.jspf"%>
  </body>
</html>
