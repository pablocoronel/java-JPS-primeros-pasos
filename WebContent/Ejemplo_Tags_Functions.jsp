<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- importa los tag core -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- importa los tag functions -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- array -->
	<c:set var="datos" value="Ana, López, Directora, 75000" />

	<!-- seteao un array con la funcion split() -->
	<c:set var="datos_array" value="${fn:split(datos, ',') }" />

	<!-- uso el array -->
	<input type="text" value="${datos_array[0]}">
	<input type="text" value="${datos_array[1]}">
	<input type="text" value="${datos_array[2]}">
	<input type="text" value="${datos_array[3]}">
</body>
</html>