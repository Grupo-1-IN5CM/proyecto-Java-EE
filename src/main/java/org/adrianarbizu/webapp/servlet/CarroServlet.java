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
import org.adrianarbizu.webapp.service.CarroService;

@WebServlet("/carro-servlet")
@MultipartConfig
public class CarroServlet extends HttpServlet {

    private CarroService ps;

    @Override
    public void init() throws ServletException {
        super.init();
        this.ps = new CarroService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Carro> carros = ps.listarCarro();
        req.setAttribute("carros", carros);
        req.getRequestDispatcher("/lista-productos/lista-productos.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String path = req.getPathInfo();
        
        if(path == null || path.equals("/")){
            agregarCarro(req, resp);
        }
    }
    
    public void agregarCarro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombreCarro = req.getParameter("nombreCarro");
        String descripcionCarro = req.getParameter("descripcionCarro");
        String marcaCarro = req.getParameter("marcaCarro");
        Double precioCarro = Double.parseDouble(req.getParameter("precioCarro"));
        
        
        
        List<String> datosCategoria = new ArrayList<>();
        List<String> errores = new ArrayList<>();
        if (nombreCarro == null || nombreCarro.trim().isEmpty()) {
            errores.add("El nombre del carro es obligatorio.");
        }
        if (descripcionCarro == null || descripcionCarro.trim().isEmpty()) {
            errores.add("La descripción del carro es obligatoria.");
        }
        if (marcaCarro == null || marcaCarro.trim().isEmpty()) {
            errores.add("La marca del carro es obligatorio.");
        }
        if (precioCarro == null) {
            errores.add("La marca del carro es obligatorio.");
        }
        if (errores.isEmpty()) {
            datosCategoria.add(nombreCarro);
            datosCategoria.add(descripcionCarro);
            datosCategoria.add(marcaCarro);
            datosCategoria.add(precioCarro);

           
           ps.agregarCarro(new Carro(nombreCarro,descripcionCarro,marcaCarro,precioCarro));
           resp.sendRedirect(req.getContextPath()+"/index.jsp");
        } else {
            req.setAttribute("errores", errores);
            getServletContext().getRequestDispatcher("/formulario-productos/formulario-productos.jsp").forward(req, resp);
        }
    }
}