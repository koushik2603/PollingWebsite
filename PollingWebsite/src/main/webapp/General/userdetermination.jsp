<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDP</title>
    <style>
        .container {
            height: 800px;
            width: 100%;
            align-items: center;
        }

        body
        {
            background-color: burlywood;
        }

        .part-1 {
            display: flex;
            margin-left: 150px;
            margin-top: 2%;
        }

        .part-2 {
            display: flex;
            margin-left: 150px;
            margin-top: 2%;
        }

        #admimg {
            height: 125px;
        }

        #spimg {
            height: 125px;
        }


        .card {
            overflow: visible;
            width: 350px;
            height: 325px;
        }

        .content {
            width: 100%;
            height: 100%;
            transform-style: preserve-3d;
            transition: transform 300ms;
            box-shadow: 0px 0px 10px 1px #000000ee;
            border-radius: 5px;
        }

        .front,
        .back {
            background-color: #151515;
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
            -webkit-backface-visibility: hidden;
            border-radius: 5px;
            overflow: hidden;
        }

        .back {
            width: 100%;
            height: 100%;
            justify-content: center;
            display: flex;
            align-items: center;
            overflow: hidden;
        }

        .back::before {
            position: absolute;
            content: ' ';
            display: block;
            width: 160px;
            height: 160%;
            background: linear-gradient(90deg, transparent, #ff9966, #ff9966, #ff9966, #ff9966, transparent);
            animation: rotation_481 5000ms infinite linear;
        }

        .back-content {
            position: absolute;
            width: 99%;
            height: 99%;
            background-color: #151515;
            border-radius: 5px;
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            gap: 30px;
        }

        .card:hover .content {
            transform: rotateY(180deg);
        }

        @keyframes rotation_481 {
            0% {
                transform: rotateZ(0deg);
            }

            0% {
                transform: rotateZ(360deg);
            }
        }

        .front {
            transform: rotateY(180deg);
            color: white;
        }

        .front .front-content {
            position: absolute;
            width: 100%;
            height: 100%;
            padding: 10px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .front-content .badge {
            background-color: #00000055;
            padding: 2px 10px;
            border-radius: 10px;
            backdrop-filter: blur(2px);
            width: fit-content;
        }

        .description {
            box-shadow: 0px 0px 10px 5px #00000088;
            width: 100%;
            padding: 10px;
            background-color: #00000099;
            backdrop-filter: blur(5px);
            border-radius: 5px;
        }

        .title {
            font-size: 16px;
            max-width: 100%;
            display: flex;
            justify-content: space-between;
        }

        .title p {
            width: 50%;
        }

        .card-footer {
            color: #ffffff88;
            margin-top: 5px;
            font-size: 8px;
        }

        .front .img {
            position: absolute;
            width: 100%;
            height: 100%;
            object-fit: cover;
            object-position: center;
        }

        .circle {
            width: 90px;
            height: 90px;
            border-radius: 50%;
            background-color: #ffbb66;
            position: relative;
            filter: blur(15px);
            animation: floating 2600ms infinite linear;
        }

        #bottom {
            background-color: #ff8866;
            left: 50px;
            top: 0px;
            width: 150px;
            height: 150px;
            animation-delay: -800ms;
        }

        #right {
            background-color: #ff2233;
            left: 160px;
            top: -80px;
            width: 30px;
            height: 30px;
            animation-delay: -1800ms;
        }

        @keyframes floating {
            0% {
                transform: translateY(0px);
            }

            50% {
                transform: translateY(10px);
            }

            100% {
                transform: translateY(0px);
            }
        }

        button {
            outline: none;
            cursor: pointer;
            border: none;
            padding: 0.9rem 2rem;
            margin: 0;
            font-family: inherit;
            font-size: inherit;
            position: relative;
            display: inline-block;
            letter-spacing: 0.05rem;
            font-weight: 700;
            font-size: 17px;
            border-radius: 500px;
            overflow: hidden;
            background:aquamarine;
            color: ghostwhite;
        }

        button span {
            position: relative;
            z-index: 10;
            transition: color 0.4s;
        }

        button:hover span {
            color:chocolate;
        }

        button::before,
        button::after {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
        }

        button::before {
            content: "";
            background:chocolate;
            width: 120%;
            left: -10%;
            transform: skew(30deg);
            transition: transform 0.4s cubic-bezier(0.3, 1, 0.8, 1);
        }

        button:hover::before {
            transform: translate3d(100%, 0, 0);
        }
        a
        {
        	text-decoration:none;
        	color:white;
        	font-size:15x;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="part-1">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;
            <div class="card">
                <div class="content">
                    <div class="back">
                        <div class="back-content">
                            <img src="General/Image/admin.png" alt="adminlogo" id="admimg">
                            <strong style="font-size: 27px;">Admin</strong>
                        </div>
                    </div>
                    <div class="front">

                        <div class="img">
                            <div class="circle">
                            </div>
                            <div class="circle" id="right">
                            </div>
                            <div class="circle" id="bottom">
                            </div>
                        </div>

                        <div class="front-content">
                            <div class="description">
                                <p style="font-size: 18px;">Welcome, Admin</p>
                                <br>
                                <br>
                                <button> <span><a href="adminlogin">Get Authenticated Now</a></span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <!-- Card-2 -->
            <div class="card">
                <div class="content">
                    <div class="back">
                        <div class="back-content">
                            <img src="General/Image/super_user.png" alt="adminlogo" id="spimg">
                            <strong style="font-size: 27px;">Organisation</strong>
                        </div>
                    </div>
                    <div class="front">

                        <div class="img">
                            <div class="circle">
                            </div>
                            <div class="circle" id="right">
                            </div>
                            <div class="circle" id="bottom">
                            </div>
                        </div>

                        <div class="front-content">
                            <div class="description">
                                <p  style="font-size: 18px;">Welcome, Organisation</p>
                                <br>
                                <br>
                                <button> <span><a href="orglogin">Get Authenticated Now</a></span>
                                </button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="part-2">
            <!-- Card-3 -->
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;
            <div class="card">
                <div class="content">
                    <div class="back">
                        <div class="back-content">
                            <img src="General/Image/userimg.png" alt="adminlogo" id="spimg">
                            <strong style="font-size: 27px;">Private User</strong>
                        </div>
                    </div>
                    <div class="front">

                        <div class="img">
                            <div class="circle">
                            </div>
                            <div class="circle" id="right">
                            </div>
                            <div class="circle" id="bottom">
                            </div>
                        </div>

                        <div class="front-content">
                            <div class="description">
                                <p style="font-size: 18px;">Welcome, Private User</p>
                                <br>
                                <br>
                                <button><span><a href="orguserlogin">Get Authenticated Now</a></span>
                                </button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <!-- Card-3 -->
            <div class="card">
                <div class="content">
                    <div class="back">
                        <div class="back-content">
                            <img src="General/Image/customer.png" alt="adminlogo" id="spimg">
                            <strong style="font-size: 27px;">General Voter</strong>
                        </div>
                    </div>
                    <div class="front">

                        <div class="img">
                            <div class="circle">
                            </div>
                            <div class="circle" id="right">
                            </div>
                            <div class="circle" id="bottom">
                            </div>
                        </div>

                        <div class="front-content">
                            <div class="description">
                                <p style="font-size: 18px;">Welcome, General User</p>
                                <br>
                                <br>
                                <button> <span><a href="userlogin">Get Authenticated Now</a></span>
                                </button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>