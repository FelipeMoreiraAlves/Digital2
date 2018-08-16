package br.com.fiap.spring.model;

public class Apresentacao {

	private int id;

	private String grupo;

	private int duracao;

	private String descricao;

	private boolean apresentado;

	public String getNomeGrupo() {
		return grupo;
	}

	public void setNomeGrupo(String grupo) {
		this.grupo = grupo;
	}

	public int getDuracao() {
		return duracao;
	}

	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public boolean isApresentado() {
		return apresentado;
	}

	public void setApresentado(boolean apresentado) {
		this.apresentado = apresentado;
	}

}
