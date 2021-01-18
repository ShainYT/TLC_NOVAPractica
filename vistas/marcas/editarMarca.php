<?php
    if(
        isset( $_POST["nombre"] ) && !empty($_POST["nombre"]) &&
        isset( $_POST["id"] ) && !empty($_POST["id"])
    ){

        $data = [];
        $data["nombre"] = $_POST["nombre"];
        $data["id"]     = $_POST["id"];
        $editaMarca = editaMarca($data);

        ?>
        <script>
            let editado = <?php echo $editaMarca; ?>;
            if( editado === 2 ){
                swal.fire(
                    'Error',
                    'Esta marca ya existe',
                    'error'
                );
            }else
                window.location.href = "listarMarcas.php";
        </script>
        <?php

    }
?>

<div class="modal" id="modalEditaMarca" data-backdrop="static" tabindex="-1">
    <div class="modal-dialog modal-sm modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edición de marca</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <form action="" method="post" id="formEditaMarca">

                    <input type="hidden" name="id" id="idMarca">

                    <div class="form-group">
                        <label for="nombreMarca">Nombre de la marca</label>
                        <input type="text" required name="nombre" id="nombreMarca" class="form-control">
                        <div class="invalid-feedback">Ingresa el nombre de la marca</div>
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