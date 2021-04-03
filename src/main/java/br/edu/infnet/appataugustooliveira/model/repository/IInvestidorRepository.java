package br.edu.infnet.appataugustooliveira.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appataugustooliveira.model.negocio.Investidor;

@Repository
public interface IInvestidorRepository extends CrudRepository<Investidor, Integer> {
	
	@Query("from Investidor i where i.usuario.id=:id")
	List<Investidor> obterLista(Integer id, Sort by);
	
}
