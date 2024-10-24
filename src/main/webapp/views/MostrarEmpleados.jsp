<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Lista Empleados</title>
</head>

    <body>
      <h1>Lista de Empleados</h1>
      <table border="1">
        <thead>
          <tr>
            <th>DNI</th>
            <th>Nombre</th>
            <th>Sexo</th>
            <th>Categoría</th>
            <th>Años Trabajados</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="empleado" items="${empleados}">
            <tr>
              <td>${empleado.dni}</td>
              <td>${empleado.nombre}</td>
              <td>${empleado.sexo}</td>
              <td>${empleado.categoria}</td>
              <td>${empleado.anyos}</td>
              <td>
                <form action="empresa" method="post" style="display: inline;">
                  <input type="hidden" name="dni" value="${empleado.dni}">
                  <input type="hidden" name="opcion" value="modificarEmpleado">
                  <input type="submit" value="Modificar">
                </form>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <br>
      <button onclick="location.href='empresa?opcion=buscarEmpleados'">Buscar</button>
      <a href="empresa?opcion=inicio">Volver al Inicio</a>
    </body>

    </html>