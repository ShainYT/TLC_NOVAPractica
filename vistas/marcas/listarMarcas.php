<?php
    //Archivo que incluye variables generales que se usan en todo el proyecto
    include '../../config/variablesGlobales.php';
    //Archivo que incluye las funciones del módulo de marcas
    include '../../config/db/marcas/functions.php';
    $marcas = listarMarcas();
?>

<!doctype html>
<html lang="es">
<head>
    <?php
        //Archivo que tiene la carga de los css, meta
        include '../../components/head.php';
        //Archivo que incluye las librerías que se usan en el sistema
        include '../../components/librerias.php';
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
        if( count($marcas) > 0 ){

            ?>

                <div class="container-fluid">
                    <div class="row">
                        <!--Barra Lateral-->
                        <?php include "../../components/sidebar.php"?>
                        <!--Main Content-->
                        <div class="col">
                            <div class="table-responsive">

                                <a href="<?php echo URL; ?>vistas/marcas/agregarMarca.php" class="btn btn-info btn-block mt-3 mb-3"> Agregar Nueva Marca </a>

                                <table id="tablaMarcas" class="table table-hover table-striped text-center">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID</th>
                                            <th>Nombre</th>
                                            <th>Fecha de agregado</th>
                                            <th>Fecha de edición</th>
                                            <th>Editar</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php

                                            foreach ($marcas as $marca){

                                                $ultimaEdicion = $marca["update"] == "" ? "Sin edición" : $marca["update"];

                                                ?>
                                                    <tr>
                                                        <td><?=$marca["idmarca"];?></td>
                                                        <td><?=$marca["nombre"];?></td>
                                                        <td><?=$marca["create"];?></td>
                                                        <td><?=$ultimaEdicion;?></td>
                                                        <td><button onclick="editaMarca(<?php echo $marca['idmarca']; ?>, '<?php echo $marca['nombre'] ?>')" class="btn btn-info"><i class="fas fa-edit"></i></button></td>
                                                        <td><button onclick="eliminaMarca(<?php echo $marca['idmarca']; ?>, '<?php echo $marca['nombre'] ?>');" class="btn btn-danger"><i class="fas fa-trash"></i></button></td>
                                                    </tr>
                                                <?php
                                            }

                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            <?php

        }else{
            echo '<div class="alert alert-danger" role="alert">
                    Aún no hay marcas registradas
                  </div>';
        }

        //Modal para editar la marca
        include './editarMarca.php';

    ?>

    <script src="../../dist/js/marcas/listarMarcas.js"></script>
    <script src="../../dist/js/marcas/editarMarca.js"></script>
    <script src="../../dist/js/marcas/eliminarMarca.js"></script>

</body>
</html>