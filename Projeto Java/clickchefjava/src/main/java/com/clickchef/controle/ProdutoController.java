package com.clickchef.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clickchef.dao.ProdutoDao;
import com.clickchef.entidades.Produto;

@WebServlet(urlPatterns = { "/cadastrarProduto", "/buscarProduto", "/confirmarProduto", "/editarProduto",
		"/excluirProduto" })
public class ProdutoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProdutoDao dao = new ProdutoDao();
	Produto produto = new Produto();

	public ProdutoController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		if (action.equals("/buscarProduto")) {
			buscar(request, response);
		} else if (action.equals("/cadastrarProduto")) {
			cadastrar(request, response);
		} else if (action.equals("/confirmarProduto")) {
			confirmar(request, response);
		} else if (action.equals("/editarProduto")) {
			editar(request, response);
		} else if (action.equals("/excluirProduto")) {
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
			produto.setNome(request.getParameter("nome"));
			produto.setDescricao(request.getParameter("descricao"));
			produto.setPreco(request.getParameter("preco"));
			
			response.sendRedirect("main");
	}

	public void confirmar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			// Pegando os parâmetros passados pelo formulário
			String nome = request.getParameter("nome");
			String descricao = request.getParameter("descricao");
			String preco = request.getParameter("preco");			
			String idProduto = request.getParameter("idProduto");

			Produto produto = new Produto();
			produto.setNome(nome);
			produto.setDescricao(descricao);
			produto.setPreco(preco);
			
			produto.setIdProduto(idProduto);

			ProdutoDao pd = new ProdutoDao();
			pd.editar(produto);
			request.getSession().setAttribute("produto", produto);
			request.setAttribute("msg", "<div class='alert alert-success'>Produto atualizado!</div>");

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "<div class='alert alert-danger'>Produto não Atualizado!</div>");
		} finally {
			request.getRequestDispatcher("consultarProduto.jsp").forward(request, response);
		}

	}

	public void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String idProduto= request.getParameter("idProduto");
			Produto prod = new ProdutoDao().buscarPorIdProduto(idProduto);

			if (prod == null) {
				request.setAttribute("msg", "<div class='alert alert-info'>Cliente não encontrado!</div>");
				request.getRequestDispatcher("consultarCliente.jsp").forward(request, response);
			} else {
				request.setAttribute("linha", prod);
				request.getRequestDispatcher("editarProduto.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "<div class='alert alert-danger'>Erro: " + e.getMessage() + "</div>");
			request.getRequestDispatcher("consultarProduto.jsp").forward(request, response);
		}
	}

	protected void excluir(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idProduto= request.getParameter("idProduto");

	

		try {
			ProdutoDao dao = new ProdutoDao();
			dao.excluir(produto);

		} catch (Exception e) {
			request.setAttribute("msg", "Erro ao excluir cliente" + produto.getNome());
			// request.getRequestDispatcher("erro.jsp").forward(request, response);

		} finally {
			response.sendRedirect("consultarproduto.jsp");
		}
	}
}