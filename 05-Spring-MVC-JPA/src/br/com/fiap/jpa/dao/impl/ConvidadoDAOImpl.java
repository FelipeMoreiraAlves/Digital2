package br.com.fiap.jpa.dao.impl;

import org.springframework.stereotype.Repository;

import br.com.fiap.jpa.dao.ConvidadoDAO;
import br.com.fiap.spring.model.Convidado;

@Repository
public class ConvidadoDAOImpl extends GenericDAOImpl<Convidado, Integer> implements ConvidadoDAO {

}
