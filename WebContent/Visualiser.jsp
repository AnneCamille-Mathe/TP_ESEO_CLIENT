<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="eseo.i2.Ville"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	Voici les villes disponibles :
	<br>
	<ul>
		<%
			ArrayList<Ville> liste = (ArrayList) session.getAttribute("villes");
		for (Ville ville : liste) {
		%>
		VILLE = <%=ville.getNomCommune()%>
		<%
			}
		%>
	</ul>
</body>
</html>