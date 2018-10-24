package br.com.fiap.jpa.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.fiap.jpa.dao.CarroDAO;
import br.com.fiap.spring.model.Carro;

@Repository
public class CarroDAOImpl extends GenericDAOImpl<Carro, Integer>
														implements CarroDAO{

	@Override
	public List<Carro> pesquisarPor(String modelo) {
		// TODO Auto-generated method stub
		return em.createQuery("from Carro where upper(modelo) like upper (:m)", Carro.class)
				.setParameter("m", "%"+modelo+"%").getResultList();
	}

}
