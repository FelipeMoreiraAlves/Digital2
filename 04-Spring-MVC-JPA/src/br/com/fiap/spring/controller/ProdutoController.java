package br.com.fiap.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.jpa.dao.ProdutoDAO;
import br.com.fiap.jpa.model.Produto;

@Controller
@RequestMapping("produto")
public class ProdutoController {

	@Autowired
	private ProdutoDAO dao;

	// Cadastrar um produto
	// Página com template
	@GetMapping("cadastrar")
	public String abrirCadastrar() {
		return "produto/cadastrar";
	}

	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView cadastrarProduto(Produto produto) {
		dao.inserir(produto);
		return new ModelAndView("produto/cadastrar").addObject("msg", "Produto cadastrado");
	}

	// Listar

	@GetMapping("listar")
	public ModelAndView listar() {
		return new ModelAndView("produto/listar").addObject("produtos", dao.listar());
	}

}
