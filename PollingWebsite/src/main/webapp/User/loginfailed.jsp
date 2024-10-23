<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        .container-2 {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100%;
            background-color: burlywood;
        }

        .card-18 {
            box-sizing: border-box;
            width: 100%;
            max-width: 650px;
            /* Limit maximum width */
            min-height: 380px;
            height: auto;
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

        .card-18:hover {
            border: 1px solid black;
            transform: scale(1.05);
        }


        p {
            font-size: 23px;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        @media (max-width: 768px) {
            .card-18 {
                max-width: 90%;
                /* Adjust for smaller screens */
            }
        }

        button {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            color: white;
            background-color: #171717;
            padding: 1em 2em;
            border: none;
            border-radius: .6rem;
            position: relative;
            cursor: pointer;
            overflow: hidden;
        }

        button span:not(:nth-child(6)) {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            height: 30px;
            width: 30px;
            background-color: #0c66ed;
            border-radius: 50%;
            transition: .6s ease;
        }

        button span:nth-child(6) {
            position: relative;
        }

        button span:nth-child(1) {
            transform: translate(-3.3em, -4em);
        }

        button span:nth-child(2) {
            transform: translate(-6em, 1.3em);
        }

        button span:nth-child(3) {
            transform: translate(-.2em, 1.8em);
        }

        button span:nth-child(4) {
            transform: translate(3.5em, 1.4em);
        }

        button span:nth-child(5) {
            transform: translate(3.5em, -3.8em);
        }

        button:hover span:not(:nth-child(6)) {
            transform: translate(-50%, -50%) scale(4);
            transition: 1.5s ease;
        }
    </style>
</head>

<body>
    <div class="container-2">
        <div class="card-18">
            <img src="warning.gif" alt="" height="180px" width="180px">
            <p>Incorrect Credentials !!<br>Access your account with valid Credentials !!</p>


            <a href="userlogin" style="text-decoration: none;">
                <button>
                    <span class="circle1"></span>
                    <span class="circle2"></span>
                    <span class="circle3"></span>
                    <span class="circle4"></span>
                    <span class="circle5"></span>
                    <span class="text">Login</span>
                </button>
            </a>
        </div>
    </div>
</body>

</html>