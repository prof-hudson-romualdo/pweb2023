package br.edu.ifgoiano.repositorio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.edu.ifgoiano.entidade.Tarefa;

public class TarefaRepositorio {

	public List<Tarefa> listarTarefas() {
		// Definir a listagem de retorno
		List<Tarefa> lstTarefas = new ArrayList<Tarefa>();

		// Construir minha SQL
		String sql = "select id, titulo, descricao from tarefa";

		// Preparar a sql para execução
		try (
				// Obter um conexão com o banco de dados
				Connection connection = this.obterConexao();

				PreparedStatement pStatement = connection.prepareStatement(sql);) {

			// Executar a sql e Obter a listagem do banco
			ResultSet resultSet = pStatement.executeQuery();

			// Iterar na listagem criando os usuários
			while (resultSet.next()) {
				Tarefa tarefa = new Tarefa();
				tarefa.setId(resultSet.getInt("id"));
				tarefa.setTitulo(resultSet.getString("titulo"));
				tarefa.setDescricao(resultSet.getString("descricao"));

				// Adicionar os usuarios na listagem de retorno
				lstTarefas.add(tarefa);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Retornar a listagem
		return lstTarefas;
	}

	private Connection obterConexao() throws SQLException {
		return DriverManager.getConnection("jdbc:h2:~/tarefadb", "sa", "sa");
	}
}
