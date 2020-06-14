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

	<br>
	<FORM method="post" action="calculDistance">
		<SELECT name="ville1" size="1">
			<%
				ArrayList<Ville> liste1 = (ArrayList) session.getAttribute("villes");
			for (Ville ville : liste1) {
			%>
			<OPTION>
				<%=ville.getNomCommune()%>
				<%
					}
				%>
			
		</SELECT> <SELECT name="ville2" size="1">
			<%
				ArrayList<Ville> liste2 = (ArrayList) session.getAttribute("villes");
			for (Ville ville : liste2) {
			%>
			<OPTION>
				<%=ville.getNomCommune()%>
				<%
					}
				%>
			
		</SELECT> <input type="submit" value="Calcul de la distance">
	</FORM>
</body>
</html>