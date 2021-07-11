package com.persistencia.Persisitencia.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

public class Persistencia {



	@RestController
	@RequestMapping("/Pesistência")
	public class PersistenciaController {
		
		@GetMapping
		  public String Persistencia () {
		    return "Você foi persistente em cotinuar na aula hoje!!!";
		  
		  }
	}

}
