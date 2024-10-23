<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
 <title>View Members</title>
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style>
body {
    background-color: #f0f8ff;
    font-family: Arial, sans-serif;
}

h3 {
    color: #1E90FF; /* DodgerBlue */
    font-size: 2em;
}

table {
    border-collapse: collapse;
    width: 100%;
}

table, th, td {
    border: 1px solid #1E90FF; /* DodgerBlue */
}

th {
    background-color: #1E90FF; /* DodgerBlue */
    color: white;
    padding: 10px;
}

td {
    padding: 10px;
    text-align: left;
}

tr:nth-child(even) {
    background-color: #e6e6fa;
}

tr:hover {
    background-color: orange; /* LimeGreen */
}
</style>

</head> 
<body> 
 
 <%@ include file="orghome.jsp" %>
<br> 
 
<h3 align="center"><u>View All Members</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>ID</td> 
<td>NAME</td> 
<td>GENDER</td>
<td>EMAIL</td> 
</tr> 
 
<c:forEach items="${memdata}"  var="mem"> 
<tr> 
<td><c:out value="${mem.id}" /></td> 
<td><c:out value="${mem.name}" /></td> 
<td><c:out value="${mem.gender}" /></td>
<td><c:out value="${mem.email}" /></td> 

 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>
