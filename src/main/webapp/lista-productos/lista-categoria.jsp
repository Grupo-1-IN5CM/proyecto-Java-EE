<%@page import="java.util.List"%>
<%@page import="org.adrianarbizu.webapp.model.Categoria"%>
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
                <a class="navbar-brand" href="#">Sistema de Gestión de Marcas</a>
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
            <table class="table">
                <thead>
                    
                <th> Id de la Categoria </th>
                <th> Categoria</th>
                <th> Descripcion </th>
                </thead>
                <tbody>
                <th>
                 <% List<Categoria> categorias = (List)request.getAttribute("categorias");
                    if(categorias != null && !categorias.isEmpty()) { %>
                     <% for(Categoria categoria : categorias) { %>
                         <tr>
                             <td scope="row"><%= categoria.getCategoriaId() %></td>
                             <td scope="row"><%= categoria.getNombreCategoria() %></td>
                             <td scope="row"><%= categoria.getDescripcionCategoria() %></td>
                         </tr>
                     <% } %>
                 <% } else { %>
                     <tr>
                         <td colspan="2">No hay categorías disponibles</td>
                     </tr>
                 <% } %>
                </th>
                </tbody>
            </table>   
        </div>
    </body>
</html>
