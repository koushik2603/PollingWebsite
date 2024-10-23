<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>Reg Org</title>
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
        input[type=password],input[type=text]{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-family:sans-serif;
            box-sizing: border-box;
        }
        input[type="file"] {
  			display: none;
		}
		.custom-file-upload {
			  display: inline-block;
			  padding: 10px 20px;
			  cursor: pointer;
			  background-color: #1E90FF; /* Background color for the button */
			  color: white; /* Text color for the button */
			  border-radius: 5px;
			  font-size: 16px;
			  transition: background-color 0.3s ease;
			}
		.custom-file-upload:hover {
			  background-color: white;
			  color:black;
			  border-color:black;
			
			}

        input[type=submit] {
            width: 30%;
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
            background-color: #32CD32
            
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

        <h3 id="login">Organisation Registration</h3>

        <form action="insertorg" method="post" enctype="multipart/form-data">
            <table>
                <tr>
                    <td><label for="orgname">Organisation Name</label></td>
                    <td><input type="text" id="orgname" name="orgname" required /></td>
                </tr>

                <tr>
                    <td><label for="orgemail">Email ID</label></td>
                    <td><input type="email" id="orgemail" name="orgemail" required /></td>
                </tr>

                <tr>
                    <td><label for="orgpassword">Password</label></td>
                    <td><input type="password" id="orgpassword" name="orgpassword" required /></td>
                </tr>

                <tr>
                    <td><label for="orgaddress">Address</label></td>
                    <td><input type="text" id="orgaddress" name="orgaddress" /></td>
                </tr>

                <tr>
                    <td><label for="orglink">Organisation Link</label></td>
                    <td><input type="text" id="orglink" name="orglink" required="required"/></td>
                </tr>

                <tr>
                    <td><label for="orglogo" class="custom-file-upload">Upload Your Logo</label></td>
                    <td><input type="file" id="orglogo" name="orglogo" required="required" /></td>
                </tr>

                <tr align="center">
                    <td colspan="2"><input type="submit" value="Register" class="button" /></td>
                </tr>
            </table>
        </form>

        <h3 class="registration-link">
            Already Registered? <u><a href="orglogin">Click Here to login</a></u>
        </h3>
    </div>
</body>

</html>
