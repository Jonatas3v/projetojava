package com.clickchef.bean;

import java.util.List;

import com.clickchef.entidades.Funcionario;
import com.clickchef.dao.FuncionarioDao;

public class FuncionarioBean {

	private List<Funcionario> listarFuncionario;
	
	public FuncionarioBean() {
		open();
		try {
			this.listarFuncionario = new FuncionarioDao().listar();
		}catch (Exception e) {
			
		}
	}

	public List<Funcionario> getListarCliente() {
		return listarFuncionario;
	}
	
	public void setListarFuncionario(List<Funcionario> listarFuncionario) {
		this.listarFuncionario = listarFuncionario;
	}
}
