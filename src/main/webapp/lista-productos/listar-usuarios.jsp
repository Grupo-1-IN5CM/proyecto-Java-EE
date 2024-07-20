<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> Adrian-Arbizu
<%-- 
    Document   : listar-usuarios
    Created on : 16 jul. 2024, 17:33:52
    Author     : Esteban
--%>

<<<<<<< HEAD
=======
<%@page import="java.util.List"%>
<%@page import="org.adrianarbizu.webapp.model.Usuario"%>
>>>>>>> Esteban-Cano
=======
>>>>>>> Adrian-Arbizu
=======
<%@page import="java.util.List"%>
<%@page import="org.adrianarbizu.webapp.model.Usuario"%>
>>>>>>> Giovanni-Carrera
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
<<<<<<< HEAD
<<<<<<< HEAD
        <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href=".index.jsp">Sistema de gestion de carros</a>
=======
        <nav class="navbar navbar-dark bg-dark fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Sistema de Gestión de Marcas</a>
>>>>>>> Esteban-Cano
=======
        <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href=".index.jsp">Sistema de gestion de carros</a>
>>>>>>> Adrian-Arbizu
=======
        <nav class="navbar navbar-dark bg-dark fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Sistema de Gestión de Marcas</a>
>>>>>>> Giovanni-Carrera
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> Adrian-Arbizu
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Dark offcanvas</h5>
=======
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Sistema de Gestión de Marcas</h5>
>>>>>>> Giovanni-Carrera
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div  class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="./index.jsp">Inicio</a>
<<<<<<< HEAD
                                <a class="nav-link" href="./formulario-productos/formulario-productos.jsp">Formulario Carros</a>
                                <a class="nav-link active" aria-current="page" href="../carro-servlet">Lista Carros</a>
<<<<<<< HEAD
=======
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Sistema de Gestión de Marcas</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div  class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="./index.jsp">Inicio</a>
=======
>>>>>>> Giovanni-Carrera
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

<<<<<<< HEAD
>>>>>>> Esteban-Cano
=======
>>>>>>> Adrian-Arbizu
=======
>>>>>>> Giovanni-Carrera
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <div class="container mt-5">
            <table class="table">
                <thead>
                    
                <th>  Id del Usuario</th>
                <th>  Nombre </th>
                <th>  Contraseña</th>
                </thead>
                <tbody>
                <th>
                    <% List<Usuario> usuarios = (List)request.getAttribute("usuarios");%>
                    <%
                  for(Usuario usuario:usuarios){%>
                <tr>
                    
                    <td scope="row"><%=usuario.getUsuarioId()%></td>
                    <td scope="row"><%=usuario.getNombreUsuario()%></td>
                    <td scope="row"><%=usuario.getContraUsuario()%></td>
                    <td>
                </tr>
                    <%}   
                %>
                </th>
                </tbody>
            </table>   
        </div>
    </body>
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
</html>
=======
</html>
>>>>>>> Esteban-Cano
=======
</html>
>>>>>>> Adrian-Arbizu
=======
</html>
>>>>>>> Giovanni-Carrera
