package br.edu.ifgoiano.entidade;

public class Tarefa {
	private Integer id;
	private String titulo;
	private String descricao;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
}
