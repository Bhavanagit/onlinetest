<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="/otest/UploadQuestions" method="post"
		enctype="multipart/form-data">

		<table border="1" align="center" bgcolor="orange">


			<tr>
				<td colspan="3" rowspan="3">UploadQuestions:SelectTest Type <select
					name=test>

						<option value=" ">Select</option>
						<option value="aptitude">AptitudePaper</option>
						<option value="technical">TechnicalPaper</option>


				</select> <input type="file" name="file" value="browse" /> <input
					type="submit" value="upload" />
			</tr>

		</table>
	</form>



</body>
</html>