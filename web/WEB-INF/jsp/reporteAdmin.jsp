<%-- 
    Document   : reporteAdmin
    Created on : 09/11/2017, 08:27:49 PM
    Author     : Jose Rayo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <h3>Generer reporte de los Mobiliarios</h3>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
           <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                   <!-- <h2>Button Example <small>Users</small></h2> -->
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
                 <!--   <p class="text-muted font-13 m-b-30">
                    The Buttons extension for DataTables provides a common set of options, API methods and styling to display buttons on a page that will interact with a DataTable. The core library provides the based framework upon which plug-ins can built.
                    </p> -->
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>Name Mobiliario</th>
                          <th>Marca</th>
                          <th>Serie</th>
                          <th>Cantidad</th>
                          <th>Estado</th>
                          <th>Fecha Registro</th>
                        </tr>
                      </thead>


                      <tbody>
                        <tr>
                          <td>LAPTO</td>
                          <td>TOSHIVA</td>
                          <td>AJHGA6D7SUD</td>
                          <td>1</td>
                          <td>Regular</td>
                          <td>06/11/2017</td>
                        </tr>
                        <tr>
                          <td>MAUSE</td>
                          <td>HALION</td>
                          <td>SDIFNW2323</td>
                          <td>1</td>
                          <td>Regular</td>
                          <td>06/11/2017</td>
                        </tr>
                        <tr>
                          <td>MESA DE ALUMINIO</td>
                          <td></td>
                          <td></td>
                          <td>1</td>
                          <td>Bueno</td>
                          <td>06/11/2017</td>
                        </tr>
                        <tr>
                          <td>LAPTO</td>
                          <td>TOSHIVA</td>
                          <td></td>
                          <td>1</td>
                          <td>Bueno</td>
                          <td>06/11/2017</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
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
            
            
         <!--$(document).ready(function () {
              listTable();
            });

            function listTable() {
                $.post("<%=request.getContextPath()%>/list_mob", function (a) {
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
                            s += '</tr>';
                        }
                        $(".conTable").empty();
                        $(".conTable").append(createTable());
                        $(".mbody").empty();
                        $(".mbody").append(s);
                        $("#datatable-buttons").dataTable();
                    } else {
                        alert("No hay datos");
                    }
                });
            }


            function createTable() {
                var s = '<table id="datatable-buttons" class="table table-striped table-bordered">';
                s += '<thead>';
                s += '<tr>';
                s += '<th>Nombre</th>';
                s += '<th>Marca</th>';
                s += '<th>Serie</th>';
                s += '<th>Cantidad</th>';
                s += '<th data-hide="phone">Estado</th>';
                s += '<th data-hide="phone">Fecha de Registro</th>';
                s += '</tr>';
                s += '</thead>';
                s += '<tbody class="mbody"></tbody>';
                s += '</table>';
                return s;
            }
           
        </script>
    </body>
</html>
