package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fiap.spring.entity.Pessoa;

@Controller
@RequestMapping("/pessoa") // Referencia a URL 
public class PessoaController {

	
	@GetMapping("cadastrar") // Referencia a URL 
	public String contato() {
		return "pessoa/pessoa"; // Referencia ao caminho da pagina
	}

	// M�todo que recupera as infgorma��es do formul�rio
	@PostMapping("cadastrar") // Referencia a URL
	public String processaContato(Pessoa pessoa) {
		String pos;
		if (!pessoa.isAposentado()) {
			pos = "N�o aposentado";
		}else 
			pos = "Aposentado";
		System.out.println("Nome: "+ pessoa.getNome() + "\n Idade: " + 
			pessoa.getIdade() + "\n Status: " + pos);
		return "pessoa/pessoa"; // Referencia ao caminho da pagina 
	}

}
