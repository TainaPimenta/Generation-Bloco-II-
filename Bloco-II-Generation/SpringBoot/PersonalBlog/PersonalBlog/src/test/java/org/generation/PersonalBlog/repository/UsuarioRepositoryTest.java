package org.generation.PersonalBlog.repository;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.generation.PersonalBlog.model.Usuario;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class UsuarioRepositoryTest {

	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@BeforeAll
	public void start() {
		Usuario usuario = new Usuario("Thais", "ThaisChilli", "78910");
		if(usuarioRepository.findByUsuario(usuario.getNome()) == null)
			usuarioRepository.save(usuario);
		
		usuario = new Usuario("Tatiane", "TatianeLeal", "12345");
		if(usuarioRepository.findByUsuario(usuario.getNome()) == null)
			usuarioRepository.save(usuario);
		
		usuario = new Usuario("Selma", "selmapimenta", "67890");
		if(usuarioRepository.findByUsuario(usuario.getNome()) == null)
			usuarioRepository.save(usuario);
		
		usuario = new Usuario("Wilson", "wilsinho", "2");
		if(usuarioRepository.findByUsuario(usuario.getNome()) == null)
			usuarioRepository.save(usuario);
	}

	@Test
	public void findByNomeRetornaUsuario() throws Exception {

		Usuario usuario = usuarioRepository.findByUsuario("Thais");

		assertTrue(usuario.getNome().equals("Chefe"));
	}

	@Test
	public void findAllByUsuarioIgnoreCaseRetornaTresUsuarios() {

		List<Usuario> usuario = UsuarioRepository.findAllByUsuarioIgnoreCaseContaining("Thais");

		assertEquals(3, usuario.size());
	}

	@AfterAll
	public void end() {
		usuarioRepository.deleteAll();
	}
	

}
