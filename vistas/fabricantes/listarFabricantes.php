<?php
//Archivo que incluye variables generales que se usan en todo el proyecto
include '../../config/variablesGlobales.php';
//Archivo que incluye las funciones del módulo de Fabricantes
include '../../config/db/fabricantes/functions.php';
$fabricantes = listarFabricantes();

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
    <title>Fabricantes</title>
</head>
<body>

<?php
//Archivo que incluye el menú general de todas las páginas
include '../../components/menu.php';


/*
 * CONTENIDO DE LA VISTA
 */


    ?>

    <div class="container-fluid">
        <div class="row">
            <!--Barra Lateral-->
            <?php include "../../components/sidebar.php"?>
            <!--Main Content-->
            <div class="col">
                <div class="table-responsive">

                    <a href="<?php echo URL; ?>vistas/fabricantes/agregarFabricante.php" class="btn btn-info btn-block mt-3 mb-3"> Agregar Nuevo Fabricante </a>
                    <?php if( count($fabricantes) > 0 ){?>
                    <table id="tablaFabricante" class="table table-hover table-striped text-center">
                        <thead class="thead-dark">
                        <tr>
                            <th>ID</th>
                            <th>Marca</th>
                            <th>Nombre</th>
                            <th>Fecha de agregado</th>
                            <th>Fecha de edición</th>
                            <th>Editar</th>
                            <th>Eliminar</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php

                        foreach ($fabricantes as $fabricante){

                            $ultimaEdicion = $fabricante["update"] == "" ? "Sin edición" : $fabricante["update"];

                            ?>
                            <tr>
                                <td><?=$fabricante["idfabricante"];?></td>
                                <td><?=$fabricante['Juan'];?></td>
                                <td><?=$fabricante["nombre"];?></td>
                                <td><?=$fabricante["create"];?></td>
                                <td><?=$ultimaEdicion;?></td>
                                <td><button onclick="editaFabricante(<?php echo $fabricante['idfabricante']; ?>, '<?php echo $fabricante['nombre'] ?>')" class="btn btn-info"><i class="fas fa-edit"></i></button></td>
                                <td><button onclick="eliminaFabricantes(<?php echo $fabricante['idfabricante']; ?>, '<?php echo $fabricante['nombre'] ?>');" class="btn btn-danger"><i class="fas fa-trash"></i></button></td>
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
                    Aún no hay fabricantes registrados
                  </div>';
}

//Modal para editar los fabricantes
include './editarFabricante.php';

?>

<script src="../../dist/js/fabricantes/listarFabricante.js"></script>
<script src="../../dist/js/fabricantes/editarFabricante.js"></script>
<script src="../../dist/js/fabricantes/eliminarFabricante.js"></script>

</body>
</html>