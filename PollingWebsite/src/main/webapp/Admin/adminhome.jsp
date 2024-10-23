<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SDP</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css">


  <style>
    @import url("https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap");

    :root {
      --header-height: 3rem;
      --nav-width: 68px;
      --first-color: #4723D9;
      --first-color-light: #AFA5D9;
      --white-color: #F7F6FB;
      --body-font: 'Nunito', sans-serif;
      --normal-font-size: 1rem;
      --z-fixed: 100
    }

    *,
    ::before,
    ::after {
      box-sizing: border-box
    }

    body {
      position: relative;
      margin: var(--header-height) 0 0 0;
      padding: 0 1rem;
      font-family: var(--body-font);
      font-size: var(--normal-font-size);
      transition: .5s
    }

    a {
      text-decoration: none
    }

    .header {
      width: 100%;
      height: var(--header-height);
      position: fixed;
      top: 0;
      left: 0;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0 1rem;
      background-color: var(--white-color);
      z-index: var(--z-fixed);
      transition: .5s
    }

    .header_toggle {
      color: var(--first-color);
      font-size: 1.5rem;
      cursor: pointer
    }

    .header_img {
      width: 35px;
      height: 35px;
      display: flex;
      justify-content: center;
      border-radius: 50%;
      overflow: hidden
    }

    .header_img img {
      width: 40px
    }

    .l-navbar {
      position: fixed;
      top: 0;
      left: -30%;
      width: var(--nav-width);
      height: 100vh;
      background-color: var(--first-color);
      padding: .5rem 1rem 0 0;
      transition: .5s;
      z-index: var(--z-fixed)
    }

    .nav {
      height: 100%;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      overflow: hidden
    }

    .nav_logo,
    .nav_link {
      display: grid;
      grid-template-columns: max-content max-content;
      align-items: center;
      column-gap: 1rem;
      padding: .5rem 0 .5rem 1.5rem
    }

    .nav_logo {
      margin-bottom: 2rem
    }

    .nav_logo-icon {
      font-size: 1.25rem;
      color: var(--white-color)
    }

    .nav_logo-name {
      color: var(--white-color);
      font-weight: 700
    }

    .nav_link {
      position: relative;
      color: var(--first-color-light);
      margin-bottom: 1.5rem;
      transition: .3s
    }

    .nav_link:hover {
      color: var(--white-color)
    }

    .nav_icon {
      font-size: 1.25rem
    }

    .show {
      left: 0
    }

    .body-pd {
      padding-left: calc(var(--nav-width) + 1rem)
    }

    .active {
      color: var(--white-color)
    }

    .active::before {
      content: '';
      position: absolute;
      left: 0;
      width: 2px;
      height: 32px;
      background-color: var(--white-color)
    }

    .height-100 {
      height: 100vh
    }

    @media screen and (min-width: 768px) {
      body {
        margin: calc(var(--header-height) + 1rem) 0 0 0;
        padding-left: calc(var(--nav-width) + 2rem)
      }

      .header {
        height: calc(var(--header-height) + 1rem);
        padding: 0 2rem 0 calc(var(--nav-width) + 2rem)
      }

      .header_img {
        width: 40px;
        height: 40px
      }

      .header_img img {
        width: 45px
      }

      .l-navbar {
        left: 0;
        padding: 1rem 1rem 0 0
      }

      .show {
        width: calc(var(--nav-width) + 156px)
      }

      .body-pd {
        padding-left: calc(var(--nav-width) + 188px)
      }
    }
  </style>
</head>

