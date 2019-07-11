<html>
<body>
	<h2>Objectos predefinidos JSP</h2>

	Peticion datos del navegador

	<!-- User-Agent es la referencia al nevegador -->

	<%=request.getHeader("User-Agent")%>
	<br>
	
	Peticion de idioma utilizado
	<%= request.getLocale() %>

</body>
</html>