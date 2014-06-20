<%@page import="com.model.RandomUniqueNumberGenerator"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.beans.AptBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<script language="JavaScript" type="text/javascript">
function preventBack() { window.history.forward(1); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };
	function display() {
	<%List list = (List) session.getAttribute("list");
			//request.setAttribute("list2", list);
			//System.out.println("List2"+request.getAttribute("list2"));
			System.out.println("inactive time"
					+ session.getMaxInactiveInterval());

			int i = list.size();
			PrintWriter pw = null;
			System.out.println("list size" + i);
			int check = (Integer) session.getAttribute("index");
			//int check=0;
			System.out.println("check size" + check);
			boolean nextQuestion = false;

			if (check < list.size()) {

				AptBean aptBean = (AptBean) list.get(check);

				nextQuestion = true;

				pw = response.getWriter();
				pw.println("<form method=post action=./GetOptions>");
				pw.println((check + 1) + "." + aptBean.getQUESTION() + "<br/>");

				pw.println("<table><tr><td>1)<input type=radio name=q value="
						+ aptBean.getOPT1().trim() + "" + ">" + aptBean.getOPT1().trim() + ""
						+ "</td></tr>");
				pw.println("<tr><td>2)<input type=radio name=q value="
						+ aptBean.getOPT2().trim() + "" + ">" + aptBean.getOPT2().trim() + ""
						+ "</td></tr>");
				pw.println("<tr><td>3)<input type=radio name=q value="
						+ aptBean.getOPT3().trim() + "" + ">" + aptBean.getOPT3().trim() + ""
						+ "</td></tr>");

				pw.println("<tr><td>4)<input type=radio name=q value="
						+ aptBean.getOPT4().trim() + "" + ">" + aptBean.getOPT4().trim() + ""
						+ "</td></tr></table>");

				//pw.println("testtime:"+session.getMaxInactiveInterval());
				//pw.println("<input type=submit value=next>");
				//check++;

				//session.setAttribute("index", check);
				session.setAttribute("nextQuestion", nextQuestion);
			}

			else {
				nextQuestion = false;
				session.setAttribute("nextQuestion", nextQuestion);
			}%>
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightgreen">



	<table  align="">
		<tr >
			<td >
				<form name="myform" id="apttest" method="post" onsubmit="display()">
					<h3 align="center">
						<font color="blue"></font>
					</h3>
					<input type="hidden" value="aptitude" name="testName" /> <input
						type="submit" value="next" />
				</form>
			</td>


			<td><form name="myform1" action="./Result" id="apttest"
					method="post">
					<input type="hidden" value="aptitude" name="testName" /> <input
						type="submit" value="SubmitTest" />
				</form></td>
		</tr>
	</table>



</body>
</html>





