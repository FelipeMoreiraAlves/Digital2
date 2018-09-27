package br.com.fiap.jpa.dao;

import java.util.List;

import br.com.fiap.spring.model.Convidado;
//T = TABLE (ENTITY)
//K = KEY (CHAVE DA ENTITY)
public interface ConvidadoDAO extends GenericDAO<Convidado, Integer> {

	void confirmar(int codigo);
	
	List<Convidado> pesquisarPor(String nome);
}
