function editaFabricante(id_fabricante, nombre_fabricante) {

    $("#idFabricante").val(id_fabricante);
    $("#nombreFabricante").val(nombre_fabricante);

    $("#modalEditaFabricante").modal("show");

}

$("#formEditaDepartamento").validate();