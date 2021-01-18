function eliminaFabricantes(id_fabricante, nombre_fabricante){

    Swal.fire({
        title: 'Estas seguro de eliminar a ' + nombre_fabricante + '?',
        text: "Esta acción es irreversible!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, eliminar!',
        cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = 'eliminarFabricante.php?id_fabricante=' + id_fabricante;
        }
    })
}