<%-- 
    Document   : personchild
    Created on : Jul 6, 2018, 3:46:05 PM
    Author     : isai.castro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            img.logoimg{
               width: 100px; height: 100px;
            }
        </style>
    </head>
    <body class="homepage">
<div id="header">

    <div id="logo">
        <img class="logoimg" src="<c:url value="/resources/images/logoimcye.png"/>">
        <a>Fooorba</a>
    </div>
</div>
        <div id="main">
            <div id="content" class="container">

                <ul class="nav nav-tabs" id="tabs">
                    <li class="active"><a data-toggle="tab" href="#home">Datos Personales</a></li>
                    <li><a data-toggle="tab" href="#menu1">Familiares</a></li>
                    <li><a data-toggle="tab" href="#menu2">Escolaridad</a></li>
                    <li><a data-toggle="tab" href="#menu3">Vivienda</a></li>
                </ul>

            </div>
        </div>
        <!--TABS Contents -->
        <div>
            <div id="content">
                <div class="tab-content">

                    <!--Datos de Obrero-->
                    <div id="home" class="tab-pane fade in active">
                        <div id="form">

                            <div class="col-lg-12">
                                <div class="page-header" style="font-size: 25pt; color: #00796B">
                                    <span class="glyphicon glyphicon-user"></span> Datos del Obrero
                                </div>
                            </div>
                            <!-- **************FORMULARIO*************** -->
                            <form action="#" method="POST" onsubmit="return validar();"
                                  autocomplete="off">

                                <!--Nombre del cliente-->
                                <div class="form-group">
                                    <label class="control-label">Nombre</label>
                                    <input placeholder="Nombre" type="text" class="form-control" id="nombre" name="nombre"
                                           required>
                                </div>
                                <!-- Apellido paterno del cliente-->

                                <div class="form-group">
                                    <label class="control-label">Primer Apellido</label>

                                    <input type="text" class="form-control" id="apellido_paterno" name="apellido_paterno"
                                           required>
                                </div>
                                <!-- Apellido Materno del cliente -->
                                <div class="form-group">
                                    <label class="control-label">Segundo Apellido</label>
                                    <input type="text" class="form-control" id="apellido_paterno" name="apellido_materno"
                                           required>
                                </div>

                                <!-- Fecha de Nacimiento -->

                                <div class="form-group">
                                    <label class="control-label">Fecha de Nacimeinto</label>
                                    <input type="date" class="form-control" id="apellido_paterno" name="apellido_materno"
                                           required>
                                </div>

                                <!-- Ocupacion -->

                                <div class="form-group">
                                    <label class="control-label">Ocupación:</label>
                                    <select class="form-control" id="apellido_paterno"
                                            name="apellido_materno"
                                            required>
                                        <option value="empty"></option>
                                        <option value="estudent">Estudiante</option>
                                        <option value="employe">Empleado</option>
                                        <option value="other">Otro</option>
                                    </select>
                                </div>

                                <!-- Teléfono del cliente -->

                                <div class="form-group">
                                    <label class="control-label">Teléfono:</label>
                                    <input type="phone" class="form-control" id="telefono" name="telefono" required>
                                    <div class="alert alert-info">
                                        <strong>Info!</strong> Telefono sin parentesis ni guiones medios!.
                                    </div>
                                </div>

                                <!-- Estado civil -->

                                <div class="form-group">
                                    <label class="control-label">Estado Civil:</label>
                                    <select class="form-control" id="apellido_paterno"
                                            name="apellido_materno"
                                            required>
                                        <option value="empty"></option>
                                        <option value="single">Soltero(a)</option>
                                        <option value="maried">Casado(a)</option>
                                        <option value="other">Divorciado(a)</option>
                                        <option value="other">Viudo(a)</option>
                                    </select>
                                </div>


                            </form>
                        </div>


                    </div>

                    <!--Datos de Tutor-->
                    <div id="menu1" class="tab-pane fade">

                        <!--Header-->
                        <div id="content-f" class="container">

                        </div>

                        <!--Formulario-->
                        <form action="#">
                            <div id="content">
                                <div class="row">
                                    <section class="6u">
                                        <div class="page-header" style="font-size: 25pt; color: #00796B">
                                            <span class="glyphicon glyphicon-user"></span> Padre
                                        </div>
                                    </section>
                                    <section class="6u">
                                        <div class="page-header" style="font-size: 25pt; color: #00796B">
                                            <span class="glyphicon glyphicon-user"></span> Madre
                                        </div>
                                    </section>
                                </div>
                                <!--Nombre-->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Nombre</label>
                                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                                        </div>
                                    </div>


                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Nombre</label>
                                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                                        </div>
                                    </div>

                                </div>

                                <!-- Apellido paterno-->
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Primer Apellido</label>
                                            <input type="text" class="form-control" id="apellido_paterno"
                                                   name="apellido_paterno"
                                                   required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <label class="control-label">Primer Apellido</label>
                                            <input type="text" class="form-control" id="apellido_paterno"
                                                   name="apellido_paterno"
                                                   required>
                                        </div>
                                    </div>
                                </div>

                                <!-- Apellido Materno -->
                                <div class="row">
                                    <div class="col-sm-6">

                                        <div class="form-group">
                                            <label class="control-label">Segundo Apellido:</label>
                                            <input type="text" class="form-control" id="apellido_paterno"
                                                   name="apellido_materno"
                                                   required>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <label class="control-label">Segundo Apellido:</label>
                                        <div class="">
                                            <input type="text" class="form-control" id="apellido_paterno"
                                                   name="apellido_materno"
                                                   required>
                                        </div>
                                    </div>
                                </div>

                                <!-- Teléfono -->
                                <div class="row">
                                    <div class="col-sm-6">

                                        <div class="form-group">
                                            <label class="control-label">Teléfono:</label>
                                            <input type="phone" class="form-control" id="telefono" name="telefono" required>
                                            <div class="alert alert-info">
                                                <strong>Info!</strong> Telefono sin parentesis ni guiones medios!.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="control-label">Teléfono:</label>
                                            <input type="phone" class="form-control" id="telefono" name="telefono" required>
                                            <div class="alert alert-info">
                                                <strong>Info!</strong> Telefono sin parentesis ni guiones medios!.
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <!-- Dirección del cliente -->
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="control-label">Dirección:</label>
                                            <input type="text" class="form-control" id="direccion" name="direccion" required>
                                        </div>
                                    </div>
                                    <!-- Dirección del cliente -->
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="control-label">Dirección:</label>
                                            <input type="text" class="form-control" id="direccion" name="direccion" required>
                                        </div>
                                    </div>
                                </div>


                                <!-- Ocupacion -->
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group-sm">
                                            <label class="control-label">Ocupación:</label>
                                            <select class="form-control" id="apellido_paterno" name="apellido_materno" required>
                                                <option value="empty"></option>
                                                <option value="Profesional">Profesionista</option>
                                                <option value="employe">Oficio</option>
                                                <option value="other">Otro</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group-sm">
                                            <label class="control-label">Ocupación:</label>
                                            <select class="form-control" id="apellido_paterno" name="apellido_materno" required>
                                                <option value="empty"></option>
                                                <option value="Profesional">Profesionista</option>
                                                <option value="employe">Oficio</option>
                                                <option value="other">Otro</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>


                    </div>

                    <!--Vivienda-->
                    <div id="menu2" class="tab-pane fade">

                        <form class="form-horizontal">

                            <label for="ejemplo_email_1">Email</label>
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <input class="form-control" type="email" id="ejemplo_email_1"
                                           placeholder="Introduce tu email">
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="ejemplo_password_1">Contraseña</label>
                                <input type="password" class="form-control" id="ejemplo_password_1"
                                       placeholder="Contraseña">
                            </div>
                            <div class="form-group">
                                <label for="ejemplo_archivo_1">Adjuntar un archivo</label>
                                <input type="file" id="ejemplo_archivo_1">
                                <p class="help-block">Ejemplo de texto de ayuda.</p>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Activa esta casilla
                                </label>
                            </div>
                            <button type="submit" class="btn btn-default">Enviar</button>
                        </form>
                    </div>

                    <!--Escolar-->
                    <div id="menu3" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Some content in menu 2.</p>
                    </div>

                </div>
                <!-- Botónnes para registrar y cancelar -->

            </div>
            <div id="form">
                <div class="row">
                    <div class="col-sm-offset-1">
                        <button type="submit" class="btn" style="background-color: #00796B; color: white">
                            Registrar
                        </button>
                    </div>
                    <div class="col-sm-offset-1">
                        <button type="button" class="btn btn-danger" data-toggle="modal"
                                data-target="#mymodal">
                            Cancelar
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!--Aqui Inicia el Foother de la pagina-->
        <div id="footer">
            <div class="container">
                <section>
                    <header>
                        <span class="byline">"Juntos hasta el ultimo aliento"</span>
                    </header>
                    <ul class="contact">
                        <li><a href="#" class="fa fa-twitter"><span>Twitter</span></a></li>
                        <li class="active"><a href="#" class="fa fa-facebook"><span>Facebook</span></a></li>
                        <li><a href="#" class="fa fa-dribbble"><span>Pinterest</span></a></li>
                        <li><a href="#" class="fa fa-tumblr"><span>Google+</span></a></li>
                    </ul>
                </section>
            </div>
        </div>

    </body>
</html>
