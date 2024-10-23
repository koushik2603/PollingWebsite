<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDP</title>
    <style>
        .container-2 {
            height: 750px;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: burlywood;
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 60px;
        }

        .card-18 {
            box-sizing: border-box;
            width: 600px;
            height: 300px;
            background: rgba(217, 217, 217, 0.58);
            border: 1px solid white;
            box-shadow: 12px 17px 51px rgba(0, 0, 0, 0.22);
            backdrop-filter: blur(6px);
            border-radius: 17px;
            text-align: center;
            cursor: pointer;
            transition: all 0.2s;
            user-select: none;
            font-weight: bolder;
            color: black;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .imges
        {
            border-radius: 17px;
        }

        .card-18:hover {
            border: 1px solid black;
            transform: scale(1.05);
        }

        .card-18:active {
            transform: scale(0.95) rotateZ(1.7deg);
        }

        p {
            font-size: 23px;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        
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
                padding: 10px 50px 30px 50px;
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

        .img {
            width: 100%;
            height: 84px;
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
    
    <img class="img" src="https://images.unsplash.com/photo-1629812456605-4a044aa38fbc?crop=entropy&cs=tinysrgb&fm=jpg&ixid=MnwzMjM4NDZ8MHwxfHJhbmRvbXx8fHx8fHx8fDE2NTc3ODI1OTg&ixlib=rb-1.2.1&q=80"
        alt="">
     <br>
     <br>
    <div class="container-2">
        <div class="card-container">
            <div class="card-18">
                <img class="imges" src="User/Images/image_1.jpg" alt="" height="290px" width="99%">
            </div>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <div class="card-18">
                <img class="imges" src="User/Images/image_2.jpg" alt="" height="290px" width="99%">
            </div>
            
            <div class="card-18">
                <img  class="imges" src="User/Images/image_3.jpg" alt="" height="290px" width="99%">
            </div>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <div class="card-18">
                <img class="imges" src="User/Images/image_5.jpg" alt="" height="290px" width="99%">
            </div>
        </div>
    </div>
</body>
</html>

