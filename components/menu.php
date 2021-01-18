<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <img src="<?php echo URL?>dist/img/computer.png" width="30px" class="mr-1">
    <a class="navbar-brand" href="#"> TLC NOVA</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Menu
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="<?php echo URL; ?>vistas/marcas/listarMarcas.php">Marca</a>
                    <a class="dropdown-item" href="<?php echo URL; ?>vistas/clientes/listarClientes.php">Cliente</a>
                    <a class="dropdown-item" href="<?php echo URL; ?>vistas/departamentos/listarDepartamentos.php">Departamento</a>
                    <a class="dropdown-item" href="<?php echo URL; ?>vistas/fabricantes/listarFabricantes.php">Fabricantes</a>
                </div>
            </li>
        </ul>
    </div>
</nav>