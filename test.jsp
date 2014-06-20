<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

function preventBack() { window.history.forward(1); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };</script>
</head>
<body bgcolor="cyan">
	<a href="/otest/Logout"><p align="right">LogOut</p></a>

	<form action="Reports">

		<table border="1" align="center" bgcolor="orange">
		<thead>Problem Solving Ability</thead>
			<tr>
				<td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=aptitude">QA</a>
					</h3></td>
										
				<td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=ar">Analytical Reasoning</a>
					</h3></td>
				<td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=lr">Logical Reasoning</a>
					</h3></td>
				<td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=fg">Functional Grammer</a>
					</h3></td>
					
									<td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=rc">Reading Comprehension</a>
					</h3></td>
					<td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=di">DataInterpretation/Sufficiency</a>
					</h3></td>
					
					
					
				<!--<td colspan="3" rowspan="3"><select name="test">

						<option value="">Select</option>
						<option value="apt">Aptitude</option>
						<option value="tech">Technical</option>


				</select></td>
				<td><input type="submit" value="GetReport" />-->
			</tr>
		</table>
		
		<table border="1" align="center" bgcolor="orange">
		
		<thead>Technical</thead>
		<td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=.net">.net</a>
					</h3></td>
				
					
					 <td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=java">Java</a>
					</h3></td>
						 <td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=os">OS</a>
					</h3></td>
					 <td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=cpp">C++</a>
					</h3></td>
						 <td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=ds">Data Structures</a>
					</h3></td>
				
					
					<td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=sql">DBMS</a>
					</h3></td> 
					<td colspan="3" rowspan="3"><h3>
						<a href="/otest/StartServlet?test=technical">C-language</a>
					</h3></td>
				
		
		
		
		
		
		</table>
	</form>
</body>
</html>