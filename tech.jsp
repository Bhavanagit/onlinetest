<%@page import="java.io.PrintWriter"%>
<%@page import="com.beans.TechBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script>
function preventBack() { window.history.forward(1); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };


	function display(
<%List list = (List) session.getAttribute("list");
			//request.setAttribute("list2", list);
			//System.out.println("List2"+request.getAttribute("list2"));
			System.out.println("inactive time"
					+ session.getMaxInactiveInterval());

			int i = list.size();
			PrintWriter pw = null;
			System.out.println("list size" + i);
			int check = (Integer) session.getAttribute("index");
			System.out.println("check size" + check);
			boolean nextQuestion = false;

			if (check < list.size()) {
				TechBean techBean = (TechBean) list.get(check);

				pw = response.getWriter();
				pw.println("<table ><tr rowspan=3 colspan=4><td><form method=post action=./GetOptions>");
				pw.println((check + 1) + "." + techBean.getQUESTION()
						+ "<br/></td></tr>");

				pw.println("<tr><td>1)<input type=radio name=q value="
						+ techBean.getOPT1() + "" + ">" + techBean.getOPT1()
						+ "" + "</td></tr>");
				pw.println("<tr><td>2)<input type=radio name=q value="
						+ techBean.getOPT2() + "" + ">" + techBean.getOPT2()
						+ "" + "</td></tr>");
				pw.println("<tr><td>3)<input type=radio name=q value="
						+ techBean.getOPT3() + "" + ">" + techBean.getOPT3()
						+ "" + "</td></tr>");

				pw.println("<tr><td>4)<input type=radio name=q value="
						+ techBean.getOPT4() + "" + ">" + techBean.getOPT4()
						+ "" + "</td></tr></table>");
				//pw.println("<input type=submit value=next>");
				//check++;
				nextQuestion = true;
				//session.setAttribute("index", check);
				session.setAttribute("nextQuestion", nextQuestion);

			}

			else {
				nextQuestion = false;
				session.setAttribute("nextQuestion", nextQuestion);
			}%>
	) {
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightblue">



	<table>
		<tr>
			<td>
				<form name="myform" method="post">
					<input type="hidden" value="tech" name="testName" /> <input
						type="submit" value="next" />
				</form>
			</td>

			<td><form name="myform1" action="./Result" id="apttest"
					method="post">
					<input type="hidden" value="tech" name="testName" /> <input
						type="submit" value="SubmitTest" />
				</form></td>
		</tr>


	</table>



</body>
</html>




