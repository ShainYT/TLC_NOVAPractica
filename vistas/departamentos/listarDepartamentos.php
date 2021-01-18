<?php
//Archivo que incluye variables generales que se usan en todo el proyecto
include '../../config/variablesGlobales.php';
//Archivo que incluye las funciones del módulo de Departamentos
include '../../config/db/departamentos/functions.php';
$departamentos = listarDepartamentos();
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
    <title>Departamentos</title>
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
                    <a href="<?php echo URL; ?>vistas/departamentos/agregarDepartamento.php" class="btn btn-info btn-block mt-3 mb-3"> Agregar Nuevo Departamento </a>
<?php
if( count($departamentos) > 0 ){
?>
                    <table id="tablaDepartamentos" class="table table-hover table-striped text-center">
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

                        foreach ($departamentos as $departamento){

                            $ultimaEdicion = $departamento["update"] == "" ? "Sin edición" : $departamento["update"];

                            ?>
                            <tr>
                                <td><?=$departamento["iddepartamento"];?></td>
                                <td><?=$departamento["nombre"];?></td>
                                <td><?=$departamento["create"];?></td>
                                <td><?=$ultimaEdicion;?></td>
                                <td><button onclick="editaDepartamento(<?php echo $departamento['iddepartamento']; ?>, '<?php echo $departamento['nombre'] ?>')" class="btn btn-info"><i class="fas fa-edit"></i></button></td>
                                <td><button onclick="eliminaDepartamentos(<?php echo $departamento['iddepartamento']; ?>, '<?php echo $departamento['nombre'] ?>');" class="btn btn-danger"><i class="fas fa-trash"></i></button></td>
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
                    Aún no hay departamentos registrados
                  </div>';
}

//Modal para editar el departamento
include './editarDepartamento.php';

?>
<script src="../../dist/js/departamentos/listarDepartamento.js"></script>
<script src="../../dist/js/departamentos/editarDepartamento.js"></script>
<script src="../../dist/js/departamentos/eliminarDepartamento.js"></script>
</body>
</html>
