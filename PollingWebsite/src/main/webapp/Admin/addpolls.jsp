<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDP</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Gabarito:wght@500&display=swap');

        body {
            background-color: rgb(255, 255, 255);
            background-size: 400% 400%;
            color: #000000;
            font-family: 'Gabarito', sans-serif;
        }

        .container-18 {
            max-width: 400px;
            margin: 100px auto;
            padding: 20px;
            background-image: linear-gradient(to top, #ffb958 0%, #d2ff97 100%);
            border-radius: 10px;
            border: 2px solid transparent;
            transition: border-color 0.3s ease, transform 0.3s ease;
            /* Add transform transition */
            position: relative;
            /* Add this line to allow for z-index */
        }

        .container-18:hover {
            border-color: #000;
            transform: translateY(-10px);
            /* Apply the Y-axis transform on hover */
            z-index: 1;
            /* Add this line for z-index */
        }

        h1 {
            font-size: 36px;
            margin-bottom: 20px;
            padding-bottom: 10px;
        }

        .form-group {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            padding-bottom: 10px;
        }

        .form-group label {
            flex: 1;
            width: 100px;
            /* Set label width as needed */
        }

        .form-group select,
        .form-group input {
            flex: 2;
            font-size: 16px;
            padding: 10px;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .createButton {
            background-color: #8049ff;
            color: #fff;
            font-size: 20px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-family: 'Gabarito', sans-serif;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        .createButton:hover {
            background-color: #aa95db;
            color: #351e6a;
        }

        select:focus,
        input:focus {
            border: 2px solid rgb(33, 153, 0);
        }
    </style>
</head>

<body>
    <%@ include file="adminhome.jsp" %>
    <div class="container-18">
        <center>
            <h1>Create Poll</h1>
        </center>
        <form onsubmit="return validateForm()" method="post" action="insertpolldata">
            <div class="form-group">
                <label>Poll Name:</label>
                <input type="text" name="pollname" required>
            </div>
            
            <div class="form-group">
                <label for="nominee3">Nominee 1:</label>
                <input type="text" id="nominee1" name="n1" required>
            </div>
            
            <div class="form-group">
                <label for="nominee3">Nominee 2:</label>
                <input type="text" id="nominee2" name="n2" required>
            </div>

            <div class="form-group">
                <label for="nominee3">Nominee 3:</label>
                <input type="text" id="nominee3" name="n3" required>
            </div>

            <div class="form-group">
                <label for="companyName">Poll Host:</label>
                <input type="text" id="companyName" name="pollhost" value="${adminname}" readonly>
            </div>

            <div class="form-group">
                <label for="pollType">Poll Type:</label>
                <input type="text" id="pollType" name="polltype" value="PUBLIC" readonly>
            </div>

            <center> <button type="submit" class="createButton">Create</button></center>
        </form>
    </div>

    <script>
        function validateForm() {
            var nominee1 = document.getElementById("nominee1").value;
            var nominee2 = document.getElementById("nominee2").value;
            var nominee3 = document.getElementById("nominee3").value;

            if (nominee1 == nominee2 || nominee1 == nominee3 || nominee2 == nominee3) {
                alert("Please select unique nominees.");
                return false;
            }

            return true;
        }
    </script>
</body>

</html>