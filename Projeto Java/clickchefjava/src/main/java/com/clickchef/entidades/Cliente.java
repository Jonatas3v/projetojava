package com.clickchef.entidades;

public class Cliente {

	private String idCliente;
	private String nome;
	private String sobrenome;
	private String email;
	private String senha;
	private String endereco;
	private String complemento;
	private String telefone;
	private String cpf;

	public String getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(String idCliente) {
		this.idCliente = idCliente;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String string) {
		this.telefone = string;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public Cliente() {
		
	}
	
	public Cliente (String idCliente, String nome, String sobrenome, String email, String senha,
			String endereco, String complemento, String telefone, String cpf) {
		this.idCliente = idCliente;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.email = email;
		this.senha = senha;
		this.endereco = endereco;
		this.complemento = complemento;
		this.telefone = telefone;
		this.cpf = cpf;
	}
}
