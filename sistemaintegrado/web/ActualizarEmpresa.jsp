<%-- 
    Document   : ActualizarPedido
    Created on : 13-mar-2016, 21:28:17
    Author     : SHADY-
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Transportes Urimar</title>





    </head>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stilos.css" type="text/css" />
    <link rel="stylesheet" href="stilos.css" type="text/css" />
    
    
   <body>
         <div class="row">
                <div class="col-md-12">
                    <img id="logo" alt="Trasportes Urimar" src="img/banner4.jpg" width="100%" height="100%">
                    <div class="row">
                        <div class="col-md-12"></div>
                        
                    </div>    
                </div> 
          </div> 

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-6">
					<h3 class="text-center">
					ACTUALIZAR REGISTRO
					</h3>
                                    
                                                   <br></br>
                             <div class="alert alert-success fade in">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <center><h5>
                                    <% if (request.getAttribute("mensaje") != null) {%>

                                    ${mensaje}
                                    
                                </h5>
                              </center>
                              
                            </div>
                                    <center> 
                                        <button type="button" class="btn btn-default ">
                                            <a href="ListaSolicitudes.jsp"> Aceptar </a> 
			                </button>
                                    </center>
                              <%}%>
                            
                              <%
                           
                                if(Integer.parseInt(request.getParameter("idcliente"))!=0 && request.getParameter("nombre")!=null && request.getParameter("nit") != null
                                && request.getParameter("direccion") != null && request.getParameter("telefono") != null
                                && request.getParameter("email") != null && request.getParameter("contacto") != null
                                && request.getParameter("password") != null){
                                session.setAttribute("idcliente", Integer.parseInt(request.getParameter("idcliente")));
                           
                           %>
                             
                           
                           
                           <br>
                           <br>
                            <form class="form-horizontal" method="post" action="ActualizarCliente">
                                <div class="form-group">
                                <label for="requerido" class="control-label col-xs-3">Razon Social: </label>
				<div class="col-xs-9">
                                    <input type="text" id="requerido" class="form-control" name="razon" value="<%=request.getParameter("nombre")%>">
					<span class="help-block"></span>

				</div>
                                    
                                </div>


                                <div class="form-group">
                                    <br></br>
                                    <label for="nit" class="control-label col-xs-3">NIT *</label>
                                    <div class="col-xs-9">
                                        <input type="hidden" class="form-control" id="inputEmail" name="idcliente" value="<%=request.getParameter("idcliente")%>" >
                                        <input type="text" class="form-control" id="inputEmail" name="nit" value="<%=request.getParameter("nit")%>">
                                        <span class="help-block"></span>
                                    </div>
                                </div>



                                <br></br>

                                <div class="form-group">
                                    <label for="requerido" class="control-label col-xs-3">Dirección: *</label>
                                    <div class="col-xs-9">
                                        <input type="requerido" class="form-control" name="direccion" value="<%=request.getParameter("direccion")%>">
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                
                                <br></br>
                                <div class="form-group">
                                    <label for="telefono"class="control-label col-xs-3" >Telefono: *</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="telefono" class="form-control" name="telefono" value="<%=request.getParameter("telefono")%>">
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <br></br>

                                <div class="form-group">
                                    <label for="email" class="control-label col-xs-3" >Email: *</label>
                                    <div class="col-xs-9">
                                        <input type="email" class="form-control" id="email" name="email" value="<%=request.getParameter("email")%>">
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <br></br>


                                <div class="form-group">
                                    <label for="requerido" class="control-label col-xs-3" >Nombre de contacto: *</label>
                                    <div class="col-xs-9">
                                        <input id="requerido" type="text" class="form-control" name="contacto" value="<%=request.getParameter("contacto")%>"> 
                                         <span class="help-block"></span>
                                    </div>
                                </div>
                                <br></br>
                                <div class="form-group">
                                    <label  for="pass" class="control-label col-xs-3" >Password: *</label>
                                    <div class="col-xs-9">
                                        <input type="password" class="form-control"  id="password" name="pass" value="<%=request.getParameter("password")%>">
                                    </div>
                                </div>
                                
                                
                                <br></br>

                        </div>
                </div>
                <br>

                <div class="form-group">
                    <div class="col-xs-offset-6 col-xs-6">
                        <input type="submit" class="btn btn-default"  value="Actualizar ">
                        <button type="button" class="btn btn-default"><a href="ListaSolicitudes.jsp">Cacelar</a></button>  
                        
                        
                    </div>


                </div>



            
                </form>
            







                </table>
     <%}%>
            </div>
        </div>
    </div>

</div>
</div>
</div>

<br>
<br>
<br>
<br>
<div class="row">
                <div class="col-md-12">
                    <img id="footer"  src="img/footer.png">
                </div>
            </div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/validarEmpresa.js"></script>
				</div>
				<div class="col-md-3">
				</div>
			</div>
		</div>
	</div>
</div>                          
         
   </body>
</html>