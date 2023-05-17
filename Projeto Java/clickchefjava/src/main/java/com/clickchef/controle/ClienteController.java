package com.clickchef.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clickchef.dao.ClienteDao;
import com.clickchef.entidades.Cliente;

@WebServlet(urlPatterns = { "/cadastrarCliente", "/buscarCliente", "/confirmarCliente", "/editarCliente",
		"/excluirCliente" })
public class ClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ClienteDao dao = new ClienteDao();
	Cliente cliente = new Cliente();

	public ClienteController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		if (action.equals("/buscarCliente")) {
			buscar(request, response);
		} else if (action.equals("/cadastrarCliente")) {
			cadastrar(request, response);
		} else if (action.equals("/confirmarCliente")) {
			confirmar(request, response);
		} else if (action.equals("/editarCliente")) {
			editar(request, response);
		} else if (action.equals("/excluirCliente")) {
			excluir(request, response);
		} else {
			response.sendRedirect("index.html");
		}
	}

	protected void buscar(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("cadastro.html");
		rd.forward(request, response);
	}
	
	protected void cadastrar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			cliente.setNome(request.getParameter("nome"));
			cliente.setSobrenome(request.getParameter("sobrenome"));
			cliente.setEmail(request.getParameter("email"));
			cliente.setSenha(request.getParameter("senha"));
			cliente.setEndereco(request.getParameter("endereco"));
			cliente.setComplemento(request.getParameter("complemento"));
			cliente.setTelefone(request.getParameter("telefone"));
			cliente.setCpf(request.getParameter("cpf"));
			
			response.sendRedirect("main");
	}

	public void confirmar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			// Pegando os parâmetros passados pelo formulário
			String nome = request.getParameter("nome");
			String sobrenome = request.getParameter("sobrenome");
			String email = request.getParameter("email");
			String senha = request.getParameter("senha");
			String endereco = request.getParameter("endereco");
			String complemento = request.getParameter("complemento");
			String telefone = request.getParameter("telefone");
			String cpf = request.getParameter("cpf");
			String idCliente = request.getParameter("idCliente");

			Cliente cliente = new Cliente();
			cliente.setNome(nome);
			cliente.setSobrenome(sobrenome);
			cliente.setEmail(email);
			cliente.setSenha(senha);
			cliente.setEndereco(endereco);
			cliente.setComplemento(complemento);
			cliente.setTelefone(telefone);
			cliente.setCpf(cpf);
			cliente.setIdCliente(idCliente);

			ClienteDao pd = new ClienteDao();
			pd.editar(cliente);
			request.getSession().setAttribute("cliente", cliente);
			request.setAttribute("msg", "<div class='alert alert-success'>Cliente atualizado!</div>");

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "<div class='alert alert-danger'>Cliente não Atualizado!</div>");
		} finally {
			request.getRequestDispatcher("consultarCliente.jsp").forward(request, response);
		}

	}

	public void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String idCliente = request.getParameter("idCliente");
			Cliente cli = new ClienteDao().buscarPorIdCliente(idCliente);

			if (cli == null) {
				request.setAttribute("msg", "<div class='alert alert-info'>Cliente não encontrado!</div>");
				request.getRequestDispatcher("consultarCliente.jsp").forward(request, response);
			} else {
				request.setAttribute("linha", cli);
				request.getRequestDispatcher("editarCliente.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "<div class='alert alert-danger'>Erro: " + e.getMessage() + "</div>");
			request.getRequestDispatcher("consultarCliente.jsp").forward(request, response);
		}
	}

	protected void excluir(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idCliente = request.getParameter("idCliente");

	

		try {
			ClienteDao dao = new ClienteDao();
			dao.excluir(cliente);

		} catch (Exception e) {
			request.setAttribute("msg", "Erro ao excluir cliente" + cliente.getNome());
			// request.getRequestDispatcher("erro.jsp").forward(request, response);

		} finally {
			response.sendRedirect("consultarCliente.jsp");
		}
	}
}