<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String usuario = request.getParameter("usuario");
		String contra = request.getParameter("contra");

		// Carga dinamica del driver para la BD
		Class.forName("com.mysql.jdbc.Driver");
		// conexion a BD
		try {

			Connection mi_conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root",
					"");

			PreparedStatement c_preparada = mi_conexion
					.prepareStatement("SELECT * FROM usuarios WHERE usuario = ? AND contrasena = ?");
			c_preparada.setString(1, usuario);
			c_preparada.setString(2, contra);

			ResultSet mi_resulset = c_preparada.executeQuery();

			if (mi_resulset.absolute(1)) {
				out.println("Usuario autorizado");
			} else {
				out.println("No se encontraron los datos");
			}

		} catch (Exception e) {
			out.println("ha habido un error");
		}
	%>
</body>
</html>