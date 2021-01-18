function eliminaMarca(id_marca, nombre_marca){

    Swal.fire({
        title: 'Estas seguro de eliminar la marca ' + nombre_marca + '?',
        text: "Esta acción es irreversible!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, eliminar!',
        cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = 'eliminarMarca.php?id_marca=' + id_marca;
        }
    })
}