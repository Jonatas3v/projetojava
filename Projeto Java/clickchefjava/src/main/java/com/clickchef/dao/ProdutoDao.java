package com.clickchef.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.clickchef.entidades.*;

public class ProdutoDao extends Conexao {

	public void adicionar(Produto produto) throws ClassNotFoundException {
		String sql = "insert into produto(nome, descricao, preco)"
				+ "values (?,?,?)";
		try {

			open();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, produto.getNome());
			stmt.setString(2, produto.getDescricao());
			stmt.setString(3, produto.getPreco());
			stmt.execute();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public List<Produto> listarproduto(String nome) 
			throws ClassNotFoundException, SQLException  {
		
		open();
		
		stmt = this.con.prepareStatement("select * from produto where nome like ?");
		stmt.setString(1, nome + "%");
		
		rs = stmt.executeQuery();
		List<Produto> produtos = new ArrayList<Produto>();
		
		while (rs.next()) {
			Produto produto = new Produto();
			produto.setIdProduto(rs.getString("idProduto"));
			produto.setNome(rs.getString("nome"));
			produto.setDescricao(rs.getString("descricao"));
			produto.setPreco(rs.getString("preco"));
			produtos.add(produto);
		}
		
		return produtos;
		
	}

	public Produto buscarPorIdProduto(String idProduto) throws ClassNotFoundException, SQLException {
		open();
		String sql = "select * from produto where idProduto = ?";
		stmt = con.prepareStatement(sql);
		stmt.setString(1, idProduto);

		Produto produto = null;
		rs = stmt.executeQuery();

		if (rs.next()) {
			produto= new Produto(rs.getString("idProduto"), rs.getString("nome"), rs.getString("descricao"),
					rs.getString("preco"));
		}
		return produto;
	}

	public void editar (Produto produto) throws ClassNotFoundException {
		String sql = "update produto set nome=?, descricao=?, preco=? WHERE idProduto=?";
				
		try {
			open();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, produto.getNome());
			stmt.setString(2, produto.getDescricao());
			stmt.setString(3, produto.getPreco());
			stmt.setString(9, produto.getIdProduto());
			
			stmt.execute();
			
		} catch (SQLException e) {
			throw new RuntimeException (e);
		}
	}

	public void excluir(Produto produto) throws ClassNotFoundException {

		try {
			open();
			stmt = con.prepareStatement("delet from cliente where idCliente=?");
			stmt.setString(1, produto.getIdProduto());
			stmt.execute();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Produto> listar() throws SQLException {
		open();
		String sql = "select * from cliente";
		stmt = con.prepareStatement(sql);
		List<Produto> lista = new ArrayList<Produto>();
		rs = stmt.executeQuery();

		while (rs.next()) {
			Produto prod = new Produto();
			prod.setIdProduto(rs.getString("idProduto"));
			prod.setNome(rs.getString("nome"));

			lista.add(prod);
		}

		return lista;
	}
}