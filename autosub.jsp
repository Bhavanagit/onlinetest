<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<form name="myForm" id="myForm" action="test.php" method="POST">
  <p>
  <input name="test" value="test" />
  </p>
  <p>
    <input type="submit" name="submit" value="Submit" />
  </p>
</form>

    <script>

    var auto_refresh = setInterval(
    function()
    {
    submitform();
    }, 10000);

    function submitform()
    {
      alert('test');
      document.myform.submit();
    }
    </script>