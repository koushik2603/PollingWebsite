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
                        <th>Poll Id</th>
                        <th>Poll Name</th>
                        <th>Candidate-1</th>
                        <th>Candidate-2</th>
                        <th>Candidate-3</th>
                        <th>Active Status</th>
                        <th>Hosted by</th>
                        <th>Poll Type</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${polldata}"  var="p"> 
                    <tr>
                        <td><c:out value="${p.id}" /></td>
                        <td><c:out value="${p.name}" /></td>
                        <td><c:out value="${p.c1}" /></td>
                        <td><c:out value="${p.c2}" /></td>
                        <td><c:out value="${p.c3}" /></td>
                        <td><c:out value="${p.activeness}" /></td>
                        <td><c:out value="${p.hostname}" /></td>
                        <td><c:out value="${p.type}" /></td>
                    </tr>
                 </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>