
   function getData(id) {
            var url = 'vistaMob';
            var data = 'idMob=' + id;//datos a enviar
            try {
                 $.post(url, data, function (obj) {
                    var listaD = obj.ls;
                    if (listaD.length > 0) {
                        var l = "";
                        for (var i = 0; i < listaD.length; i++) {
                            l += '<tr>';
                            l += '<td>'+listaD[i].nombre_Mob2+'</td>';
                            l += '<td>'+listaD[i].marca_Mob2+'</td>';
                            l += '<td>'+listaD[i].serie_Mob2+'</td>';
                            l += '<td>'+listaD[i].cantidad2+'</td>';
                            l += '<td>'+listaD[i].estado+'</td>';
                            l += '<td>'+listaD[i].fechaReg_Mob2+'</td>';
                            l += '<td>'+listaD[i].comentario2+'</td>';
                            l += '<td><a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Editar </a>';
                            l += '<td><a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Eliminar </a>';
                            l += '</tr>';
                        }
                        $(".conTable2").empty();
                        $(".conTable2").append(createTable2());
                        $(".mbody2").empty();
                        $(".mbody2").append(l);
                        $("#datatable2-responsive").dataTable();        
            } else {
                $(".advice2").attr("class", "callout callout-warning advice2");
                $('#cancelarMob').click(function () {
                    $("#datatable2-responsive").empty();
                });
                    }
                });

            } catch (e) {
                console.error("Error al listar : " + e);
            }

                }
                

            function createTable2() {
            var l = '<table id="datatable2-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">';
                l += '<thead>';
                l += '<tr>';
                l += '<th>Nombre Mobiliario</th>';
                l += '<th>Marca</th>';
                l += '<th>Modelo/Serie</th>';
                l += '<th>Cantidad</th>';
                l += '<th data-hide="phone">Estado</th>';
                l += '<th data-hide="phone">Fecha registro</th>';
                l += '<th data-hide="phone">Comentario</th>';
                l += '<th data-hide="phone">Editar</th>';
                l += '<th data-hide="phone">Eliminar</th>';
                l += '</tr>';
                l += '</thead>';
                l += '<tbody class="mbody2"></tbody>';
                l += '</table>';
                return l;
            }        
        $('#cancelarMob').click(function() {
	$("#datatable2-responsive").empty();
             });
 
 