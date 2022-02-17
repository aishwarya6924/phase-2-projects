<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="H:\simplinering\SCAME\flight.jpg" width: 700%; height: 900%; >
<h2>..WELCOME..</h2>
<h3>Way for booking fight...</h3>
<h1 align="center"> Login here...</h1>
<%
  if (request.getParameter("error") != null)
          out.println("<b>Your session has expired or is invalid.</b><br>");
%>
<table align ="center" border="1" cellpadding="5" width="300">

<tr>

<td>
<form action="correctlogin.jsp" method="post">
  Name <input name="name" id="name" maxlength=40><br><br>
  Password <input type="password" name="pwd" id="pwd" maxlength="10"><br><br>
  <button>Submit</button>
  </td>
  </form>
  </tr>
  <td><a href="changepassword.jsp" ><h2>change password</h2></a></li></td>
 </table>
 
  
</body>
</html>