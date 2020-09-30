<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="${urlPublic}/bootstrap/css/bootstrap.min.css" rel="stylesheet">    
    <link href="${urlPublic}/bootstrap/css/theme.css" rel="stylesheet">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  </head>
  <body>
    <jsp:include page="../includes/menu.jsp" />
    <div class="container theme-showcase" role="main">
      <div class="page-header">
			<h3 class="blog-title"><span class="label label-success">Reportes Hac Doc</span></h3>
      </div>
	  <spring:hasBindErrors name="codigo">
			<div class='alert alert-danger' role='alert'>
				Por favor corrija los siguientes errores:
				<ul>
					<c:forEach var="error" items="${errors.allErrors}">
						<li><spring:message message="${error}" /></li>
					</c:forEach>
				</ul>
			</div>
		</spring:hasBindErrors>
       <form>
        <div class="row">
          <div class="col-sm-3">
            <div class="form-group">
              <label for="busqueda" class="control-label">Datos</label>              
              <select id="datos"  class="form-control">
                <option value="NOMBRE">NOMBRE</option>
                <option value="DNI">DNI</option>
                <option value="EMAIL">EMAIL</option>
                <option value="DIRECCION">DIRECCION</option>
                </select>    
               <button type="submit" class="btn btn-success" onclick="obtenerDatos(datos)" >Agregar</button>         
            </div> 
          </div>
      </div>
   </form> 
   
   <div class="table-responsive">
		<table class="table table-hover table-striped table-bordered">
					<tr>
						<th>Codigo de Estudiante</th>
						<th>Nombres</th>
						<th>Programa</th>
					   <th>Tipo Estado</th>

					</tr>
                     
				</table>
						  
			</form>
			
		</div>
   
       <hr class="featurette-divider">
      <jsp:include page="../includes/footer.jsp" />
    </div> <!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
    <script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script> 
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
    	//obtenemos el valor de los input

    	$('#adicionar').click(function() {
    	  var nombre = document.getElementById("nombre").value;
    	  var apellido = document.getElementById("apellido").value;
    	  var cedula = document.getElementById("cedula").value;
    	  var i = 1; //contador para asignar id al boton que borrara la fila
    	  var fila = '<tr id="row' + i + '"><td>' + nombre + '</td><td>' + apellido + '</td><td>' + cedula + '</td><td><button type="button" name="remove" id="' + i + '" class="btn btn-danger btn_remove">Quitar</button></td></tr>'; //esto seria lo que contendria la fila

    	  i++;

    	  $('#mytable tr:first').after(fila);
    	    $("#adicionados").text(""); //esta instruccion limpia el div adicioandos para que no se vayan acumulando
    	    var nFilas = $("#mytable tr").length;
    	    $("#adicionados").append(nFilas - 1);
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
    	});
    </script>
  </body>
</html>
rset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>