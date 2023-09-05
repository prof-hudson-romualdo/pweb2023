package br.edu.ifgoiano.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifgoiano.entidade.Tarefa;
import br.edu.ifgoiano.repositorio.TarefaRepositorio;

@WebServlet("/tarefa")
public class TarefaServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Instanciar um objeto que acessa o banco de dados
		TarefaRepositorio repositorio = new TarefaRepositorio();

		//Obter a listagem de usuários
		List<Tarefa> lstTarefa = repositorio.listarTarefas();
		
		//Atribuir essa listagem com atributo da requisição
		req.setAttribute("tarefas", lstTarefa);
		
		//Redirecionar para a página de listagem
		req.getRequestDispatcher("listagemTarefa.jsp").forward(req, resp);;
	}
}
