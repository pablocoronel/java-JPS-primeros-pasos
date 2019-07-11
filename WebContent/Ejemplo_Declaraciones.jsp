<html>
<body>
	<h1 style='text-align: center'>Ejemplo declaraciones</h1>

	<!-- declaraciones -->
	<%!private int resultado;

	public int metodoSuma(int uno, int dos) {
		resultado = uno + dos;
		return resultado;
	}

	public int metodoResta(int uno, int dos) {
		resultado = uno - dos;
		return resultado;
	}

	public int metodomultiplica(int uno, int dos) {
		resultado = uno * dos;
		return resultado;
	}%>

	<!-- uso de lo declaracdo en una expresion java-->
	El resultado de la suma es:
	<%=metodoSuma(5, 7)%>
	<br> El resultado de la resta es:
	<%=metodoResta(5, 7)%>
	<br> El resultado de la suma es:
	<%=metodomultiplica(5, 7)%>
	<br>

</body>
</html>