package br.com.fiap.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.jpa.dao.ProdutoDAO;
import br.com.fiap.jpa.exception.KeyNotFoundException;
import br.com.fiap.jpa.model.Produto;

@Controller
@RequestMapping("produto")
public class ProdutoController {

	@Autowired
	private ProdutoDAO dao;

	@GetMapping("editar/{id}")
	public ModelAndView abrirEdicao(@PathVariable("id") int id) {
		return new ModelAndView("produto/edicao").addObject("produto", dao.pesquisar(id));
	}
	
	@Transactional
	@PostMapping("editar")
	public ModelAndView editarProduto(Produto produto, RedirectAttributes r) {
		dao.atualizar(produto);
		r.addFlashAttribute("msg", "Produto Atualizado!!");
		return new ModelAndView("redirect:/produto/listar/");
	}
	
	@GetMapping("excluir/{id}")
	public ModelAndView excluirProduto(@PathVariable("id") int codigo, RedirectAttributes r) throws KeyNotFoundException {
		dao.remover(codigo);
		r.addFlashAttribute("msg", "Produto Deletado!!");
		return new ModelAndView("redirect:/produto/listar/");
	}

	// Cadastrar um produto
	// Página com template
	@GetMapping("cadastrar")
	public String abrirCadastrar() {
		return "produto/cadastrar";
	}

	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView cadastrarProduto(Produto produto, RedirectAttributes r) {
		dao.inserir(produto);
		r.addFlashAttribute("msg", "Produto cadastrado!!");
		return new ModelAndView("redirect:/produto/cadastrar");
	}

	// Listar

	@GetMapping("listar")
	public ModelAndView listar() {
		return new ModelAndView("produto/listar").addObject("produtos", dao.listar());
	}

}
