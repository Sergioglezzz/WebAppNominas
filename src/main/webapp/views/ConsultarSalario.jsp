<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Obtener Salario</title>
<style>

</style>
</head>
<body>
	<h1>Buscar Salario de Empleado</h1>
	<form action="empresa" method="post">
		<label for="dni">DNI del Empleado:</label> <br><input type="text"
			name="dni" required> <input type="hidden" name="opcion"
			value="mostrarSalario"> <input type="submit" value="Buscar">
	</form>
	<button onclick="location.href='empresa?opcion=consultarSalario'">Intentar
		de nuevo</button>
	<a href="empresa?opcion=inicio">Volver al Inicio</a>
</body>
</html>