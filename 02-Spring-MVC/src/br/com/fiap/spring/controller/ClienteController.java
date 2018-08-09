package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("cliente")
public class ClienteController {

	@GetMapping("cadastrar")
	public String abrirCadastro() {
		return "cliente/form"; // Pasta + Página
	}

	@PostMapping("cadastrar")
	public ModelAndView processarCadastro(Cliente cliente) {

		System.out.println(cliente.getNome());
		System.out.println(cliente.getIdade());
		System.out.println(cliente.getGenero());
		System.out.println(cliente.isCnh() ? "Habilitado" : "Não habilitado");
		
		//Objeto de retorno (pasta + pagina jsp)
		ModelAndView retorno = new ModelAndView("cliente/sucesso");
		//Valores que serão enviados para a página
		retorno.addObject("cli", cliente);
		retorno.addObject("msg", "Cliente cadastrado");
		return retorno;
	}

}
