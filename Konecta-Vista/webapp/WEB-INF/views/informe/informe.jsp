<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Busqueda de Codigo</title>
<spring:url value="/resources" var="urlPublic" />
<spring:url value="/codigo/save" var="urlForm" />
<link href="${urlPublic}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${urlPublic}/bootstrap/css/theme.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body>
	<jsp:include page="../includes/menu.jsp" />
	<div class="container theme-showcase" role="main">
		<div class="page-header">
			<h3 class="blog-title">
				<span class="label label-success">Reportes Hac Doc</span>
			</h3>
		</div>
		<link
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
			rel="stylesheet" />
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<div class="container">
			<form>
				<div class="form-group">
					<p>
						<label>Dato 1:</label> <br>
						  <select id="datos1"  class="form-control">
						    <option></option>
						    <option value="NOMBRE">NOMBRE</option>
                            <option value="DNI">DNI</option>
                            <option value="CORREO">CORREO</option>
                           <option value="CIUDAD">CIUDAD</option>
                           <option value="FECHA">FECHA DE INSERCION</option>
						  </select>   
						  <br>
					</p>
					<p>
						<label>Dato 2:</label> <br> <br>
						  <select id="datos2"  class="form-control">
						   <option></option>
						    <option value="NOMBRE">NOMBRE</option>
                            <option value="DNI">DNI</option>
                            <option value="CORREO">CORREO</option>
                           <option value="CIUDAD">CIUDAD</option>
                           <option value="FECHA">FECHA DE INSERCION</option>
						  </select>   
						  <br>
					</p>
					<p>
						<label>Dato 3:</label> <br>
						  <select id="datos3"  class="form-control">
						    <option></option>
						    <option value="NOMBRE">NOMBRE</option>
                            <option value="DNI">DNI</option>
                            <option value="CORREO">CORREO</option>
                           <option value="CIUDAD">CIUDAD</option>
                           <option value="FECHA">FECHA DE INSERCION</option>
						  </select>   
						  <br>
					</p>
					<button id="adicionar" class="btn btn-success" type="button">Adicionar
						a la tabla</button>
				</div>
			</form>

			<p>Elementos en la Tabla:
			<div id="adicionados"></div>
			</p>
			<form action="http://localhost:8080/konecta/reporte/save" method="get">
			<table id="mytable" class="table table-bordered table-hover ">
				<tr>
					<th></th>
					<th></th>
					<th></th>
					<th></th>

				</tr>
			</table>
          </form>
		</div>
		<hr class="featurette-divider">
		<jsp:include page="../includes/footer.jsp" />
	</div>
	<!-- /container -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript">
    $(document).ready(function() {
    	//obtenemos el valor de los input

    	$('#adicionar').click(function() {
    	  var nombre = document.getElementById("datos1").value;
    	  var apellido = document.getElementById("datos2").value;
    	  var cedula = document.getElementById("datos3").value;
    	  var i = 1; //contador para asignar id al boton que borrara la fila
    	  var fila = '<tr id="row' + i + '"><td id="colm1"  value="'+ nombre +'">' + nombre + '</td><td id="colm2" value"'+ apellido +'">' + apellido + '</td><td id="colm3" value="'+ cedula +'">' + cedula + '</td><td><button type="button" name="remove" id="' + i + '" class="btn btn-danger btn_remove">Quitar</button></td><td><button type="button" name="agregar" id="' + i + '" class="btn btn-success btn_agregar">crear Informe</button></td></tr>'; //esto seria lo que contendria la fila

    	  i++;

    	  
    	  $('#mytable tr:first').after(fila);
    	  //  $("#adicionados").text(""); //esta instruccion limpia el div adicioandos para que no se vayan acumulando
    	    var nFilas = $("#mytable tr").length;
    	//    $("#adicionados").append(nFilas - 1);
    	    //le resto 1 para no contar la fila del header
    	    document.getElementById("apellido").value ="";
    	    document.getElementById("cedula").value = "";
    	    document.getElementById("nombre").value = "";
    	    document.getElementById("nombre").focus();
    	  });

    	  
    	$(document).on('click', '.btn_remove', function() {
    	  var button_id = $(this).attr("id");
    	    //cuando da click obtenemos el id del boton
    	    $('#row' + button_id + '').remove(); //borra la fila
    	    //limpia el para que vuelva a contar las filas de la tabla
    	    $("#adicionados").text("");
    	    var nFilas = $("#mytable tr").length;
    	    $("#adicionados").append(nFilas - 1);
    	  });

    	
    	$(document).on('click', '.btn_agregar', function() {
      	  var data_id = $(this).attr("id");
      	  var baseUrl = "http://localhost:8080/konecta/";
      	    	 
            
       	  var colum1 = document.getElementById("datos1").value;
  	      var colum2 = document.getElementById("datos2").value;
    	  var colum3 = document.getElementById("datos3").value;
      	  var dataObject = JSON.stringify({
          	  	colum1,colum2,colum3
          });
      	
          $.ajax({
                url:  baseUrl + "reporte/save",
                type: "POST",
                contentType: "application/json",
                data: dataObject,
                success : function(response) {
                    console.log(response);
                }   
              });

  	    
      	    $('#row' + button_id + '').remove(); //borra la fila
      	    //limpia el para que vuelva a contar las filas de la tabla
      	    $("#adicionados").text("");
      	    var nFilas = $("#mytable tr").length;
      	    $("#adicionados").append(nFilas - 1);
      	  });
          
    	  
    	});
    </script>
</body>
</html>
