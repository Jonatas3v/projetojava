package com.clickchef.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clickchef.dao.FuncionarioDao;
import com.clickchef.entidades.Funcionario;

@WebServlet(urlPatterns = { "/cadastrarFuncionario", "/buscarFuncionario", "/confirmarFuncionario",
		"/editarFuncionario", "/excluirFuncionario" })
public class FuncionarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FuncionarioDao dao = new FuncionarioDao();
	Funcionario funcionario = new Funcionario();

	public FuncionarioController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		if (action.equals("/buscarFuncionario")) {
			buscar(request, response);
		} else if (action.equals("/cadastrarFuncionario")) {
			cadastrar(request, response);
		} else if (action.equals("/confirmarFuncionario")) {
			confirmar(request, response);
		} else if (action.equals("/editarFuncionario")) {
			editar(request, response);
		} else if (action.equals("/excluirFuncionario")) {
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
		funcionario.setNome(request.getParameter("nome"));
		funcionario.setSobrenome(request.getParameter("sobrenome"));
		funcionario.setFuncao(request.getParameter("funcao"));
		funcionario.setEmail(request.getParameter("email"));
		funcionario.setTelefone(request.getParameter("telefone"));
		funcionario.setCpf(request.getParameter("cpf"));

		response.sendRedirect("main");
	}

	public void confirmar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			// Pegando os parâmetros passados pelo formulário
			String nome = request.getParameter("nome");
			String sobrenome = request.getParameter("sobrenome");
			String funcao = request.getParameter("funcao");
			String email = request.getParameter("email");
			String telefone = request.getParameter("telefone");
			String cpf = request.getParameter("cpf");
			String idFuncionario = request.getParameter("idFuncionario");

			Funcionario funcionario = new Funcionario();
			funcionario.setNome(nome);
			funcionario.setSobrenome(sobrenome);
			funcionario.setFuncao(funcao);
			funcionario.setEmail(email);
			funcionario.setTelefone(telefone);
			funcionario.setCpf(cpf);
			funcionario.setIdFuncionario(idFuncionario);

			FuncionarioDao pd = new FuncionarioDao();
			pd.editar(funcionario);
			request.getSession().setAttribute("funcionario", funcionario);
			request.setAttribute("msg", "<div class='alert alert-success'>Funcionario atualizado!</div>");

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "<div class='alert alert-danger'>Funcionario não Atualizado!</div>");
		} finally {
			request.getRequestDispatcher("consultarFuncionario.jsp").forward(request, response);
		}

	}

	public void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String idFuncionario = request.getParameter("idFuncionario");
			Funcionario func = new FuncionarioDao().buscarPorIdFuncionario(idFuncionario);

			if (func == null) {
				request.setAttribute("msg", "<div class='alert alert-info'>Funcionario não encontrado!</div>");
				request.getRequestDispatcher("consultarFuncionario.jsp").forward(request, response);
			} else {
				request.setAttribute("linha", func);
				request.getRequestDispatcher("editarFuncionario.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "<div class='alert alert-danger'>Erro: " + e.getMessage() + "</div>");
			request.getRequestDispatcher("consultarFuncionario.jsp").forward(request, response);
		}
	}

	protected void excluir(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idFuncionario = request.getParameter("idFuncionario");

		try {
			FuncionarioDao dao = new FuncionarioDao();
			dao.excluir(funcionario);

		} catch (Exception e) {
			request.setAttribute("msg", "Erro ao excluir funcionario" + funcionario.getNome());
			// request.getRequestDispatcher("erro.jsp").forward(request, response);

		} finally {
			response.sendRedirect("consultarFuncionario.jsp");
		}
	}
}