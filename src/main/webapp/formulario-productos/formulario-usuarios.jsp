<%-- 
    Document   : formulario-Usuarios
    Created on : 16 jul. 2024, 17:46:35
    Author     : Esteban
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Usuarios</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
<<<<<<< HEAD
        <nav class="navbar navbar-dark bg-dark fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Sistema de Gestión de Marcas</a>
=======
        <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Sistema de gestión de Carros</a>
>>>>>>> Adrian-Arbizu
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
<<<<<<< HEAD
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Sistema de Gestión de Marcas</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div  class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="../index.jsp">Inicio</a>
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Formularios
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a class="dropdown-item" href="formulario-productos.jsp">Formulario Carros</a></li>
                                        <li><a class="dropdown-item" href="formulario-categoria.jsp">Formulario Categorias</a></li>
                                        <li><a class="dropdown-item" href="formulario-compras.jsp">Formulario Compras</a></li>
                                        <li><a class="dropdown-item" href="formulario-usuarios.jsp">Formulario Usuarios</a></li>
                                        <li><a class="dropdown-item" href="formulario-productos/formulario-marca.jsp">Formulario Marcas</a></li>
                                    </ul>
                                </div>

                                <div class="dropdown mt-2">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Listados
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="../usuario-servlet">Lista Usuario</a></li>
                                        <li><a class="dropdown-item" href="../carro-servlet">Lista Carros</a></li>
                                        <li><a class="dropdown-item" href="../categoria-servlet">Lista Categirias</a></li>
                                        <li><a class="dropdown-item" href="../compras-servlet">Lista Compras</a></li>
                                        <li><a class="dropdown-item" href="../marcas-servlet">Lista Marcas</a></li>
                                    </ul>
                                </div>
=======
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Dark offcanvas</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link active" href="../index.jsp">Inicio</a>
                                <a class="nav-link" aria-current="page" href="formulario-productos.jsp">Formulario Carros</a>
                                <a class="nav-link active" href="../carro-servlet">Lista Carros</a>
>>>>>>> Adrian-Arbizu
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
<<<<<<< HEAD
        </nav> 
=======
        </nav>  
>>>>>>> Adrian-Arbizu
        <div class="container text-center">
            <h1>Formulario</h1>
            <% ArrayList<String> datosUsuario = (ArrayList) request.getAttribute("datosUsuario"); %>
            <% if (datosUsuario != null) { %>
            <% for (String producto : datosUsuario) {%>
            <ul>
                <li class="list-unstyled"><%= producto%></li>
            </ul>
            <% } %>
            <% } %>
        </div>
        <div class="container mt-5">
            <% List<String> errores = (List<String>) request.getAttribute("errores"); %>
            <% if (errores != null && !errores.isEmpty()) { %>
            <div class="alert alert-danger" role="alert">
                <ul>
                    <% for (String error : errores) {%>
                    <li><%= error%></li>
                        <% } %>
                </ul>
            </div>
            <% }%>
            <form action="/SGBDConsesionariaIN5CM/usuario-servlet" method="post" enctype="multipart/form-data">
                <div class="form-floating mb-4">
                    <input class="form-control" id="nombreUsuario" name="nombreUsuario" type="text">
                    <label for="nombreUsuario">Nombre</label>
                </div>

                <div class="form-floating mt-4">
                    <textarea class="form-control" id="contraUsuario" name="contraUsuario" type="text"></textarea>
                    <label for="contraUsuario">Contraseña</label>
                </div>
                <div class="form-floating mt-5">
                    <input type="submit" value="Agregar" class="btn btn-success">
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
<<<<<<< HEAD
</html>
=======
</html>

>>>>>>> Adrian-Arbizu
