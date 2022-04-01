<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
   <%@ page import="jakarta.servlet.*" %>
    <%@ page import="java.io.ByteArrayOutputStream" %>
    <%@ page import="java.io.InputStream" %>
    <%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aspire Online Shopping</title>
<!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/mystyle.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
<div class="hero_area">
    <!-- header section strats -->
    <header class="header_section long_section px-0">
      <nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="home.jsp">
          <span>
            Aspire Shopping
          </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class=""> </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <div class="d-flex mx-auto flex-column flex-lg-row align-items-center">
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="#home">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#aboutus"> About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#product">Products</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#blog">Blog</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#contactus">Contact Us</a>
              </li>
            </ul>
          </div>
          <div class="quote_btn-container">
            <a href="login.jsp">
              <span>
                Login
              </span>
              <i class="fa fa-user" aria-hidden="true"></i>
            </a>
            
          </div>
        </div>
      </nav>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section id="home" class="slider_section long_section">
      <div id="customCarousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-5">
                  <div class="detail-box">
                    <h1>
                      For All Your <br>
                      Sports Needs
                    </h1>
                    <p>
                      The only one who can tell you 'you can't win' is you and you don't have to listen </p>
                    <div class="btn-box">
                      <a href="#contactus" class="btn1">
                        Contact Us
                      </a>
                      <a href="#aboutus" class="btn2">
                        About Us
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-7">
                  <div class="img-box">
                    <img src="images/slider-img.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-5">
                  <div class="detail-box">
                    <h1>
                      For All Your <br>
                      Sports Needs
                    </h1>
                    <p>
                      The only one who can tell you 'you can't win' is you and you don't have to listen </p>
                    <div class="btn-box">
                      <a href="#contactus" class="btn1">
                        Contact Us
                      </a>
                      <a href="#aboutus" class="btn2">
                        About Us
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-7">
                  <div class="img-box">
                    <img src="images/slider-img.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-5">
                  <div class="detail-box">
                    <h1>
                      For All Your <br>
                      Sports Needs
                    </h1>
                    <p>
                      The only one who can tell you 'you can't win' is you and you don't have to listen
                    </p>
                    <div class="btn-box">
                      <a href="#contactus" class="btn1">
                        Contact Us
                      </a>
                      <a href="#aboutus" class="btn2">
                        About Us
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-7">
                  <div class="img-box">
                    <img src="images/slider-img.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <ol class="carousel-indicators">
          <li data-target="#customCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#customCarousel" data-slide-to="1"></li>
          <li data-target="#customCarousel" data-slide-to="2"></li>
        </ol>
      </div>
    </section>
    <!-- end slider section -->
  </div>

  
  <!-- about section -->

  <section id="aboutus" class="about_section layout_padding long_section">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="img-box">
            <img src="images/about-img.png" alt="">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                About Us
              </h2>
            </div>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->
