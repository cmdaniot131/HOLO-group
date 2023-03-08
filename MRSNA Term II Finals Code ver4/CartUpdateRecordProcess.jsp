<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
</head>
<body>
<% 

	int Order_ID = Integer.parseInt(request.getParameter("Order_ID")); 
	int qty = Integer.parseInt(request.getParameter("qty"));

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/727_db","root","h398zl6G$Zkz");
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE Cart SET qty = " + qty + " WHERE Order_ID = " + Order_ID);
	response.sendRedirect("Cart.jsp");

%>


</body>
</html>