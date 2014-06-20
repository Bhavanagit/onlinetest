<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("The Id"+session.getAttribute("sunTechId"));
		out.println("<h3><font color=blue><table><tr><td>Questions Attempted:</td>"
				+ "<td>"
				+ session.getAttribute("index")
				+ "<td></tr><tr><td><h3><font color=blue><br>Marks Gained:"
				+ ""
				+ (Integer) request.getAttribute("marks")
				+ "</td></tr></table>" + "</h3></font>");
	%>
	
	<form action="./EndServlet" method="post">

	<input type="submit" value="Home"/>
	</form>	
</body>
</html>