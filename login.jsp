<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function registerFields() {
		if (document.rform.userId.value == "") {
			alert("please enter RollNum value");
			document.rform.focus();
			return false;
		}
		if (document.rform.password.value == "") {
			alert("please enter password ");
			document.rform.focus();
			return false;
		}
		if (document.rform.name.value == "") {
			alert("please enter name");
			document.rform.focus();
			return false;
		}
		if (document.rform.mail.value == "") {
			alert("please enter mail");
			document.rform.focus();
			return false;
		}

		if (document.rform.mobile.value == "") {
			alert("please enter mobile number");
			document.rform.focus();
			return false;
		}
		if (document.rform.branch.value == "") {
			alert("please enter your branch ");
			document.rform.focus();
			return false;
		}
		if (document.rform.year.value == "") {
			alert("please enter Year Of Passing ");
			document.rform.focus();
			return false;
		}
		if (document.rform.college.value == "") {
			alert("please enter College Name ");
			document.rform.focus();
			return false;
		}
		if (document.rform.ssc.value == "") {
			alert("please enter ssc percentage ");
			document.rform.focus();
			return false;
		}
		if (document.rform.inter.value == "") {
			alert("please enter inter percentage ");
			document.rform.focus();
			return false;
		}
		if (document.rform.highestdegreemarks.value == "") {
			alert("please enter highestdegreemarks percentage ");
			document.rform.focus();
			return false;
		}
		highestdegreemarks

	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">

	<%
		String errMsg = (String) request.getAttribute("errMsg");
		if (errMsg != null) {
			PrintWriter pw = response.getWriter();
			out.println("<font color=red><p align=center>" + errMsg
					+ "</p></font>");
		}
	%>
	<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null) {
			PrintWriter pw = response.getWriter();
			out.println("<font color=red><p align=center>" + msg
					+ "</p></font>");
		}
	%>

<body>
	<form action="/otest/LoginCheck" method="post" name="login">
		<table align="center">
			<tr>
				<td>RollNum:<input type="text" name="sunTechId" />
				</td>

				<td>Password:<input type="password" name="password" />
				</td>

			</tr>
			<tr>
				<td><input type="submit" value="login"></td>
			</tr>
			<tr>
			<!-- <td><a href="./forgot.jsp">forgotpassword</a></td> -->
			</tr>
		</table>
	</form>








	<form action="/otest/RegesterServlet" method="post" name="rform" onsubmit="return registerFields(this)">

		<table align="center" bgcolor="cyan">
			<tr>
				<td>RollNum</td>
				<td><input type="text" name="userId"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="mail"></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile"></td>
			</tr>
			<tr>
				<td>Branch</td>
				<td><select name="branch">
						<option value="">Select</option>

						<option value="B-Tech/CSE">B-Tech/CSE</option>
						<option value="B-Tech/ECE">B-Tech/ECE</option>
						<option value="B-Tech/IT">B-Tech/IT</option>
						<option value="B-Tech/EEE">B-Tech/EEE</option>
						<option value="B-Tech/CIVIL">B-Tech/CIVIL</option>
						<option value="B-Tech/ETM">B-Tech/ETM</option>
						<option value="B-Tech/ICE">B-Tech/ICE</option>
						<option value="B-Tech/MECH">B-Tech/MECH</option>
						<option value="MCA">MCA</option>
						<option value="M-TEch">M-Tech</option>
						<option value="B.com">B.com</option>
						<option value="other">OTHER</option>
						

				</select></td>

			</tr>

			<tr>
				<td>SSC Marks%</td>
				<td><input type="text" name="ssc" /></td>
			</tr>
			<tr>
				<td>Inter Marks%</td>
				<td><input type="text" name="inter" /></td>
			</tr>
			<tr>
				<td>Hghest degree Marks%</td>
				<td><input type="text" name="highestdegreemarks" /></td>
			</tr>


			<tr>
				<td>Year</td>
				<td><input type="text" name="year"></td>
			</tr>
			<tr>
				<td>College</td>
				<td><input type="text" name="college"></td>
			</tr>
			<tr>

				<td colspan="1"><input type="submit" value="Register"
					name="rform" onsubmit="return registerFields()"></td>
			</tr>
		</table>
	</form>
</body>
</html>