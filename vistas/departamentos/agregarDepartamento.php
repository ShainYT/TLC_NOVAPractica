<?php
//Archivo que incluye variables generales que se usan en todo el proyecto
include '../../config/variablesGlobales.php';
//Archivo que incluye las funciones del módulo de cliente
include '../../config/db/departamentos/functions.php';

if( isset( $_POST["nombre"] ) && !empty($_POST["nombre"])){

    $data = [];
    $data["nombre"] = $_POST["nombre"];
    $agregaDepartamento = agregarDepartamento($data);

}

?>

<!doctype html>
<html lang="es">
<head>
    <?php
    //Archivo que tiene la carga de los css, meta
    include '../../components/head.php';
    ?>
    <title>Departamento</title>
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
            <form autocomplete="off" id="agregarDepartamento" method="post" action="">

                <div class="form-group">
                    <label for="nombreDepartamento">Nombre del departamento</label>
                    <input type="text" required name="nombre" class="form-control">
                    <div class="invalid-feedback">Agrega el nombre del departamento</div>
                </div>

                <button class="btn btn-primary btn-block"> Agregar Departamento </button>
                <a href="<?php echo URL; ?>vistas/departamentos/listarDepartamentos.php" class="btn btn-secondary btn-block"> Ver listado </a>

            </form>
        </div>
    </div>
</div>

<?php

//Archivo que incluye las librerías que se usan en el sistema
include '../../components/librerias.php';

if( isset($agregaDepartamento) ){

    $icon = "error";
    $mensaje = "Nombre existente, intenta con otro nombre";
    $title = "Error de agregado";

    if($agregaDepartamento == 1){
        $icon = "success";
        $mensaje = "Se ha agregado el nombre exitosamente";
        $title = "Nombre agregado";
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

<script src="../../dist/js/departamentos/agregarDepartamento.js"></script>

</body>
</html>