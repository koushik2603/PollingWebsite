<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voter Home</title>
    <style>

body {
    background-size: 400% 400%;
    animation: gradient 15s ease infinite;
    color: #000;
    font-family: Arial, sans-serif;
    background-color:lightgreen;
}

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-evenly;
            margin: 20px;
        }

        .card {
    border: 1px solid #ccc;
    border-radius: 10px;
    padding: 20px;
    text-align: center;
    margin: 10px;
    width: 200px;
    text-decoration: none;
    color: cadetblue;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    transition: transform 0.27s ease;
    background-color:white;
}

.card:hover {
    transform: scale(1.1) rotate(3deg);
}


        .card img {
            width: 100px; /* Set the desired image size here */
            border-radius: 50%;
        }

        footer {
            background-color: #222; /* Set the dark color for the footer */
            color: #fff; /* Text color for footer links */
            padding: 20px;
            text-align: center;
        }
        .footer-links a {
            color: #fff;
            text-decoration: none;
            margin: 0 20px; /* Add some spacing between footer links */
        }
        .social-media a {
            margin: 0 10px;
        }

        /* Add this CSS to your existing style block */
.footer-links a, .social-media a {
    transition: transform 0.3s, filter 0.3s;
}

.footer-links a:hover, .social-media a:hover {
    transform: scale(1.1);
    filter: brightness(1.2);
}

.social-media img {
    width: 30px; /* Adjust the width as needed */
    height: 30px; /* Adjust the height as needed */
}

/* Add some color and animations */
.footer-links a, .social-media a {
    color: #00bcd4;
}

.footer-links a:hover, .social-media a:hover {
    color: #ff4081;
}

/* Add this CSS to your existing style block */
.social-media img {
    width: 30px; /* Adjust the width as needed */
    height: 30px; /* Adjust the height as needed */
    margin-right: 10px; /* Add some space to the right of the images */
}


    </style>
</head>

<body>
     <h1 style="text-align: center;">Voter Home</h1>
     <h1>Welcome to Home, ${name}</h1>
     <br>
     <a href="userlogout" style="text-decoration:none; font-size:25px; color:red;">Logout</a>
     <br>
    <div class="card-container">
        <a href="userpolls" class="card">
            <img src="User\Images\only-today.gif" alt="Active Polls">
            <h2>Active Polls</h2>
        </a>
        <a href="email_verification.html" class="card">
            <img src="User\Images\mail.gif" alt="E-Mail Verification">
            <h2>E-Mail Verification</h2>
        </a>
        <a href="aadhar_verification.html" class="card">
            <img src="User\Images\card.gif" alt="Aadhar Verification">
            <h2>Aadhar Verification</h2>
        </a>
        <a href="completed_polls.html" class="card">
            <img src="User\Images\expired.gif" alt="Completed Polls">
            <h2>Completed Polls</h2>
        </a>
        <a href="results.html" class="card">
            <img src="User\Images\success.gif" alt="Results">
            <h2>Results</h2>
        </a>
        <a href="userblogs" class="card">
            <img src="User\Images\social-engagement.gif" alt="Blog">
            <h2>Blog</h2>
        </a>
    </div>

        
    </div>

    <footer>
        <div class="footer-links">
          <br>
        <br>
            <a href="home.html">Home</a>
            <a href="aboutus.html">About Us</a>
            <a href="whyus.html">Why Us</a>
            <a href="userblogs">Blog</a>
            <a href="contact.html">Contact</a>
        </div>
        <br>
        <br>
        <br>
        
        <div class="social-media">
            <a href="https://www.linkedin.com/feed/update/urn:li:activity:7101627880916348928/"><img src="C:\Users\visal\Downloads\linkedin.png" alt="LinkedIn"></a>
            <a href="https://wa.me/+916300741007"><img src="C:\Users\visal\Downloads\whatsapp.png" alt="Whatsapp"></a>
            <a href="https://kluniversityin-my.sharepoint.com/:p:/g/personal/2100032459_kluniversity_in/ESz4ixKdfmBCnw9CgmJIsSYBvpEGyzOfG57Vk4If6LVt3Q?e=YqSzn3"><img src="C:\Users\visal\Downloads\ppt.png" alt="PowerPoint"></a>
            <!-- Add more social media icons and links as needed -->
        </div>
    </footer>

</body>

</html>
