<%-- 
    Document   : ConsultaMob2
    Created on : 06/11/2017, 04:50:14 PM
    Author     : LENOVO
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <%@include file="../../META-INF/jdf/header.jspf"%>
                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Consultar Mobiliario</h3>
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
                                    <div class="x_content">
                                        <h1 class="text-muted font-13 m-b-30">
                                            Lista de Mobiliarios
                                        </h1>
                                        <br>
                                        <table id="datatable" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                   
                                                    <th data-hide="expand"> Nombre del Mobiliario</th>
                                                    <th data-hide="expand"> Marca Mobiliario</th>
                                                    <th data-hide="expand"> Numero de Serie Mobiliario</th>
                                                    <th data-hide="expand"> Camtidad </th>
                                                    <th data-hide="expand"> Estado</th>
                                                    <th data-hide="expand"> Fecha de Registro</th>
                                                    <th data-hide="expand"> Comentario</th>
                                                    <th data-hide="expand">Acciones</th> 
                                                </tr>
                                            </thead>
                                            <tbody> 
                                                    <tr>
                                                       
                                                        <td><c:out value="${nombre_Mob}"></c:out></td> 
                                                        <td><c:out value="${marca_Mob}"></c:out></td> 
                                                        <td><c:out value="${serie_Mob}"></c:out></td> 
                                                        <td><c:out value="${cantidad}"></c:out></td> 
                                                        <td><c:out value="${estado}"></c:out></td> 
                                                        <td><c:out value="${fechaReg_Mob}"></c:out></td> 
                                                        <td><c:out value="${comentario}"></c:out></td> 
                                                            <td><a  class="btn btn-success" data-toggle="modal"  href="#myModal1_${idMobiliario}" >Bueno</a>
                                                               <a class=" btn btn-danger"  href="#myModal2_${idMobiliario}" role="button" data-toggle="modal" >Regular</a> 
                                                               <a class=" btn btn-danger"  href="#myModal3_${idMobiliario}" role="button" data-toggle="modal" >Malo</a> 
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
