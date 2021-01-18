<style>
    @media (max-width: 576px) {
        .none_aside{
            display: none;
        }
    }
</style>
<nav class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar mt-3 none_aside">
    <ul class="nav nav-pills flex-column">
        <li class="nav-item border-bottom">
            <a class="nav-link" href="<?php echo URL; ?>vistas/marcas/listarMarcas.php"><i class="fas fa-industry"></i> Marcas <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item border-bottom">
            <a class="nav-link" href="<?php echo URL; ?>vistas/clientes/listarClientes.php"> <i class="fas fa-user"></i> Clientes</a>
        </li>
        <li class="nav-item border-bottom">
            <a class="nav-link" href="<?php echo URL; ?>vistas/departamentos/listarDepartamentos.php"> <i class="fas fa-building"></i> Departamentos</a>
        </li>
        <li class="nav-item border-bottom">
            <a class="nav-link" href="<?php echo URL; ?>vistas/fabricantes/listarFabricantes.php"> <i class="fas fa-address-book"></i> Fabricantes</a>
        </li>
    </ul>

</nav>
