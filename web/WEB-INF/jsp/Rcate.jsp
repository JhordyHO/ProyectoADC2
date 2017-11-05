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
                                    <!--editar-->
                                    <div class="modal fade bs-example-modal-lg"  id="edit-cat" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">

                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabel">Editar Categoria</h4>
                                                </div>
                                                <div class="modal-body"> 
                                                    <form   method="post"    >
                                                            <div class="item form-group">
                                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombre_Categ">Nombre<span >*</span>
                                                                </label>
                                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                                    <input id="nombre_Categ" class="form-control col-md-7 col-xs-12"  name="nombre_Categ"  type="text"  >
                                                                    <input type="hidden" name="idCategoria" id="edit-id" >
                                                                </div>
                                                            </div>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <div class="modal-footer">
                                                                <input type="hidden" value="" name="op">
                                                                <button class="upcate btn btn-primary ">Guardar</button>
                                                                <button class="canceladd btn btn-default ">Cancelar</button>                                                    
                                                            </div>
                                                        </form> 
                                                </div>                                           

                                            </div>
                                        </div>
                                    </div>
                                    <!--end editar-->
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
                                                    <th data-hide="phone">Acciones</th> 
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="categoria" begin="0" items="${lista1}">
                                                    <tr>
                                                       
                                                        <td><c:out value="${categoria.nombre_Categ}"></c:out></td> 
                                                            <td><a  class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-lg">Editar</a>
                                                            <!--    <a class="delete btn btn-danger"  href="delcat?idCategoria=" >Eliminar</a> -->
                                                        <a class=" btn btn-danger" id="delete" data-id="${categoria.idCategoria}" href="javascript:void(0)">Eliminar</a></td>
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
                                                                                                                                      /* Edit Item */
$("body").on("click",".edit-cat",function(){

    var idCategoria = $(this).parent("td").data('idCategoria');
    var nombre_Categ = $(this).parent("td").prev("td").prev("td").text(); 

    $("#edit-cat").find("input[name='nombre_Categ']").val(nombre_Categ); 
    $("#edit-cat").find(".edit-id").val(idCategoria);

});

/* Updated new Item */
$(".upcate").click(function(e){

    e.preventDefault();
     
    var nombre_Categ = $("#edit-cat").find("input[name='nombre_Categ']").val();
 
    var idCategoria = $("#edit-cat").find(".edit-id").val();

    if(nombre_Categ){
        $.ajax({
            dataType: 'json',
            type:'POST',
            url:  'updatecat',
            data:{nombre_Categ:nombre_Categ, idCategoria:idCategoria}
        }).done(function(data){ 
            $(".modal").modal('hide');
           swal(
                                                                                    'Good job!',
                                                                                    'You clicked the button!',
                                                                                    'success'
                                                                                     ) 
        });
    }else{
        swal(
                                                                                    'Good job!',
                                                                                    'You clicked the button!',
                                                                                    'error'
                                                                                     )
    }

});  
                                                                });
                                                                  
            </script>  
            <script>
           $(document).on('click', '.delete', function (event) {
    swal({
        title: "¿Estás seguro?",
        text: "Estás por borrar un proyecto, este no se podrá recuperar más adelante.",
        type: "warning",
        showCancelButton: true,
        cancelButtonText: "Cancelar",
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Continuar",
            closeOnConfirm: false
        }, 
        function (isConfirm) {
            if(isConfirm){
                swal({
                    title: "Eliminado",
                    text: "Eliminaste el registro del proyecto.",
                    type: "success"
                }, function(){
                event.preventDefault();
                $(this).closest('tr').remove();
            });
            }
            else{
                swal("No se ha eliminado.","El registro NO ha sido eliminado.","error");
                delay(2000);
            }
        });

});

                </script>
                <script>
                    $(document).ready(function(){
		
		  /* it will load products when document loads */
		
		$(document).on('click', '#delete', function(e){
			
			var categoriadel = $(this).data('id');
			SwalDelete(categoriadel);
			e.preventDefault();
		});
		
	});
	
	function SwalDelete(categoriadel){
		
		swal({
			title: 'Are you sure?',
			text: "It will be deleted permanently!",
			type: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'Yes, delete it!',
			showLoaderOnConfirm: true,
			  
			preConfirm: function() {
			  return new Promise(function(resolve) {
			       
			     $.ajax({
			   		url: 'delcat',
			    	type: 'POST',
			       	data: 'delete='+categoriadel
			   //    	dataType: 'json'
			     })
			     .done(function(response){
			     	swal('Deleted!', response.message, response.status);
					 
			     })
			     .fail(function(){
			     	swal('Oops...', 'Something went wrong with ajax !', 'error');
			     });
			  });
		    },
			 			  
		});	
		
	}
	
	 
                    
                </script>

    </body>
</html>
