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

    private ComprasService comprasService;

    @Override
    public void init() throws ServletException {
        super.init();
        this.comprasService = new ComprasService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Compras> compras = comprasService.listarCompras();
        req.setAttribute("compras", compras);
        req.getRequestDispatcher("/lista-productos/lista-compras.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> datosCompra = new ArrayList<>();
        List<String> errores = new ArrayList<>();

        String usuario = req.getParameter("nombreUsuario");
        String carro = req.getParameter("contraUsuario");
        String fechaCompra = req.getParameter("fechaCompra");
        String total = req.getParameter("total");

        if (usuario == null || usuario.trim().isEmpty()) {
            errores.add("El nombre usuario  es necesario.");
        }
        if (carro == null || carro.trim().isEmpty()) {
            errores.add("El nombre carro  es necesario.");
        }
        if (fechaCompra == null || fechaCompra.trim().isEmpty()) {
            errores.add("La fecha de compra es necesario.");
        }
        if (total == null || total.trim().isEmpty()) {
            errores.add("El total de la compra  es necesario.");
        }
        
        if (errores.isEmpty()) {
            datosCompra.add(usuario);
            datosCompra.add(carro);
            datosCompra.add(fechaCompra);
            datosCompra.add(total);

            req.setAttribute("datosCompra", datosCompra);
            getServletContext().getRequestDispatcher("/formulario-productos/formulario-compra.jsp").forward(req, resp);
        } else {
            req.setAttribute("errores", errores);
            getServletContext().getRequestDispatcher("/formulario-productos/formulario-compra.jsp").forward(req, resp);
        }
        

    }
}