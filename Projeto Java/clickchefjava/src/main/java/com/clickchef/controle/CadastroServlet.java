package com.clickchef.controle;

import java.io.IOException;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clickchef.entidades.*;
import com.clickchef.bean.*;
@WebServlet("/Cadastroservlet")
public class CadastroServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idCliente = request.getParameter("idCliente");
        String nome = request.getParameter("nome");
        String sobrenome = request.getParameter("sobrenome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String endereco = request.getParameter("endereco");
        String complemento = request.getParameter("complemento");
        String telefone = request.getParameter("telefone");
        String cpf = request.getParameter("cpf");
        
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/clickchefjava?serverTimezone=UTC";
            String username = "root";
            String password = "";
            connection = DriverManager.getConnection(url, username, password);

            String sql = "INSERT INTO cliente (nome, sobrenome, email, senha, endereco, complemento, telefone, cpf) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, sobrenome);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, senha);
            preparedStatement.setString(5, endereco);
            preparedStatement.setString(6, complemento);
            preparedStatement.setString(7, telefone);
            preparedStatement.setString(8, cpf);
            

            preparedStatement.executeUpdate();

            response.sendRedirect("paginicial.jsp");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}