<%-- 
    Document   : consultaMob
    Created on : 06/11/2017, 03:05:05 PM
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
                                                <c:forEach var="con" begin="0" items="${lista}">
                                                    <tr>
                                                       
                                                        <td><c:out value="${con.nombre_Mob}"></c:out></td> 
                                                        <td><c:out value="${con.marca_Mob}"></c:out></td> 
                                                        <td><c:out value="${con.serie_Mob}"></c:out></td> 
                                                        <td><c:out value="${con.cantidad}"></c:out></td> 
                                                        <td><c:out value="${con.estado}"></c:out></td> 
                                                        <td><c:out value="${con.fechaReg_Mob}"></c:out></td> 
                                                        <td><c:out value="${con.comentario}"></c:out></td> 
                                                            <td><a  class="btn btn-success" data-toggle="modal"  href="#myModal1_${con.idMobiliario}" >Bueno</a>
                                                               <a class=" btn btn-danger"  href="#myModal_${con.idMobiliario}" role="button" data-toggle="modal" >Regular</a> 
                                                               <a class=" btn btn-danger"  href="#myModal_${con.idMobiliario}" role="button" data-toggle="modal" >Malo</a> 
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
                                                                    $(".canceladd").click(function () {
                                                                        $("#nombre_Categ").val("");
                                                                    });
                                                                    $(".submitp").click(function () {
                                                                        if($("#nombre_Categ").val().length !==0){
                                                                        $(".insert").submit(function (e) {
                                                                            e.preventDefault();
                                                                            var url = "add";
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
                                                                                "nombre_Categ": {
                                                                                    required: true
                                                                                }
                                                                            }, messages: {
                                                                                "nombre_Categ": {
                                                                                    required: ""
                                                                                }
                                                                            }
                                                                        });
                                                                        }else{
                                                                               swal(
                                                                                    'Oops...',
                                                                                    'Por favor rellene el campo !',
                                                                                    'error'
                                                                                         );
                                                                        }
                                                                    });   
                                                                });             
            </script>  
            <script>
           $(document).on('click', '.delete', function (event) {
            swal({
             title: 'Are you sure?',
             text: "You won't be able to revert this!",
             type: 'warning',
             showCancelButton: true,
             confirmButtonColor: '#3085d6',
             cancelButtonColor: '#d33',
             confirmButtonText: 'Yes, delete it!'
           }).then(function (isConfirm) {
               if(isConfirm){
             swal(
               'Deleted!',
               'Your file has been deleted.',
               'success'
             ),function(){
              event.preventDefault();
                $(this).closest('tr').remove();
             }
            }else{
                swal("No se ha eliminado.","El registro NO ha sido eliminado.","error");
            }
           });

});

                </script>
                 

    </body>
</html>
