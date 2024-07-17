
package org.adrianarbizu.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.adrianarbizu.webapp.model.Carro;
import org.adrianarbizu.webapp.model.Categoria;
import org.adrianarbizu.webapp.service.CategoriaService;

@WebServlet("/categoria-servlet")
@MultipartConfig
public class CategoriaServlet extends HttpServlet {

    private CategoriaService ps;

    @Override
    public void init() throws ServletException {
        super.init();
        this.ps = new CategoriaService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Categoria> categorias = ps.listarCategoria();
        req.setAttribute("categorias", categorias);
        req.getRequestDispatcher("/lista-productos/lista-categoria.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> datosCategoria = new ArrayList<>();
        List<String> errores = new ArrayList<>();

        String nombreCategoria = req.getParameter("nombreCategoria");
        String descripcionCategoria = req.getParameter("descripcionCategoria");

        if (nombreCategoria == null || nombreCategoria.trim().isEmpty()) {
            errores.add("El nombre del categoria es obligatorio.");
        }
        if (descripcionCategoria == null || descripcionCategoria.trim().isEmpty()) {
            errores.add("La descripción de la categoria es obligatoria.");
        }
       
        if (errores.isEmpty()) {
            datosCategoria.add(nombreCategoria);
            datosCategoria.add(descripcionCategoria);
           
            req.setAttribute("datosCarro", datosCategoria);
            getServletContext().getRequestDispatcher("/formulario-productos/formulario-categoria.jsp").forward(req, resp);
        } else {
            req.setAttribute("errores", errores);
            getServletContext().getRequestDispatcher("/formulario-productos/formulario-categoria.jsp").forward(req, resp);
        }
    }
}