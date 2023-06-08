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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nomeCompleto = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String dataNascimento = request.getParameter("dataNascimento");
		String feminino = request.getParameter("feminino-check");
		String masculino = request.getParameter("masculino-check");
		String nenhumGenero = request.getParameter("nenhum-check");
		String endereco = request.getParameter("endereco");
		
		request.setAttribute("nome", nomeCompleto);
		request.setAttribute("cpf", cpf);
		request.setAttribute("email", email);
		request.setAttribute("telefone", telefone);
		request.setAttribute("dataNascimento", dataNascimento);
		//request.setAttribute("genero", nomeCompleto); --> fazer depois
		request.setAttribute("endereco", endereco);

		
		// Criar um disparador
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar.jsp");
		dispatcher.forward(request, response);
		
		// É só para teste
		System.out.println(nomeCompleto);
		System.out.println(cpf);
		System.out.println(email);
		System.out.println(telefone);
		System.out.println(dataNascimento);
		System.out.println(feminino);
		System.out.println(masculino);
		System.out.println(nenhumGenero);
		System.out.println(endereco);
		
	}

}
