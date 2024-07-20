<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Gestión de Inventarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
</head>

<body>    
    <nav class="navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Sistema de Gestión de Inventarios</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Sistema de Gestión de Inventarios</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div  class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Formularios
                                </button>
                                <ul class="dropdown-menu ">
                                    <li><a class="dropdown-item" href="./formulario-productos/formulario-usuarios.jsp">Formulario Usuarios</a></li>
                                    <li><a class="dropdown-item" href="./formulario-productos/formulario-productos.jsp">Formulario Carros</a></li>
                                    <li><a class="dropdown-item" href="./formulario-productos/formulario-categoria.jsp">Formulario Categorias</a></li>
                                    <li><a class="dropdown-item" href="./formulario-productos/formulario-compras.jsp">Formulario Compras</a></li>
                                    <li><a class="dropdown-item" href="./formulario-productos/formulario-marca.jsp">Formulario Marcas</a></li>
                                </ul>
                            </div>
                            
                            <div class="dropdown mt-2">
                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Listados
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="./usuario-servlet">Lista Usuario</a></li>
                                    <li><a class="dropdown-item" href="./carro-servlet">Lista Carros</a></li>
                                    <li><a class="dropdown-item" href="./categoria-servlet">Lista Categirias</a></li>
                                    <li><a class="dropdown-item" href="./compras-servlet">Lista Compras</a></li>
                                    <li><a class="dropdown-item" href="./marcas-servlet">Lista Marcas</a></li>
                                </ul>
                            </div>

                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <header class="bg-white text-dark text-center py-5">
        <div class="container">
            <h1 class="display-3">Bienvenido al Sistema de Gestión de Inventarios de una Consesionaria de Autos</h1>
            <p class="lead">Administra y controla tus autos de una consesionaria de manera eficiente.</p>
        </div>
    </header>
    
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12 feature" style="padding: 20px;">
                <img src="assets/image/Cons2.jpg" alt="Carros" style="max-width: 100%; height: auto; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
                <h3 style="margin-top: 10px; font-size: 2.5rem;">Gestión de Carros</h3>
                <p style="font-size: 1.5rem; text-align: justify; width: 100%; border-radius: 5px; padding: 20px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); line-height: 1.6; background-color: #f8f9fa;">
                    El sistema de gestión de autos e inventarios es una solución integral diseñada para optimizar y 
                    automatizar las operaciones de una concesionaria de vehículos. Este sistema centraliza y facilita 
                    el manejo de inventarios, ventas, compras, y servicio al cliente, proporcionando una plataforma 
                    eficiente y fácil de usar para los empleados y la administración.
                </p>
            </div>
        </div>
    </div>
</body>
</html>
