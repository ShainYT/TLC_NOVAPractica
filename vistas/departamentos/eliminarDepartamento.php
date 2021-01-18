<?php
if( isset($_GET["id_departamento"]) && !empty($_GET["id_departamento"]) ){

    //Archivo que incluye variables generales que se usan en todo el proyecto
    include '../../config/variablesGlobales.php';
    //Archivo que incluye las funciones del módulo de clientes
    include '../../config/db/departamentos/functions.php';

    $data = [];
    $data["id"] = $_GET["id_departamento"];

    $eliminar = eliminarDepartamento($data);

    header('Location: listarDepartamento.php');

}else{
    header('Location: listarDepartamento.php');
}