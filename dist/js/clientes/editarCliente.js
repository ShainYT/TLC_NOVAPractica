
function editaCliente(id_cliente, nombre_cliente) {

    $("#idCliente").val(id_cliente);
    $("#nombreCliente").val(nombre_cliente);

    $("#modalEditaCliente").modal("show");

}

$("#formEditaCliente").validate();