<?php
if(
    isset( $_POST["nombre"] ) && !empty($_POST["nombre"]) &&
    isset( $_POST["id"] ) && !empty($_POST["id"])
){

    $data = [];
    $data["nombre"] = $_POST["nombre"];
    $data["id"]     = $_POST["id"];
    $editaDepartamento = editaDepartamento($data);

    ?>
    <script>
        let editado = <?php echo $editaDepartamento; ?>;
        if( editado === 2 ){
            swal.fire(
                'Error',
                'Este Departamento ya existe',
                'error'
            );
        }else
            window.location.href = "listarDepartamentos.php";
    </script>
    <?php

}
?>
<div class="modal" id="modalEditaDepartamento" data-backdrop="static" tabindex="-1">
    <div class="modal-dialog modal-sm modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edición de Departamento</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <form action="" method="post" id="formEditaDepartamento">

                    <input type="hidden" name="id" id="idDepartamento">

                    <div class="form-group">
                        <label for="nombreDepartamento">Nombre del Departamento</label>
                        <input type="text" required name="nombre" id="nombreDepartamento" class="form-control">
                        <div class="invalid-feedback">Ingresa el nombre del Departamento</div>
                    </div>

                    <button class="btn btn-primary btn-block">Guardar datos</button>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
    </div>
</div>
