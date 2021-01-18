function editaDepartamento(id_departamento, nombre_departamento) {

    $("#idDepartamento").val(id_departamento);
    $("#nombreDepartamento").val(nombre_departamento);

    $("#modalEditaDepartamento").modal("show");

}

$("#formEditaDepartamento").validate();