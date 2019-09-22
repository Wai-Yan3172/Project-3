<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String firstname=request.getParameter("fname");
String lastname=request.getParameter("lname");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String address=request.getParameter("address");
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/m2website","root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into registration(firstname,lastname,email,contact,address)values('"+firstname+"','"+lastname+"','"+email+"','"+contact+"','"+address+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>