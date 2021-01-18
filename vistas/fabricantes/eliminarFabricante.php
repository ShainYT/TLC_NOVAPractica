<?php
if( isset($_GET["id_fabricante"]) && !empty($_GET["id_fabricante"]) ){

    //Archivo que incluye variables generales que se usan en todo el proyecto
    include '../../config/variablesGlobales.php';
    //Archivo que incluye las funciones del módulo de Fabricantes
    include '../../config/db/fabricantes/functions.php';

    $data = [];
    $data["id"] = $_GET["id_fabricante"];

    $eliminar = eliminarFabricante($data);

    header('Location: listarFabricantes.php');

}else{
    header('Location: listarFabricantes.php');
}