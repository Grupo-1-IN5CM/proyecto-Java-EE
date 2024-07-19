package org.adrianarbizu.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import org.adrianarbizu.webapp.model.Marcas;
import org.adrianarbizu.webapp.service.MarcasService;


@WebServlet("/marcas-servlet")
public class MarcasServerlet extends HttpServlet {

    private MarcasService marcasService;

    @Override
    public void init() throws ServletException {
        super.init();
        
        this.marcasService = new MarcasService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Marcas> marcas = marcasService.listarMarcas();
        req.setAttribute("marcas", marcas);
        req.getRequestDispatcher("/lista-marcas.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombreMarca = req.getParameter("nombreMarca");
        String descripcionMarca = req.getParameter("descripcionMarca");

        List<String> errores = validarDatos(nombreMarca, descripcionMarca);
        if (errores.isEmpty()) {
            Marcas marca = new Marcas(nombreMarca, descripcionMarca);
            marcasService.agregarMarca(marca);
            resp.sendRedirect(req.getContextPath() + "/marcas-servlet");
            
        } else {
            req.setAttribute("errores", errores);
            req.getRequestDispatcher("/formulario-marcas.jsp").forward(req, resp
            );
        }
        
    }

    private List<String> validarDatos(String nombreMarca, String descripcionMarca) {
        List<String> errores = new ArrayList<>();

        if (nombreMarca == null || nombreMarca.isEmpty()) {
            errores.add("El nombre de la marca es obligatorio."
            );
            
        }
        if (descripcionMarca == null || descripcionMarca.isEmpty()) {
            
            errores.add("La descripción de la marca es obligatoria.");
        }

        return errores;
    }
}