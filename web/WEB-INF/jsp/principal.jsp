<%-- 
    Document   : principal
    Created on : 04/10/2017, 12:24:33 AM
    Author     : Jose Rayo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
%>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../../META-INF/jdf/head.jspf" %>
        <title>Institución Educativa El Buen Pastor</title>
    </head>
  <body onload="nobackbutton()" class="nav-md">
      <div class="container body"> 
          <div class="main_container">
            <%@include file="../../META-INF/jdf/header.jspf" %>
                      <!-- page content -->
                      <div class="right_col" role="main">
                          <div class="">
                              <div class="page-title">
                                  <div class="title_left">
                                      <h3>Perfil del Usuario</h3>
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
                                          <div class="x_content">
                                              <div class="col-md-3 col-sm-3 col-xs-12 profile_right">
                                                  <div class="profile_img">
                                                      <div id="crop-avatar">
                                                          <!-- Current avatar -->
                                                          <img class="img-responsive avatar-view" src="recursos/img/<c:url value='${SEXO}'/>.PNG" alt="Avatar" title="Change the avatar">
                                                      </div>
                                                  </div>
                                                  <h3><c:out value="${NOMBRE_AP}"/></h3>

                                                  <ul class="list-unstyled user_data">
                                                      <li><i class="fa fa-map-marker user-profile-icon"></i> San Juan de lurigancho, Canto Rey
                                                      </li>

                                                      <li>
                                                          <i class="fa fa-briefcase user-profile-icon"></i> I.E El Buen Pastor
                                                      </li>
                                                  </ul>
                                                  
                                                  <!----Botonoes principal--->
                                                  <button id="${IDPER}" onclick="getidper(this.id)" class="btn btn-success" data-toggle="modal" data-target="#modal1"><i class="fa fa-edit m-right-xs"></i>EditarDatos</button>
                                                  <button id="${IDPER}" onclick="getiduser(this.id)" class="btn btn-success" data-toggle="modal" data-target="#modal2"><i class="fa fa-edit m-right-xs"></i>EditarUser</button>
                                                  <br />         
                                              </div>
                                                  
                                              <div class="modal fade bs-example-modal-lg" id="modal2" tabindex="-1" role="dialog" aria-hidden="true">
                                                  <div class="modal-dialog modal-lg">
                                                      <div class="modal-content">

                                                          <div class="modal-header">
                                                              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                              </button>
                                                              <h4 class="modal-title" id="myModalLabel">Actualizar Usuario y Contraseña</h4>
                                                          </div>
                                                          <div class="modal-body">
                                                              <form class="form-horizontal form-label-left" novalidate>
                                                                 <div class="model2" >
                                                                 </div>
                                                              </form>
                                                          </div>
                                                          <div class="modal-footer">
                                                              <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                              <button type="submit" onclick="update2();" class="btn btn-primary">Actualizar</button>
                                                          </div>

                                                      </div>
                                                  </div>
                                              </div>
                                              <!--modal 2-- donde actualiza los datos del usuario-->
                                              <div class="modal fade bs-example-modal-lg" id="modal1" tabindex="-1" role="dialog" aria-hidden="true">
                                                  <div class="modal-dialog modal-lg">
                                                      <div class="modal-content">
                                                          <div class="modal-header">
                                                              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                              </button>
                                                              <h4 class="modal-title" id="myModalLabel">Actualizar Datos Personales</h4>
                                                          </div>
                                                          <!--modal de actualizar-->
                                                          <div class="modal-body">
                                                              
                                                                  <form class="form-horizontal form-label-left" novalidate>
                                                                      <div class="model1" >
                                                                      </div>
                                                                  </form>
                                                              
                                                          </div>
                                                          <div class="modal-footer">
                                                              <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                              <button type="submit" onclick="update();" class="btn btn-primary">Actualizar</button>
                                                          </div>

                                                      </div>
                                                  </div>
                                              </div>
                                              <!--Empieza reportes-->
                                              <div class="col-md-9 col-sm-9 col-xs-12">
                                                  <form class="form-horizontal form-label-left" novalidate>
                                                      <div class="item form-group">
                                                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nombres<span class="required">*</span>
                                                          </label>
                                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                                              <p class="form-control-static"><c:out value="${NOMBRE_PER}"/></p>
                                                          </div>
                                                      </div>
                                                      <div class="item form-group">
                                                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Apellido Paterno <span class="required">*</span>
                                                          </label>
                                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                                              <p class="form-control-static"><c:out value="${APELLIDO_PATER}"/></p>
                                                          </div>
                                                      </div>
                                                      <div class="item form-group">
                                                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Apellido Materno <span class="required">*</span>
                                                          </label>
                                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                                              <p class="form-control-static"><c:out value="${APELLIDO_MATER}"/></p>
                                                          </div>
                                                      </div>
                                                      <div class="item form-group">
                                                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Fecha Cumpleaños <span class="required">*</span>
                                                          </label> 
                                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                                              <p class="form-control-static"><c:out value="${FECHA_CUMP}"/></p>
                                                          </div>
                                                      </div>
                                                      <div class="item form-group">
                                                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="website">DNI <span class="required">*</span>
                                                          </label>
                                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                                               <p class="form-control-static"><c:out value="${DNI}"/></p>
                                                          </div>
                                                      </div>
                                                      <div class="item form-group">
                                                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="occupation">Telefono <span class="required">*</span>
                                                          </label>
                                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                                              <p class="form-control-static"><c:out value="${TELEFONO}"/></p>
                                                          </div>
                                                      </div>
                                                       <div class="item form-group">
                                                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="website">Email <span class="required">*</span>
                                                          </label>
                                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                                               <p class="form-control-static"><c:out value="${CORREO}"/></p>
                                                          </div>
                                                      </div>
                                                    </form>
                                                </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- /page content -->
                          <!-- footer content -->
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
               function nobackbutton() {
                   window.location.hash = "no-back-button";
                   window.location.hash = "Again-No-back-button";
                   window.onhashchange = function () {
                       window.location.hash = "";
                   };
               }
               function getidper(id){
                   var url = 'BuscarPer';
                   var data = 'idper='+id;                  
                   
                       $.post(url,data, function(obj){
                           var listP = obj.ls;
                           var j='';
                           if (listP.length > 0) {  
                               for(var i = 0; i< listP.length ; i++){

                                 j += '<div class="item form-group">';
                                 j += '<label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nombre<span class="required">*</span>';
                                 j += ' </label> ';
                                 j +=  '<div class="col-md-6 col-sm-6 col-xs-12">';
                                 j +=  '    <input id="nombrePer" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text" value="'+listP[i].nombre_Per+'">';
                                 j +=  '    <input id="idper" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="hidden" value="<c:out value="${IDPER}"/>">';
                                 j +=  '  </div>';
                                 j +='</div>';
                                 j += '<div class="item form-group">';
                                 j +=  '<label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Apellido Paterno <span class="required">*</span>';
                                 j +=  '   </label> ';
                                 j +=  '<div class="col-md-6 col-sm-6 col-xs-12">',
                                 j +=        '<input id="apePat" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text" value="'+listP[i].apellidoPater_Per+'">';
                                 j +=     '</div>';
                                 j += '</div>';
                                 j += '<div class="item form-group">';
                                 j +=     '<label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Apellido Materno <span class="required">*</span>';
                                 j +=    '</label>'; 
                                 j +=    '<div class="col-md-6 col-sm-6 col-xs-12">';
                                 j +=         '<input id="apeMat" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text" value="'+listP[i].apellidoMater_Per+'">';
                                 j +=     '</div>';
                                 j += '</div>';
                                 j += '<div class="item form-group">';
                                 j +=     '<label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Fecha Cumpleaños <span class="required">*</span>';
                                 j +=     '</label> ';
                                 j +=     '<div class="col-md-6 col-sm-6 col-xs-12">';
                                 j +=        '<input id="fechaCump" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text" value="'+listP[i].fechaCumpl_Date+'">';
                                 j +=      '</div>',
                                 j +=  '</div>';
                                 j +=  '<div class="item form-group">';
                                 j +=     '<label class="control-label col-md-3 col-sm-3 col-xs-12" for="website">DNI <span class="required">*</span>';
                                 j +=     ' </label>', 
                                 j +=     '<div class="col-md-6 col-sm-6 col-xs-12">';
                                 j +=         '<input id="dniPer" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text" value="'+listP[i].dni_Per+'">';
                                 j +=  '</div>';
                                 j +=  '</div>';
                                 j += '<div class="item form-group">';
                                 j +=    '<label class="control-label col-md-3 col-sm-3 col-xs-12" for="occupation">Telefono <span class="required">*</span>';
                                 j +=    ' </label> ';
                                 j +=   ' <div class="col-md-6 col-sm-6 col-xs-12">';
                                 j +=    ' <input id="telefPer" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text" value="'+listP[i].telefono_Per+'">';
                                 j +=     ' </div>';
                                 j += ' </div>';
                                 j += '<div class="item form-group">';
                                 j +=     ' <label class="control-label col-md-3 col-sm-3 col-xs-12" for="website">Email <span class="required">*</span>';
                                 j +=  '</label> ';
                                 j +=  '<div class="col-md-6 col-sm-6 col-xs-12">';
                                 j +=  '<input id="corrPer" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text" value="'+listP[i].correo_Per+'">';
                                 j +=  '    </div>';
                                 j +=  '</div>';
                                   
                               }
                               $(".model1").empty();
                               $(".model1").append(j);      
                               
                           }
                       });                 
               }
               function getiduser(id){
                   var url = 'BuscarUser';
                   var data = 'iduser='+id;                  
                $.post(url,data, function(obj){
                   var listU = obj.lst;
                   var p='';
                   if (listU.length > 0) {
                        for(var i = 0; i< listU.length ; i++){
                       p +=   '<div class="item form-group">';
                       p +=      '<label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Usuario<span class="required">*</span>';
                       p +=      '</label> ';
                       p +=   '<div class="col-md-6 col-sm-6 col-xs-12">';
                       p +=           '<input id="userp" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text" value="'+listU[i].user+'">';
                       p +=           '<input id="iduserp" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="hidden" value="'+listU[i].idusuario+'">';
                       p +=           '</div>';
                       p +=      '</div>';
                       p +=       '<div class="item form-group">';
                       p +=           '<label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Contraseña <span class="required">*</span>';
                       p +=           '</label>'; 
                       p +=           '<div class="col-md-6 col-sm-6 col-xs-12">';
                       p +=              '<input id="passp" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="password" value="'+listU[i].pass+'">';
                       p +=           '</div>';
                       p +=       '</div>'; 
                            
                        }
                        $(".model2").empty();
                        $(".model2").append(p);
                   }       
                });             
               }
               function update2(){
                   var user = $("#userp").val();
                   var pass = $("#passp").val();
                   var iduser = $("#iduserp").val();
                   if($("#userp").val().length !==0 && $("#passp").val().length !==0){
                      var opc = "3";                      
                                $.ajax({
                                   url:"guardar",
                                   type: 'POST',
                                   async: true,
                                   data: {
                                       'user' : user, 
                                       'pass' : pass,
                                       'iduser': iduser,
                                       'opc': opc
                                      
                                   },
                                   success: function (data) {
                                       
                                    }                                    
                               });
                swal({
                  title: 'Actualizado!',
                  text: "Tus datos fueron actualizado!",
                  type: 'success',
                  confirmButtonColor: '#3085d6',
                  cancelButtonColor: '#d33',
                  confirmButtonText: 'Ok',
                  showLoaderOnconfirm: true,
                  
                    preConfirm: function(){
                    return new Promise(function(resolve){                    
                          refresh();
                      });  
                    },
                   allowOutsideClick:  false
                });
                
                   }else{
                    swal(
                      'Oops...',
                      'Por favor ingrese todos los datos!!',
                      'error'
                           );
                       
                   }
                   
                   console.log(user,pass,iduser);
               }

               function update(){                 
                   var nombrePer = $("#nombrePer").val();
                   var apePat = $("#apePat").val();
                   var apeMat = $("#apeMat").val();
                   var fechaCump = $("#fechaCump").val();
                   var dniPer = $("#dniPer").val();
                   var telefPer = $("#telefPer").val();
                   var corrPer = $("#corrPer").val();
                   var idPer = $("#idper").val();
                   if ($("#nombrePer").val().length !==0 && $("#apePat").val().length !==0 && $("#apeMat").val().length !==0 && $("#fechaCump").val().length!==0 &&
                       $("#dniPer").val().length !==0 && $("#telefPer").val().length !==0 && $("#corrPer").val().length !==0) {
                           var opc = "2";                      
                                $.ajax({
                                   url:"guardar",
                                   type: 'POST',
                                   async: true,
                                   data: {
                                       'nombrePer' : nombrePer, 
                                       'apePat' : apePat,
                                       'apeMat' : apeMat,
                                       'fechaCump' : fechaCump,
                                       'dniPer' : dniPer,
                                       'telefPer' : telefPer,
                                       'corrPer' : corrPer,
                                       'idper' : idPer,
                                       'opc': opc
                                      
                                   },
                                   success: function (data) {
                                       
                                    }                                    
                               });
                swal({
                  title: 'Actualizado!',
                  text: "Tus datos fueron actualizado!",
                  type: 'success',
                  confirmButtonColor: '#3085d6',
                  cancelButtonColor: '#d33',
                  confirmButtonText: 'Ok',
                  showLoaderOnconfirm: true,
                  
                    preConfirm: function(){
                    return new Promise(function(resolve){                    
                          refresh();
                      });  
                    },
                   allowOutsideClick:  false
                });


                    }else{
                       swal(
                      'Oops...',
                      'Por favor ingrese todos los datos!!',
                      'error'
                           );

                   }
                    
               }
        function refresh(){
               location.reload(true);
            }                                                
        </script>
    </body>
</html>
