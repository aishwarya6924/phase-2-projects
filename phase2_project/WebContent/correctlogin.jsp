<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="H:\simplinering\SCAME\flight.jpg" width: 700%; height: 900%;>
<%

        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        
        if ( name.equals("ambika")  || pwd.equals("vip")) {
                response.sendRedirect("searchpages.jsp");
        } 
%>
<h2>worng username or password</h2> 
<a href="loginpage.jsp" >TRY AGAIN!!!</a></li>
</body>
</html>