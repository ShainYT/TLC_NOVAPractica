function editaMarca(id_marca, nombre_marca) {

    $("#idMarca").val(id_marca);
    $("#nombreMarca").val(nombre_marca);

    $("#modalEditaMarca").modal("show");

}

$("#formEditaMarca").validate();