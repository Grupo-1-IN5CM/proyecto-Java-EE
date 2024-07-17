package org.adrianarbizu.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
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
        req.getRequestDispatcher("/lista-compras.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int usuarioId = Integer.parseInt(req.getParameter("usuarioId"));
        int carroId = Integer.parseInt(req.getParameter("carroId"));
        java.sql.Date fechacompra = java.sql.Date.valueOf(req.getParameter("fechacompra"));
        double total = Double.parseDouble(req.getParameter("total"));

        List<String> errores = validarDatos(usuarioId, carroId, fechacompra, total);
        if (errores.isEmpty()) {
            Compras compra = new Compras(usuarioId, carroId, fechacompra, total);
            comprasService.agregarCompra(compra);
            resp.sendRedirect(req.getContextPath() + "/compras-servlet");
        } else {
            req.setAttribute("errores", errores);
            req.getRequestDispatcher("/formulario-compras.jsp").forward(req, resp);
        }
    }

    private List<String> validarDatos(int usuarioId, int carroId, java.sql.Date fechacompra, double total) {
        List<String> errores = new ArrayList<>();
   
        if (usuarioId <= 0) {
            errores.add("El ID de usuario no es válido.");
        }
        if (carroId <= 0) {
            errores.add("El ID de carro no es válido.");
        }
        if (fechacompra == null) {
            errores.add("La fecha de compra es obligatoria.");
        }
        if (total <= 0) {
            errores.add("El total de la compra no es válido.");
        }
        
        return errores;
    }
}