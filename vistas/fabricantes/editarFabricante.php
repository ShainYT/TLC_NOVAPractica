<?php
if(
    isset( $_POST["nombre"] ) && !empty($_POST["nombre"]) &&
    isset( $_POST["id"] ) && !empty($_POST["id"])
){

    $data = [];
    $data["nombre"] = $_POST["nombre"];
    $data["fk_idmarca"]=$_POST["nombreMarca"];
    $data["id"]     = $_POST["id"];
    $editaFabricante = editaFabricante($data);

    ?>
    <script>
        let editado = <?php echo $editaFabricante; ?>;
        if( editado === 2 ){
            swal.fire(
                'Error',
                'Este Fabricante ya existe',
                'error'
            );
        }else
            window.location.href = "listarFabricantes.php";
    </script>
    <?php

}
?>
<div class="modal" id="modalEditaFabricante" data-backdrop="static" tabindex="-1">
    <div class="modal-dialog modal-sm modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edición de Fabricantes</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <form action="" method="post" id="formEditaFabricante">

                    <input type="hidden" name="id" id="idFabricante">

                    <div class="form-group">
                        <label for="nombreFabricante">Nombre del Fabricante</label>
                        <input type="text" required name="nombre" id="nombreFabricante" class="form-control">
                        <div class="invalid-feedback">Ingresa el nombre del Fabricante</div>
                        <label for="nombreMarca">Nombre de la marca</label>
                        <select name="nombreMarca" id="selectMarca" required class="custom-select">
                            <?php
                            $marcas=listarMarcas();
                            foreach ($marcas as $marca){
                                ?>
                                <option value="<?php echo $marca['fk_idmarca']; ?>"><?php echo $marca["fk_nombre"]; ?></option>
                                <?php
                            }
                            ?>
                        </select>
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
