package co.konecta.Vista.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.konecta.Vista.service.IEmpleadoService;

@Controller
public class HomeController {
	

	
	@Autowired
	private IEmpleadoService serviceEmpleado;
		

	
	
		
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mostrarPrincipal(Model model) {

		
		return "informe/informe";
	}

	
	
}
