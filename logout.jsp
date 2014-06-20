<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript">
var max_time = 5;
var cinterval;
 
function countdown_timer(){
  // decrease timer
  max_time--;
  document.getElementById('countdown').innerHTML = max_time;
  if(max_time == 0){
    clearInterval(cinterval);
  }
}
// 1,000 means 1 second.
cinterval = setInterval('countdown_timer()', 1000);
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form id="formsamp" >
<textarea name="bft"></textarea>
<input type="submit" name="op" value="Submit" />
</form>


</body>
</html>