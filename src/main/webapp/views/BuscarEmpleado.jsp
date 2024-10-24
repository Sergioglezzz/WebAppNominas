<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Buscar Empleado</title>
</head>

        <body>
            <h1>Buscar Empleado</h1>
            <form action="empresa" method="post">
                <label for="dni">DNI (contiene):</label> <input type="text" name="dni" id="dni"
                    placeholder="Cualquiera"><br><br>
                <label for="nombre">Nombre (contiene):</label> <input type="text" name="nombre" id="nombre"
                    placeholder="Cualquiera"><br>
                
                <br> <label for="sexo">Sexo:</label> <select name="sexo" id="sexo">
                    <option value="">Cualquiera</option>
                    <option value="M">Masculino</option>
                    <option value="F">Femenino</option>
                </select><br> <br> <label for="categoria">Categoría:</label> <input type="number" name="categoria"
                    id="categoria" placeholder="Cualquiera"><br> <br> <label for="anyos">Años Trabajados:</label>
                <input type="number" name="anyos" id="anyos" placeholder="Cualquiera"><br>
                <br> <input type="hidden" name="opcion" value="mostrarEmpleadosFiltrados"> <input type="submit"
                    value="Buscar">
            </form>
            <a href="empresa?opcion=inicio">Volver al Inicio</a>
        </body>

        </html>