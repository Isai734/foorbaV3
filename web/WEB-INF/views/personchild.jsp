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
            <div id="content" class="page-header">
                <ul class="nav nav-tabs nav-justified" id="tabs">
                    <li class="active"><a data-toggle="tab" href="#home">Datos Personales</a></li>
                    <li><a data-toggle="tab" href="#menu1">Familiares</a></li>
                    <li><a data-toggle="tab" href="#menu3">Vivienda</a></li>
                    <li><a data-toggle="tab" href="#menu2">Escolaridad</a></li>
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
                            <form action="#" method="POST" onsubmit="return validar();" autocomplete="off">

                                <!--Nombre del cliente-->
                                <div class="form-group">
                                    <label class="control-label">Nombre</label>
                                    <input placeholder="Nombre" type="text" class="form-control" id="nombre" name="nombre"
                                           required>
                                </div>

                                <!-- Apellido paterno del cliente-->
                                <div class="form-group">
                                    <label class="control-label">Primer Apellido</label>
                                    <input type="text" class="form-control" id="apellido_paterno" name="apellido_paterno" required>
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
                                    <select class="form-control" name="ocupacion_select"
                                            required>
                                        <option value="empty"></option>
                                        <option value="estudent">Estudiante</option>
                                        <option value="employe">Empleado</option>
                                        <option value="other">Otro</option>
                                    </select>
                                </div>

                                <div id="school" class="row" hidden>
                                    <div class="column-sm-4">
                                        <label class="control-label">Agregue la escuela del alumno</label>
                                    </div>
                                    <div class="column-sm-4">
                                        <input class="form-control" type="button" value="Agregar Escuela"/>         
                                    </div>
                                </div>

                                <!-- Apellido paterno del cliente-->
                                <div id="otra_ocupacion" class="form-group" hidden>
                                    <input type="text" class="form-control" placeholder="Especifique otra ocupación" id="apellido_paterno" name="apellido_paterno" required>
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
                        <div id="form" >

                            <ul class="nav nav-tabs nav-justified" id="tabs">
                                <li class="active"><a data-toggle="tab" href="#father"> Datos del Padre</a></li>
                                <li><a data-toggle="tab" href="#mother"> Datos de la Madre</a></li>
                            </ul>
                            <div class="tab-content">

                                <div id="father" class="tab-pane fade in active">
                                    <!--Formulario-->
                                    <form action="#">
                                        <!--Nombre-->
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label class="control-label">Nombre</label>
                                                <input type="text" class="form-control" id="nombre" name="nombre" required>
                                            </div>
                                        </div>
                                        <!-- Apellido paterno-->
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label class="control-label">Primer Apellido</label>
                                                <input type="text" class="form-control" id="apellido_paterno" name="apellido_paterno" required>
                                            </div>
                                        </div>

                                        <!-- Apellido Materno -->
                                        <div class="form-group">

                                            <div class="form-group">
                                                <label class="control-label">Segundo Apellido:</label>
                                                <input type="text" class="form-control" id="apellido_paterno"
                                                       name="apellido_materno"
                                                       required>
                                            </div>
                                        </div>

                                        <!-- Teléfono -->
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label class="control-label">Teléfono:</label>
                                                <input type="phone" class="form-control" id="telefono" name="telefono" required>
                                                <div class="alert alert-info">
                                                    <strong>Info!</strong> Telefono sin parentesis ni guiones medios!.
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <!-- Dirección del cliente -->
                                            <div class="form-group">
                                                <label class="control-label">Dirección:</label>
                                                <input type="text" class="form-control" id="direccion" name="direccion" required>
                                            </div>
                                        </div>

                                        <!-- Ocupacion -->
                                        <div class="form-group">
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
                                    </form>

                                </div>

                                <div id="mother" class="tab-pane fade">
                                    <!--Formulario para datos de la madre-->
                                    <form action="#">
                                        <!--Nombre-->
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label class="control-label">Nombre</label>
                                                <input type="text" class="form-control" id="nombre" name="nombre" required>
                                            </div>
                                        </div>
                                        <!-- Apellido paterno-->
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label class="control-label">Primer Apellido</label>
                                                <input type="text" class="form-control" id="apellido_paterno" name="apellido_paterno" required>
                                            </div>
                                        </div>

                                        <!-- Apellido Materno -->
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label class="control-label">Segundo Apellido:</label>
                                                <input type="text" class="form-control" id="apellido_paterno" name="apellido_materno" required>
                                            </div>
                                        </div>

                                        <!-- Teléfono -->
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label class="control-label">Teléfono:</label>
                                                <input type="phone" class="form-control" id="telefono" name="telefono" required>
                                                <div class="alert alert-info">
                                                    <strong>Info!</strong> Telefono sin parentesis ni guiones medios!.
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <!-- Dirección del cliente -->
                                            <div class="form-group">
                                                <label class="control-label">Dirección:</label>
                                                <input type="text" class="form-control" id="direccion" name="direccion" required>
                                            </div>
                                        </div>

                                        <!-- Ocupacion -->
                                        <div class="form-group">
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
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Escolaridad-->
                    <div id="menu2" class="tab-pane fade">
                        <form  id="form" class="form-horizontal">
                             <div class="form-group">
                                <label for="ejemplo_password_1">Escuela</label>
                                <input type="text" class="form-control" id="ejemplo_password_1" placeholder="Nombre de la Escuela">
                            </div>
                            
                             <div class="form-group">
                                <label for="ejemplo_password_1">Dirección</label>
                                <input type="text" class="form-control" id="ejemplo_password_1" placeholder="Dirección">
                            </div>

                           <!-- Estado civil -->
                                <div class="form-group">
                                    <label class="control-label">Nivel de estudio:</label>
                                    <select class="form-control" id="apellido_paterno" required>
                                        <option value="empty">Seleccione una opcción</option>
                                        <option value="single">Primaria</option>
                                        <option value="maried">Secundaria</option>
                                        <option value="other">Bachillerato</option>
                                        <option value="other">Licenciatura</option>
                                    </select>
                                </div>
                            <div class="form-group">
                                <label for="ejemplo_password_1">Grado</label>
                                <input type="text" class="form-control" id="ejemplo_password_1" placeholder="Grado">
                            </div>
                            <div class="form-group">
                                <label for="ejemplo_archivo_1">Grupo</label>
                                <input type="text" class="form-control" id="ejemplo_password_1" placeholder="Grupo">
                               
                            </div>
                        </form>
                    </div>

                    <!--Vvienda-->
                    <div id="menu3" class="tab-pane fade">
                        <div id="form">

                            <div id="school" class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <p>El niño vive con :</p>            
                                        <table class="table table-bordered">
                                            <tbody>
                                                <tr><td>Padre</td><td><input class="checkbox" type="checkbox"></td></tr>
                                                <tr><td>Madre</td><td><input class="checkbox" type="checkbox"></td></tr>
                                                <tr><td>Abuelos</td><td><input class="checkbox" type="checkbox"></td></tr>
                                                <tr><td>Tios</td><td><input class="checkbox" type="checkbox"></td></tr>
                                                <tr><td>Primos</td><td><input class="checkbox" type="checkbox"></td></tr>
                                                <tr><td>Otros</td><td><input class="checkbox" type="checkbox"></td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <p>Servicios de la vivienda :</p>            
                                        <table class="table table-bordered">
                                            <tbody>
                                                <tr><td>Agua</td><td><input class="checkbox" type="checkbox"></td></tr>
                                                <tr><td>Telefono</td><td><input class="checkbox" type="checkbox"></td></tr>
                                                <tr><td>Luz</td><td><input class="checkbox" type="checkbox"></td></tr>
                                                <tr><td>Gas</td><td><input class="checkbox" type="checkbox"></td></tr>
                                                <tr><td>Internet</td><td><input class="checkbox" type="checkbox"></td></tr>
                                                <tr><td>Cable</td><td><input class="checkbox" type="checkbox"></td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div id="school" class="row">
                                <div class="col-sm-6">
                                    <label class="control-label">Total de miebros en la casa</label>
                                </div>
                                <div class="col-sm-6">
                                    <input class="form-control" type="number"/>         
                                </div>
                            </div>
                        </div>
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
<script>
    document.addEventListener('DOMContentLoaded', function () {
        document.querySelector('select[name="ocupacion_select"]').onchange = changeEventHandler;
    }, false);

    function changeEventHandler(event) {
        // You can use “this” to refer to the selected element.
        if (event.target.value === "estudent") {
            document.getElementById('school').hidden = false;
        } else
            document.getElementById('school').hidden = true;
        if (event.target.value === "other") {
            document.getElementById('otra_ocupacion').hidden = false;
        } else
            document.getElementById('otra_ocupacion').hidden = true;
    }
</script>