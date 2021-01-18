<?php
//Archivo que incluye variables generales que se usan en todo el proyecto
include '../../config/variablesGlobales.php';
//Archivo que incluye las funciones del módulo de marcas
include '../../config/db/marcas/functions.php';

if( isset( $_POST["nombre"] ) && !empty($_POST["nombre"])){

    $data = [];
    $data["nombre"] = $_POST["nombre"];
    $agregaMarca = agregarMarca($data);

}

?>

<!doctype html>
<html lang="es">
<head>
    <?php
    //Archivo que tiene la carga de los css, meta
    include '../../components/head.php';
    ?>
    <title>Marcas</title>
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
                    <form autocomplete="off" id="agregarMarca" method="post" action="">

                        <div class="form-group">
                            <label for="nombreMarca">Nombre de la marca</label>
                            <input type="text" required name="nombre" class="form-control">
                            <div class="invalid-feedback">Agrega el nombre de la marca</div>
                        </div>

                        <button class="btn btn-primary btn-block"> Agregar marca </button>
                        <a href="<?php echo URL; ?>vistas/marcas/listarMarcas.php" class="btn btn-secondary btn-block"> Ver listado </a>

                    </form>
                </div>
            </div>
        </div>

    <?php

    //Archivo que incluye las librerías que se usan en el sistema
    include '../../components/librerias.php';

    if( isset($agregaMarca) ){

        $icon = "error";
        $mensaje = "Marca existente, intenta con otro nombre";
        $title = "Error de agregado";

        if($agregaMarca == 1){
            $icon = "success";
            $mensaje = "Se ha agregado la marca exitosamente";
            $title = "Marca agregada";
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

    <script src="../../dist/js/marcas/agregarMarca.js"></script>

</body>
</html>