<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Salario del Empleado</title>

</head>
<body>
	<h1>Salario del Empleado</h1>
	<p>
		DNI: <strong>${dni}</strong>
	</p>
	<p>
		Salario: <strong>${salario != null || salario != 0 ? salario : "No Encontrado"}
			${salario != null || salario != 0 ? " u.m." : "" }</strong>
	</p>
	<button onclick="location.href='empresa?opcion=consultarSalario'">Buscar
		otro DNI</button>
	<a href="empresa?opcion=inicio">Volver al Inicio</a>
</body>
</html>