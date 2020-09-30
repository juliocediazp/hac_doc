package co.konecta.Vista.Controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import co.konecta.Vista.model.Candidato;
import co.konecta.Vista.service.ReportService;
import co.konecta.Vista.service.TestDataService;
import jasperpoc.reports.EmployeeReport;
import net.sf.jasperreports.engine.JRException;
import repository.EmployeeRepository;

@Controller
@RequestMapping("/reporte")
public class EmpleadoController {
	



//	private final EmployeeRepository employeeRepository;
//	private final ReportService reportService;
////	private final TestDataService testDataService;
//
//	@Autowired
//	public EmpleadoController(final EmployeeRepository employeeRepository, final ReportService reportService/*,final TestDataService testDataService*/){
//		this.employeeRepository = employeeRepository;
//		this.reportService = reportService;
//		//this.testDataService = testDataService;
//	}

	

	@GetMapping("/index")
	public String mostrarIndex() {
	
		return "informe/informe";
	}
	
	
	
	@PostMapping("/save")
	public String guardar(@RequestBody Candidato candidato) {
		
		System.out.println(candidato.getColum1());
		//testDataService.createTestEmployeeData(candidato);
		
		
		
		
		
		return "informe/informe";
	}	
	
//	@PostMapping("/save")
//	public HttpEntity<byte[]> getEmployeeReportXlsx(@RequestBody Candidato candidato) throws JRException, IOException, ClassNotFoundException {
//
//		//testDataService.createTestEmployeeData(candidato);
//		EmployeeReport report = new EmployeeReport(employeeRepository.findAll());
//		final byte[] data = reportService.getReportXlsx(report.getReport());
//		HttpHeaders header = new HttpHeaders();
//		header.setContentType(MediaType.parseMediaType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"));
//		header.set(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=employeeReport.xlsx");
//		header.setContentLength(data.length);
//
//		return new HttpEntity<byte[]>(data, header);
//	}

	
}
