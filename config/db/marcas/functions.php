<?php

require '../../config/db/conexion.php';

function listarMarcas(){

    $respuesta = [];

    $query = "SELECT * FROM marca WHERE `delete` is null";
    $conexion = connect();

    if( $resultado = mysqli_query($conexion,$query) ){
        while($fila = mysqli_fetch_assoc($resultado)){
            array_push($respuesta, $fila);
        }
    }

    mysqli_close($conexion);

    return $respuesta;

}

function agregarMarca($infoMarca){

    $respuesta = 0;

    $nombreMarca = $infoMarca["nombre"];

    $query = "INSERT INTO marca (nombre, `create`) VALUES ( '$nombreMarca', NOW() );";
    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}

function editaMarca($infoMarca){

    $respuesta = 0;

    $nombre = $infoMarca["nombre"];
    $id     = $infoMarca["id"];

    $query = "UPDATE marca SET nombre = '$nombre', `update` = NOW() WHERE idmarca = $id";

    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}

function eliminarMarca($infoMarca){

    $respuesta = 0;

    $id     = $infoMarca["id"];

    $query = "UPDATE marca SET `delete` = NOW() WHERE idmarca = $id";

    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}