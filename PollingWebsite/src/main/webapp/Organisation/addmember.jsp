<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
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
            width: 400px;
            padding: 40px;
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
        input[type=text],select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-family: sans-serif;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 30%;
            background-color: #1E90FF;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type=submit]:hover {
            background-color: #32CD32;
        }

        .button {
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
    </style>
</head>
<body>
<%@ include file="orghome.jsp" %>


    <div class="container">
        <h3 class="blink">
            <span class="message">${message}</span>
        </h3>

        <h3 id="login">Add Member</h3>

        <form method="post" action="insertmember">
            <table>
                <tr>
                    <td><label for="name">Name</label></td>
                    <td><input type="text" id="name" name="name" required="required" /></td>
                </tr>

                <tr>
                    <td><label for="gender">Gender</label></td>
                    <td>
                        <select id="gender" name="gender" required>
                            <option value="">---Select---</option>
                            <option value="MALE">Male</option>
                            <option value="FEMALE">Female</option>
                            <option value="OTHERS">Others</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td><label for="email">Email ID</label></td>
                    <td><input type="email" id="email" name="email" required /></td>
                </tr>

                <tr align="center">
                    <td colspan="2"><input type="submit" value="Add" class="button"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
