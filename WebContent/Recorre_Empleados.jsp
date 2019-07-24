<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page
	import="java.util.*, java.sql.*, pildorasinformaticas.com.JSPTags.Empleado"%>

<%
	ArrayList<Empleado> datos = new ArrayList<Empleado>();

	// apuntar al driver de mysql antes de conectar a la bd
	Class.forName("com.mysql.jdbc.Driver");

	try {
		Connection mi_conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root",
				"");

		Statement mi_statement = mi_conexion.createStatement();

		String instruccion_sql = "SELECT * FROM empleados";

		ResultSet rs = mi_statement.executeQuery(instruccion_sql);

		// recorrer para guardar en un objeto de tipo Empleado
		while (rs.next()) {
			datos.add(new Empleado(rs.getString("nombre"), rs.getString("apellido"), rs.getString("puesto"),
					rs.getDouble("salario")));
		}

		rs.close(); // cierre del ResultSet
		mi_conexion.close(); // cierre de la conexion
	} catch (SQLException e) {
		out.print("Hubo un error");
	}

	// pasar al contexto de la pagina
	pageContext.setAttribute("losEmpleados", datos);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
.cabecera {
	font-weight: bold;
}
</style>
</head>
<body>

	<table border="1">
		<tr class="cabecera">
			<td>Nombre</td>
			<td>Apellido</td>
			<td>Puesto</td>
			<td>Salario</td>
			<td>Bonus</td>
		</tr>
		<!-- Recorrer el arrayList -->
		<c:forEach var="empleadoTemp" items="${losEmpleados}">
			<tr>
				<td>${empleadoTemp.nombre}</td>
				<td>
					<!-- es como un switch -->
					<c:choose>
						<c:when test="${empleadoTemp.apellido == 'Fernandez'}">
							<b>${empleadoTemp.apellido}</b>
						</c:when>
						
						<c:otherwise>
							${empleadoTemp.apellido}
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					${empleadoTemp.puesto}
				</td>
				<td>
					<c:if test="${empleadoTemp.salario < 40000 }">
						${empleadoTemp.salario + 5000}
					</c:if>
					<c:if test="${empleadoTemp.salario >= 40000 }">
						${empleadoTemp.salario }
					</c:if>
				</td>
				<td>
					<c:if test="${empleadoTemp.salario < 40000 }">
						Tiene bonus de $5000
					</c:if>
					<c:if test="${empleadoTemp.salario >=40000 }">
						NO
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>