<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"  %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDP</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .table-wrap {
            max-width: 1300px;
            margin: 80px auto;
            overflow-x: auto;
        }

        table,
        td,
        th {
            /*   border: 1px solid #ddd; */
            text-align: left;
            font-size: 18px;
            text-transform: capitalize;
        }

        table thead tr {
            background-color: #071665;
            color: #fff;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            border-radius: 16px 16px 0px 0px;
            overflow: hidden;
        }

        table tbody tr td {
            border: 1px solid #ddd;
        }

        th,
        td {
            padding: 15px;
            white-space: nowrap;
        }

        table tbody tr:nth-child(odd) {
            background: #b4b4b442;
            color: #000;
            font-weight: 500;
        }

        .box-wrap {
            padding: 0px 16px;
        }

        table tbody tr td::last-child {
            background-color: red;
        }
    </style>
</head>

<body>
<%@ include file="adminhome.jsp" %>
	<br>
    <br>
    <br>
    <div class="box-wrap">
        <div class="table-wrap">
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>DOB</th>
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Location</th>
                        <th>Contact Number</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${userdata}"  var="us"> 
                    <tr>
                        <td><c:out value="${us.name}" /></td>
                        <td><c:out value="${us.dateofbirth}" /></td>
                        <td><c:out value="${us.gender}" /></td>
                        <td><c:out value="${us.email}" /></td>
                        <td><c:out value="${us.location}" /></td>
                        <td><c:out value="${us.contactno}" /></td>
                        <td><a href='<c:url value="deleteusers?id=${us.id}"></c:url>'>Delete</a></td>
                    </tr>
                 </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>