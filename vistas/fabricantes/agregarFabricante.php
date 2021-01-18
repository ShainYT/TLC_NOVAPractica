<?php
//Archivo que incluye variables generales que se usan en todo el proyecto
include '../../config/variablesGlobales.php';
//Archivo que incluye las funciones del módulo de marcas
include '../../config/db/fabricantes/functions.php';

if( isset( $_POST["nombre"] ) && !empty($_POST["nombre"])){

    $data = [];
    $data["nombre"] = $_POST["nombre"];
    $data["fk_idmarca"]=$_POST["nombreMarca"];
    $agregaFabricante = agregarFabricante($data);

}

?>

<!doctype html>
<html lang="es">
<head>
    <?php
    //Archivo que tiene la carga de los css, meta
    include '../../components/head.php';
    ?>
    <title>Fabricante</title>
</head>
<body>

<?php
//Archivo que incluye el menú general de todas las páginas
include '../../components/menu.php';


/*
 * CONTENIDO DE LA VISTA
 */
?>

<div class="container">
    <div class="row">
        <div class="col mt-5">
            <form autocomplete="off" id="agregarFabricante" method="post" action="">

                <div class="form-group">
                    <label for="nombreFabricante">Nombre del Fabricante</label>
                    <input type="text" required name="nombre" class="form-control">
                    <div class="invalid-feedback">Agrega el nombre del Fabricante</div>
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

                <button class="btn btn-primary btn-block"> Agregar Fabricante </button>
                <a href="<?php echo URL; ?>vistas/fabricantes/listarFabricantes.php" class="btn btn-secondary btn-block"> Ver listado </a>

            </form>
        </div>
    </div>
</div>

<?php

//Archivo que incluye las librerías que se usan en el sistema
include '../../components/librerias.php';

if( isset($agregaFabricante) ){

    $icon = "error";
    $mensaje = "Fabricante existente, intenta con otro nombre";
    $title = "Error de agregado";

    if($agregaFabricante == 1){
        $icon = "success";
        $mensaje = "Se ha agregado el fabricante exitosamente";
        $title = "Fabricante agregada";
    }

    ?>
    <script>
        swal.fire({
            title: '<?php echo $title; ?>',
            text: '<?php echo $mensaje; ?>',
            icon: '<?php echo $icon; ?>'
        })
    </script>
    <?php
}

?>

<script src="../../dist/js/fabricantes/agregarFabricante.js"></script>

</body>
</html>