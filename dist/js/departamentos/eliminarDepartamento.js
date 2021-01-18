function eliminaDepartamentos(id_departamento, nombre_departamento){

    Swal.fire({
        title: 'Estas seguro de eliminar a ' + nombre_departamento + '?',
        text: "Esta acción es irreversible!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, eliminar!',
        cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = 'eliminarDepartamento.php?id_departamento=' + id_departamento;
        }
    })
}