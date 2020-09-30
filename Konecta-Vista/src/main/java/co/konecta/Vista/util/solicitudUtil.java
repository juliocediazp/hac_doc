package co.konecta.Vista.util;

public class solicitudUtil {
	
	private String id;
	private String codigo;
	private String descripcion;
	private String resumen;
	private String empleado;
	
	
	public solicitudUtil() {
		
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getCodigo() {
		return codigo;
	}


	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public String getResumen() {
		return resumen;
	}


	public void setResumen(String resumen) {
		this.resumen = resumen;
	}


	public String getEmpleado() {
		return empleado;
	}


	public void setEmpleado(String empleado) {
		this.empleado = empleado;
	}


	@Override
	public String toString() {
		return "solicitudUtil [id=" + id + ", codigo=" + codigo + ", descripcion=" + descripcion + ", resumen="
				+ resumen + ", empleado=" + empleado + "]";
	}
	
	

}
