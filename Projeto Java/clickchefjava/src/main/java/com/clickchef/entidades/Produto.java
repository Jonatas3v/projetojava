package com.clickchef.entidades;

public class Produto {

	private String idProduto;
	private String nome;
	private String descricao;
	private String preco;
	
	public String getIdProduto() {
		return idProduto;
	}
	public void setIdProduto(String idProduto) {
		this.idProduto = idProduto;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getPreco() {
		return preco;
	}
	public void setPreco(String preco) {
		this.preco = preco;
	}
	
	public Produto() {
		
	}
	
	public Produto (String idProduto, String nome, String descricao, String preco) {
		 this.idProduto = idProduto;
		 this.nome = nome;
		 this.descricao = descricao;
		 this.preco = preco;
	}
}
