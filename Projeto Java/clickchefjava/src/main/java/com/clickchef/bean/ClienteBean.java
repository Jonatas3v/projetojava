package com.clickchef.bean;

import java.util.*;

import com.clickchef.entidades.*;
import com.clickchef.dao.*;

public class ClienteBean extends Conexao {
	private List<Cliente> listarCliente;

	public ClienteBean() {
		open();
		try {

			this.listarCliente = new ClienteDao().listar();
		} catch (Exception e) {

		}
	}

	public List<Cliente> getListarCliente() {
		return listarCliente;
	}

	public void setListarCliente(List<Cliente> listarCliente) {
		this.listarCliente = listarCliente;
	}

}