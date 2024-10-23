<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reg Org</title>
<style>
body {
    background-color: #f0f8ff;
    font-family: Arial, sans-serif;
}

h3 {
    color: #4b0082;
}

.blink {
    animation: blinker 1s linear infinite;
}

@keyframes blinker {
    50% { opacity: 0; }
}

form {
    background-color: #e6e6fa;
    padding: 20px;
    border-radius: 15px;
}

table {
    border-spacing: 10px;
}

input[type=text], input[type=email], input[type=password] ,select{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4b0082;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #800080;
}

label {
    color: #4b0082;
    font-weight: bold;
}

input[type="file"] {
    display: none;
}

/* Style your own button */
.custom-file-upload {
    display: inline-block;
    padding: 10px 20px;
    cursor: pointer;
    background-color: #1E90FF; /* DodgerBlue */
    color: white;
    border-radius: 5px;
    font-size: 16px;
    transition: background-color 0.3s ease;
}

/* Change color on hover */
.custom-file-upload:hover {
    background-color: #32CD32; /* LimeGreen */
}


</style>

</head>
<body>
<span class="blink">
<h3 align=center style="color:red">${message}</h3>
</span>

<h3 align=center><u>Organisation User Registration</u></h3>

<br>

<form action="insertorguser" method="post">

<table align=center>

<tr><td></td></tr>

<tr>
<td><label>User Name</label></td>
<td><input type="text" name="orgusername" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<select name="orgusergender" required>
<option value="">---Select---</option>
<option value="MALE">Male</option>
<option value="FEMALE">Female</option>
<option value="OTHERS">Others</option>
</select>
</td>
</tr>

<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="orguseremail" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="orguserpassword" required/></td>
</tr>

<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Add" class="button"></td>
</tr>

</table>

</form>
    
<h3 align="center">
Already Registered? <a href="orguserlogin">Click Here to login</a>
</h3>
    
</body>

</html>