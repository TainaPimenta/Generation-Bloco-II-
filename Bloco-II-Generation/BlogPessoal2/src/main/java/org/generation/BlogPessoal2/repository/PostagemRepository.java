package org.generation.BlogPessoal2.repository;

import java.util.List;

import org.generation.BlogPessoal2.model.Postagem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostagemRepository extends JpaRepository<Postagem, Long> {

	public List<Postagem>  findAllByNomeContainingIgnoreCase (String nome);
}
