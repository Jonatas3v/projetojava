package com.clickchef.entidades;

public class Funcionario {
	
	private String idFuncionario;
	private String nome;
	private String sobrenome;
	private String funcao;
	private String email;
	private String telefone;
	private String cpf;
	 
	public String getIdFuncionario() {
		return idFuncionario;
	}
	public void setIdFuncionario(String idFuncionario) {
		this.idFuncionario = idFuncionario;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSobrenome() {
		return sobrenome;
	}
	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}
	public String getFuncao() {
		return funcao;
	}
	public void setFuncao(String funcao) {
		this.funcao = funcao;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	
	public Funcionario() {
		
	}
	
	public Funcionario (String idFuncionario, String nome, String sobrenome, String funcao,
			String email, String telefone, String cpf) {
		this.idFuncionario = idFuncionario;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.funcao = funcao;
		this.email = email;
		this.telefone = telefone;
		this.cpf = cpf;
	}
}
