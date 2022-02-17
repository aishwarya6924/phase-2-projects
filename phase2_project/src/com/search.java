package com;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class search extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException,IOException{
response.setContentType("text/html"); 
HttpSession session = request.getSession(true);
List booklist=new ArrayList();
Connection con = null;

String url = "jdbc:mysql://localhost:3306/";
String db = "airindia";
String driver = "com.mysql.jdbc.Driver";
String user = "root";
String pass = "root";

String source_place="";
String destination_place="";
source_place=request.getParameter("source_place");
destination_place=request.getParameter("destination_place");
String sqlqueary="select * from flight_details where source_place='"+source_place+"' AND destination_place='"+destination_place+"'";
if(source_place!=null && !(source_place.equals(""))){
sqlqueary+=" and source_place='"+source_place+"'";
}
if(destination_place!=null && !(destination_place.equals("-1"))){
sqlqueary+=" and destination_place='"+destination_place+"'";
}

try{
Class.forName(driver);
con = DriverManager.getConnection(url+db, user, pass);
try{
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sqlqueary);
while (rs.next()) {
List book=new ArrayList();
book.add(rs.getInt(1));
book.add(rs.getInt(2));
book.add(rs.getString(3));
book.add(rs.getString(4));
booklist.add(book);
}
}catch (SQLException s){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
request.setAttribute("booklist",booklist); 
RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/searchpage.jsp");
dispatcher.forward(request, response); 
}

}