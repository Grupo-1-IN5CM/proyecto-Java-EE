<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulrio Compras</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Sistema de gestin de compras</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Menu</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link active" href="../index.jsp">Inicio</a>
                                <a class="nav-link" href="formulario-compras.jsp">Formulario Compra</a>
                                <a class="nav-link" href="../compras-servlet">Lista Compras</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container text-center mt-5">
            <h1>Lista de Compras</h1>
            <% ArrayList<String> datosCompras = (ArrayList) request.getAttribute("compras"); %>
            <% if (datosCompras != null) { %>
            <% for (String compra : datosCompras) {%>
            <ul class="list-group list-group-horizontal-sm">
                <li  class="list-group-item"><%= compra%></li>
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
                    <li><%= error %></li>
                    <% } %>
                </ul>
            </div>
            <% } %>
            <form action="<%= request.getContextPath() %>/compras-servlet" method="post">
                <div class="form-floating mb-4">
                    <input class="form-control" id="usuarioId" name="usuarioId" type="number">
                    <label for="usuarioId">ID del Usuario</label>
                </div>

                <div class="form-floating mb-4">
                    <input class="form-control" id="carroId" name="carroId" type="number">
                    <label for="carroId">ID del Carro</label>
                </div>

                <div class="form-floating mb-4">
                    <input class="form-control" id="fechacompra" name="fechacompra" type="date">
                    <label for="fechacompra">Fecha de Compra</label>
                </div>

                <div class="form-floating mb-4">
                    <input class="form-control" id="total" name="total" type="number" step="0.01">
                    <label for="total">Total (Q.)</label>
                </div>
                
                <div class="form-floating mb-4">
                    <input type="submit" value="Agregar" class="btn btn-success">
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
