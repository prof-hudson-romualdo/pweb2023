package br.edu.ifgoiano.entidade;

import java.util.Date;

public class Usuario {
	private String email;
	private String senha;
	private String nome;
	private Date dataNascimento;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
		
	public Integer obterIdade() {
		//FIXME: Implementar a lógica para obter a idade com base na data de nascimento
		return 0;
	}
}
