<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDP</title>
    <link  type="text/css" rel="stylesheet" href="General/css/importance.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container_blogs {
            max-width: 1300px;
            /* Adjust as needed */
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 15px;
            /* Horizontal gap */
        }

        .card_blogs {
            width: calc(33.3333% - 20px);
            /* Three cards per row with 15px horizontal gap */
            margin-bottom: 40px;
            /* Vertical gap */
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
            box-sizing: border-box;
            transition: transform 0.3s ease;
            position: relative;
            width: 390px;
            height: 250px;
            color: #fff;
            cursor: pointer;
        }


        .card_blogs:hover {
            transform: translateY(-20px);
        }

        .card_blogs::before {
            content: '';
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            background: linear-gradient(45deg, #ffbc00, #ff0058);
            border-radius: 1.2em;
        }

        .card_blogs::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(45deg, #ffbc00, #ff0058);
            filter: blur(30px);
        }

        .card_blogs span {
            position: absolute;
            top: 6px;
            left: 6px;
            right: 6px;
            bottom: 6px;
            background-color: rgba(0, 0, 0, 0.6);
            z-index: 2;
            border-radius: 1em;
        }

        .card_blogs span::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 50%;
            height: 100%;
        }

        .card_blogs .content {
            position: relative;
            padding: 10px;
            z-index: 10;
            width: 100%;
            align-items: center;
            justify-content: center;
            font-weight: 800;
            font-size: 1.5em;
            margin-top: 160px;
            text-align: center;
        }

        /* Media query for smaller screens */
        @media screen and (max-width: 768px) {
            .card_blogs {
                width: calc(50% - 15px);
                /* Two cards per row on smaller screens */
            }
        }

        /* Media query for even smaller screens */
        @media screen and (max-width: 480px) {
            .card_blogs {
                width: 100%;
                /* One card_blogs per row on even smaller screens */
            }
        }
        .blogsbutton
        {
            text-decoration: none;
            color: white;
            background-color: #ff0058;
            text-align: center;
            border-radius: 3%;
        }

    </style>
</head>

<body>
	<%@ include file="navbar.jsp" %>
    <br>
    <h1 style="text-align: center;">Blogs Section</h1>
    <br>
    <div class="container_blogs">
        <!-- card_blogs 1 -->
        <div class="card_blogs">
            <span style="background-image: url(General/Imges/img1.png);"></span>
            <div class="content">Hover Me : )</div>
        </div>

        <!-- card_blogs 2 -->
        <div class="card_blogs">
            <span style="background-image: url(General/Imges/img1.png);"></span>
            <div class="content">
                <a href="" class="blogsbutton">&nbsp;Read this Blog&nbsp;</a>
            </div>
        </div>

        <!-- card_blogs 3 -->
        <div class="card_blogs">
            <span style="background-image: url(General/Imges/img1.png);"></span>
            <div class="content">Hover Me : )</div>
        </div>

        <div class="card_blogs">
            <span style="background-image: url(General/Imges/img1.png);"></span>
            <div class="content">Hover Me : )</div>
        </div>

        <div class="card_blogs">
            <span style="background-image: url(General/Imges/img1.png);"></span>
            <div class="content">Hover Me : )</div>
        </div>
        

        <!-- Repeat these card_blogs divs as needed for additional cards -->
    </div>
</body>

</html>