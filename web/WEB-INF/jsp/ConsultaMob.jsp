<%-- 
    Document   : consultaMob
    Created on : 06/11/2017, 03:05:05 PM
    Author     : LENOVO
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../../META-INF/jdf/head.jspf" %>
        <title>Institución Educativa El Buen Pastor</title>
    </head>
    <%
        Date dNow = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("dd/MM/yyyy");
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
                                    <!--end modal -->
                                    <div class="x_content">
                                        <h1 class="text-muted font-13 m-b-30">
                                            Lista de Mobiliarios
                                        </h1>
                                        <br>
                                        <div class="conTable"></div>
                                    </div>
                                    <!-- end main -->

                                </div>
                            </div>
                        </div>
                    </div> 

                    <div class="modal fade bs-example-modal-lg18" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">

                                <div class="modal-header bg-blue">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span>
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel">Calificar</h4>
                                </div>
                                <div class="modal-body">
                                    <form method="post"  class="form-horizontal form-label-left" > 
                                         <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Fecha<span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="fechacon" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="fechacon" selected disabled type="text" value="<%=currentDate%>">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Cantidad<span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="cantidadcon" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="cantidadcon" required="required" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Estado</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <select id="estadocon" name="estadocon" class="form-control">
                                                    <option>Eliga una Opcion</option>
                                                    <option value="B">Bueno</option>
                                                    <option value="R">Regular</option>
                                                    <option value="M">Malo</option>
                                                </select>

                                            </div>
                                        </div>  
                                            
                                           <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><span class="required"></span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                               <textarea id="descripcioncon" required="required"  name="descripcioncon"  ></textarea>
                                            </div>
                                        </div>
                                               <div class="modal-footer">
                                                   <input type="hidden" class="btn btn-default" id="idmobi" name="idmobi" >   
                                                   <input type="hidden" class="btn btn-default" id="idper" name="idper" >   
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                    <input type="button" id="registrarcon" value="registrar" class="btn btn-primary">
                                </div> 
                                    </form>
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
            <script src="recursos/build/js/registrar detalleventa.js" type="text/javascript"></script>
            <script>
                $(document).ready(function () {
                    listTable();
                });

                function listTable() {
                    $.post("<%=request.getContextPath()%>/lis_mobi", function (a) {
                        var lista = a.list;
                        if (lista.length > 0) {
                            var s = '';
                            for (var i = 0; i < lista.length; i++) {
                                s += '<tr>';
                                s += '<td>' + lista[i].nombre_Mob + '</td>';
                                s += '<td>' + lista[i].marca_Mob + '</td>';
                                s += '<td>' + lista[i].serie_Mob + '</td>';
                                s += '<td> ' + lista[i].cantidad + '</td>';
                                s += '<td>' + lista[i].estado + '</td>';
                                s += '<td>' + lista[i].fechaReg_Mob + '</td>';
                                s += '<td>' + lista[i].comentario + '</td>';
                                s += '<td><button  class="btn btn-success" data-toggle="modal" id="addcom1" data-target=".bs-example-modal-lg18"> Calificar</button>';
                                s += '</tr>';
                            }
                            $(".conTable").empty();
                            $(".conTable").append(createTable());
                            $(".mbody").empty();
                            $(".mbody").append(s);
                            $("#datatable").dataTable();
                        } else {
                            alert("No hay datos");
                        }
                    });
                }


                function createTable() {
                    var s = '<table id="datatable" class="table table-striped table-bordered">';
                    s += '<thead>';
                    s += '<tr>';
                    s += '<th>Nombre Mobiliario</th>';
                    s += '<th>Marca</th>';
                    s += '<th>Serie</th>';
                    s += '<th>Cantidad</th>';
                    s += '<th data-hide="phone">Estado</th>';
                    s += '<th data-hide="phone">Fecha registro</th>';
                    s += '<th data-hide="phone">Comentario</th>';
                    s += '<th data-hide="phone">Accion</th>';
                    s += '</tr>';
                    s += '</thead>';
                    s += '<tbody class="mbody"></tbody>';
                    s += '</table>';
                    return s;
                }

            </script> 

    </body>
</html>
