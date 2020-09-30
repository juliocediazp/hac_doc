package co.konecta.Vista.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Builder;
import lombok.Data;
import lombok.experimental.Tolerate;

@Entity
@Data
@Builder
public class Employee {
	
   
    @Id
	private Long DNI;
    private String NOMBRE;
	private String CORREO;
	private String CIUDAD;
	private String FECHA;
	
	@Tolerate
	public Employee() {
		
	}

	public String getNOMBRE() {
		return NOMBRE;
	}

	public void setNOMBRE(String nOMBRE) {
		NOMBRE = nOMBRE;
	}

	public Long getDNI() {
		return DNI;
	}

	public void setDNI(Long dNI) {
		DNI = dNI;
	}

	public String getCORREO() {
		return CORREO;
	}

	public void setCORREO(String cORREO) {
		CORREO = cORREO;
	}

	public String getCIUDAD() {
		return CIUDAD;
	}

	public void setCIUDAD(String cIUDAD) {
		CIUDAD = cIUDAD;
	}

	public String getFECHA() {
		return FECHA;
	}

	public void setFECHA(String fECHA) {
		FECHA = fECHA;
	}
	
	
	

}
