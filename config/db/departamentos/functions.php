<?php
require '../../config/db/conexion.php';
function listarDepartamentos(){

    $respuesta = [];

    $query = "SELECT * FROM departamento WHERE `delete` is null";
    $conexion = connect();

    if( $resultado = mysqli_query($conexion,$query) ){
        while($fila = mysqli_fetch_assoc($resultado)){
            array_push($respuesta, $fila);

        }
    }

    mysqli_close($conexion);

    return $respuesta;

}
function agregarDepartamento($infoDepartamento){

    $respuesta = 0;

    $nombreDepartamento = $infoDepartamento["nombre"];

    $query = "INSERT INTO departamento (nombre, `create`) VALUES ( '$nombreDepartamento', NOW() );";
    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}
function editaDepartamento($infoDepartamento){

    $respuesta = 0;

    $nombre = $infoDepartamento["nombre"];
    $id     = $infoDepartamento["id"];

    $query = "UPDATE departamento SET nombre = '$nombre', `update` = NOW() WHERE iddepartamento = $id";

    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}
function eliminarDepartamento($infoDepartamento){

    $respuesta = 0;

    $id     = $infoDepartamento["id"];

    $query = "UPDATE departamento SET `delete` = NOW() WHERE iddepartamento = $id";

    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}
