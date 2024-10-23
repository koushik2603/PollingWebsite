<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   %>
    
<!DOCTYPE html>

<html lang="en"> 

 <head> 

  <meta charset="UTF-8"> 

  <title>SDP</title> 

  <style>

@import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap');
*
{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Quicksand', sans-serif;
}
body 
{
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background:wheat;
}
section 
{
  position: absolute;
  width: 100vw;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 2px;
  flex-wrap: wrap;
  overflow: hidden;
}
@keyframes animate 
{
  0%
  {
    transform: translateY(-100%);
  }
  100%
  {
    transform: translateY(100%);
  }
}
section span 
{
  position: relative;
  display: block;
  width: calc(6.25vw - 2px);
  height: calc(6.25vw - 2px);
  background:white;
  z-index: 2;
  transition: 1.5s;
}
section span:hover 
{
  background: rgb(98, 164, 205);
  transition: 0s;
}

section .signin
{
  position: absolute;
  width: 400px;
  background:lightgoldenrodyellow;  
  z-index: 1000;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 40px;
  border-radius: 4px;
  box-shadow: 0 15px 35px rgba(0,0,0,9);
}
section .signin .content 
{
  position: relative;
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  gap: 40px;
}
section .signin .content h2 
{
  font-size: 2em;
  color:  rgb(98, 164, 205);;
  text-transform: uppercase;
}
section .signin .content .form 
{
  width: 100%;
  display: flex;
  flex-direction: column;
  gap: 25px;
}
section .signin .content .form .inputBox
{
  position: relative;
  width: 100%;
}
section .signin .content .form .inputBox input 
{
  position: relative;
  width: 100%;
  background:white;
  border: none;
  outline: none;
  padding: 25px 10px 7.5px;
  border-radius: 4px;
  color:black;
  font-weight: 500;
  font-size: 1em;
}
section .signin .content .form .inputBox i 
{
  position: absolute;
  left: 0;
  padding: 15px 10px;
  font-style: normal;
  color:black;
  transition: 0.5s;
  pointer-events: none;
}
.signin .content .form .inputBox input:focus ~ i,
.signin .content .form .inputBox input:valid ~ i
{
  transform: translateY(-7.5px);
  font-size: 0.8em;
  color:black;
}
.signin .content .form .links 
{
  position: relative;
  width: 100%;
  display: flex;
  justify-content: space-between;
}
.signin .content .form .links a 
{
  color:black;
  text-decoration: none;
}
.signin .content .form .links a:nth-child(2)
{
  color: rgb(98, 164, 205);;
  font-weight: 600;
}
.signin .content .form .inputBox input[type="submit"]
{
  padding: 10px;
  background:  rgb(98, 164, 205);
  color:lightgoldenrodyellow;
  font-weight: 600;
  font-size: 1.35em;
  letter-spacing: 0.05em;
  cursor: pointer;
}
input[type="submit"]:active
{
  opacity: 0.6;
}
@media (max-width: 900px)
{
  section span 
  {
    width: calc(10vw - 2px);
    height: calc(10vw - 2px);
  }
}
@media (max-width: 600px)
{
  section span 
  {
    width: calc(20vw - 2px);
    height: calc(20vw - 2px);
  }
}
  </style>

 </head> 

 <body> <!-- partial:index.partial.html --> 

  <section>
   <div class="signin"> 

    <div class="content"> 

     <h2>Sign In</h2> 

     <form method="post" action="checkadminlogin">
     <div class="form"> 
      <div class="inputBox"> 

       <input type="text" name="username" required> <i>User name</i> 

      </div> 

      <div class="inputBox"> 

       <input type="password" name="password" required> <i>Password</i> 

      </div> 

      <div class="links">
      <a href="/">Go Back to Home</a> 

      </div> 

      <div class="inputBox"> 

       <input type="submit"> 

      </div> 

     </div> 
     </form>

    </div> 

   </div> 

  </section> <!-- partial --> 

 </body>

</html>