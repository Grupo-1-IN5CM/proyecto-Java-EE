/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.adrianarbizu.webapp.servlet;

/**
 *
 * @author ecanoooooooooooooooooo
 */
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.adrianarbizu.webapp.model.Marcas;
import org.adrianarbizu.webapp.service.CarroService;

@WebServlet("/marca-servlet")
@MultipartConfig
public class MarcaServlet extends HttpServlet {
    //private MarcaService ps;
    
    @Override
    public void init() throws ServletException {
        super.init();
        // this.ps = new MarcaService();
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //List<Marcas> marcas = ps.listarMarca();
        //req.setAttribute("marcas", marcas);
        //req.getRequestDispatcher("/lista-productos/lista-productos.jsp").forward(req, resp);
    }
}
