package br.edu.infnet.appataugustooliveira.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appataugustooliveira.model.negocio.Usuario;
import br.edu.infnet.appataugustooliveira.model.negocio.Venda;
import br.edu.infnet.appataugustooliveira.model.service.InvestidorService;
import br.edu.infnet.appataugustooliveira.model.service.VendaService;

@Controller
public class VendaController {
	
	@Autowired
	private VendaService vendaService;
	
	@Autowired
	private InvestidorService investidorService;
	
//	@Autowired
//	private UsuarioService usuarioService;
	
	@GetMapping(value = "/venda")
	public String showDetalhe(Model model, @SessionAttribute("user") Usuario usuario) {
		
		model.addAttribute("lista", vendaService.obterLista(usuario));
		model.addAttribute("investidor", investidorService.obterLista());
//		model.addAttribute("usuario", usuarioService.obterLista());
		
		return "venda/detalhe";
		
	}
	
	@PostMapping (value = "/venda/incluir")
	public String incluir(Venda venda, @SessionAttribute("user") Usuario usuario) {
		
		venda.setUsuario(usuario);
		
		vendaService.incluir(venda);

		return "redirect:/venda";
	}

	@GetMapping(value = "/venda/{id}/excluir") 
	
	public String excluir(Model model, @PathVariable Integer id) {
		
		vendaService.excluir(id);
		
		return "redirect:/venda";
		
	}
	
}
