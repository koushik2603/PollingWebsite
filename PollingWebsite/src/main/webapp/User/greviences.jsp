<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>SDP</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<style>
    body {
        font-family: Arial;
        background-color: #000;
        /* background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvLFeNQeP6cXFl32wyfpxLod5gYMXZ7luU4Q&usqp=CAU'); */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    .container {
        width: 950px;
        margin: 80px auto;
        color: white;
        line-height: 1.5;
    }

    .text-center {
        text-align: center;
    }

    .content {
        display: flex;
        margin-top: 45px;
    }

    .icon {
        border-radius: 35px;
        padding: 15px;
        vertical-align: top;
    }

    .contact-info {
        display: inline-block;
        padding: 4px 20px 0px 20px;
    }

    .address-line {
        margin-top: 40px;
    }

    .col-1 {
        width: 530px;
    }

    .col-2 {
        flex: 1 1 auto;
        background-color: white;
    }

    .form-container {
        color: #000;
        padding: 30px;
    }

    .contact-info-title {
        color: #01bdd4;
    }

    .form-row {
        padding-bottom: 30px;
    }

    .form-field {
        width: 100%;
        border: none;
        border-bottom: 1px solid #000;
    }

    .send-btn {
        border: 0px;
        padding: 12px 26px;
        background-color: #01bdd4;
        color: white;
    }

    @media all and (max-width: 1024px) {
        .container {
            width: auto;
            padding: 30px;
        }

        .col-1 {
            width: 360px;
        }
    }

    @media all and (max-width: 700px) {
        .content {
            display: block;
        }

        .col-2 {
            margin-top: 40px;
        }

        .col-1 {
            width: 100%;
        }
    }

    @media all and (max-width: 500px) {
        .container {
            padding: 10px;
        }
    }

    .button {
        --color: #00A97F;
        padding: 0.8em 1.7em;
        background-color: transparent;
        border-radius: .3em;
        position: relative;
        overflow: hidden;
        cursor: pointer;
        transition: .5s;
        font-weight: 400;
        font-size: 17px;
        border: 1px solid;
        font-family: inherit;
        text-transform: uppercase;
        color: var(--color);
        z-index: 1;
    }

    .button::before,
    .button::after {
        content: '';
        display: block;
        width: 50px;
        height: 50px;
        transform: translate(-50%, -50%);
        position: absolute;
        border-radius: 50%;
        z-index: -1;
        background-color: var(--color);
        transition: 1s ease;
    }

    .button::before {
        top: -1em;
        left: -1em;
    }

    .button::after {
        left: calc(100% + 1em);
        top: calc(100% + 1em);
    }

    .button:hover::before,
    .button:hover::after {
        height: 410px;
        width: 410px;
    }

    .button:hover {
        color: rgb(10, 25, 30);
    }

    .button:active {
        filter: brightness(.8);
    }
</style>

<body>
    <div class="container">
        <div class="text-center">
            <h1>Contact Us</h1>
            <div>
                We're committed to turning your grievances into even better service, enhancing your experience.
                <div>
                    "Your Desires, Our Duty is Serving with Unwavering Dedication"
                </div>
            </div>
        </div>
        <div class="content">
            <div class="col-1">
                <div class="address-line">
                    <img alt="location" src="User/GIFS/gps.gif" class="icon" height="70px" width="70px">
                    <div class="contact-info">
                        <div class="contact-info-title">Address</div>
                        <div>Near Chinnaswamy stadium,</div>
                        <div>Bangalore,Karnataka</div>
                        <div>521333</div>
                    </div>
                </div>
                <div class="address-line">
                    <img alt="location" src="User/GIFS/call.gif" class="icon" height="70px" width="70px">
                    <div class="contact-info">
                        <br>
                        <div class="contact-info-title">Phone</div>
                        <div>+91-7569039509</div>
                    </div>
                </div>
                <div class="address-line">
                    <img alt="location" src="User/GIFS/email.gif" class="icon" height="70px" width="70px">
                    <div class="contact-info">
                        <br>
                        <div class="contact-info-title">Email</div>
                        <div>EVoteX@gmail.com</div>
                    </div>
                </div>
            </div>
            <div class="col-2">
                <form action="greviencedata" method="post">
                    <div class="form-container">
                        <h2>Report an Issue</h2>
                        <div class="form-row">
                            <label style="font-size:19px;">Issue</label>
                            <div>
                                <input type="text" name="issue" class="form-field" style="height: 30px; font-size:16px;">
                            </div>
                        </div>
                        <div class="form-row">
                            <label style="font-size:19px;">Category</label>
                            <div>
                                <input type="text" name="category" class="form-field" style="height: 30px; font-size:16px;">
                            </div>
                        </div>
                        <div class="form-row">
                            <label style="font-size:19px;">Explain in Detail</label>
                            <div>
                                <input type="text" name="details" class="form-field" style="height: 30px; font-size:16px;">
                            </div>
                        </div>

                        <button class="button"> SUBMIT
                        </button>
                        &nbsp; &nbsp; &nbsp;
                        <button class="button"><a href="userhome" style="text-decoration:none; ">Go Back</a>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>