<?php
require '../../config/db/conexion.php';
function listarClientes(){

    $respuesta = [];

    $query = "SELECT * FROM clientes WHERE `delete` is null";
    $conexion = connect();

    if( $resultado = mysqli_query($conexion,$query) ){
        while($fila = mysqli_fetch_assoc($resultado)){
            array_push($respuesta, $fila);

        }
    }

    mysqli_close($conexion);

    return $respuesta;

}
function agregarCliente($infoCliente){

    $respuesta = 0;

    $nombreCliente = $infoCliente["nombre"];

    $query = "INSERT INTO clientes (nombre, `create`) VALUES ( '$nombreCliente', NOW() );";
    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}
function editaCliente($infoCliente){

    $respuesta = 0;

    $nombre = $infoCliente["nombre"];
    $id     = $infoCliente["id"];

    $query = "UPDATE clientes SET nombre = '$nombre', `update` = NOW() WHERE idcliente = $id";

    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}
function eliminarCliente($infoCliente){

    $respuesta = 0;

    $id     = $infoCliente["id"];

    $query = "UPDATE clientes SET `delete` = NOW() WHERE idcliente = $id";

    $conexion = connect();

    if($resultado = mysqli_query($conexion,$query)){
        $respuesta = 1;
    }else{
        $respuesta = 2;
    }

    return $respuesta;

}
