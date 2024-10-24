<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.model.Empleado"%>
<%
Empleado empleado = (Empleado) request.getAttribute("listaEmpleados");
%>
<html>
<head>
<title>Modificar Empleado</title>
<style>

</style>
</head>
<body>
	<h1>Modificar Empleado</h1>

	<form action="empresa" method="post">
		<input type="hidden" name="dni" value="<%=empleado.getDni()%>">

		<label for="nombre">Nombre:</label> <input type="text" name="nombre"
			id="nombre" value="<%=empleado.getNombre()%>" required><br>
		<br> <label for="sexo">Sexo:</label> <select name="sexo"
			id="sexo">
			<option value="" <%=empleado.getSexo() == ' ' ? "selected" : ""%>>Cualquiera</option>
			<option value="M" <%=empleado.getSexo() == 'M' ? "selected" : ""%>>Masculino</option>
			<option value="F" <%=empleado.getSexo() == 'F' ? "selected" : ""%>>Femenino</option>
		</select><br> <br> <label for="categoria">Categoría:</label> <input
			type="number" name="categoria" id="categoria"
			value="<%=empleado.getCategoria()%>" required><br> <br>
		<label for="anyos">Años Trabajados:</label> <input type="number"
			name="anyos" id="anyos"
			value="<%=empleado.getAnyos()%>" required><br>
		<br> <input type="hidden" name="opcion" value="enviarCambios">
		<input type="submit" value="Enviar Cambios"> <a
			href="empresa?opcion=inicio">Volver al Inicio</a>
	</form>
</body>
</html>
