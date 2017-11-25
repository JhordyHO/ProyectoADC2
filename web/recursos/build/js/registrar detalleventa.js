function  registrar3(){
  $("#registrarcon").click(function (){
        var fecha1=$("#fechacon").val();
        var cantidad1=$("#cantidadcon").val();
        var estado1=$("#estadocon").val();
        var descripcion2=$("#descripcioncon").val();
        var id1=$("#idmobi").val();
        var id2=$("#idper").val();
       
        var opc="1";
              $.ajax({
               url: "xxx",
               type: 'POST',
               data: {
                   
                  'fecha': fecha1,
                  'cantidad':cantidad1,
                  'estado': estado1,
                  'descripcion':descripcion2,
                  'id1': id1,
                  'id2': id2,
                 
                  'opc':opc
                },
                success: function (data) {
                
            }
                
         
                  
                  
              });
        
            console.log(cantidad1,descripcion2);
    });
    }
    $(document).ready(function (){
        registrar3();
        
    });
        
        
   
   
 
