<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	// array
	String alumnos[] = { "Maria", "Pablo", "Juan", "Laura" };

	// paso el array a un ambito de la aplicacion
	pageContext.setAttribute("losAlumnos", alumnos);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- Recorrer el array con java (JSP) -->
	<%
		//String a[] = (String[]) pageContext.getAttribute("losAlumnos");

		out.println("java (jsp normal) \n");
		for (String temp_alumnos : alumnos) {
			out.print(temp_alumnos + "<br>");
		}
	%>

	<!-- con tags -->
	<c:forEach var="tempAlumnos" items="${alumnos}">
		${teempAlumnos} <br />
	</c:forEach>
</body>
</html>