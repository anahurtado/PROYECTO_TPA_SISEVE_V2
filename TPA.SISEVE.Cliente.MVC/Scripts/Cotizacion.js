$(document).on('ready', function () {

    $('#MarcaId').on('change', cargarModelosPorMarca);
    $("#btnCotizar").on('click', cargarGrupoVehiculo);
});



function cargarModelosPorMarca() {
    var marcaId = $(this).val();

    $('#ModeloId').empty().append('<option value="">Seleccione Modelo</option>');

    $.get('/api/Modelo?marcaid=' + marcaId, function (data) {
        data.forEach(function (item) {
            $('#ModeloId').append('<option value="'+ item.Id +'">'+ item.Nombre +'</option>');
        });
    });
}


function cargarGrupoVehiculo() {

    $('#GrupoVehiculoTable').

    $.get('/api/GrupoVehiculo', function (data) {
        console.log(data);
    });
}