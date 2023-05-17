package com.clickchef.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.clickchef.entidades.Funcionario;

public class FuncionarioDao extends Conexao {

	public void adicionar(Funcionario funcionario) throws ClassNotFoundException {
		String sql = "insert into funcionario (nome, sobrenome, funcao, email, teelfone, cpf)"
				+ "values (?,?,?,?,?,?,?)";
		try {
			open();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, funcionario.getNome());
			stmt.setString(2, funcionario.getSobrenome());
			stmt.setString(3, funcionario.getFuncao());
			stmt.setString(4, funcionario.getEmail());
			stmt.setString(5, funcionario.getTelefone());
			stmt.setString(6, funcionario.getCpf());

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Funcionario> listarFuncionario(String nome) throws ClassNotFoundException, SQLException {
		open();

		stmt = this.con.prepareStatement("Select * from funcionario where nome like ?");
		stmt.setString(1, nome + "%");

		rs = stmt.executeQuery();
		List<Funcionario> funcionarios = new ArrayList<Funcionario>();

		while (rs.next()) {
			Funcionario funcionario = new Funcionario();
			funcionario.setIdFuncionario(rs.getString("idFuncionario"));
			funcionario.setNome(rs.getString("nome"));
			funcionario.setSobrenome(rs.getString("sobrenome"));
			funcionario.setFuncao(rs.getString("funcao"));
			funcionario.setEmail(rs.getString("email"));
			funcionario.setTelefone(rs.getString("telefone"));
			funcionario.setCpf(rs.getString("cpf"));

			funcionarios.add(funcionario);

		}
		return funcionarios;
	}

	public Funcionario buscarPorIdFuncionario(String idFuncionario) throws ClassNotFoundException, SQLException {
		open();
		String sql = "select * from funcionario where idFuncionario = ?";
		stmt = con.prepareStatement(sql);
		stmt.setString(1, idFuncionario);

		Funcionario funcionario = null;
		rs = stmt.executeQuery();

		if (rs.next()) {
			funcionario = new Funcionario(rs.getString("idFuncionario"), rs.getString("nome"),
					rs.getString("sobrenome"), rs.getString("funcao"), rs.getString("email"), rs.getString("telefone"),
					rs.getString("cpf"));
		}
		return funcionario;
	}

	public void editar(Funcionario funcionario) throws ClassNotFoundException {
		String sql = "update funcionario set set nome=?, sobrenome=?, funcao=?, email=?,"
				+ "telefone=?, cpf=? WHERE idFuncionario=?";

		try {
			open();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, funcionario.getNome());
			stmt.setString(2, funcionario.getSobrenome());
			stmt.setString(3, funcionario.getFuncao());
			stmt.setString(4, funcionario.getEmail());
			stmt.setString(5, funcionario.getTelefone());
			stmt.setString(6, funcionario.getCpf());
			stmt.setString(7, funcionario.getIdFuncionario());

			stmt.execute();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void excluir(Funcionario funcionario) throws ClassNotFoundException {

		try {
			open();
			stmt = con.prepareStatement("delet from funcionario whereidFuncionario=?");
			stmt.setString(1, funcionario.getIdFuncionario());
			stmt.execute();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Funcionario> listar() throws SQLException {
		open();
		String sql = "select * from funcionario";
		stmt = con.prepareStatement(sql);
		List<Funcionario> lista = new ArrayList<Funcionario>();
		stmt.executeQuery();

		while (rs.next()) {
			Funcionario func = new Funcionario();
			func.setIdFuncionario(rs.getString("idFuncionario"));
			func.setNome(rs.getString("nome"));

			lista.add(func);
		}
		return lista;
	}

}
