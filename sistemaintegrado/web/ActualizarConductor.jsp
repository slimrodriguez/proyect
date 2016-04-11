<%-- 
    Document   : ActualizarConductor
    Created on : 3/04/2016, 04:20:19 PM
    Author     : wilson
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
    <link href="style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stilos.css" type="text/css" />
    
    
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
                            
                            
                              <%
                           
                                if(Integer.parseInt(request.getParameter("idconductor"))!=0 && request.getParameter("nombre")!=null && request.getParameter("apellido") != null
                                && request.getParameter("cedula") != null && request.getParameter("direccion") != null
                                && request.getParameter("telefono") != null && request.getParameter("celular") != null
                                && request.getParameter("categoria") != null && request.getParameter("vencimiento") != null){
                                
                                session.setAttribute("idconductor", Integer.parseInt(request.getParameter("idconductor")));
                           
                           %>
                             
                           
                           
                           <br>
                           <br>
                            <form   class="form-inline" role="form" method="post" action="ActualizarConductor">
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        Nombre: <input class="form-control" type="text" name="nombre" value="<%=request.getParameter("nombre")%>"/>
                                        <input class="form-control" type="hidden" name="idconductor" value="<%=request.getParameter("idconductor")%>"/>
                                        
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        Apellidos: <input class="form-control" type="text" name="apellido" value="<%=request.getParameter("apellido")%>"/>
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        cedula: <input class="form-control" type="text" name="cedula" value="<%=request.getParameter("cedula")%>"/>
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        Direccio: <input class="form-control" type="text" name="direccion" value="<%=request.getParameter("direccion")%>" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        Teléfono: <input class="form-control" type="text" name="telefono" value="<%=request.getParameter("telefono")%>" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        Celular: <input class="form-control" type="text" name="celular" value="<%=request.getParameter("celular")%>"/>
                                    </div>
                                </label>
                            </div>
                            <br>
                            <br>
                           
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-9">
                                        Categoria: <select class="form-control"  name="categoria" value="<%=request.getParameter("categoria")%>">
                                            <option value="seleccionar categoria">seleccionar categoria</option> 
                                            <option value="A2">A2</option> 
                                            <option value="B1" >B1</option>
                                            <option value="B2">B2</option>
                                            <option value="B3">B3</option>
                                            <option value="C1">C1</option>
                                            <option value="C2">C2</option>
                                            <option value="C3">C3</option>
                                        </select>
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-9">
                                        vencimiento:<input class="form-control" type="date" name="vencimiento" value="<%=request.getParameter("vencimiento")%>"/>
                                    </div>
                                </label>
                            </div>
                            <br> </br>

                            <br> </br>
                            <br> </br>
                            <br> </br>
                                
                                
                                <br></br>

                        </div>
                </div>
                <br>

                <div class="form-group">
                    <div class="col-xs-offset-6 col-xs-6">
                        <input type="submit" class="btn btn-default"  value="Actualizar">
                        <button type="button" class="btn btn-default"><a href="VerConductor.jsp">Cacelar</a></button>  
                        
                        
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
