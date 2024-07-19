
<%@page import="java.util.List"%>
<%@page import="org.adrianarbizu.webapp.model.Carro"%>
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
        <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href=".index.jsp">Sistema de gestion de carros</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Dark offcanvas</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="./index.jsp">Inicio</a>
                                <a class="nav-link" href="./formulario-productos/formulario-productos.jsp">Formulario Carros</a>
                                <a class="nav-link active" aria-current="page" href="../carro-servlet">Lista Carros</a>
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
                    
                <th>  Id del carro </th>
                <th>  Nombre del Carro </th>
                <th>  Descripcion del Carro</th>
                <th>  Marca </th>
                <th> Categoria </th>
                <th> Precio </th>
                </thead>
                <tbody>
                <th>
                    <% List<Carro> carros = (List)request.getAttribute("carros");%>
                    <%
                  for(Carro carro:carros){%>
                <tr>
                    
                    <td scope="row"><%=carro.getCarroId()%></td>
                    <td scope="row"><%=carro.getNombreCarro()%></td>
                    <td scope="row"><%=carro.getDescripcionCarro()%></td>
                    <td scope="row"><%=carro.getMarcaId()%></td>
                    <td scope="row"><%=carro.getCategoriaId()%></td>
                    <td scope="row">Q.<%=carro.getPrecioCarro()%></td>
                    <td>
                </tr>
                    <%}   
                %>
                </th>
                </tbody>
            </table>   
        </div>
    </body>
</html>
