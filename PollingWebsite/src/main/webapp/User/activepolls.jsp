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
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 30px; /* Adjusted gap to 35px */
      justify-items: center;
    }

    .card {
      width: 85%; /* Card takes the full width of the grid cell */
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

    .cntr
    {
      background: #1f1f47;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    @media (max-width: 768px) {
      .container {
        grid-template-columns: repeat(1, 1fr); /* 1 card per row on smaller screens */
      }
    }

    @media (min-width: 769px) and (max-width: 1024px) {
      .container {
        grid-template-columns: repeat(2, 1fr); /* 2 cards per row on medium screens */
      }
    }

    @media (min-width: 1025px) {
      .container {
        grid-template-columns: repeat(3, 1fr); /* 3 cards per row on larger screens */
      }
    }

    .blob {
      position: absolute;
      width: 500px;
      height: 500px;
      background: linear-gradient(180deg,
          rgba(47, 184, 255, 0.42) 31.77%,
          #5c9df1 100%);
      mix-blend-mode: color-dodge;
      -webkit-animation: move 25s infinite alternate;
      animation: move 25s infinite alternate;
      transition: 1s cubic-bezier(0.07, 0.8, 0.16, 1);
    }

    .blob:hover {
      width: 520px;
      height: 520px;
      -webkit-filter: blur(30px);
      filter: blur(30px);
      box-shadow:
        inset 0 0 0 5px rgba(255, 255, 255, 0.6),
        inset 100px 100px 0 0px #fa709a,
        inset 200px 200px 0 0px #784ba8,
        inset 300px 300px 0 0px #2b86c5;
    }

    @-webkit-keyframes move {
      from {
        transform: translate(-100px, -50px) rotate(-90deg);
        border-radius: 24% 76% 35% 65% / 27% 36% 64% 73%;
      }

      to {
        transform: translate(500px, 100px) rotate(-10deg);
        border-radius: 76% 24% 33% 67% / 68% 55% 45% 32%;
      }
    }

    @keyframes move {
      from {
        transform: translate(-100px, -50px) rotate(-90deg);
        border-radius: 24% 76% 35% 65% / 27% 36% 64% 73%;
      }

      to {
        transform: translate(500px, 100px) rotate(-10deg);
        border-radius: 76% 24% 33% 67% / 68% 55% 45% 32%;
      }
    }
  </style>

</head>

<body>

<%@ include file="userhome.jsp" %>
  <div class="cntr">
    <div class="container">
    <c:forEach items="${plist}"  var="p"> 
      
      <div class="card">
        <h1 class="title">POLL NAME :: ${p.name}</h1>
        <p class="subtitle">Introducing the first ever 5G enabled tablet. You've got a tablet that
          let's you play harder and work smarter.</p>
        <button class="btn"><a href='<c:url value="checkvotestatus/${vid}/${p.id}"></c:url>'>Vote</a></button>
      </div>  
              
    </c:forEach>
    <div class="blob"></div>
  </div>
  </div>
</body>

</html>