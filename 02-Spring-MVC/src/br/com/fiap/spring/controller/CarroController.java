package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("carro")
public class CarroController {

	@GetMapping("cadastrar")
	public String abrirCadastro() {
		return "carro/form";
	}
	
	@PostMapping("cadastrar")
	public ModelAndView processarCadastro(Carro carro) {
		
		System.out.println(carro.getModelo());
		System.out.println(carro.getMarca());
		System.out.println(carro.isNovo());
		System.out.println(carro.getCambio());
		System.out.println(carro.getAno());
		
		ModelAndView retorno = new ModelAndView("carro/cadastrado");
		retorno.addObject("car", carro);
		retorno.addObject("msg", "Carro cadastrado!");
		return retorno;
	}
}
