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
	<FORM method="post" action="modification">
		<%
			ArrayList<Ville> liste2 = (ArrayList) session.getAttribute("villes");
		for (Ville ville : liste2) {
		%>
		<%=ville.getNomCommune()%>
		<a href="modification?ville=<%=ville.getNomCommune()%>">modifier</a> <a
			href="suppression?ville=<%=ville.getNomCommune()%>">supprimer</a><br>
		<br>
		<%
			}
		%>

	</FORM>
</body>
</html>