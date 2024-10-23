<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDP</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: "Nunito", sans-serif;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 500px;
        }

        .card {
            width: 100%;
            height: 85%;
            /* Card takes the full width of the container */
            background: rgba(255, 255, 255, 0.15);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
            border: 1px solid rgba(255, 255, 255, 0.18);
            border-radius: 1rem;
            padding: 1.5rem;
            z-index: 10;
            color: whitesmoke;
        }

        .title {
            font-size: 2.2rem;
            margin-bottom: 1rem;
        }

        .subtitle {
            font-size: 1rem;
            margin-bottom: 2rem;
        }

        .btn {
            background: none;
            border: none;
            text-align: center;
            font-size: 1rem;
            color: whitesmoke;
            background-color: #fa709a;
            padding: 0.8rem 1.8rem;
            border-radius: 2rem;
            cursor: pointer;
        }

        .beat {
            background: none;
            border: none;
            text-align: center;
            font-size: 1rem;
            color: whitesmoke;
            background-color: blueviolet;
            padding: 0.8rem 1.8rem;
            border-radius: 2rem;
            cursor: pointer;
        }

        .cntr {
            background: #1f1f47;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
        }

        .klef {
            background: #1f1f47;
            justify-content: center;
            align-items: center;
            min-height: 20vh;
        }

        @media (max-width: 768px) {
            .container {
                grid-template-columns: repeat(1, 1fr);
                /* 1 card per row on smaller screens */
            }
        }

        @media (min-width: 769px) and (max-width: 1024px) {
            .container {
                grid-template-columns: repeat(2, 1fr);
                /* 2 cards per row on medium screens */
            }
        }

        @media (min-width: 1025px) {
            .container {
                grid-template-columns: repeat(3, 1fr);
                /* 3 cards per row on larger screens */
            }
        }

        /* MAIN */
        /* =============================================== */
        .label {
            display: flex;
            align-items: center;
            border-radius: 100px;
            padding: 14px 16px;
            margin: 5px 0;
            cursor: pointer;
            transition: .3s;
        }

        .label:hover,
        .label:focus-within,
        .label:active {
            background: hsla(0, 0%, 80%, .14);
        }

        .radio-input {
            position: absolute;
            left: 0;
            top: 0;
            width: 1px;
            height: 1px;
            opacity: 0;
            z-index: -1;
        }

        .radio-design {
            width: 22px;
            height: 22px;
            border-radius: 100px;
            background: linear-gradient(to right bottom, hsl(154, 97%, 62%), hsl(225, 97%, 62%));
            position: relative;
        }

        .radio-design::before {
            content: '';
            display: inline-block;
            width: inherit;
            height: inherit;
            border-radius: inherit;
            background: hsl(0, 0%, 90%);
            transform: scale(1.1);
            transition: .3s;
        }

        .radio-input:checked+.radio-design::before {
            transform: scale(0);
        }

        .label-text {
            color: hsl(0, 0%, 60%);
            margin-left: 14px;
            letter-spacing: 3px;
            text-transform: uppercase;
            font-size: 18px;
            font-weight: 900;
            transition: .3s;
        }

        .radio-input:checked~.label-text {
            color: hsl(0, 0%, 40%);
        }
    </style>
</head>

<body>

    <div class="cntr">
        <div class="container">
            <form action="collectpolldata" method="post">
                <c:forEach items="${plist}"  var="p"> 
                
                <div class="card">
                <h1 class="title" align="center">Designed For ${p.name}</h1>

                <p class="subtitle">Organised by ${p.hostname}</p>

                 <div class="radio-input-wrapper">
                    <label class="label">
                         <input value="${p.c1}" name="value-radio" id="value-2" class="radio-input" onclick="setInputValue(this)" type="radio">
                         <div class="radio-design"></div>
                         <div class="label-text">${p.c1}</div>
                    </label>
                    <label class="label">
                          <input value="${p.c2}" name="value-radio" id="value-3" class="radio-input" onclick="setInputValue(this)" type="radio">
                          <div class="radio-design"></div>
                          <div class="label-text">${p.c2}</div>
                    </label>
                    <label class="label">
                          <input value="${p.c3}" name="value-radio" id="value-4" class="radio-input" onclick="setInputValue(this)" type="radio">
                          <div class="radio-design"></div>
                          <div class="label-text">${p.c3}</div>
                    </label>
                    
                    <input type="text" value="${p.id}" name="pollid"   hidden>
                    <input type="text" value="${voterid}" name="voterid"  hidden>
                     <input type="text" value="${voterid}" name="voterid" id="inp"  hidden>
                 </div>
              
                 <br>

                 <center><button class="btn" type="submit">Cast Your Vote</button></center>
                </div>
                </c:forEach>
            </form>
        </div>
    </div>
   <div class="klef">
        <center>
            <button class="beat"><a href="viewactivepolls" style="text-decoration:none; color:white;">Active Polls</a></button>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <button class="beat"><a href="viewcompletedpolls" style="text-decoration:none; color:white;">Completed Polls</a></button>
        </center>
    </div>
</body>

</html>