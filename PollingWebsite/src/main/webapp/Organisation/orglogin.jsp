<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<title>Org Login</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        html {
            --s: 200px; /* control the size */
            --c1: #1d1d1d;
            --c2: #4e4f51;
            --c3: #3c3c3c;
            background:
                repeating-conic-gradient(from 30deg,#0000 0 120deg,var(--c3) 0 180deg)
                calc(.5*var(--s)) calc(.5*var(--s)*0.577),
                repeating-conic-gradient(from 30deg,var(--c1) 0 60deg,var(--c2) 0 120deg,var(--c3) 0 180deg);
            background-size: var(--s) calc(var(--s)*0.577);
        }

        body {
            font-family: Arial, sans-serif;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly more opaque container */
            border-radius: 20px;
            width: 300px;
            padding: 30px;
        }

        h3 {
            color: #1E90FF;
            font-size: 18px;
        }

        h3#login {
            font-size: 2em;
            animation: loginAnimation 2s infinite;
            padding-bottom: 10px;
        }
        @keyframes loginAnimation {
            0% {
                color: #1E90FF;
            }
            50% {
                color: #32CD32;
            }
            100% {
                color: #1E90FF;
            }
        }

        .blink {
            animation: blinker 1s linear infinite;
        }

        @keyframes blinker {
            50% {
                opacity: 0;
            }
        }

        form {
            width: 100%;
            margin: 0 auto;
        }

        table {
            margin: 0 auto;
        }

        input[type=email],
        input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-family:sans-serif;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 50%;
            background-color: #1E90FF;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type=submit]:hover {
            background-color: #32CD32;
            
       }
       .button{
       font-size: 20px;
       font-family: sans-serif;
       }

        label {
            color: ;
            font-weight: bold;
        }

        .message {
            color: red;
            font-size: 18px;
        }

        .registration-link a{
            text-decoration: none;
            color: black;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h3 class="blink">
            <span class="message">${message}</span>
        </h3>

        <h3 id="login">Organisation Login</h3>

        <form method="post" action="checkorglogin">
            <table>
                <tr>
                    <td><label for="email">Email ID</label></td>
                    <td><input type="email" id="email" name="email" required/></td>
                </tr>

                <tr>
                    <td><label for="password">Password</label></td>
                    <td><input type="password" id="password" name="password" required/></td>
                </tr>

                <tr align="center">
                    <td colspan="2"><input type="submit" value="Login" class="button"></td>
                </tr>
            </table>
        </form>

        <h3 class="registration-link">
            New Registration? <u><a href="regorg">Click Here</a></u>
        </h3>
    </div>
</body>
</html>
