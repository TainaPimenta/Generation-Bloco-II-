package org.generation.PersonalBlog.model;

import static org.junit.jupiter.api.Assertions.*;

import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
class UsuarioTest {

	public Usuario usuario;
	
	/**
	 * @buildDefaultValidatorFactory serve para fazer validações da classe dentro do validation
	 */
	@Autowired
	private ValidatorFactory factory = Validation.buildDefaultValidatorFactory(); 
	Validator validator = factory.getValidator();
	
	@BeforeEach
	public void start() {
		usuario = new Usuario("Tainá Pimenta", "tainapepper", "123456");
	}
	
	@Test
    public void testValidationAtributos(){
       
		usuario.setNome("João");
		usuario.setUsuario("tainapepper");
		usuario.setSenha("123456");
        
		//Armazena a lista de Mensagens de Erros de Validação da Model
		Set<ConstraintViolation<Usuario>> violations = validator.validate(usuario);
        
		//Exibe as Mensagens de Erro se existirem
		System.out.println(violations.toString());
        
        //O Teste só passará se a Lista de Erros estiver vazia!
        assertTrue(violations.isEmpty());

	}

}
