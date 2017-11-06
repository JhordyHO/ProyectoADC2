<%-- 
    Document   : Rdepar
    Created on : 05/10/2017, 01:43:02 PM
    Author     : LENOVO
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <h3>Resgistrar Departamento</h3>
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
                                    <button type="button" class="btn btn-success" id="addepa"  data-toggle="modal" data-target=".bs-example-modal-lg"><i class="fa fa-edit m-right-xs"></i>Agregar</button>
                                    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">

                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabel">Agregar Nuevo Departamento</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form class="insert" novalidate>
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nombre<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="nombre_depar" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="nombre_depar" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <br>
                                                        <br>
                                                        <div class="modal-footer">
                                                    <button   class="cancelar btn btn-default" data-dismiss="modal">Cancelar</button>
                                                    <button  class="submitp btn btn-primary">Guardar</button>
                                                </div>
                                                    </form>
                                                </div>
                                                

                                            </div>
                                        </div>
                                    </div>

                                    <!--end modal -->
                                    <div class="x_content">
                                        <h1 class="text-muted font-13 m-b-30">
                                           Lista de Departamentos
                                        </h1>
                                        <br>
                                        <table id="datatable" class="table table-striped table-bordered">
                                            <thead>
                                                <tr> 
                                                    <th data-class="expand"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> Nombre</th>
                                                    <td >Acciones</td>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <c:forEach var="departamento" begin="0" items="${lista2}">  
                                                <tr>
                                                       
                                                        <td><c:out value="${departamento.nombre_depar}"></c:out></td> 
                                                            <td><a  class="btn btn-success" data-toggle="modal"  href="#myModal1_${departamento.idDepartamento}" >Editar</a>
                                                               <a class=" btn btn-danger"  href="#myModal_${departamento.idDepartamento}" role="button" data-toggle="modal" >Eliminar</a> 
                                                    </tr>
                                                    <!--  eliminar -->
                                                  <div id="myModal_${departamento.idDepartamento}" class="modal fade">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                <h4 class="modal-title">Confirmar Eliminacion..</h4>
                                                            </div>

                                                            <div class="modal-body">
                                                                <p>Esta Seguro de Eliminar el Departamento..? </p>
                                                            </div>
                                                            <div class="modal-footer">

                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                                <a class=" btn btn-danger" href="${pageContext.request.contextPath}/deldepa?idDepartamento=${departamento.idDepartamento}" >Eliminar</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>  
                                                 <!-- end  eliminar -->
                                                  <!-- editar -->
                                                  <div class="modal "  id="myModal1_${departamento.idDepartamento}" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">

                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabel">Editar Categoria</h4>
                                                </div>
                                                <div class="modal-body"> 
                                                    <form   method="post" action="updatedepa"  >
                                                            <div class="item form-group">
                                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombre_Categ">Nombre<span >*</span>
                                                                </label>
                                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                                    <input id="nombre_Categ" class="form-control col-md-7 col-xs-12"  name="nombre_depar" value="<c:out value='${departamento.nombre_depar}'/>"  type="text"  >
                                                                    <input type="hidden" name="idDepartamento" value="<c:out value='${departamento.idDepartamento}'/>"  >
                                                                </div>
                                                            </div>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <div class="modal-footer">
                                                                <input type="hidden" value="" name="op">
                                                                <button class=" btn btn-primary "  type="submit" >Guardar</button>
                                                                <button class="cancelar btn btn-default ">Cancelar</button>                                                    
                                                            </div>
                                                        </form> 
                                                </div>                                           

                                            </div>
                                        </div>
                                    </div>
                                                  <!-- end  editar -->
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
                                                                    $(".cancelar").click(function () {
                                                                        $("#nombre_depar").val("");
                                                                    });
                                                                    $(".submitp").click(function () {
                                                                        if($("#nombre_depar").val().length !==0){
                                                                        $(".insert").submit(function (e) {
                                                                            e.preventDefault();
                                                                            var url = "adddepa";
                                                                            $.post(url, $(".insert").serialize(), function (responseText) {                                                                                
                                                                                   swal({
  
                                                                                    type: 'success',
                                                                                    title: 'Los datos han sido registrado correctamente!',
                                                                                    showConfirmButton: false,
                                                                                    timer: 1500
                                                                                  })
                                                                              setTimeout(function(){
                                                                             $(location).attr('href', responseText);
                                                                             }, 1000);
                                                                            });
                                                                        }).validate({
                                                                            debug: false,
                                                                            rules: {
                                                                                "nombre_depar": {
                                                                                    required: true
                                                                                }
                                                                            }, messages: {
                                                                                "nombre_depar": {
                                                                                    required: ""
                                                                                }
                                                                            }
                                                                        });
                                                                        }else{
                                                                               swal(
                                                                                    'Oops...',
                                                                                    'Por favor rellene el campo !',
                                                                                    'error'
                                                                                         )
                                                                        }
                                                                    });   
                                                                });                        
                
            </script>
    </body>
</html>
