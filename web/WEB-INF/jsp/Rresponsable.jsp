
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="cat" class="pe.edu.upeu.spring.dao.rolesDAO"/>
<jsp:useBean id="depa" class="pe.edu.upeu.spring.dao.departamentoDAO"/>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat"%>

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
                                    <button type="button" class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-lg"><i class="fa fa-edit m-right-xs"></i>Agregar</button>
                                    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabel">Agregar Nuevo Responsable</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form  method="post" class="form-horizontal form-label-left" novalidate>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nombre<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="nombre" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Apellido Paterno<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="apellidoP" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Apellido Materno<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="apellidoM"  class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Fecha_Cumpleaños</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="fecha" type="text" class="form-control col-md-7 col-xs-12" data-inputmask="'mask': '99/99/9999'">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">DNI<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="dni" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Telefono</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="telefono" type="text" class="form-control" data-inputmask="'mask' : '(999) 999-999'">
                                                            </div>
                                                        </div>

                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Correo Electronico<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="correo" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nombre Usuario<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="user" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Contraseña<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="pass" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="password">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Rol</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <select id="rol" class="form-control">
                                                                    <option>Eliga una Opcion</option>
                                                                    <%ResultSet rs = cat.lista();
                                                                        while (rs.next()) {%>
                                                                    <option value="<%=rs.getInt("idRoles")%>"><%=rs.getString("nombre_Rol")%> </option>
                                                                    <%}%>
                                                                </select>
                                                                
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Departamento</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <select id="depar"  class="form-control">
                                                                    <option>Eliga una Opcion</option>
                                                                    <%ResultSet rst = depa.lista6();
                                                                        while (rst.next()) {%>
                                                                    <option value="<%=rst.getInt("idDepartamento")%>"><%=rst.getString("nombre_depar")%></option>
                                                                    <%}%>
                                                                </select> 
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">sexo</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <select id="sexo" class="form-control">
                                                                    <option>Eliga una Opcion</option>
                                                                    <option value="M">Maculino</option>
                                                                    <option value="F">Femenino</option>
                                                                </select>
                                                            </div>
                                                        </div>    

                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                    <input type="button" id="registrar1" value="registrar" class="btn btn-primary">
                                                </div>

                                            </div>
                                        </div>
                                    </div>              
                                        <div class="modal fade bs-example-modal-lg12" id="Mmodal" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-lg12">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabel">Actualizar  Responsable</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form class="form-horizontal form-label-left" novalidate>
                                                        <div class="model5"></div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                    <button type="submit"  onclick="updateAll();" class="btn btn-primary">Actualizar</button>
                                                </div>

                                            </div>
                                        </div>
                                    </div>                       
                                           
                                    <!--end modal -->
                                    <div class="x_content">
                                        <h1 class="text-muted font-13 m-b-30">
                                            Lista de Responsables
                                        </h1>
                                        <br>
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
                            Ingenieria de Sistemas Upeu Â© 2017 <a href="#">Svep Desing 1.0</a>
                        </div>
                        <div class="clearfix"></div>
                    </footer>
                </div>
            </div>
        </div>
        <%@include file="../../META-INF/jdf/footer.jspf" %>
        <script src="recursos/build/js/script.js" type="text/javascript"></script>
        <script src="recursos/build/js/crudResponsable.js" type="text/javascript"></script>
        <script>
            
            
     $(document).ready(function () {
              listTable();
            });

            function listTable() {
                $.post("<%=request.getContextPath()%>/lista", function (a) {
                    var lista = a.deyvis;
                    if (lista.length > 0) {
                        var s = '';
                        for (var i = 0; i < lista.length; i++) {
                            s += '<tr>';
                            s += '<td>'+lista[i].nombre+' '+lista[i].apellidoP+' '+lista[i].apellidoM+'</td>';
                            s += '<td>'+lista[i].fecha+'</td>';
                            s += '<td>'+lista[i].dni+'</td>';
                            s += '<td>'+lista[i].telefono+'</td>';
                            s += '<td>'+lista[i].correo+'</td>';
                            s += '<td>'+lista[i].usuario+'</td>';
                            s += '<td>'+lista[i].contra+'</td>';
                            s += '<td>'+lista[i].rol+'</td>';
                            s += '<td>'+lista[i].depar+'</td>';
                            s += '<td><a id='+ lista[i].idPersona +' onclick="getper1(this.id);"  class="btn btn-info btn-xs" data-toggle="modal" href="#Mmodal"><i class="fa fa-pencil"></i> Editar </a>';
                            s += '<td><a id="'+lista[i].idusuario+'" onclick ="deletePer(this.id)" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#myModal1"><i class="fa fa-trash-o"></i> Eliminar</a>';
                          
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
                s += '<th>Nombres Apellidos</th>';
                s += '<th>Fecha Cumpleaños</th>';
                s += '<th>DNI</th>';
                s += '<th>Telefono</th>';
                s += '<th data-hide="phone">Correo Electronico</th>';
                s += '<th data-hide="phone">Nombre Usuario</th>';
                s += '<th data-hide="phone">Contraseña</th>';
                s += '<th data-hide="phone">Rol</th>';
                s += '<th data-hide="phone">Departamento</th>';
                s += '<th data-hide="phone">Editar</th>';
                s += '<th data-hide="phone">Borrar</th>';
                s += '</tr>';
                s += '</thead>';
                s += '<tbody class="mbody"></tbody>';
                s += '</table>';
                return s;
            }

        </script>
    </body>
</html>
