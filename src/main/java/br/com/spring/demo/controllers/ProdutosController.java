package br.com.spring.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.spring.demo.model.Produto;
import br.com.spring.demo.repository.ProdutoRepository;

@Controller
public class ProdutosController {

	@Autowired
    private ProdutoRepository repository;
	
	@GetMapping("/incluir")
	public String incluir() {
		return "produtos/inclusao";
	}
	
	@GetMapping("/editar")
	public String editar(Model model, Produto produto) {
		if (produto.getId() != null) {
			model.addAttribute("produto", repository.findOne(produto.getId()));
		}
		return "produtos/edicao";
	}
	
	@PostMapping("/salvar")
	public String salvar(Produto produto) {
		repository.save(produto);
		return "redirect:/listar";
	}
	
	@PostMapping("/excluir")
	public String excluir(Produto produto) {
		repository.delete(produto.getId());
		return "redirect:/listar";
	}
	
	@GetMapping("/listar")
	public String listar(Model model) {
		model.addAttribute("produtos", repository.findAll());
		return "produtos/listagem";
	}
}
