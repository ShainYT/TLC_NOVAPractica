<?php
//Archivo que incluye variables generales que se usan en todo el proyecto
include '../../config/variablesGlobales.php';
//Archivo que incluye las funciones del módulo de clientes
include '../../config/db/clientes/functions.php';
$clientes = listarClientes();
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
    <title>Clientes</title>
</head>
<body>
<?php
//Archivo que incluye el menú general de todas las páginas
include '../../components/menu.php';
/*Contenido de la vista*/


?>
<div class="container-fluid">
    <div class="row">
        <!--Barra Lateral-->
        <?php include "../../components/sidebar.php"?>
        <!--Main Content-->
        <div class="col">
            <div class="table-responsive">
                <a href="<?php echo URL; ?>vistas/clientes/agregarCliente.php" class="btn btn-info btn-block mt-3 mb-3"> Agregar Nuevo Cliente </a>
<?php if( count($clientes) > 0 ){0?>
                <table id="tablaClientes" class="table table-hover table-striped text-center">
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

                    foreach ($clientes as $cliente){

                        $ultimaEdicion = $cliente["update"] == "" ? "Sin edición" : $cliente["update"];

                        ?>
                        <tr>
                            <td><?=$cliente["idcliente"];?></td>
                            <td><?=$cliente["nombre"];?></td>
                            <td><?=$cliente["create"];?></td>
                            <td><?=$ultimaEdicion;?></td>
                            <td><button onclick="editaCliente(<?php echo $cliente['idcliente']; ?>, '<?php echo $cliente['nombre'] ?>')" class="btn btn-info"><i class="fas fa-edit"></i></button></td>
                            <td><button onclick="eliminaClientes(<?php echo $cliente['idcliente']; ?>, '<?php echo $cliente['nombre'] ?>');" class="btn btn-danger"><i class="fas fa-trash"></i></button></td>
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
                    Aún no hay clientes registrados
                  </div>';
}

//Modal para editar el cliente
include './editarCliente.php';

?>
<script src="../../dist/js/clientes/listarCliente.js"></script>
<script src="../../dist/js/clientes/editarCliente.js"></script>
<script src="../../dist/js/clientes/eliminarCliente.js"></script>
</body>
</html>
