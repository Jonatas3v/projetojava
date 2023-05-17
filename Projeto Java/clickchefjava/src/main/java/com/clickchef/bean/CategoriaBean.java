package com.clickchef.bean;

import java.util.List;

import com.clickchef.dao.CategoriaDao;
import com.clickchef.entidades.Categoria;

public class CategoriaBean {
	
	private List<Categoria> listaCategoria;
	
	public CategoriaBean() {
		open();
		try {
			this.listaCategoria = new CategoriaDao().listar();
		}catch (Exception e) {
			
		}
	}
	
	public List<Categoria> getListaCategoria() {
		return listaCategoria;
	}
	
	public void setListaCategoria (List<Categoria> listaCategoria) {
		this.listaCategoria = listaCategoria;
	}

}
