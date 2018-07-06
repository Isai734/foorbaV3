<%-- 
    Document   : login
    Created on : Jul 3, 2018, 8:26:38 PM
    Author     : isai.castro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
    <head>
        <!-- let's add tag srping:url -->
        <c:url value="/resources/css/style_login.css" var="style_login" />
        <c:url value="/resources/images/logoimcye.png" var="logoimcye" />
        <c:url value="/validate" var="action_url" />
        <!-- let's add tag srping:url -->
        <c:url value="/resources/js/init.js" var="init_js" />
        <c:url value="/resources/css/bootstrap.css" var="bootstrap" />
        <c:url value="/resources/js/jquery-3.2.0.min.js" var="jquery" />
        <c:url value="/resources/js/bootstrap.js" var="bootstrapjs" />
        <!-- Finish adding tags -->
        <!-- let's add tag srping:url -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Inicio De Sesión</title>
        <link rel="stylesheet" type="text/css" href="${style_login}">
        <link rel="stylesheet" type="text/css" href="${bootstrap}">
        <script src="${init_js}"></script>
        <style>
            .login {
                max-width: 330px;
                padding: 15px;
                margin: 0 auto;
            }

            #avatar {
                width: 200px;
                height: 200px;
                margin: 0px auto 10px;
                display: block;
                border-radius: 50%;
            }

            .container {
                max-width: 380px;
            }

        </style>

    <div> 
        <div class="inner">
            <div id="backgroundchange">
                <div class="backgroundimg" id="back1"></div>
                <div class="backgroundimg" id="back2"></div>
                <div class="backgroundimg" id="back3"></div>
                <div class="backgroundimg" id="back4"></div>
                <div class="backgroundimg" id="back5"></div>
            </div>
        </div>
    </div>
</head>
<body class="login">

    <div class="container">
        <br>
        <div class="img-circle">
            <div class="col-xs-12">
                <img src="${logoimcye}" id="avatar">
            </div>
        </div>

        <!-- FORMULARIO -->
        <form:form name="form_1" action="${action_url}" method="POST" autocomplete="off" modelAttribute="user">

            <c:if test="${mssg != null}">
                <div class="col-xs-12">
                    <div class="alert alert-danger">
                        <strong>Error!</strong> ${mssg}
                    </div>
                </div>

            </c:if>
            <div class="form-group-lg">
                <form:input path="email" id="usuario" name="usuario" placeholder="Usuario" class="form-control"/>
            </div>
            <br>
            <div class="form-group-lg">
                <form:password path="password" id="contra" name="contra" placeholder="Contraseña" class="form-control"/>
            </div>
            <br>
            <table class="table">
                <tr>
                    <td>
                        <button name="boton" type="submit" class="btn btn-md"
                                style="background-color: #00796B; color: white"><span
                                class="glyphicon glyphicon-log-in glyphicon-align-right"></span> Iniciar Sesión
                        </button>
                    </td>
                    <td>
                        <button name="entrar" onclick="registrar()" type="button" class="btn btn-md btn-primary"><span
                                class="glyphicon glyphicon-check"></span> Registrate
                        </button>
                    </td>
                </tr>
            </table>
        </form:form>
    </div>

    <script>
        function registrar() {
            window.location = "../cliente/AddPersona.php";
        }
    </script>
    <script src="${jquery}"></script>
    <script src="${bootstrapjs}"></script>

</body>
</html>