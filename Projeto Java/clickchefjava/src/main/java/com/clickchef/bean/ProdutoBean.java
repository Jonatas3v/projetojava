package com.clickchef.bean;

import java.util.List;

import com.clickchef.dao.ProdutoDao;
import com.clickchef.entidades.Produto;

public class ProdutoBean {

private List<Produto> listaProduto;
	
	public ProdutoBean() {
		open();
		try {
			this.listaProduto= new ProdutoDao().listar();
		}catch (Exception e) {
			
		}
	}
	
	public List<Produto> getListaProduto() {
		return listaProduto;
	}
	
	public void setListaProduto(List<Produto> listaProduto) {
		this.listaProduto = listaProduto;
	}
}
