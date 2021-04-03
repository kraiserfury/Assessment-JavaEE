package br.edu.infnet.appataugustooliveira.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.edu.infnet.appataugustooliveira.model.negocio.Investidor;
import br.edu.infnet.appataugustooliveira.model.negocio.Usuario;
import br.edu.infnet.appataugustooliveira.model.repository.IInvestidorRepository;

@Service
public class InvestidorService {
	
	@Autowired
	private IInvestidorRepository investidorRepository;
	
	public List<Investidor>obterLista(Usuario usuario){
		
		return (List<Investidor>)investidorRepository.obterLista(usuario.getId(), Sort.by(Sort.Direction.ASC, "nome"));
	}
	
	public List<Investidor>obterLista(){
		
		return (List<Investidor>)investidorRepository.findAll();
	}
	
	public void incluir(Investidor investir){
		investidorRepository.save(investir);
			
	}
	
	public void excluir(Integer id){
		investidorRepository.deleteById(id);
		
	}

}
