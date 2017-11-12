<%-- 
    Document   : Rcate
    Created on : 05/10/2017, 02:30:38 PM
    Author     : LENOVO
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                                <h3>Resgistrar Categorias</h3>
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
                                    <button  class="btn btn-success" id="addnew" data-toggle="modal" data-target=".bs-example-modal-lg12"><i class="fa fa-edit m-right-xs"></i>Agregar</button>
                                    <div class="modal fade bs-example-modal-lg12"  tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">

                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabel">Agregar Nueva Categoria</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form class=" insert" >
                                                        <div class="item form-group">
                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombre_Categ">Nombre<span class="required">*</span>
                                                            </label>
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <input id="nombre_Categ" class="form-control col-md-7 col-xs-12"  name="nombre_Categ" required="required" type="text">
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <br>
                                                        <br>
                                                        <div class="modal-footer">
                                                            <input type="hidden" value="" name="op">
                                                            <button class="submitp btn btn-primary ">Guardar</button>
                                                            <button class="canceladd btn btn-default " data-dismiss="modal">Cancelar</button>                                                    
                                                        </div>
                                                    </form>
                                                </div>                                           

                                            </div>
                                        </div>
                                    </div>
                                   
                                    <!--end modal -->
                                    <div class="x_content">
                                        <h1 class="text-muted font-13 m-b-30">
                                            Lista de Categorias
                                        </h1>
                                        <br>
                                        <table id="datatable" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                   
                                                    <th data-class="expand"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> Nombre</th>
                                                    <td>Editar</td>
                                                    <td>Eliminar</td> 
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="categoria" begin="0" items="${lista1}">
                                                    <tr>
                                                       
                                                        <td><c:out value="${categoria.nombre_Categ}"></c:out></td> 
                                                        <td><a  class="btn btn-info btn-xs" data-toggle="modal"  href="#myModal1_${categoria.idCategoria}" ><i class="fa fa-pencil"></i> Editar </a></td>
                                                        <td><a class="btn btn-danger btn-xs"  href="#myModal_${categoria.idCategoria}" role="button" data-toggle="modal" ><i class="fa fa-trash-o"></i> Eliminar </a></td>
                                                    </tr>
                                                    
                                                    <div id="myModal_${categoria.idCategoria}" class="modal fade">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                <h4 class="modal-title">Confirmar Eliminacion..</h4>
                                                            </div>

                                                            <div class="modal-body">
                                                                <p>Esta Seguro de Eliminar la Categoria..? </p>
                                                            </div>
                                                            <div class="modal-footer">

                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                                <a class=" btn btn-danger" href="${pageContext.request.contextPath}/delcat?idCategoria=${categoria.idCategoria}" >Eliminar</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>  
                                                
                                                 <!--editar-->
                                    <div class="modal fade bs-example-modal-lg"  id="myModal1_${categoria.idCategoria}" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">

                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabel">Editar Categoria</h4>
                                                </div>
                                                <div class="modal-body"> 
                                                    <form   method="post" action="updatecat"  >
                                                            <div class="item form-group">
                                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombre_Categ">Nombre<span >*</span>
                                                                </label>
                                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                                    <input id="nombre_Categ" class="form-control col-md-7 col-xs-12"  name="nombre_Categ" value="<c:out value='${categoria.nombre_Categ}'/>"  type="text"  >
                                                                    <input type="hidden" name="idCategoria" value="<c:out value='${categoria.idCategoria}'/>"  >
                                                                </div>
                                                            </div>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <div class="modal-footer">
                                                                <input type="hidden" value="" name="op">
                                                                <button class=" btn btn-primary " type="submit"   >Guardar</button>
                                                                <button class="canceladd btn btn-default ">Cancelar</button>                                                    
                                                            </div>
                                                        </form> 
                                                </div>                                           

                                            </div>
                                        </div>
                                    </div>
                                    <!--end editar-->
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