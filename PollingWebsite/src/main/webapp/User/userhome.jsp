<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDP</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-size: 0;
            font-family: Helvetica, Verdana, sans-serif;
        }

        nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            padding: 16px 20px 30px 20px;
            display: flex;
            align-items: center;
            transition: 0.3s ease-out;
            backdrop-filter: blur(8px) brightness(1.2);
            -webkit-backdrop-filter: blur(8px) brightness(1.2);
            text-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
            color: white;
            font-size: 16px;

            @media (min-width: 640px) {
                padding: 16px 50px 30px 50px;
            }
        }

        nav.is-hidden {
            transform: translateY(-100%);
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .list {
            list-style-type: none;
            margin-left: auto;
            display: none;
            gap: 50px;
            @media (min-width: 640px) {
                display: flex;
            }

            li {
                margin-left: 20px;
            }
        }

        img {
            width: 100%;
            height: 80px;
            object-fit: cover;
        }
    </style>
</head>

<body>
    <nav>
        <a href="#" style="font-size: 30px; color: grey;">EVoteX</a>
        <ul class="list">
            <li><a href="userhome">Home</a></li> 
            <li><a href="#">Profile</a></li>
            <li><a href="viewactivepolls">Active Polls</a></li>
            <li><a href="viewcompletedpolls">Completed Polls</a></li>
            <li><a href="greviences">Greviences</a></li>
            <li><a href="#">Verify Yourself</a></li>
            <li><a href="userlogout">Logout</a></li>
        </ul>
    </nav>
    
    <img src="https://images.unsplash.com/photo-1629812456605-4a044aa38fbc?crop=entropy&cs=tinysrgb&fm=jpg&ixid=MnwzMjM4NDZ8MHwxfHJhbmRvbXx8fHx8fHx8fDE2NTc3ODI1OTg&ixlib=rb-1.2.1&q=80"
        alt="">
</body>

</html>