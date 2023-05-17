package com.clickchef.entidades;

public class Categoria {

	private String idCategoria;
	private String nomeCategoria;
	
	public Categoria() {
		
	}
	
	public Categoria(String idCategoria, String nomeCategoria) {
		super();
		this.idCategoria = idCategoria;
		this.nomeCategoria = nomeCategoria;
	}

	public String toString() {
		return "Categoria [idCategoria=" + idCategoria + ", nomeCategoria="
				+ nomeCategoria + "]";	
	}
	
	public String getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(String idCategoria) {
		this.idCategoria = idCategoria;
	}

	public String getNomeCategoria() {
		return nomeCategoria;
	}

	public void setNomeCategoria(String nomeCategoria) {
		this.nomeCategoria = nomeCategoria;
	}
	
}
