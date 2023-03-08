<%@page import="java.sql.*,java.math.BigDecimal" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.108.0">
    <title>Cart</title>
	<link rel="shortcut icon" type="x-icon" href="Images/HOLO_STORE_Logo.png">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    

    

<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <!-- Favicons -->

<meta name="theme-color" content="#712cf9">


    <style>    
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      
      .col-3 {    
        transition: all 0.3s ease-in-out;
	  }

	  .col-3:hover {
        transform: translateY(-5px);
        box-shadow: 5px 10px 18px #ffe46b;
      }
      
    </style>

    
  </head>
  <body>
  <br> 
    <nav class="navbar navbar-dark bg-warning fixed-top">
  <div class="container-fluid">
  <img src="Images/HOLO_STORE_Logo.png" width="65px" style="border-radius:50px;">
    <button class="navbar-toggler border-2 bg-dark" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
      <div class="offcanvas-header">
      <svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
  		<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
		</svg>
        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Store Navigation</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="Index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="products.jsp">Products</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="Cart.jsp">Cart</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</nav>
<br> 
<main>
  <div class="container py-4">
  	  <div class="container py-4">
    <header class="pb-3 mb-4 border-bottom">
      <a href="#" class="d-flex align-items-center text-dark text-decoration-none">
		<svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
  		<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
		</svg>
       <span class="fs-4">Cart</span>
      </a>
    </header>
  </div>


<%
BigDecimal total = new BigDecimal("0");

try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/727_db","root","h398zl6G$Zkz");
statement=connection.createStatement();
String sql ="SELECT Cart.Order_ID, Products.Product_ID, Products.Name, Products.Description, Products.Category, Products.Price, Cart.qty FROM Cart INNER JOIN Products ON Cart.Product_ID = Products.Product_ID ORDER BY Cart.Order_ID";

resultSet = statement.executeQuery(sql);


%>
<table class="table table-warning table-striped" border="1">
  <thead class="table-group-divider table-dark">
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
      <th scope="col">Category</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Total Price</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
<% while(resultSet.next()){ 
	BigDecimal price = resultSet.getBigDecimal("Price");
	int qty = resultSet.getInt("qty");
	BigDecimal tot = price.multiply(BigDecimal.valueOf(qty));
%>
    <tr>
      <td><%=resultSet.getString("Name") %></td>
      <td><%=resultSet.getString("Description") %></td>
      <td><%=resultSet.getString("category") %></td>
      <td>PHP <%=price%></td>
      <td><%= qty%></td>
      <td>PHP <%=tot%></td>
<td>
<form method="post"><input type="hidden" name="Order_ID" value="<%=resultSet.getInt("Order_ID")%>"><button type="submit" class="btn btn-primary btn-warning" formaction="CartUpdateRecord.jsp">Update</button>
<button type="submit" class="btn btn-primary btn-danger" formaction="CartDeleteRecord.jsp">Delete</button></form></td>
    </tr>
<%
total = total.add(tot);
} %>
  </tbody>
  <tfoot class="table table-default">
  	<tr>
  		<td colspan = "5" class="text-end">Total</td>
  		<td class="table-active">PHP <%=total%></td>
  	</tr>
  </tfoot>
</table>

 <%

} catch (Exception e) {
e.printStackTrace();
}
%>
<a href="products.jsp"><button class="btn btn-primary btn-dark" type="button">Browse Products</button></a>

    <footer class="pt-3 mt-4 text-muted border-top">
      &copy; EST ©2023. Designed By HOLO
    </footer>
  </div>
</main>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    
  </body>
</html>
