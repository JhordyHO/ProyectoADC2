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
                                                    <form method="post" class="form-horizontal form-label-left" novalidate>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Categoría</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <select id="selecionar" class="form-control">
                                                                    <option value="">Escoje una Opcion</option>
                                                                    <%ResultSet rs = cat.list();
                                                                        while (rs.next()) {%>
                                                                    <option value="<%=rs.getInt("idCategoria")%>"><%=rs.getString("nombre_Categ")%></option>
                                                                    <%}%>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div id="pai">
                                                            <div id="3" class="item form-group"  style="display: none">
                                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Nombres del Equipo</label>
                                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                                    <select id="selecionar2" class="form-control">
                                                                        <option value="">Escoje una Opcion</option>
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
                                                                <input id="nombreMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                                <input id="departamento" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" value="<c:out value="${DEPARTAMENTO_ID}"/>" required="required" type="hidden">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Marca<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="marcaMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Serie<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="serieMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Cantidad<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="cantiMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Estado</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <select  id="selecionar3" class="form-control">
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
                                                                <input id="fechaMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" selected disabled type="text" value="<%=currentDate%>">
                                                            </div>
                                                        </div>

                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Comentario<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="comentaMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="ln_solid"></div>
                                                        <div class="form-group">
                                                            <div class="col-md-6 col-md-offset-3">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                                                <input type="button" id="btnRegistro" value="Registrar" class="btn btn-primary">
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
                    
                      function cargarbox(){
                          
                          $('#selecionar').on('change',function(){
                           var selectValor = '#'+$(this).val();
                           
                           $('#pai').children('div').hide();
                           
                           if (selectValor === '#3') {
                               $('#pai').children(selectValor).show().append(prueba());         
                            }
                           //console.log(selectValor);
     
                       });
                          
                      }  
                      function registro(){
                        //registro del mobiliario..
                       $("#btnRegistro").click(function(){
                               var categoria = $("#selecionar").val();
                               var departamento = $("#departamento").val();
                               var nombreMob2 = $("#selecionar2").val();
                               var nombreMob = $("#nombreMob").val();
                               var marcaMob = $("#marcaMob").val();
                               var serieMob = $("#serieMob").val();
                               var cantiMob = $("#cantiMob").val();
                               var select3 = $("#selecionar3").val();
                               var fechaMob = $("#fechaMob").val();
                               var comentaMob = $("#comentaMob").val();
                           
                            if($("#selecionar").val().length !==0 && $("#nombreMob").val().length !==0 && $("#cantiMob").val().length !==0 && $("#comentaMob").val().length !==0){
                              var opc = "1";                               
                                $.ajax({
                                   url:"regist",
                                   type: 'POST',
                                   async: true,
                                   data: {
                                       'categoria' : categoria, 
                                       'departamento' : departamento,
                                       'nombreMob' : nombreMob,
                                       'marcaMob' : marcaMob,
                                       'serieMob' : serieMob,
                                       'cantiMob' : cantiMob,
                                       'select3' : select3,
                                       'fechaMob' : fechaMob,
                                       'comentaMob' : comentaMob,
                                       'opc' : opc
                                   },
                                   success: function (data) {

                                    }                                    
                               });
                             console.log(categoria,departamento, nombreMob2,nombreMob,marcaMob,serieMob,cantiMob,select3,fechaMob,comentaMob);
                             
                                                 
                              swal(
                                         'Registrado!',
                                         'Los datos han sido registrado correctamente!',
                                         'success'
                                          );  

                           }else{
                               swal(
                              'Oops...',
                              'Por favor ingrese los datos principales : Categoria, Nombre, Estado y Comentarios\n\
                              .Si cuenta con todos los datos sería genial!!',
                              'error'
                                   );
                               
                           }
                               $("#selecionar").val("");
                               $("#departamento").val("");
                               $("#selecionar2").val("");
                               $("#nombreMob").val("");
                               $("#marcaMob").val("");
                               $("#serieMob").val("");
                               $("#cantiMob").val("");
                               $("#selecionar3").val("");
                               $("#fechaMob").val("");
                               $("#comentaMob").val("");
                       });
                          
                      }
                      function prueba(){
                      //registro del mobiliario_partes_detalle..
                       $("#btnRegistro").click(function(){
                               var categoria = $("#selecionar").val();
                               var idmobiliario = $("#selecionar2").val();
                               var nombreMob = $("#nombreMob").val();
                               var marcaMob = $("#marcaMob").val();
                               var serieMob = $("#serieMob").val();
                               var cantiMob = $("#cantiMob").val();
                               var select3 = $("#selecionar3").val();
                               var fechaMob = $("#fechaMob").val();
                               var comentaMob = $("#comentaMob").val();
                           
                           if($("#selecionar").val().length !==0 && $("#nombreMob").val().length !==0 && $("#cantiMob").val().length !==0 && $("#comentaMob").val().length !==0){
                              var opc = "2";                               
                                $.ajax({
                                   url:"regist",
                                   type: 'POST',
                                   async: true,
                                   data: {
                                       'idmobiliario' : idmobiliario,
                                       'nombreMob' : nombreMob,
                                       'marcaMob' : marcaMob,
                                       'serieMob' : serieMob,
                                       'cantiMob' : cantiMob,
                                       'select3' : select3,
                                       'fechaMob' : fechaMob,
                                       'comentaMob' : comentaMob,
                                       'opc' : opc
                                   },
                                   success: function (data) {

                                    }                                    
                               });
                             console.log(idmobiliario,nombreMob,marcaMob,serieMob,cantiMob,select3,fechaMob,comentaMob);
                             
                                                 
                              swal(
                                         'Registrado!',
                                         'Los datos han sido registrado correctamente!',
                                         'success'
                                          );  

                           }else{
                               swal(
                              'Oops...',
                              'Por favor ingrese los datos principales : Categoria, Nombre, Estado y Comentarios\n\
                              .Si cuenta con todos los datos sería genial!!',
                              'error'
                                   );
                               
                           }                                 
                       });
                          
                      }
        
                    $(document).ready(function () {
                        cargarbox();
                        registro();
                        
                    });
                
            </script>
    </body>
</html>