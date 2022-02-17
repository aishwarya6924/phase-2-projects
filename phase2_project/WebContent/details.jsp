<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "airindia";
String userid = "root";
String password = "root";
String mobile=request.getParameter("mobile");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body background="H:\simplinering\SCAME\flight.jpg" width: 700%; height: 900%;>
<h1>Search Data</h1>
<table border="1">
<tr>
<td>Full_Name</td>
<td>Address</td>
<td>Age</td>
<td>mobile</td>
<td>email_id</td>
<td>Drop_down</td>
<td>country</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from register_details where mobile='"+mobile+"'"; 
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Full_Name") %></td>
<td><%=resultSet.getString("Address") %></td>
<td><%=resultSet.getString("Age") %></td>
<td><%=resultSet.getString("mobile") %></td>
<td><%=resultSet.getString("email_id") %></td>
<td><%=resultSet.getString("Drop_down") %></td>
<td><%=resultSet.getString("country") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<a href="payment.jsp" ><h2>--PAYMENT--</h2></a></li>
</table>
</body>
</html>