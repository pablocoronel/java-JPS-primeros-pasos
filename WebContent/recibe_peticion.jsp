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
		String ciudad_favorita = request.getParameter("ciudad_favorita");

		// crear la cooie
		Cookie la_cookie = new Cookie("agencia_viajes.ciudad_favorita", ciudad_favorita);

		// seta el tiempo de duracion
		la_cookie.setMaxAge(365 * 24 * 60 * 60); // un año

		// enviar al usuario
		response.addCookie(la_cookie);
	%>

	Gracias por enviar tus preferencias

	<a href="agencia_viajes.jsp">Ir a la agencia de viajes</a>
</body>
</html>