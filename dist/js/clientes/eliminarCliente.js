function eliminaClientes(id_cliente, nombre_cliente){

    Swal.fire({
        title: 'Estas seguro de eliminar a ' + nombre_cliente + '?',
        text: "Esta acción es irreversible!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, eliminar!',
        cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = 'eliminarCliente.php?id_cliente=' + id_cliente;
        }
    })
}