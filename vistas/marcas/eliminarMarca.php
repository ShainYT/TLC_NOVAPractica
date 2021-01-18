<?php
if( isset($_GET["id_marca"]) && !empty($_GET["id_marca"]) ){

    //Archivo que incluye variables generales que se usan en todo el proyecto
    include '../../config/variablesGlobales.php';
    //Archivo que incluye las funciones del módulo de marcas
    include '../../config/db/marcas/functions.php';

    $data = [];
    $data["id"] = $_GET["id_marca"];

    $eliminar = eliminarMarca($data);

    header('Location: listarMarcas.php');

}else{
    header('Location: listarMarcas.php');
}