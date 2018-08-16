package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Apresentacao;

@Controller
@RequestMapping("apresentacao")
public class ApresentacaoController {

	@GetMapping("cadastrar")
	public String abrirCadastro() {
		return "apresentacao/cadastrar"; // p�gina
	}

	@PostMapping("cadastrar")
	public ModelAndView cadastrarApresentacao(Apresentacao ap) {

		return new ModelAndView("apresentacao/cadastrar").addObject("msg", "Apresenta��o agendada!");
	}
}
