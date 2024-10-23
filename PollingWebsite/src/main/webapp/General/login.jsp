<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDP</title>
    <link  type="text/css" rel="stylesheet" href="General/css/register.css">
</head>

<body>
    <div id="container" class="container">
        <!-- FORM SECTION -->
        <div class="row">
            <!-- SIGN UP -->
            <div class="col align-items-center flex-col sign-up">
                <form action="userregister" method="post">
                <div class="form-wrapper align-items-center">
                    <div class="form sign-up">
                            <div class="input-group">
                                <input type="text" placeholder="Username" name="name" required>
                            </div>
                            <div class="radiofield">
                                <label style="font-family: 'Times New Roman', Times, serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="gender" value="MALE" required>&nbsp;Male &nbsp;&nbsp;
                                <input type="radio" name="gender" value="FEMALE" required>&nbsp;Female
                            </div>
                            <div class="input-group">
                                <input type="text" placeholder="Date of Birth" name="dob" required> 
                            </div>
                            <div class="input-group">
                                <input type="email" placeholder="Email" name="email" required>
                            </div>
                            <div class="input-group">
                                <input type="password" placeholder="Password" name="pwd" required>
                            </div>
                            <div class="input-group">
                                <input type="text" placeholder="Residence" name="location" required>
                            </div>
                            <div class="input-group">
                                <input type="text" placeholder="Contact Number" name="contactno" required>
                            </div>

                            <button type="submit">
                                Sign up
                            </button>
                            <p>
                             <b><a href="/" style="text-decoration: none; color:black;">Visit Home</a></b>
                            </p>
                            <p>
                                <span>
                                    Already have an account?
                                </span>
                                <b onclick="toggle()" class="pointer">
                                    Sign in here
                                </b>
                            </p>
                        </div>
                </div>
            </form>

            </div>
            <!-- END SIGN UP -->
            <!-- SIGN IN -->
            <div class="col align-items-center flex-col sign-in">
                <form action="checkuserlogin" method="post">
                    <div class="form-wrapper align-items-center">
                        <div class="form sign-in">
                            <div class="input-group">
                                <input type="text" placeholder="Email Address" name="email" required>
                            </div>
                            <div class="input-group">
                                <input type="password" placeholder="Password" name="pwd" required>
                            </div>
                            <button type="submit">
                                Sign in
                            </button>
                            <p>
                                <b>
                                    Forgot password?
                                </b>
                            </p>
                            <p>
                            	<b><a href="/" style="text-decoration: none; color:black;">Visit Home</a></b>
                            </p>
                            <p>
                                <span>
                                    Don't have an account?
                                </span>
                                <b onclick="toggle()" class="pointer">
                                    Sign up here
                                </b>
                            </p>
                        </div>
                    </div>
                </form>
                <div class="form-wrapper">

                </div>
            </div>
            <!-- END SIGN IN -->
        </div>
        <!-- END FORM SECTION -->
        <!-- CONTENT SECTION -->
        <div class="row content-row">
            <!-- SIGN IN CONTENT -->
            <div class="col align-items-center flex-col">
                <div class="text sign-in">
                    <h2>
                        Welcome
                    </h2>

                </div>
                <div class="img sign-in">

                </div>
            </div>
            <!-- END SIGN IN CONTENT -->
            <!-- SIGN UP CONTENT -->
            <div class="col align-items-center flex-col">
                <div class="img sign-up">

                </div>
                <div class="text sign-up">
                    <h2>
                        Join with us
                    </h2>

                </div>
            </div>
            <!-- END SIGN UP CONTENT -->
        </div>
        <!-- END CONTENT SECTION -->
    </div>
    <script>
        let container = document.getElementById('container')

        toggle = () => {
            container.classList.toggle('sign-in')
            container.classList.toggle('sign-up')
        }

        setTimeout(() => {
            container.classList.add('sign-in')
        }, 200)
    </script>
</body>

</html>