var v=true;
        $("span.help-block").hide();

        function verificar(){

            var v1=0,v2=0,v3=0,v4=0,v5=0,v6=0,v7=0;
            v1=validacion('razon');
            v2=validacion('nit');
            v3=validacion('direccion');
            v4=validacion('telefono');
            v5=validacion('email');
            v6=validacion('contacto');
            v7=validacion('pass');
            if (v1===false || v2===false || v3===false || v4===false || v5===false || v6===false || v7===false ) {
                 $("#exito").hide();
                 $("#error").show();
            }else{
                $("#error").hide();
                $("#exito").show();
            }
            
        }
        
        
        function validacion(campo){
            var a=0;
            
            if (campo==='razon')
            {
                razon = document.getElementById(campo).value;
                if( razon == null || razon.length == 0 || /^\s+$/.test(codigo) ) {
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
        }