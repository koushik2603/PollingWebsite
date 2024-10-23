<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<title>Org User Login</title>
<link type="text/css" rel="stylesheet" href="css/style.css">

<style>
<style>
body {
    background-color: #f0f8ff;
    font-family: Arial, sans-serif;
}

h3 {
    color: #1E90FF; /* DodgerBlue */
}

h3#login {
    font-size: 2em; /* Increase the font size */
    animation: loginAnimation 2s infinite; /* Add animation */
}

@keyframes loginAnimation {
    0% { color: #1E90FF; }
    50% { color: #32CD32; }
    100% { color: #1E90FF; }
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

input[type=email], input[type=password] {
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
    background-color: #1E90FF; /* DodgerBlue */
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #32CD32; /* LimeGreen */
}

label {
    color: #1E90FF; /* DodgerBlue */
    font-weight: bold;
}
</style>

</head>
<body>
<br>
<span class="blink">
<h3 align=center style="color:red">${message}</h3>
</span>


<h3 id="login" align=center><u>Organisation User Login</u></h3>


<br>


<form method="post" action="checkorguserlogin">
 
<table align=center>


<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="password" required/></td>
</tr>



<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Login" class="button"></td>
</tr>

</table>

</form>

<br>

<h3 align="center">
New Org User Registration ? <a href="orguserreg">Click Here</a>
</h3>


</body>
</html>