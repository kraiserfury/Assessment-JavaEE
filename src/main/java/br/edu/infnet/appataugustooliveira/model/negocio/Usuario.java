package br.edu.infnet.appataugustooliveira.model.negocio;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "TUsuario")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String Nome;
	private String email;
	private String senha;
	private String git;
	@OneToMany
	@JoinColumn(name = "idUsuario")
	private List<Venda> venda;
	@OneToMany
	@JoinColumn(name = "idUsuario")
	private List<Investidor> investidor;
	
	public String getGit() {
		return git;
	}
	public void setGit(String git) {
		this.git = git;
	}
	
	public List<Venda> getVenda() {
		return venda;
	}
	public void setVenda(List<Venda> venda) {
		this.venda = venda;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return Nome;
	}
	public void setNome(String nome) {
		Nome = nome;
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
	public List<Investidor> getInvestidor() {
		return investidor;
	}
	public void setInvestidor(List<Investidor> investidor) {
		this.investidor = investidor;
	}
	
}
