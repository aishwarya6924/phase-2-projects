<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");


Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/airindia";
con = DriverManager.getConnection(url, "root", "root");
st = con.createStatement();

if(Newpass.equals(conpass))
{
st = con.createStatement();
int i = st.executeUpdate("update logintable set password='"+ Newpass + "'");
out.println("Password changed successfully");

st.close();
con.close();
} else {
out.println("Old Password doesn't match");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/

} catch (Exception e) {
out.println(e);
}
%>
<a href="loginpage.jsp" ><h2>login again</h2></a>