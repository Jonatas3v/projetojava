package com.clickchef.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.clickchef.entidades.*;

public class ClienteDao extends Conexao {

	public void adicionar(Cliente cliente) throws ClassNotFoundException {
		String sql = "insert into cliente(nome, sobrenome, email, senha, endereco, complemento, telefone, cpf)"
				+ "values (?,?,?,?,?,?,?,?)";
		try {

			open();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getSobrenome());
			stmt.setString(3, cliente.getEmail());
			stmt.setString(4, cliente.getSenha());
			stmt.setString(5, cliente.getEndereco());
			stmt.setString(6, cliente.getComplemento());
			stmt.setString(7, cliente.getTelefone());
			stmt.setString(8, cliente.getCpf());
			stmt.execute();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public List<Cliente> listarCliente(String nome) 
			throws ClassNotFoundException, SQLException  {
		
		open();
		
		stmt = this.con.prepareStatement("select * from cliente where nome like ?");
		stmt.setString(1, nome + "%");
		
		rs = stmt.executeQuery();
		List<Cliente> clientes = new ArrayList<Cliente>();
		
		while (rs.next()) {
			Cliente cliente = new Cliente();
			cliente.setIdCliente(rs.getString("idCliente"));
			cliente.setNome(rs.getString("nome"));
			cliente.setSobrenome(rs.getString("sobrenome"));
			cliente.setEmail(rs.getString("email"));
			cliente.setSenha(rs.getString("senha"));
			cliente.setEndereco(rs.getString("endereco"));
			cliente.setComplemento(rs.getString("complemento"));
			cliente.setTelefone(rs.getString("telefone"));
			cliente.setCpf(rs.getString("cpf"));
			
			clientes.add(cliente);
		}
		
		return clientes;
		
	}

	public Cliente buscarPorIdCliente(String idCliente) throws ClassNotFoundException, SQLException {
		open();
		String sql = "select * from cliente where idCliente = ?";
		stmt = con.prepareStatement(sql);
		stmt.setString(1, idCliente);

		Cliente cliente = null;
		rs = stmt.executeQuery();

		if (rs.next()) {
			cliente = new Cliente(rs.getString("idCliente"), rs.getString("nome"), rs.getString("sobrenome"),
					rs.getString("email"), rs.getString("senha"), rs.getString("endereco"), rs.getString("complemento"),
					rs.getString("telefone"), rs.getString("cpf"));
		}
		return cliente;
	}

	public void editar (Cliente cliente) throws ClassNotFoundException {
		String sql = "update cliente set nome=?, sobrenome=?, email=?, senha=?, endereco=?,"
				+ " complemento=?, telefone=?, cpf=? WHERE idCliente=?";
				
		try {
			open();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getSobrenome());
			stmt.setString(3, cliente.getEmail());
			stmt.setString(4, cliente.getSenha());
			stmt.setString(5, cliente.getEndereco());
			stmt.setString(6, cliente.getComplemento());
			stmt.setString(7, cliente.getTelefone());
			stmt.setString(8, cliente.getCpf());
			stmt.setString(9, cliente.getIdCliente());
			
			stmt.execute();
			
		} catch (SQLException e) {
			throw new RuntimeException (e);
		}
	}

	public void excluir(Cliente cliente) throws ClassNotFoundException {

		try {
			open();
			stmt = con.prepareStatement("delet from cliente where idCliente=?");
			stmt.setString(1, cliente.getIdCliente());
			stmt.execute();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Cliente> listar() throws SQLException {
		open();
		String sql = "select * from cliente";
		stmt = con.prepareStatement(sql);
		List<Cliente> lista = new ArrayList<Cliente>();
		rs = stmt.executeQuery();

		while (rs.next()) {
			Cliente cli = new Cliente();
			cli.setIdCliente(rs.getString("idCliente"));
			cli.setNome(rs.getString("nome"));

			lista.add(cli);
		}

		return lista;
	}
}