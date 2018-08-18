<%-- 
    Document   : header
    Created on : Jul 3, 2018, 5:58:03 PM
    Author     : isai.castro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- let's add tag srping:url -->
        <c:url value="/resources/css/style-loader.css" var="style_loader" />
        <c:url value="/resources/css/style_custom.css" var="style_custom" />

        <c:url value="/resources/js/skel.min.js" var="skel" />
        <c:url value="/resources/js/skel-panels.min.js" var="skel_panelsm" />
        <c:url value="/resources/js/init.js" var="init_js" />

        <c:url value="/resources/css/skel-noscript.css" var="skel_noscript" />
        <c:url value="/resources/css/style.css" var="style" />
        <c:url value="/resources/css/style-desktop.css" var="style_desktop" />

        <c:url value="/resources/css/bootstrap.css" var="bootstrap" />
        <c:url value="/resources/js/jquery-3.2.0.min.js" var="jquery" />
        <c:url value="/resources/js/bootstrap.js" var="bootstrapjs" />
        <!-- Finish adding tags -->


        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

        <link rel="stylesheet" href="${style_loader}"/>
        <link rel="stylesheet" href="${style_custom}"/>


        <script src="${skel}"></script>
        <script src="${skel_panelsm}"></script>
        <script src="${init-js}"></script>
        
        <link rel="stylesheet" href="${skel_noscript}"/>
        <link rel="stylesheet" href="${style}"/>
        <link rel="stylesheet" href="${style_desktop}"/>
        
        
         <noscript>
        <link rel="stylesheet" href="${skel_noscript}"/>
        <link rel="stylesheet" href="${style}"/>
        <link rel="stylesheet" href="${style_desktop}"/>
        </noscript>
        
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" type="text/css" href="${bootstrap}">

        
    <div class="loader">
    </div>
</head>

<body>


    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="">
                    <span class="glyphicon glyphicon-wrench"></span> Administracion
                </a>
            </div>

            <div class="collapse navbar-collapse" id="menu">
                <ul class="nav navbar-nav">

                    <li class="dopdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="glyphicon glyphicon-list"></span> Registro <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="<c:url value="/personchild"/>">
                                    <span class="glyphicon glyphicon-user"></span> Menores de Edad
                                </a>
                            </li>

                            <li>
                                <a href="">
                                    <span class="glyphicon glyphicon-user"></span> Adultos
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="">
                            <span class="glyphicon glyphicon-list-alt"></span> Reportes
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <span class="glyphicon glyphicon-list"></span> Estadisticas
                        </a>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="<c:url value="/logout"/>">
                            <span class="glyphicon glyphicon-off"></span> Cerrar Sesión
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <script type="text/javascript">
        $(window).load(function () {
            $(".loader").fadeOut();
        })
    </script>

    <script src="${jquery}"></script>
    <script src="${bootstrapjs}"></script>
</body>
</html>