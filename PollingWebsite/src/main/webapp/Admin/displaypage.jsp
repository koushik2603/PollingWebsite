<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SDP</title>
<style>
	.msgoption
	{
		height:500px;
		width:500px;
		background-color:aliceblue;
	}
	
	h1
	{
		text-align:18px;
	}
	.ahreftag
	{
		color:white;
		font-size:25px;
	}
</style>
</head>
<body>
	<%@ include file="adminhome.jsp" %>
	<center>
		<div class="msgoption">
			<center>
		        <br>
		        <br>
		        <br>
		        <br>
		        <br>
		        <br>
		        <br>
				<h1> ${message} </h1>
				<br>
				<a href="${link}" class="ahreftag">Go Back</a>
			</center>
			
		</div>
	</center>
</body>
</html>