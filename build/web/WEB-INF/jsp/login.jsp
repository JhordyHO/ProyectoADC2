<%-- 
    Document   : login
    Created on : 03/10/2017, 07:22:57 PM
    Author     : Jose Rayo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <%@include file="../../META-INF/jdf/head.jspf" %>
    <title>Institución Educativa El Buen Pastor</title> 
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <form action="principal" method="post">
                    <h1> Sistema de Inventario </h1>
                    <div>
                        <input type="text" class="form-control" placeholder="Username" required="required" />
                    </div>
                    <div>
                        <input type="password" class="form-control" placeholder="Password" required="required" />
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <button type="submit" class="btn btn-info">Log in</button>
                        </div>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <!-- <p class="change_link">New to site?
                           <a href="#signup" class="to_register"> Create Account </a>
                         </p> --->

                        <div class="clearfix"></div>
                        <br />

                        <div>
                            <!--<h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>-->
                            <p>©2017 Todos los Derechos Reservados. Ingenieria de Sistemas Upeu - Svep 1.0</p>
                </div>
              </div>
            </form>
              
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
