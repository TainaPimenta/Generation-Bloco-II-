package org.generation.BlogPessoal2.model;


import javax.persistence.Entity;
import javax.persistence.Id;
import com.sun.istack.NotNull;


@Entity
public class Postagem {

	@Id
	private long id;
	@NotNull
	private String nome;
	@NotNull
	private String email;
	@NotNull
	private String senha;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

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
	
}
