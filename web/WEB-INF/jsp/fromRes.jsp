<%-- 
    Document   : fromRes
    Created on : 06/10/2017, 11:44:12 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../../META-INF/jdf/head.jspf" %>
        <title>Institución Educativa El Buen Pastor</title>
    </head>
    <body class="nav-md">
        <div class="container body"> 
            <div class="main_container">
                <%@include file="../../META-INF/jdf/header.jspf"%>
                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Resgistrar Responsable</h3>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">

                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Settings 1</a>
                                                    </li>
                                                    <li><a href="#">Settings 2</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <!-- main -->
                                    <!-- modal -->
                                    <a href="fromRes" class="btn btn-success" ><i class="fa fa-edit m-right-xs"></i>Agregar</a>
                                    
                                      

                                    <!--end modal -->
                                    <div class="x_content">
                                        <h1 class="text-muted font-13 m-b-30">
                                           Lista de Responsables
                                        </h1>
                                        <br>
                                        <table id="datatable" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Nombre Apellido</th>
                                                    <th>Fecha Cumpleaños</th>
                                                    <th>DNI</th>
                                                    <th>Telefono</th>
                                                    <th data-hide="phone">Direccion</th>
                                                    <th data-hide="phone">Correo Electronico</th>
                                                    <th data-hide="phone">Nombre Usuario</th>
                                                    <th data-hide="phone">Contraseña</th>
                                                    <th data-hide="phone">Rol</th>
                                                    <th data-hide="phone">Departamento</th>
                                                    <th data-hide="phone">Editar</th>
                                                    <th data-hide="phone">Borrar</th>
                                                </tr>
                                            </thead>


                                            <tbody>

                                                <tr>
                                                            <td>Manuel Perez Ruiz</td>
                                                            <td>30/08/1994</td>
                                                            <td>75002466</td>
                                                            <td>014523689</td>
                                                            <td>vitarte</td>
                                                            <td>Manuel@gmail.com</td>
                                                            <td>Manuel</td>
                                                            <td>manuel0011</td>
                                                            <td>Administrador</td>
                                                            <td>Primaria</td>
                                                            <td><button type="button" class="btn btn-success">Editar</button></td>
                                                            <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                                                </tr>
                                                  <tr>
                                                            <td>Pedro zabala Venegas</td>
                                                            <td>15/05/1856</td>
                                                            <td>070028566</td>
                                                            <td>015234856</td>
                                                            <td>Santa anita</td>
                                                            <td>pedro@gmail.com</td>
                                                            <td>pedro</td>
                                                            <td>predro1550</td>
                                                            <td>Docente</td>
                                                            <td>inicial</td>
                                                            <td><button type="button" class="btn btn-success">Editar</button></td>
                                                            <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                                                        </tr>
                                                        <tr>
                                                           <td>Juan zabala rodrigues</td>
                                                            <td>10/03/1686</td>
                                                            <td>071528566</td>
                                                            <td>015215856</td>
                                                            <td>Santa clara</td>
                                                            <td>juan@gmail.com</td>
                                                            <td>juan</td>
                                                            <td>juan5050</td>
                                                            <td>docente</td>
                                                            <td>Primer Grado</td>
                                                            <td><button type="button" class="btn btn-success">Editar</button></td>
                                                            <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                                                        </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- end main -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /page content -->
                <footer>
                    <div class="pull-right">
                        Ingenieria de Sistemas Upeu © 2017 <a href="#">Svep Desing 1.0</a>
                    </div>
                    <div class="clearfix"></div>
                </footer>
            </div>
        </div>
        </div>
        <%@include file="../../META-INF/jdf/footer.jspf" %>
    </body>
</html>
