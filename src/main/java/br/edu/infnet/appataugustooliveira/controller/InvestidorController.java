package br.edu.infnet.appataugustooliveira.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appataugustooliveira.model.negocio.Investidor;
import br.edu.infnet.appataugustooliveira.model.negocio.Usuario;
import br.edu.infnet.appataugustooliveira.model.service.InvestidorService;

@Controller
public class InvestidorController {
	
	@Autowired
	private InvestidorService investidorService;
	
	@GetMapping(value = "/investidor")
	public String showDetalhe(Model model, @SessionAttribute("user") Usuario usuario) {
		
	//	model.addAttribute("lista", investidorService.obterLista());
		model.addAttribute("lista", investidorService.obterLista(usuario));	
		
		return "investidor/detalhe";
		
	}
	
	@PostMapping (value = "/investidor/incluir")
	public String incluir(Investidor investidor, @SessionAttribute("user") Usuario usuario) {
		
		investidor.setUsuario(usuario);
		
		investidorService.incluir(investidor);

		return "redirect:/investidor";
	}
	
	@GetMapping(value = "/investidor/{id}/excluir") 
		
		public String excluir(Model model, @PathVariable Integer id) {
		
		try {
			investidorService.excluir(id);
		} catch (Exception e) {
			model.addAttribute("mensagem", "Impossível excluir o investidor: " + e.getMessage());
			return showDetalhe(model, null);
			
		}
		
		return "redirect:/investidor";
	}

}