<body>

  <body id="body-pd">
    <header class="header" id="header">
      <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
      <div class="header_img"> <img src="https://i.imgur.com/hczKIze.jpg" alt=""> </div>
    </header>
    <div class="l-navbar" id="nav-bar">
      <nav class="nav">
        <div> 
          <a href="#" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i>
             <span class="nav_logo-name">EVoteX Admin</span> 
          </a>

          <div class="nav_list"> 
           <a href="#" class="nav_link active"> 
              <i class='bx bx-grid-alt nav_icon'></i> 
              <span class="nav_name">Dashboard</span>
           </a> 
           
           <div class="dropdown">
            <a class="btn nav_link" href="#"  data-bs-toggle="dropdown" aria-expanded="false">
            <i class='bx bx-user nav_icon'></i>
              Users
            </a>
             
             <ul class="dropdown-menu">
               <li><a class="dropdown-item" href="addusers">Add User</a></li>
               <li><a class="dropdown-item" href="deleteuser">Delete User</a></li>
               <li><a class="dropdown-item" href="viewallusers">View All Users</a></li>
             </ul>
           </div>

           <div class="dropdown">
            <a class="btn nav_link" href="#"  data-bs-toggle="dropdown" aria-expanded="false">
            <i class='bx bx-message-square-detail nav_icon'></i> 
              Blogs
            </a>
             
             <ul class="dropdown-menu">
               <li><a class="dropdown-item" href="#">Add a Blog</a></li>
               <li><a class="dropdown-item" href="#">Delete a Blog</a></li>
               <li><a class="dropdown-item" href="#">View All Blogs</a></li>
             </ul>
           </div>


            <a href="#" class="nav_link"> 
              <i class='bx bx-message-square-detail nav_icon'></i> 
              <span class="nav_name">Messages</span> 
            </a> 

            <!-- <a href="#" class="nav_link"> <i class='bx bx-bookmark nav_icon'></i> <span class="nav_name">Bookmark</span> -->
            <div class="dropdown">
                 <a class="btn nav_link" href="#"  data-bs-toggle="dropdown" aria-expanded="false">
                 <i class='bx bx-bookmark nav_icon'></i>
                  Polls
                 </a>
                  
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="addpolls">Add a Poll</a></li>
                    <li><a class="dropdown-item" href="#">Delete a Poll</a></li>
                    <li><a class="dropdown-item" href="viewpollresults">View Poll Results</a></li>
                    <li><a class="dropdown-item" href="viewallpolls">View All Polls</a></li>
                  </ul>
             </div>
             <a href="#" class="nav_link">
               <i class='bx bx-folder nav_icon'></i> 
               <span class="nav_name">Files</span>
            </a> 
            
            <a href="#" class="nav_link"> 
              <i class='bx bx-bar-chart-alt-2 nav_icon'></i> 
              <span class="nav_name">Stats</span>
            </a> 
          </div>
        </div> 
        
        <a href="adminlogout" class="nav_link"> 
          <i class='bx bx-log-out nav_icon'></i> 
          <span class="nav_name">SignOut</span> 
        </a>

      </nav>
    </div>
    <!--Container Main start-->
    <!--Container Main end-->
    <script>
      document.addEventListener("DOMContentLoaded", function (event) {

        const showNavbar = (toggleId, navId, bodyId, headerId) => {
          const toggle = document.getElementById(toggleId),
            nav = document.getElementById(navId),
            bodypd = document.getElementById(bodyId),
            headerpd = document.getElementById(headerId)

          // Validate that all variables exist
          if (toggle && nav && bodypd && headerpd) {
            toggle.addEventListener('click', () => {
              // show navbar
              nav.classList.toggle('show')
              // change icon
              toggle.classList.toggle('bx-x')
              // add padding to body
              bodypd.classList.toggle('body-pd')
              // add padding to header
              headerpd.classList.toggle('body-pd')
            })
          }
        }

        showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header')

        /*===== LINK ACTIVE =====*/
        const linkColor = document.querySelectorAll('.nav_link')

        function colorLink() {
          if (linkColor) {
            linkColor.forEach(l => l.classList.remove('active'))
            this.classList.add('active')
          }
        }
        linkColor.forEach(l => l.addEventListener('click', colorLink))

        // Your code to run since DOM is loaded and ready
      });
    </script>

  </body>

</html>