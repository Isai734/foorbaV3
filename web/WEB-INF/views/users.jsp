<%-- 
    Document   : users
    Created on : Jul 2, 2018, 8:01:41 PM
    Author     : isai.castro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <div align="center">
            <h1>Contact List</h1>
            <table border="1">
                <th>No</th>
                <th>Username</th>
                <th>Email</th>
                   
                <c:forEach var="users" items="${userList}" varStatus="status">
                    <tr>
                        <td>${status}</td>
                        <td>${users.password}</td>
                        <td>${users.email}</td>
                    </tr>
                </c:forEach>             
            </table>
           
        </div>
    </body>
</html>
