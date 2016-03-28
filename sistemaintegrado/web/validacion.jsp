<%-- 
    Document   : validacion
    Created on : 25-mar-2016, 18:11:55
    Author     : SHADY-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Aplicacion Web</title>

    <link rel="stylesheet" href="../Resources/css/bootstrap.min.css">

</head>
 
<body>
    <!--Barra de Navegacion-->
    <nav class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Cambiar Navegacion</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand">AplicacionWeb</a>
        </div>

        <div class="collapse navbar-collapse navbar-ex1-collapse">
        	 <ul class="nav navbar-nav">
                <li><a href="lista_libros.php" class="active">Libros</a></li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <form role="form" class="form-horizontal">
                    <div class="form-group">
                        <div class="alert alert-danger text-center" style="display:none;" id="error">
                            <strong>Adventencia: </strong>Debe completar todos los campos
                        </div>
                        <div class="alert alert-success text-center" style="display:none;" id="exito">
                            <strong>Felicidades: </strong>Su registro ha sido guardado
                        </div>  
                    </div>
                    <div class="form-group">
                        <label for="codigo" class="control-label col-xs-4">Codigo Universitario:</label>
                        <div class="col-xs-5">
                            <input id="codigo" name="codigo" type="text" class="form-control" placeholder="Escriba su codigo" onkeyup="validacion('codigo');" aria-describedby="inputSuccess2Status">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="nombres" class="control-label col-xs-4">Nombres y Apellidos:</label>
                        <div class="col-xs-5">
                            <input id="nombres" name="nombres" type="text" class="form-control" placeholder="Escriba sus Nombres y Apellidos" onkeyup="validacion('nombres');">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="dni" class="control-label col-xs-4">DNI:</label>
                        <div class="col-xs-5">
                            <input id="dni" name="dni" type="text" class="form-control" placeholder="Escriba su DNI" onkeyup="validacion('dni');">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="control-label col-xs-4">EMAIL:</label>
                        <div class="col-xs-5">
                            <input id="email" name="email" type="text" class="form-control" placeholder="Escriba su email" onkeyup="validacion('email');">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="genderRadios" class="control-label col-xs-4">Genero:</label>
                        <div class="col-xs-3">
                            <label class="radio-inline">
                                <input id="male" type="radio" name="genderRadios" value="M" onclick="validacion('genderRadios')"> Maculino
                            </label>
                            <label class="radio-inline">
                                <input id="female" type="radio" name="genderRadios" value="F" onclick="validacion('genderRadios')"> Femenino
                            </label>
                           
                        </div>
                        <div class="col-xs-2">
                                            </div>
                            
                        
                       
                    </div>
                    <div class="form-group">
                        <label for="email" class="control-label col-xs-4">Carrera Profesional:</label>
                        <div class="col-xs-5">
                            <select id="carrera" name="carrera" class="form-control" onchange="validacion('carrera');">
                                <option value="">Seleccione uno</option>
                                <option value="1">Ing. Sistema e Informatica</option>
                                <option value="2">Ing. Ambiental</option>
                                <option value="3">Ing. Pesquera</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="codigo" class="control-label col-xs-4"></label>
                        <div class="col-xs-5">
                            <button type="button" class="btn btn-primary" onclick='verificar();'><span class="glyphicon glyphicon-lock"></span> Entrar</button>   
                        </div>
                    </div>                 
                </form>
            </div>
            
        </div>
    </div>
    <script type="text/javascript" src="../Resources/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="../Resources/js/bootstrap.min.js"></script>
   
    <script type="text/javascript">
        var v=true;
        $("span.help-block").hide();

        function verificar(){

            var v1=0,v2=0,v3=0,v4=0,v5=0,v6=0;
            v1=validacion('codigo');
            v2=validacion('nombres');
            v3=validacion('dni');
            v4=validacion('email');
            v5=validacion('genderRadios');
            v6=validacion('carrera');
            if (v1===false || v2===false || v3===false || v4===false || v5===false || v6===false ) {
                 $("#exito").hide();
                 $("#error").show();
            }else{
                $("#error").hide();
                $("#exito").show();
            }
            /*total=v1+v2+v3+v4+v5+v6;
            if (v && total>=6) {
                $("#error").hide();
                $("#exito").show();
            }else{
                 $("#exito").hide();
                 $("#error").show();
            }
            
            
            validacion('nombres');
            validacion('dni');
            validacion('email');
            validacion('genderRadios');
            validacion('carrera');
            if (v) {
                alert("los campos estan validados")
            }
            else{
                alert("los campos no estan validados");
            }*/

        } 
        
        function validacion(campo){
            var a=0;
            
            if (campo==='codigo')
            {
                codigo = document.getElementById(campo).value;
                if( codigo == null || codigo.length == 0 || /^\s+$/.test(codigo) ) {
                    $("#glypcn"+campo).remove();
                    $('#'+campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#'+campo).parent().children('span').text("Ingrese algo").show();
                    $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                   
                }
                else
                {
                    if(isNaN(codigo)) {

                        $("#glypcn"+campo).remove();
                        $('#'+campo).parent().parent().attr("class", "form-group has-error has-feedback");
                        $('#'+campo).parent().children('span').text("No Acepta letras").show();
                        $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-remove form-control-feedback'></span>");

              
                        return false;
                    }
                    else{

                        $("#glypcn"+campo).remove();
                        $('#'+campo).parent().parent().attr("class", "form-group has-success has-feedback");
                        $('#'+campo).parent().children('span').hide();
                        $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-ok form-control-feedback'></span>");
             
                        return true;
                    }
                    
                    
                }
                
            }
            if (campo==='nombres'){
                apellido = document.getElementById(campo).value;
                if( apellido == null || apellido.length == 0 || /^\s+$/.test(apellido) ) {
                    
                    $("#glypcn"+campo).remove();
                    $('#'+campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#'+campo).parent().children('span').text("Ingrese algo").show();
                    $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                    
                }
                else{
                    $("#glypcn"+campo).remove();
                    $('#'+campo).parent().parent().attr("class", "form-group has-success has-feedback");
                    $('#'+campo).parent().children('span').hide();
                    $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    return true;
                    
                } 
            }
            if (campo==='dni'){
                dni = document.getElementById(campo).value;
                if( dni == null || dni.length == 0 || /^\s+$/.test(dni) ) {
                    $("#glypcn"+campo).remove();
                    $('#'+campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#'+campo).parent().children('span').text("Ingrese algo").show();
                    $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                    
                }
                else
                {
                    if( isNaN(dni) ) 
                    {
                        $("#glypcn"+campo).remove();
                        $('#'+campo).parent().parent().attr("class", "form-group has-error has-feedback");
                        $('#'+campo).parent().children('span').text("No acepto letras").show();
                        $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else{
                        if (!(/^\d{8}$/.test(dni))) 
                        {
                            $("#glypcn"+campo).remove();
                            $('#'+campo).parent().parent().attr("class", "form-group has-error has-feedback");
                            $('#'+campo).parent().children('span').text("Debe ingresar solamente 8 digitos").show();
                            $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                            return false;
                        }
                        else{
                            $("#glypcn"+campo).remove();
                            $('#'+campo).parent().parent().attr("class", "form-group has-success has-feedback");
                            $('#'+campo).parent().children('span').hide();
                            $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    
                            return true;
                        }
                        
                    }  
                } 
            }
            if (campo==='email'){
                email = document.getElementById(campo).value;
                if( email == null || email.length == 0 || /^\s+$/.test(email) ) {
                    $("#glypcn"+campo).remove();
                    $('#'+campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#'+campo).parent().children('span').text("Ingrese algun Email").show();
                    $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        
                    return false;
                    
                }
                else{
                    if (!(/\S+@\S+\.\S+/.test(email))) {
                        $("#glypcn"+campo).remove();
                        $('#'+campo).parent().parent().attr("class", "form-group has-error has-feedback");
                        $('#'+campo).parent().children('span').text("Ingrese un Email valido").show();
                        $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else{
                        $("#glypcn"+campo).remove();
                        $('#'+campo).parent().parent().attr("class", "form-group has-success has-feedback");
                        $('#'+campo).parent().children('span').hide();
                        $('#'+campo).parent().append("<span id='glypcn"+campo+"' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    
                        return true;
                    }
                }

            }
            if (campo==='genderRadios'){
                opciones = document.getElementsByName(campo);
                var seleccionado = false;
                for(var i=0; i<opciones.length; i++) {    
                  if(opciones[i].checked) {
                    seleccionado = true;
                    break;
                  }
                }
                 
                if(!seleccionado) {
                    $('#male').parent().parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#male').parent().parent().next().append("<span id='sexo'  class='glyphicon glyphicon-remove form-control-feedback'></span>");


                    return false;
                }
                else{
                    $("#sexo").remove();
                    $('#male').parent().parent().parent().attr("class", "form-group has-success");
                    return true;
                }
            }
            if (campo==='carrera'){
                indice = document.getElementById(campo).selectedIndex;
                if( indice == null || indice == 0 ) {
                    $('#carrera').parent().parent().attr("class", "form-group has-error");
                    return false;
                }
                else{
                    $('#carrera').parent().parent().attr("class", "form-group has-success");
                    return true;

                }
            }
            
            
           
        }
    </script>
</body>
</html>
