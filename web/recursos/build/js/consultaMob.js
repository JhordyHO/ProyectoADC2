
function consultamob() {
    $("#registrarcon").click(function () {

        var idMobiliariocon = $("#idMobiliariocon").val();
        var idPersonacon = $("#idPersonacon").val();
        var fechacon = $("#fechacon").val();
        var cantidadcon = $("#cantidadcon").val();
        var estadocon = $("#estadocon").val();
        var descripcioncon = $("#descripcioncon").val(); 

        if ($("#fechacon").val().length !== 0 && $("#idMobiliariocon").val().length !== 0 && $("#idPersonacon").val().length !== 0) {

            var opc = "1";
            $.ajax({
                url: "regconsul",
                type: 'POST',

                data: {
                    'fechacon': fechacon,
                    'cantidadcon': cantidadcon,
                    'estadocon': estadocon, 
                    'descripcioncon': descripcioncon, 
                    'idMobiliariocon': idMobiliariocon,
                    'idPersonacon': idPersonacon,
                    'opc': opc


                },
                success: function (data) {


                }
            });

            swal(
                    'Registrado!',
                    'Los datos han sido registrado correctamente!',
                    'success'
                    );

        } else {
            swal(
                    'Oops...',
                    'Por favor rellene y seleccione todos los campos !',
                    'error'
                    );
            console.log(fechacon, cantidadcon, estadocon, descripcioncon,idMobiliariocon,idPersonacon);
        }
        $("#fechacon").val("");
        $("#cantidadcon").val("");
        $("#estadocon").val("");
        $("#descripcioncon").val(""); 
    });



}





$(document).ready(function () {

    consultamob();


});