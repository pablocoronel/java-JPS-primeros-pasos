<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1 style="text-align: center;">Agencia de viajes</h1>

	<%
		// valor por defecto
		String ciudad_favorita = "Madrid";

		// leer la cookie de la pc del usuario
		Cookie[] las_cookies = request.getCookies();

		// buscar las preferencias
		if (las_cookies != null) {
			for (Cookie cookie_temporal : las_cookies) {
				if (cookie_temporal.getName().equals("agencia_viajes.ciudad_favorita")) {
					// si se obtuvo la cookie guardada
					ciudad_favorita = cookie_temporal.getValue();

					break; // para salir del for antes
				}
			}
		}
	%>

	<h3>
		Vuelos a
		<%=ciudad_favorita%></h3>

	<p>Esto es un texto de ejemplo</p>
	<p>Esto es un texto de ejemplo</p>
	<p>Esto es un texto de ejemplo</p>


	<h3>
		Hoteles en
		<%=ciudad_favorita%></h3>

	<p>Esto es un texto de ejemplo</p>
	<p>Esto es un texto de ejemplo</p>
	<p>Esto es un texto de ejemplo</p>

	<h3>
		Descuentos en restaurantes
		<%=ciudad_favorita%></h3>

	<p>Esto es un texto de ejemplo</p>
	<p>Esto es un texto de ejemplo</p>
	<p>Esto es un texto de ejemplo</p>
</body>
</html>