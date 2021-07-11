package com.objetivosdeaprendizagem.objetivos.de.aprendizagem;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

public class ObjetivosdeAprendizado {

	@RestController
	@RequestMapping("/ObjetivosdeApredizagem")
	public class ObjetivosdeApredizagem {
		
		@GetMapping
		  public String ObjetivosdeApredizagem () {
		    return "Bora deixar a tristeza e a procrastinação de lado e vamos aprender!!!";
		  
		  }
	}
}
