<%-- 
    Document   : CmobiliarioBja
    Created on : 07/10/2017, 03:40:31 PM
    Author     : Jose Rayo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../../META-INF/jdf/head.jspf" %>
        <title>Institución Educativa El Buen Pastor</title>
    </head>
    <body class="nav-md">
        <div class="container body"> 
            <div class="main_container">
                <%@include file="../../META-INF/jdf/header2.jspf"%>
                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Mobiliario en Baja</h3>
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
    
                                    <!--end modal -->
                                    <div class="x_content">
                                        <h1 class="text-muted font-13 m-b-30">
                                           Lista de Mobiliarios
                                        </h1>
                                        <br>
                                        <table id="datatable" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <th data-hide="phone">ID</th>
                                                    <th data-hide="expand">Nombre Mobiliario</th>
                                                    <th data-hide="phone">Marca Mobiliario</th>
                                                    <th data-hide="phone">Numero de Serie Mobiliario</th>
                                                    <th data-hide="phone">Cantidad</th>
                                                    <th data-hide="phone">Categoria</th>
                                                    <th data-hide="phone">Fecha Baja</th>
                                                    <th data-hide="phone">Comentario</th>
                                                </tr>
                                            </thead>


                                            <tbody>

                                                <tr>
                                                    <td>1</td>
                                                    <td>Laptop</td>
                                                    <td>toshiba</td>
                                                    <td>55214628</td>
                                                    <td>2</td>
                                                    <td>Maquinas y Equipos Diversos</td>
                                                    <td>30/05/2007</td>
                                                    <td>Se encontro roto</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Escritorios</td>
                                                    <td>mova</td>
                                                    <td>2630045/td>
                                                    <td>1</td>
                                                    <td>Muebles y enseres</td>
                                                    <td>30/05/2010</td>
                                                    <td>La pata de la mesa en mal estado</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>TV</td>
                                                    <td>noc</td>
                                                    <td>362508/td>
                                                    <td>3</td>
                                                    <td>Equipos de Informatica</td>
                                                    <td>30/05/2016</td>
                                                    <td>Pantalla rota</td>
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
            <%@include file="../../META-INF/jdf/footer.jspf" %>
    </body>
</html>
