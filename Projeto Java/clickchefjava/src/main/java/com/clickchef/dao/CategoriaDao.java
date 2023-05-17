package com.clickchef.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.clickchef.entidades.Categoria;

public class CategoriaDao extends Conexao {

	public List<Categoria> listar() throws SQLException {
		open();
		String sql = "select * from categoria";
		stmt = con.prepareStatement(sql);
		List<Categoria> lista = new ArrayList<Categoria>();
		
		rs = stmt.executeQuery();
		
		while(rs.next()) {
			Categoria cat = new Categoria();
			cat.setIdCategoria(rs.getInt("idCategoria"));
			cat.setNomeCategoria(rs.getString("nomeCategoria"));
			
			lista.add(cat);
		}
		return lista;
	}
}
