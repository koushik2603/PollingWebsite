<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>SDP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #c1dcf4; /* Very light blue background color */
            text-align: center;
            margin: 0; /* Remove default margin */
        }

        h1 {
            color: #333;
        }

        .post-card {
            border: 1px solid #ccc;
            border-radius: 10px;
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            display: inline-block;
            width: 300px;
            height: max-content;
            text-align: left;
            transition: transform 0.3s;
        }

        .post-card:hover {
            transform: scale(2.25);
        }

        @keyframes wiggle {
            0% { transform: translateY(0); }
            50% { transform: translateY(-5px); }
            100% { transform: translateY(0); }
        }

        .wiggle:hover {
            animation: wiggle 0.5s infinite;
        }

        .post-card img {
            max-width: 100%;
            height: 180px; /* Set a fixed height for images */
            border-radius: 5px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Blog Posts</h1>
    
    <div class="post-card wiggle">
        <h2>The Importance of Voter Education</h2>
        <img src="User/BlogImg/politicsset.jpg" alt="Voter Education">
        <p>Empowering Citizens through Knowledge.</p>
    </div>
    
    <div class="post-card wiggle">
        <h2>Breaking Down the Voting Process</h2>
        <img src="User/BlogImg/process.png" alt="Voting Process">
        <p>A Step-by-Step Guide to Casting Your Vote.</p>
    </div>
    
    <div class="post-card wiggle">
        <h2>The Role of Technology in Voting</h2>
        <img src="User/BlogImg/voting.png" alt="Voting Technology">
        <p>Modernizing the Electoral System.</p>
    </div>
    
    <div class="post-card wiggle">
        <h2>Ensuring Accessibility in Voting</h2>
        <img src="User/BlogImg/remote-access.png" alt="Voting Accessibility">
        <p>Making Voting Inclusive for Everyone.</p>
    </div>
    
    <div class="post-card wiggle">
        <h2>Understanding the Electoral College</h2>
        <img src="User/BlogImg/question-mark.png" alt="Electoral College">
        <p>How Does It Work?</p>
    </div>
    
    <div class="post-card wiggle">
        <h2>The Power of Your Vote</h2>
        <img src="User\BlogImg\punch.png" alt="Power of Vote">
        <p>Making a Difference in Local Elections.</p>
    </div>
</body>
</html>
