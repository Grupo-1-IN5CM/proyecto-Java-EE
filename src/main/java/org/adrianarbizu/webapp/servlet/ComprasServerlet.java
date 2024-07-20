package org.adrianarbizu.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.ArrayList;
import org.adrianarbizu.webapp.model.Compras;
import org.adrianarbizu.webapp.service.ComprasService;

@WebServlet("/compras-servlet")
public class ComprasServerlet extends HttpServlet {

<<<<<<< HEAD
<<<<<<< HEAD
    private ComprasService cs;
=======
    private ComprasService comprasService;
>>>>>>> Adrian-Arbizu
=======
    private ComprasService cs;
>>>>>>> Giovanni-Carrera

    @Override
    public void init() throws ServletException {
        super.init();
<<<<<<< HEAD
<<<<<<< HEAD
        this.cs = new ComprasService();
=======
        this.comprasService = new ComprasService();
>>>>>>> Adrian-Arbizu
=======
        this.cs = new ComprasService();
>>>>>>> Giovanni-Carrera
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<< HEAD
<<<<<<< HEAD
        List<Compras> compras = cs.listarCompras();
=======
        List<Compras> compras = comprasService.listarCompras();
>>>>>>> Adrian-Arbizu
=======
        List<Compras> compras = cs.listarCompras();
>>>>>>> Giovanni-Carrera
        req.setAttribute("compras", compras);
        req.getRequestDispatcher("/lista-productos/lista-compras.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> Giovanni-Carrera
        String path = req.getPathInfo();
        
        if(path == null || path.equals("/")){
            agregarCompra(req, resp);
        }   
    }
    
    public void agregarCompra(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String usuarioIdParam = req.getParameter("usuarioId");
        String carroIdParam = req.getParameter("carroId");
        String fechacompraParam = req.getParameter("fechacompra");
        String total = req.getParameter("total");
        
        
<<<<<<< HEAD
        List<String> datosCompra = new ArrayList<>();
        List<String> errores = new ArrayList<>();
        
        if (usuarioIdParam == null || usuarioIdParam.trim().isEmpty()) {
            errores.add("El Id del Usuario es obligatorio y debe ser un número.");
        }
        if (carroIdParam == null || carroIdParam.trim().isEmpty()) {
            errores.add("El Id del carro es obligatoria y debe ser un número.");
        }
        if (fechacompraParam == null || fechacompraParam.trim().isEmpty()) {
            errores.add("La fecha de la compra es obligatorio.");
        }
        if (errores.isEmpty()) {
            datosCompra.add(usuarioIdParam);
            datosCompra.add(carroIdParam);
            datosCompra.add(fechacompraParam);
            datosCompra.add(total);
           
           cs.agregarCompra(new Compras(Integer.parseInt(usuarioIdParam),Integer.parseInt(carroIdParam),fechacompraParam,Double.parseDouble(total)));
           resp.sendRedirect(req.getContextPath()+"/index.jsp");
        } else {
            req.setAttribute("errores", errores);
            getServletContext().getRequestDispatcher("/formulario-productos/formulario-compras.jsp").forward(req, resp);
        }
=======
=======
>>>>>>> Giovanni-Carrera
        List<String> datosCompra = new ArrayList<>();
        List<String> errores = new ArrayList<>();
        
        if (usuarioIdParam == null || usuarioIdParam.trim().isEmpty()) {
            errores.add("El Id del Usuario es obligatorio y debe ser un número.");
        }
        if (carroIdParam == null || carroIdParam.trim().isEmpty()) {
            errores.add("El Id del carro es obligatoria y debe ser un número.");
        }
        if (fechacompraParam == null || fechacompraParam.trim().isEmpty()) {
            errores.add("La fecha de la compra es obligatorio.");
        }
        if (errores.isEmpty()) {
            datosCompra.add(usuarioIdParam);
            datosCompra.add(carroIdParam);
            datosCompra.add(fechacompraParam);
            datosCompra.add(total);
           
           cs.agregarCompra(new Compras(Integer.parseInt(usuarioIdParam),Integer.parseInt(carroIdParam),fechacompraParam,Double.parseDouble(total)));
           resp.sendRedirect(req.getContextPath()+"/index.jsp");
        } else {
            req.setAttribute("errores", errores);
            getServletContext().getRequestDispatcher("/formulario-productos/formulario-compras.jsp").forward(req, resp);
        }
<<<<<<< HEAD
        

>>>>>>> Adrian-Arbizu
=======
>>>>>>> Giovanni-Carrera
    }
}