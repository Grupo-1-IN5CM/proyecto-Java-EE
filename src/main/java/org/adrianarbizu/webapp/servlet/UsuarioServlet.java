/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
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
import org.adrianarbizu.webapp.model.Usuario;
import org.adrianarbizu.webapp.service.UsuarioService;

/**
 *
 * @author Esteban
 */
@WebServlet("/usuario-servlet")
@MultipartConfig
public class UsuarioServlet extends HttpServlet {
    
    private UsuarioService ps;

    @Override
    public void init() throws ServletException {
        super.init();
        this.ps = new UsuarioService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Usuario> usuarios = ps.listarUsuario();
        req.setAttribute("usuarios", usuarios);
        req.getRequestDispatcher("/lista-productos/listar-usuarios.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> datosUsuario = new ArrayList<>();
        List<String> errores = new ArrayList<>();

        String nombreUsuario = req.getParameter("nombreUsuario");
        String contraUsuario = req.getParameter("contraUsuario");

        if (nombreUsuario == null || nombreUsuario.trim().isEmpty()) {
            errores.add("El nombre es obligatorio.");
        }
        if (contraUsuario == null || contraUsuario.trim().isEmpty()) {
            errores.add("La contraseña es obligatoria.");
        }
        
        if (errores.isEmpty()) {
            datosUsuario.add(nombreUsuario);
            datosUsuario.add(contraUsuario);

            ps.agregarUsuario(new Usuario(nombreUsuario,contraUsuario));
            resp.sendRedirect(req.getContextPath()+"/index.jsp");
        } else {
            req.setAttribute("errores", errores);
            getServletContext().getRequestDispatcher("/formulario-productos/formulario-usuarios.jsp").forward(req, resp);
        }
    }
}
