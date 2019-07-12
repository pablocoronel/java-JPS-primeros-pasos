<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String usuario = request.getParameter("usuario");
		String contra = request.getParameter("contra");
		String pais = request.getParameter("pais");
		String tecnologias = request.getParameter("tecnologias");

		// conexion a BD
		Connection mi_conexion = DriverManager.getConnection("jdbc:mysql:/localhost:3306/proyecto_jsp", "root", "");
		Statement mi_statement = mi_conexion.createStatement();

		String instruccion_sql = "INSERT INTO usuarios (nombre, apellido, usuario, contrasena, pais, tecnologia) VALUES ('"
				+ nombre + "', '" + apellido + "', '" + usuario + "', '" + contra + "', '" + pais + "', '"
				+ tecnologias + "')";

		mi_statement.executeUpdate(instruccion_sql);

		out.println("Registrado con exito");
	%>
</body>
</html>