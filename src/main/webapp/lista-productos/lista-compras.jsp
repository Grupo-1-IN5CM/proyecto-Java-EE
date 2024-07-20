<%@page import="java.util.List"%>
<%@page import="org.adrianarbizu.webapp.model.Compras"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark fixed-top">
            <div class="container-fluid">
<<<<<<< HEAD
<<<<<<< HEAD
                <a class="navbar-brand" href="./index.jsp">Sistema de gestin de Compras</a>
=======
                <a class="navbar-brand" href="./index.jsp">Sistema de gestin de compras</a>
>>>>>>> Adrian-Arbizu
=======
                <a class="navbar-brand" href="#">Sistema de Gestión de Marcas</a>
>>>>>>> Giovanni-Carrera
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Sistema de Gestión de Marcas</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div  class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="./index.jsp">Inicio</a>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <div class="container mt-5">
<<<<<<< HEAD
<<<<<<< HEAD
=======
            <h1>Lista de Compras</h1>
>>>>>>> Adrian-Arbizu
=======
>>>>>>> Giovanni-Carrera
            <table class="table">
                <thead>
                    <tr>
                        <th>Id de la compra</th>
<<<<<<< HEAD
<<<<<<< HEAD
                        <th># Usuario </th>
                        <th># Carro </th>
=======
                        <th>Usuario </th>
                        <th>Carro </th>
>>>>>>> Adrian-Arbizu
=======
                        <th># Usuario </th>
                        <th># Carro </th>
>>>>>>> Giovanni-Carrera
                        <th>Fecha de Compra</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
<<<<<<< HEAD
<<<<<<< HEAD
                    <% List<Compras> compras = (List)request.getAttribute("compras"); %>
                        <% for (Compras compra : compras) { %>
                            <tr>
                                <td scope="row"><%= compra.getCompraId()%></td>
                                <td scope="row"><%= compra.getUsuarioId() %></td>
                                <td scope="row"><%= compra.getCarroId() %></td>
                                <td scope="row"><%= compra.getFechacompra() %></td>
                                <td scope="row">Q.<%= compra.getTotal() %></td>
                            </tr>
                        <%}
=======
                    <% List<Compras> compras = (List<Compras>) request.getAttribute("compras"); %>
=======
                    <% List<Compras> compras = (List)request.getAttribute("compras"); %>
>>>>>>> Giovanni-Carrera
                        <% for (Compras compra : compras) { %>
                            <tr>
                                <td scope="row"><%= compra.getCompraId()%></td>
                                <td scope="row"><%= compra.getUsuarioId() %></td>
                                <td scope="row"><%= compra.getCarroId() %></td>
                                <td scope="row"><%= compra.getFechacompra() %></td>
                                <td scope="row">Q.<%= compra.getTotal() %></td>
                            </tr>
<<<<<<< HEAD
                        <%
>>>>>>> Adrian-Arbizu
=======
                        <%}
>>>>>>> Giovanni-Carrera
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>