<%@page import="java.util.*;"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Search Book</title>

</head>

<body>

<table align="center">

<%

List booklist=new ArrayList();

booklist=(ArrayList)request.getAttribute("booklist");

if(booklist!=null && booklist.size()>0 ){

%>

<h2 align="center">Book List</h2>

<tr>

<td>flightNo</td>
<td>airline</td>
<td>source_place</td>
<td>destination_place</td>
<td>departure</td>
<td>price</td>
<td>flightNo</td>
<td>arrival</td>
<td>duration</td>
<td>duration_in_min</td>
<td>airportName</td>
<td>totalStops</td>
<td>fare</td>

</tr>

<%

for(int i=0;i<booklist.size();i++){

List book=(List)booklist.get(i);

%>

<tr>

<td><%=book.get(1) %></td>

<td><%=book.get(2) %></td>

<td><%=book.get(3) %></td>
<td><%=book.get(4) %></td>

<td><%=book.get(5) %></td>

<td><%=book.get(6) %></td>
<td><%=book.get(7) %></td>

<td><%=book.get(8) %></td>

<td><%=book.get(9) %></td>
<td><%=book.get(10) %></td>

<td><%=book.get(11) %></td>

<td><%=book.get(12) %></td>

</tr>

<%

}

}else{

%>

Not  Available  Any Book Details

<%}%>

</table>

</body>

</html>