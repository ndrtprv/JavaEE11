<%-- 
    Document   : index.jsp
    Created on : 15 груд. 2022 р., 18:37:05
    Author     : Andrii
--%>

<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java EE 11 Page</title>
        <style>
            body {
                background-image:url("https://visit.sumy.ua/wp-content/uploads/2019/04/345345-1.png");
                background-repeat: no-repeat;
                background-size: cover;
                background-color: #cccccc; 
                font: "Roboto";
            }
            h1 {
                text-align: center;
            }
            #page {
                width: 800px;
            }
            form {
                width: 400px;
                margin: auto;
            }
            mark {
                background-color: indianred;
                font-weight: bold;
                font-size: 14px;
            }
            input[type=submit] {
                margin: auto;
                font-weight: bold;
            }
            </style>
    </head>
    <body>
        <div id="page">
            <h1>Hi! Tell me, please, about yourself.</h1>
            <form>
                <table>
                    <tbody>
                        <tr>
                            <td><label for="name"></label><b>Name</b></td> 
                            <td><input id="name" type="text" name="name"></td>
                        </tr>
                        <tr>
                            <td><label for="surname"></label><b>Surname</b></td> 
                            <td><input id="surname" type="text" name="surname"></td>
                        </tr>
                        <tr>
                            <td><label for="email"></label><b>Email</b></td> 
                            <td><input id="email" type="email" name="email"></td>
                        </tr>
                    </tbody>
                </table>
                <input type="submit" name="send" value="Send">
            </form>
            <c:if test="${not empty param.send}">
                <c:set var="id" value="${id+1}" scope="application"/>
                
                <c:if test="${not empty param.name}">
                    <c:set var="name" value="${param.name}" scope="session"/>
                    <p><mark>Name: ${param.name}</mark></p>
                </c:if>
                    
                <c:if test="${not empty param.surname}">
                    <c:set var="surname" value="${param.surname}" scope="session"></c:set>
                    <p><mark>Surname: ${param.surname}</mark></p>
                </c:if>
                    
                <c:if test="${not empty param.email}">
                    <c:set var="email" value="${param.email}" scope="session"/>
                    <p><mark>Email: ${param.email}</mark></p>
                </c:if>
            </c:if>
        </div>
    </body>
</html>
