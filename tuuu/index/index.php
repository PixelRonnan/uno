<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yumis Farm</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="disproduct.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    
  </head>
  <body>
    <header>
      <nav class="navbar">
        <h2 class="LOGO">
              <img src="../images/2022.png.png" alt="LOGO">

      </h2>
        <label for="menu-toggler" id="hamburger-btn">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" width="24px" height="24px">
            <path d="M0 0h24v24H0z" fill="none"/>
            <path d="M3 18h18v-2H3v2zm0-5h18V11H3v2zm0-7v2h18V6H3z"/>
          </svg>
        </label>
        <ul class="all-links">
          <li><a href="#home">Home</a></li>
          <li><a href="#products">Product</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
  
        </ul>
      </nav>
    </header>

    <section class="homepage" id="home">
      <div class="content">
        <div class="text">
          <h1>Organic Products and Services</h1>
          <p>
            <br> </p>
    </section>
    
    <section class="portfolio" id="products">
    <h2>View Products</h2></a>
      <p>Take a look at some of our Organic products</p>
      <ul class="cards">
        <?php 
        include("display_products.php"); 
        ?>
      </ul>
  </section>

        <section class="about" id="about">
      <h2>About Us</h2>
      <p>Discover our story in providing Fresh Organic products.</p>
      <div class="row company-info">
      </div>
      <div class="row mission-vision">
        <h3>Our Mission</h3>
        <p>At Camping Gear Experts, our mission is to equip outdoor enthusiasts with top-notch camping gear and essentials that enhance their outdoor experiences. We strive to provide reliable, durable, and innovative products that contribute to memorable adventures and lasting memories.</p>
        <h3>Our Vision</h3>
        <p>Our vision is to become the go-to destination for camping enthusiasts, known for our extensive selection of premium camping gear and exceptional customer service. We aspire to inspire and enable people to embrace the beauty of nature and create unforgettable camping experiences.</p>
      </div>
      <div class="row team">
        <h3>Our Team</h3>
        <ul>
          <li>John Doe - Founder and CEO</li>
          <li>Jane Smith - Gear Specialist</li>
          <li>Mark Johnson - Customer Representative</li>
          <li>Sarah Brown - Operations Manager</li>
        </ul>
      </div>
    </section>

    <section class="contact" id="contact">
      <h2>Contact Us</h2>
      <p>Reach out to us for any inquiries or feedback.</p>
      <div class="row">
        <div class="col information">
          <div class="contact-details">
            <p><i class="fas fa-envelope"></i> Ilayang Bukal Tayabas City Quezon, 4327 Quezon Province</p>
            <p><i class="fas fa-phone"></i> (+63)908 228 0113</p>
            <p><i class="fas fa-clock"></i> Thursday - Sunday: 8:00 AM - 4:00 PM</p>
            <p><i class="fas fa-clock"></i> Monday-Wednesday: Closed</p>
            <p><i class="fas fa-globe"></i> yumisfarm17@gmail.com</p>
          </div>          
        </div>
        <div class="col form">
          <form>
            <input type="text" placeholder="Name*" required>
            <input type="email" placeholder="Email*" required>
            <textarea placeholder="Message*" required></textarea>
            <button id="submit" type="submit">Send Message</button>
          </form>
        </div>
      </div>
    </section>

    <footer style="text-align: center;">
  <div class="bottom" style="background-color: #000000; padding: 20px;">
    <p style="margin: 0; padding: 0; font-size: 14px; text-align: center;">Copyright © 2020 <a href="#" style="color: #ff0000; text-decoration: none;">Yumis Farm  </a> All rights reserved</p>
  </div>
</footer>



  </body>
</html>
