<?php
if(
    isset( $_POST["nombre"] ) && !empty($_POST["nombre"]) &&
    isset( $_POST["id"] ) && !empty($_POST["id"])
){

    $data = [];
    $data["nombre"] = $_POST["nombre"];
    $data["id"]     = $_POST["id"];
    $editaCliente = editaCliente($data);

    ?>
    <script>
        let editado = <?php echo $editaCliente; ?>;
        if( editado === 2 ){
            swal.fire(
                'Error',
                'Este Cliente ya existe',
                'error'
            );
        }else
            window.location.href = "listarClientes.php";
    </script>
    <?php

}
?>
<div class="modal" id="modalEditaCliente" data-backdrop="static" tabindex="-1">
    <div class="modal-dialog modal-sm modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edición de Cliente</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <form action="" method="post" id="formEditaCliente">

                    <input type="hidden" name="id" id="idCliente">

                    <div class="form-group">
                        <label for="nombreCliente">Nombre del Cliente</label>
                        <input type="text" required name="nombre" id="nombreCliente" class="form-control">
                        <div class="invalid-feedback">Ingresa el nombre del Cliente</div>
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
