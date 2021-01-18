<?php
require '../../config/db/conexion.php';
function listarFabricantes(){

    $respuesta = [];

    $query = "SELECT f.idfabricante, m.nombre as 'Juan', f.nombre, f.`create`, f.`update` FROM fabricantes f
                LEFT JOIN marca m on f.marca_idmarca = m.idmarca
                WHERE f.`delete` is null";


    $conexion = connect();

    if( $resultado = mysqli_query($conexion,$query) ){
        while($fila = mysqli_fetch_assoc($resultado)){
            array_push($respuesta, $fila);

        }
    }

    mysqli_close($conexion);

    return $respuesta;

}
function listarMarcas(){

    $respuesta = [];

    $query = "SELECT idmarca as 'fk_idmarca',nombre as 'fk_nombre' FROM marca m WHERE `delete` is null";
    $conexion = connect();

    if( $resultado = mysqli_query($conexion,$query) ){
        while($fila = mysqli_fetch_assoc($resultado)){
            array_push($respuesta, $fila);
        }
    }

    mysqli_close($conexion);

    return $respuesta;

}

function agregarFabricante($infoFabricante){

    $respuesta = 0;

    $nombreFabricante = $infoFabricante["nombre"];
    $idmarca=$infoFabricante['fk_idmarca'];

    $query = "INSERT INTO fabricantes ( marca_idmarca ,nombre, `create`) VALUES ($idmarca,'$nombreFabricante', NOW() );";
    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}
function editaFabricante($infoFabricante){

    $respuesta = 0;

    $nombre = $infoFabricante["nombre"];
    $idmarca=$infoFabricante['fk_idmarca'];
    $id     = $infoFabricante["id"];

    $query = "UPDATE fabricantes SET marca_idmarca='$idmarca',nombre = '$nombre', `update` = NOW() WHERE idfabricante = $id";

    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}
function eliminarFabricante($infoFabricante){

    $respuesta = 0;

    $id     = $infoFabricante["id"];

    $query = "UPDATE fabricantes SET `delete` = NOW() WHERE idfabricante = $id";

    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}