<!-- product section -->

  <section id="product" class="furniture_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          Our Sports Kits
        </h2>
        <p>
         Never give up, never give in, and when the upper hand is ours, may we have the ability to handle the win with the dignity that we absorbed the loss.
        </p>
      </div>
      <div class="row">
 <%
 
          java.sql.Connection con=null;
      String Image;
      	try {
          	Class.forName("com.mysql.jdbc.Driver");
      		con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/onlineshopping", "root", "Aspire@123");
      	}catch(Exception e) {
      	}
      	String checkpackagequery = "SELECT * FROM product";
      	byte[] imgData;
		try {
			Statement stmt  = con.createStatement();
			ResultSet rs    = stmt.executeQuery(checkpackagequery);
			while (rs.next()) {
				/* Blob blob = rs.getBlob(4);
				imgData = blob.getBytes(1,(int)blob.length());
                
                InputStream inputStream = blob.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                 
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);                  
                }
                 
                byte[] imageBytes = outputStream.toByteArray();
               
                 
                inputStream.close();
                outputStream.close();
                
                Image="data:image/jpg;base64,"+Base64.getEncoder().encodeToString(imageBytes); */
			
			
%>
      
      
        <div class="col-md-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <img src="https://media.istockphoto.com/photos/yellow-graphite-badminton-racket-and-shuttlecock-isolated-on-white-picture-id880008580?k=20&m=880008580&s=612x612&w=0&h=sOWTuofjy59onSlzYePZAQZNezQVUi_bZP_4qz-sW1U=" alt="">
            </div>
            <div class="detail-box">
              <h5>
                <%=rs.getString(2) %>
              </h5>
              <div class="price_box">
                <h6 class="price_heading">
                  <span>$</span> <%=rs.getString(3) %>
                </h6>
                <a href="">
                  Buy Now
                </a>
              </div>
            </div>
          </div>
        </div>
<%}
		}catch(Exception e){
		}
  %>        
      
       
       
      </div>
    </div>
  </section>

  <!-- end product section -->


  <!-- blog section -->

  <section id="blog" class="blog_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          Our Latest Blog
        </h2>
      </div>
      <div class="row">
              <%
 
          java.sql.Connection conn=null;
      String blogImage;
      	try {
          	Class.forName("com.mysql.jdbc.Driver");
      		con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/onlineshopping", "root", "Aspire@123");
      	}catch(Exception e) {
      	}
      	String checkblogquery = "SELECT * FROM blog";
      	byte[]blogImageData;
		try {
			Statement stmt  = con.createStatement();
			ResultSet rs    = stmt.executeQuery(checkblogquery);
			while (rs.next()) {
				/* Blob blob = rs.getBlob(3);
				blogImageData = blob.getBytes(1,(int)blob.length());
                
                InputStream inputStream = blob.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                 
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);                  
                }
                 
                byte[] imageBytes = outputStream.toByteArray();
               
                 
                inputStream.close();
                outputStream.close();
                
                blogImage="data:image/jpg;base64,"+Base64.getEncoder().encodeToString(imageBytes); */
			
			
%>
        <div class="col-md-6 col-lg-4 mx-auto">
 
      
          <div class="box">
            <div class="img-box">
              <img src="images/b1.jpg" alt="">
            </div>
            <div class="detail-box">
              <h5>
                <%=rs.getString(1) %>
              </h5>
              <p>
               <%=rs.getString(2) %>
              </p>
              <a href="">
                Read More
              </a>
            </div>
          </div>
          
        </div>
        <%}
		}catch(Exception e){
		}
  %> 
      </div>
    </div>
  </section>

  <!-- end blog section -->

  <!-- client section -->

  <section id="review" class="client_section layout_padding-bottom">
    <div class="container">
      <div class="heading_container">
        <h2>
          Testimonial
        </h2>
      </div>
      <div id="carouselExample2Controls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">

          <div class="carousel-item active">
            <div class="row">
              <div class="col-md-11 col-lg-10 mx-auto">
                <div class="box">
                  <div class="img-box">
                    <img src="images/client.jpg" alt="" />
                  </div>
                  <div class="detail-box">
                    <div class="name">
                      <i class="fa fa-quote-left" aria-hidden="true"></i>
                      <h6>
                       Abdul ALsowdh
                      </h6>
                    </div>
                    <p>
                      Compare to other sites more offers are here.Quality also good and worthy
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
                       <%
 
          java.sql.Connection conne=null;
      String reviewImage;
      	try {
          	Class.forName("com.mysql.jdbc.Driver");
      		con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/onlineshopping", "root", "Aspire@123");
      	}catch(Exception e) {
      	}
      	String checkreviewquery = "SELECT * FROM review";
      	byte[] reviewImageData;
		try {
			Statement stmt  = con.createStatement();
			ResultSet rs    = stmt.executeQuery(checkreviewquery);
			while (rs.next()) {
				/* Blob blob = rs.getBlob(3);
				reviewImageData = blob.getBytes(1,(int)blob.length());
                
                InputStream inputStream = blob.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                 
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);                  
                }
                 
                byte[] imageBytes = outputStream.toByteArray();
               
                 
                inputStream.close();
                outputStream.close();
                
                reviewImage="data:image/jpg;base64,"+Base64.getEncoder().encodeToString(imageBytes); */
			
			
%>
          <div class="carousel-item">
            <div class="row">
              <div class="col-md-11 col-lg-10 mx-auto">
                <div class="box">
                  <div class="img-box">
                    <img src="images/client.jpg" alt="" />
                  </div>
                  <div class="detail-box">
                    <div class="name">
                      <i class="fa fa-quote-left" aria-hidden="true"></i>
                      <h6>
                        <%=rs.getString(1) %>
                      </h6>
                    </div>
                    <p>
                      <%=rs.getString(2) %>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
           <%}
		}catch(Exception e){
		}
  %> 
        </div>
        <div class="carousel_btn-container">
          <a class="carousel-control-prev" href="#carouselExample2Controls" role="button" data-slide="prev">
            <i class="fa fa-long-arrow-left" aria-hidden="true"></i>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExample2Controls" role="button" data-slide="next">
            <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </section>

  <!-- end client section -->

  <!-- contact section -->
  <section class="contact_section  long_section">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
            <div class="heading_container">
              <h2>
                Contact Us
              </h2>
            </div>
            <form action="">
              <div>
                <input type="text" placeholder="Your Name" />
              </div>
              <div>
                <input type="text" placeholder="Phone Number" />
              </div>
              <div>
                <input type="email" placeholder="Email" />
              </div>
              <div>
                <input type="text" class="message-box" placeholder="Message" />
              </div>
              <div class="btn_box">
                <button>
                  SEND
                </button>
              </div>
            </form>
          </div>
        </div>
        <div class="col-md-6">
          <div class="map_container">
            <div class="map">
              <div id="googleMap">
              <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3890.2099145486186!2d80.22114151408857!3d12.829707821448935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a525a5d7d9090d7%3A0xf1593c682fbb41a6!2sASPIRE%20SYSTEMS%2C%20SIPCOT%20IT%20PARK-1%2C%201%2FD-1%2C%20SIPCOT%20IT%20PARK%2C%20Siruseri%2C%20Siruseri%2C%20Tamil%20Nadu%20603103!5e0!3m2!1sen!2sin!4v1645014391298!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end contact section -->

  <!-- info section -->
  <section id="contactus" class="info_section long_section">

    <div class="container">
      <div class="contact_nav">
        <a href="">
          <i class="fa fa-phone" aria-hidden="true"></i>
          <span>
            Call : +01 123455678990
          </span>
        </a>
        <a href="">
          <i class="fa fa-envelope" aria-hidden="true"></i>
          <span>
            Email : aspireshopping@gmail.com
          </span>
        </a>
        <a href="">
          <i class="fa fa-map-marker" aria-hidden="true"></i>
          <span>
            Location
          </span>
        </a>
      </div>

      <div class="info_top ">
        <div class="row ">
          <div class="col-sm-6 col-md-4 col-lg-6">
            <div class="info_links">
              <h4>
                QUICK LINKS
              </h4>
              <div class="info_links_menu">
                <a class="" href="index.html">Home <span class="sr-only">(current)</span></a>
                <a class="" href="about.html"> About</a>
                <a class="" href="furniture.html">Furniture</a>
                <a class="" href="blog.html">Blog</a>
                <a class="" href="contact.html">Contact Us</a>
              </div>
            </div>
          </div>
  
          <div class="col-md-4">
            <div class="info_form">
              <h4>
                SIGN UP TO OUR NEWSLETTER
              </h4>
              <form action="">
                <input type="text" placeholder="Enter Your Email" />
                <button type="submit">
                  Subscribe
                </button>
              </form>
              <div class="social_box">
                <a href="">
                  <i class="fa fa-facebook" aria-hidden="true"></i>
                </a>
                <a href="">
                  <i class="fa fa-twitter" aria-hidden="true"></i>
                </a>
                <a href="">
                  <i class="fa fa-linkedin" aria-hidden="true"></i>
                </a>
                <a href="">
                  <i class="fa fa-instagram" aria-hidden="true"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end info_section -->


  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://html.design/">Sujitha.chinna</a>
      </p>
    </div>
  </footer>
  <!-- footer section -->


  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
  <!-- End Google Map -->

</body>
</html>