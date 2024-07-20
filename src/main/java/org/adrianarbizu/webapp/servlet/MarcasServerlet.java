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

<<<<<<< HEAD
    private MarcasService marcasService;
=======
    private MarcasService ms;
>>>>>>> Giovanni-Carrera

    @Override
    public void init() throws ServletException {
        super.init();
        
<<<<<<< HEAD
        this.marcasService = new MarcasService();
=======
        this.ms = new MarcasService();
>>>>>>> Giovanni-Carrera
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<< HEAD
        List<Marcas> marcas = marcasService.listarMarcas();
        req.setAttribute("marcas", marcas);
        req.getRequestDispatcher("/lista-marcas.jsp").forward(req, resp);
=======
        List<Marcas> marcas = ms.listarMarca();
        req.setAttribute("marcas", marcas);
        req.getRequestDispatcher("/lista-productos/lista-marca.jsp").forward(req, resp);
>>>>>>> Giovanni-Carrera
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<< HEAD
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
=======
        List<String> datosUsuario = new ArrayList<>();
        List<String> errores = new ArrayList<>();

        String nombreMarca = req.getParameter("nombreMarca");
        String descripcionMarca = req.getParameter("descripcionMarca");

        if (nombreMarca == null || nombreMarca.trim().isEmpty()) {
            errores.add("El nombre es obligatorio.");
        }
        if (descripcionMarca == null || descripcionMarca.trim().isEmpty()) {
            errores.add("La descripción es obligatoria.");
        }
        
        if (errores.isEmpty()) {
            datosUsuario.add(nombreMarca);
            datosUsuario.add(descripcionMarca);

            ms.agregarMarca(new Marcas(nombreMarca,descripcionMarca));
            resp.sendRedirect(req.getContextPath()+"/index.jsp");
        } else {
            req.setAttribute("errores", errores);
            getServletContext().getRequestDispatcher("/formulario-productos/formulario-marca.jsp").forward(req, resp);
        }
>>>>>>> Giovanni-Carrera
    }
}