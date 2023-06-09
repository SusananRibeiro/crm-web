package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastrarClienteController
 */
@WebServlet("/CadastrarClienteController")
public class CadastrarClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public CadastrarClienteController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nomeCompleto = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String dataNascimento = request.getParameter("dataNascimento");
		String feminino = request.getParameter("feminino-check");
		String masculino = request.getParameter("masculino-check");
		String nenhumGenero = request.getParameter("nenhum-check");
		String endereco = request.getParameter("endereco");
		String genero = verificarGenero(feminino, masculino, nenhumGenero);
		String mensagem = "";

		if (nomeCompleto != "" && cpf != "" && email != "" && telefone != "" && dataNascimento != "" && endereco != ""
				&& genero != "") {
			mensagem = "Cadastro realizado com sucesso!";
			request.setAttribute("nome", nomeCompleto);
			request.setAttribute("cpf", cpf);
			request.setAttribute("email", email);
			request.setAttribute("telefone", telefone);
			request.setAttribute("dataNascimento", dataNascimento);
			request.setAttribute("genero", verificarGenero(feminino, masculino, nenhumGenero)); // --> fazer depois
			request.setAttribute("endereco", endereco);
			request.setAttribute("mensagem", mensagem);

			// Criar um disparador
			RequestDispatcher dispatcher = request.getRequestDispatcher("listar.jsp");
			dispatcher.forward(request, response);
		} else {
			mensagem = "Por favor, preencha todos os campos.";
			request.setAttribute("nome", nomeCompleto);
			request.setAttribute("cpf", cpf);
			request.setAttribute("email", email);
			request.setAttribute("telefone", telefone);
			request.setAttribute("dataNascimento", dataNascimento);
			request.setAttribute("genero", verificarGenero(feminino, masculino, nenhumGenero)); // --> fazer depois
			request.setAttribute("endereco", endereco);
			request.setAttribute("mensagem", mensagem);


			// Criar um disparador
			RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro.jsp");
			dispatcher.forward(request, response);
		}

		

		// É só para teste
		System.out.println(nomeCompleto);
		System.out.println(cpf);
		System.out.println(email);
		System.out.println(telefone);
		System.out.println(dataNascimento);
		System.out.println(verificarGenero(feminino, masculino, nenhumGenero));
		System.out.println(endereco);

	}

	private String verificarGenero(String feminino, String masculino, String nenhumGenero) {
		if (feminino == null && masculino == null && nenhumGenero == null) {
			return "";
		} else if (feminino == null && masculino == null) {
			return "N";
		} else if (feminino != null && masculino == null) {
			return "F";
		} else if (feminino == null && masculino != null) {
			return "M";
		} else {
			return "N";
		}

	}

}
