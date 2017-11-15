<%-- 
    Document   : fromMob
    Created on : 06/10/2017, 11:49:52 AM
    Author     : LENOVO
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cat" class="pe.edu.upeu.spring.dao.categoriaDAO"/>
<jsp:useBean id="mob" class="pe.edu.upeu.spring.dao.mobiliarioDAO"/>
<jsp:useBean id="dep" class="pe.edu.upeu.spring.dao.departamentoDAO"/>
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
                            <div class="title_right">
                                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                    <div class="input-group alignright">
                                        <button id="info2" type="button" class="btn btn-round btn-info" style="border: 1px solid #d0d0d0;"><i class="fa fa-exclamation-circle"></i>Información!!</button>
                                    </div>
                                </div>
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
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Departamento</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <select  id="departamento" class="form-control">
                                                                    <option value="">Escoja una Opcion</option>
                                                                    <%ResultSet rsp = dep.lista6();
                                                                    while (rsp.next()){%>
                                                                    <option value="<%=rsp.getInt("idDepartamento")%>"><%=rsp.getString("nombre_depar")%></option>
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
                                                                        <%ResultSet rst= mob.listMob();
                                                                                while(rst.next()){%>
                                                                                <option value=<%=rst.getInt("idMobiliario")%>><%=rst.getString("nombre_Mob")%></option>
                                                                        <%}%>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Nombre<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="nombreMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" style="text-transform:uppercase;">
                                                            <!--    <input id="departamento" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" value="<c:out value="${DEPARTAMENTO_ID}"/>" required="required" type="hidden"> --->
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Marca<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="marcaMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" style="text-transform:uppercase;">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Modelo / Serie<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="serieMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" style="text-transform:uppercase;">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Cantidad<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="cantiMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="number">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Estado</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <select  id="selecionar3" class="form-control">
                                                                    <option value="">Escoja una Opcion</option>
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
                                                                <input id="comentaMob" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" style="text-transform:uppercase;">
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
                                       <!------INICIO DEL MODAL DE VER--------->
                                     <div class="modal fade bs-example-modal-lg2" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">

                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabel">Vista del Mobiliario:</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form class="form-horizontal form-label-left" novalidate>
                                                        <section class="main row">
                                                            <article class="col-md-6">
                                                                <h4>Mobiliario Principal</h4>
                                                                <div class="ln_solid"></div>
                                                                <!-----Muestra el formulario de ver mobiliario------>
                                                                <div class="item form-group">
                                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nombres del Mobiliario<span class="required">*</span>
                                                                    </label>
                                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                                        <p class="form-control-static"></p>
                                                                    </div>
                                                                </div>

                                                                <!-----FIN Muestra el formulario de ver mobiliario------>
                                                            </article>

                                                            <anside class="col-md-6">
                                                                <h4>Partes del Mobiliario</h4>
                                                                <div class="ln_solid"></div>
                                                                <!-----Muestra el formulario para ver las partes del mobiliario------>
                                                                <div class="item form-group">
                                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nombres del Mobiliario<span class="required">*</span>
                                                                    </label>
                                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                                        <p class="form-control-static"></p>
                                                                    </div>
                                                                </div>

                                                            </anside>
                                                            
                                                        </section>
                                                        <div class="ln_solid"></div>
                                                        <div class="form-group">
                                                            <div class="col-md-6 col-md-offset-3">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
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
                                         <div class="conTable"></div>
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
            <script src="recursos/build/js/registro.js" type="text/javascript"></script>
            <script src="recursos/build/js/botonoprueba.js" type="text/javascript"></script>
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
                            s += '<td>'+lista[i].nombre_Mob+'</td>';
                            s += '<td>'+lista[i].marca_Mob+'</td>';
                            s += '<td>'+lista[i].serie_Mob+'</td>';
                            s += '<td> '+lista[i].cantidad+'</td>';
                            s += '<td>'+lista[i].estado+'</td>';
                            s += '<td>'+lista[i].fechaReg_Mob+'</td>';
                            s += '<td>'+lista[i].comentario+'</td>';
                            s += '<td><a href="listar?id='+lista[i].idMobiliario+'" class="btn btn-primary btn-xs" data-toggle="modal" data-target=".bs-example-modal-lg2"><i class="fa fa-folder"></i> Ver</a>';
                            s += '<td><a href="listar?id='+lista[i].idMobiliario+'" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Editar </a>';
                            s += '<td><a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Eliminar </a>';
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
                s += '<th data-hide="phone">Ver</th>';
                s += '<th data-hide="phone">Editar</th>';
                s += '<th data-hide="phone">Eliminar</th>';
                s += '</tr>';
                s += '</thead>';
                s += '<tbody class="mbody"></tbody>';
                s += '</table>';
                return s;
            }
 
        </script>
    </body>
</html>