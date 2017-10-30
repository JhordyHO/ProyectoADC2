<%-- 
    Document   : fromMob
    Created on : 06/10/2017, 11:49:52 AM
    Author     : LENOVO
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cat" class="pe.edu.upeu.spring.dao.categoriaDAO"/>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../../META-INF/jdf/head.jspf" %>
        <title>Institución Educativa El Buen Pastor</title>
    </head>
    <%
   Date dNow = new Date();
   SimpleDateFormat ft = new SimpleDateFormat ("dd/MM/yyyy");
   String currentDate = ft.format(dNow);
   %>
    <body class="nav-md">
        <div class="container body"> 
            <div class="main_container">
                <%@include file="../../META-INF/jdf/header.jspf"%>
                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Resgistrar Mobiliario</h3>
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
                               <button type="button" class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-lg"><i class="fa fa-edit m-right-xs"></i>Agregar</button>
                                                                   <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">

                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabel">Agregar Nuevo Mobiliario</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="save" method="post" class="form-horizontal form-label-left" novalidate>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Categoría</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <select id="select" class="form-control">
                                                                    <option selected disabled>Escoje una Opcion</option>
                                                                    <%ResultSet rs = cat.list();
                                                                    while(rs.next()) {%>
                                                                    <option value="<%=rs.getInt("idCategoria")%>"><%=rs.getString("nombre_Categ")%></option>
                                                                    <%}%>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div id="pai">
                                                            <div id="3" class="item form-group"  style="display: none">
                                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Nombres del Equipo</label>
                                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                                    <select id="select" class="form-control">
                                                                        <option selected disabled>Escoje una Opcion</option>
                                                                        <option value="1">PC1</option>
                                                                        <option value="2">PC2</option>
                                                                        <option value="3">Mouse</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Nombre<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input name="nombreMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Marca<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input name="marcaMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Serie<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input name="serieMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Cantidad<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input name="cantiMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Estado</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <select class="form-control">
                                                                    <option selected disabled>Escoja una Opcion</option>
                                                                    <option value="Bueno">Bueno</option>
                                                                    <option value="Regular">Regular</option>
                                                                    <option value="Defectuoso">Defectuoso</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Fecha_Registro<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input name="fechaMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" selected disabled type="text" value="<%=currentDate%>">
                                                            </div>
                                                        </div>

                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Comentario<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input name="comentaMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="ln_solid"></div>
                                                        <div class="form-group">
                                                            <div class="col-md-6 col-md-offset-3">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                                                <input type="submit" name="boton" value="Registrar" class="btn btn-primary">
                                                            </div>
                                                        </div>                                                    
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end modal -->
                                    <div class="x_content">
                                        <h1 class="text-muted font-13 m-b-30">
                                            Lista de Mobiliarios
                                        </h1>
                                        <br>
                                        <table id="datatable" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <th data-hide="expand">Nombre Mobiliario</th>
                                                    <th data-hide="phone">Marca Mobiliario</th>
                                                    <th data-hide="phone">Numero de Serie Mobiliario</th>
                                                    <th data-hide="phone">Cantidad</th>
                                                    <th data-hide="phone">Estado</th>
                                                    <th data-hide="phone">Fecha Registro</th>
                                                    <th data-hide="phone">Comentario</th>
                                                    <th data-hide="phone" colspan="2">OPCION</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="datos" begin="0" items="${lista}">    
                                                    <tr>
                                                        <td><c:out value="${datos.nombre_Mob}"></c:out></td>
                                                        <td><c:out value="${datos.marca_Mob}"></c:out></td>
                                                        <td><c:out value="${datos.serie_Mob}"></c:out></td>
                                                        <td><c:out value="${datos.cantidad}"></c:out></td>
                                                        <td><c:out value="${datos.estado}"></c:out></td>
                                                        <td><c:out value="${datos.fechaReg_Mob}"></c:out></td>
                                                        <td><c:out value="${datos.comentario}"></c:out></td>
                                                        <td><a href="edit?id=<c:out value="${datos.idMobiliario}"></c:out>" class="btn btn-success">Editar</a></td>
                                                        <td><a href="x?id=<c:out value="${datos.idMobiliario}"></c:out>" class="btn btn-danger">eliminar</a></td>
                                                        </tr>
                                                </c:forEach>
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
            <script>
                    $(document).ready(function () {
                       $('#select').on('change',function(){
                           var selectValor = '#'+$(this).val();
                           
                           $('#pai').children('div').hide();
                           $('#pai').children(selectValor).show();
                       }); 
                        
                    });
                
            </script>
    </body>
</html>