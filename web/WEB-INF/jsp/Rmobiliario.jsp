<%-- 
    Document   : Rmobiliario
    Created on : 05/10/2017, 01:46:45 PM
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
                                                    <form class="form-horizontal form-label-left" novalidate>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nombre del Mobiliario <span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Marca del Mobiliario<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Numero de Serie del Mobiliario <span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Cantidad <span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 ">Estado</label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <select class="select2_single form-control" tabindex="-1">
                                                                    <option></option>
                                                                    <option value="AK">Bueno</option>
                                                                    <option value="HI">Malo</option>
                                                                    <option value="CA">Regular</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 col-sm-3 ">Fecha Registro</label>
                                                            <div class="input-group date col-md-6 col-sm-6 col-xs-12 " id='myDatepicker2'>
                                                                <input type='text' class="form-control" />
                                                                <span class="input-group-addon">
                                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Comentario <span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                            </div>
                                                        </div>

                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                    <button type="button" class="btn btn-primary">Guardar</button>
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
                                                    <th data-hide="phone">ID</th>
                                                    <th data-class="expand"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> Nombre del Mobiliario</th>
                                                    <th data-hide="phone">Marca del Mobiliario</th>
                                                    <th data-hide="phone">Numero de Serie del Mobiliario</th>
                                                    <th data-hide="phone">Cantidad</th>
                                                    <th data-hide="phone">Categoria</th>
                                                    <th data-hide="phone">Estado</th>
                                                    <th data-hide="phone">Fecha Registro</th>
                                                    <th data-hide="phone">Comentario</th>
                                                    <th data-hide="phone">Editar</th>
                                                    <th data-hide="phone">Borrar</th>
                                                </tr>
                                            </thead>


                                            <tbody>

                                                <tr>
                                                    <td>1</td>
                                                    <td>Laptop</td>
                                                    <td>toshiba</td>
                                                    <td>55214628</td>
                                                    <td>5</td>
                                                    <td>Maquinas y Equipos Diversos</td>
                                                    <td>bueno</td>
                                                    <td>30/05/2007</td>
                                                    <td>Se recibio en buen estado</td>
                                                    <td><button type="button" class="btn btn-success">Editar</button></td>
                                                    <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Escritorios</td>
                                                    <td>mova</td>
                                                    <td>2630045/td>
                                                    <td>5</td>
                                                    <td>Muebles y enseres</td>
                                                    <td>bueno</td>
                                                    <td>30/05/2010</td>
                                                    <td>Se recibio en buen estado</td>
                                                    <td><button type="button" class="btn btn-success">Editar</button></td>
                                                    <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>TV</td>
                                                    <td>noc</td>
                                                    <td>362508/td>
                                                    <td>5</td>
                                                    <td>	Equipos de Informatica</td>
                                                    <td>bueno</td>
                                                    <td>30/05/2016</td>
                                                    <td>Se recibio en buen estado</td>
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
            <%@include file="../../META-INF/jdf/footer.jspf" %>
    </body>
</html>
