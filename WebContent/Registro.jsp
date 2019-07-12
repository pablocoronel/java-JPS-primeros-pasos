<html>
<body>
	<h1>Usuarios registrados</h1>

	usuario confirmado:
	<br>
	<br> Nombre:
	<%=request.getParameter("nombre")%>
	&nbsp; Apellido:
	<%=request.getParameter("apellido")%>
	
	<br><br>
	
	<jsp:include page="Fecha.jsp" />
</body>
</html>