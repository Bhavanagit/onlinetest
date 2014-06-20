<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</script>
</head>
<body bgcolor="cyan">
	<a href="/otest/Logout"><p align="right">LogOut</p></a>
	<h1>
		<font color="blue">Welcome to Onlinetest admin panel here you
			can do following things</font>
	</h1>
	<h3>
		<ol>
			<li>You can Insert the question Papers
				<ol>
					<li>Please Makesure that question paper must be excel(.xls)
						format</li>
					<li>it must contain 7 cells</li>
					<ol>
						<li>first cell must be qno</li>
						<li>second cell must be question</li>
						<li>third cell must be opt1</li>
						<li>fourth cell must be opt2</li>
						<li>fifth cell must be opt3</li>
						<li>sixth cell must be opt4</li>
						<li>seventh cell must be ans</li>
					</ol>

				</ol>
			</li>
			<li>You can check the Reports</li>

		</ol>
	</h3>

	<form action="/otest/Admin" method="post" name="reports">

		<table border="1" align="center" bgcolor="orange">

			<tr>
				<td colspan="3" rowspan="3">GetReports</td>
				<td colspan="3" rowspan="3"><select name="test">

						<option value="">Select</option>
						<option value="apt">Aptitude</option>
						<option value="tech">Technical</option>


				</select></td>
				<td><input type="submit" value="GetReport" />
			</tr>
		</table>
	</form>
	<a href="jsp/upload.jsp">Upload Questions</a>

	</body>
</html>