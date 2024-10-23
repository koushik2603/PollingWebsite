<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Poll</title>
    <!-- Add any CSS or JavaScript if needed -->
<style>
body {
    background-color: #f0f8ff;
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

form {
    background-color: #e6e6fa;
    padding: 20px;
    border-radius: 15px;
    width: 80%;
    max-width: 500px;
    box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
}

h2 {
    color: #4b0082;
    text-align: center;
    margin-right: 20px;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    color: #4b0082;
    font-weight: bold;
}

.form-group input[type="text"],
.form-group input[type="date"],
.form-group textarea,
.form-group select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

button {
    display: inline-block;
    padding: 14px 20px;
    color: white;
    background-color: #4b0082;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
}

button:hover {
    background-color: #800080;
}
</style>


    
</head>
<body>
    <!-- <h2>Create a Poll</h2> -->
    <form onsubmit="return validateForm()" action="createPollServlet" method="post">
        <div class="form-group">
            <label for="pollName">Poll Name</label>
            <input type="text" id="pollName" name="pollName" required>
        </div>
        <div class="form-group">
            <label for="nominee1">Nominee 1</label>
            <select id="nominee1" name="nominee1" required>
                <option value="">Select Nominee</option>
                <c:forEach var="member" items="${memberList}">
                    <option value="${member.id}">${member.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="nominee2">Nominee 2</label>
            <select id="nominee2" name="nominee2" required>
                <option value="">Select Nominee</option>
                <c:forEach var="member" items="${memberList}">
                    <option value="${member.id}">${member.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="nominee3">Nominee 3</label>
            <select id="nominee3" name="nominee3" required>
                <option value="">Select Nominee</option>
                <c:forEach var="member" items="${memberList}">
                    <option value="${member.id}">${member.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
                <label for="companyName">Poll Host:</label>
                <input type="text" id="companyName" name="pollhost" value="${orgname}" readonly>
            </div>

            <div class="form-group">
                <label for="pollType">Poll Type:</label>
                <input type="text" id="pollType" name="polltype" value="PUBLIC" readonly>
            </div>
        <button type="submit">Create Poll</button>
    </form>
</body>
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
</html>
