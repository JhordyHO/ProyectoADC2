                    $(document).ready(function () {
                        cargarNotificacion();
                        
                    });
                    
function cargarNotificacion() {
    $("#info2").click(function () {
        swal(
                'Informacion!!',
                'Se recomienda rellenar todos los campos pero\n\
                 si no cuenta con todos, rellene los campos \n\
                 como por ejemplo: Categoria, Departamento, \n\
                 Nombre, Cantidad, Estado y agregue un comentario',
                'question'
                );
    });

}