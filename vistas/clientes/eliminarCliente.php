<?php
if( isset($_GET["id_cliente"]) && !empty($_GET["id_cliente"]) ){

    //Archivo que incluye variables generales que se usan en todo el proyecto
    include '../../config/variablesGlobales.php';
    //Archivo que incluye las funciones del módulo de clientes
    include '../../config/db/clientes/functions.php';

    $data = [];
    $data["id"] = $_GET["id_cliente"];

    $eliminar = eliminarCliente($data);

    header('Location: listarClientes.php');

}else{
    header('Location: listarClientes.php');
}