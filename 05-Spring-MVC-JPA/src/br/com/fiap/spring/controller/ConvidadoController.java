package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.jpa.dao.ConvidadoDAO;
import br.com.fiap.jpa.exception.KeyNotFoundException;
import br.com.fiap.spring.model.Convidado;

@Controller
@RequestMapping("convidado")
public class ConvidadoController {

	@Autowired
	private ConvidadoDAO dao;

	@GetMapping("cadastrar")
	public String abrirTela() {
		return "convidado/salvar";
	}

	@Transactional
	@PostMapping("cadastrar")
	public String salvarConvidado(Convidado convidado, RedirectAttributes r) throws KeyNotFoundException {
		dao.inserir(convidado);
		r.addFlashAttribute("msg", "Convidado Cadastrado!!");
		return ("redirect:/convidado/listar");
	}

	@GetMapping("listar")
	public ModelAndView abrirLista() {
		return new ModelAndView("convidado/listar").addObject("convidados", dao.listar());
	}
	
	@Transactional
	@PostMapping("excluir")
	public String excluirConvidado(int codigo, RedirectAttributes r) throws KeyNotFoundException {
		dao.remover(codigo);
		r.addFlashAttribute("msg", "Convidado Removido");
		return ("redirect:/convidado/listar");
	}
}
