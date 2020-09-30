package co.konecta.Vista.service;

import java.util.List;

import co.konecta.Vista.model.Candidato;

public interface IEmpleadoService {
	void insertar(Candidato empleado); 
	List<Candidato> buscarTodas();

	
}
