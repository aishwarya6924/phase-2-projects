<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<body background="H:\simplinering\SCAME\flight.jpg" width: 700%; height: 900%;></body>
<%
String Full_Name=request.getParameter("Full_Name");
String Address=request.getParameter("Address");
String Age=request.getParameter("Age");
String mobile=request.getParameter("mobile");
String email_id=request.getParameter("email_id");
String Drop_down=request.getParameter("Drop_down");
String country=request.getParameter("country");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/airindia", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into register_details (Full_Name,Address,Age,mobile,email_id,Drop_down,country)values('"+Full_Name+"','"+Address+"','"+Age+"','"+mobile+"','"+email_id+"','"+Drop_down+"','"+country+"')");
out.println("Data is successfully inserted!");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<a href="reviewdetails.jsp" ><h1>click to see your details...</h1></a></li>
