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
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
                <a class="nav-link" href="./formulario-productos/formulario-productos.jsp">Formulario Carros</a>
                <a class="nav-link active" href="./carro-servlet">Lista Carros</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    
    <header class="bg-primary text-white text-center py-5">
        <div class="container">
            
            <h1 class="display-3" style="color: #f8f8ec;">Bienvenido al Sistema de Gestión de Inventarios de una Consesionaria de Autos</h1>
            <p class="lead">Administra y controla tus autos de una consesionaria de manera eficiente.</p>
        </div>
    </header>
    
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4 feature" style="padding: 20px;">
                <img src="assets/image/Productos.png" alt="Carros" style="max-width: 100%; height: auto; border-radius: 15px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
                <h3 style="margin-top: 20px; font-size: 1.5rem;">Gestión de Productos</h3>
                <p style="font-size: 1rem;">Administra todos los productos de tu supermercado de forma rápida y sencilla.</p>
            </div>
            <div class="col-md-4 feature" style="padding: 20px;">
                <img src="assets/image/Estant.png" alt="Inventario" style="max-width: 100%; height: auto; border-radius: 15px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
                <h3 style="margin-top: 20px; font-size: 1.5rem;">Control de Inventario</h3>
                <p style="font-size: 1rem;">Monitorea y actualiza el inventario en tiempo real para evitar desabastos.</p>
            </div>
            <div class="col-md-4 feature" style="padding: 20px;">
                <img src="assets/image/Sup.png" alt="Análisis" style="max-width: 100%; height: auto; border-radius: 15px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
                <h3 style="margin-top: 20px; font-size: 1.5rem;">Análisis de Ventas</h3>
                <p style="font-size: 1rem;">Genera informes detallados para tomar decisiones informadas sobre tus ventas.</p>
            </div>
        </div>
    </div>
</body>
</html>
