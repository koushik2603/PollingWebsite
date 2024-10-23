<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<html>
<head>

<style>

.form {
    display: flex;
    align-items: center;
    flex-direction: column;
    gap: 10px;
    background-image: linear-gradient(45deg, #330808, 
    #3a2c09);
    border-radius: 2.5em;
    padding: 30px;
    width: 400px;
    height: 620px;
  }
  
  .form::before {
    content: '';
    background-image: linear-gradient(45deg, #ff0000, 
    #ffb700);
    height: 628px;
    width: 409px;
    position: absolute;
    margin-top: -34px;
    margin-left: px;
    z-index: -1;
    border-radius: 2.7em;
  }
  
  .btns {
    margin-top: 10px;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 17px;
    background: #ff5900;
    color: black;
    padding: 0.7em 5.5em;
    display: flex;
    align-items: center;
    border: 2px solid #66da4300;
    border-radius: 5em;
    overflow: hidden;
    transition: all 0.2s;
    cursor: pointer;
  }
  
  .btns:hover {
    border: 2px solid #ff5900;
    background: #00000000;
    color: #ff5900;
  }
  
  .btns:active {
    border: 2px solid #66da4300;
    background: #ff5900;
    color: black;
  }
  
  .input {
    width: calc(100% - 10px);
    padding: 8px;
    margin-bottom: 20px;
    border: 1px solid #66da4300;
    border-bottom: 1px solid #ff5900;
    outline: none;
    background-color: transparent;
    color: #ff5900;
    font-family: Arial, Helvetica, sans-serif;
    transition: 0.2s;
  }
  
  .input:focus {
    border: 1px solid #66da4300;
    border-bottom: 1px solid #ff5900;
    background-color: transparent;
    color: white;
  }
  
  .input::placeholder {
    color: #9b725b;
  }
  
  .textarea {
    font-family: Arial, Helvetica, sans-serif;
    width: calc(100% - 10px);
    padding: 8px;
    height: 100px;
    margin-bottom: 20px;
    border: 1px solid #66da4300;
    border-bottom: 1px solid #ff5900;
    outline: none;
    background-color: transparent;
    color: #ff5900;
  }
  
  .textarea::placeholder {
    color: #9b725b;
  }
  
  .textarea:focus {
    border: 1px solid #66da4300;
    border-bottom: 1px solid #ff5900;
    background-color: transparent;
    color: white;
  }
  
  .radiofield
{
    text-align: center;
    font-size: 19px;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    height: 55px;
    border-radius: 2%;
    align-items: center;
    display: flex;
    justify-content:left;
    color:white;
}

</style>
</head>
<body>

<%@ include file="adminhome.jsp" %>


<br>
<center>
<form method="post" action="adduserdata" class="form">
	<h3 style="text-align:center; color:white; font-size:25px; "><strong>Add User</strong></h3>
    <input class="input" type="text" placeholder="Name" name="name" required>
    <div class="radiofield">
      <label style="font-family: 'Times New Roman', Times, serif;">Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" name="gender" value="MALE" required>&nbsp;Male &nbsp;&nbsp;
      <input type="radio" name="gender" value="FEMALE" required>&nbsp;Female
    </div>
    <input class="input" type="text" placeholder="Email" name="email" required>
    <input class="input" type="text" placeholder="Date of Birth"  name="dob" required>
    <input class="input" type="text" placeholder="Password" name="password" required>
    <input class="input" type="text" placeholder="Location" name="location" required>
    <input class="input" type="text" placeholder="Contact No" name="contactno" required>
    <center><button class="btns">Submit</button></center>
</form>
</center>
</body>
</html>
