
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Ecommerce Site</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
</head>
<body style="background: rgba(63, 23, 135, 1)">

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background: rgba(142, 23, 247, 0.5); border: 1px solid rgba(255, 255, 255, 0.18)">
			<div>
				<a href=" " class="navbar-brand"
					style="background: rgba(63, 23, 135, 0.6); border-radius: 5px; padding: 5px">Ecommerce
					Site</a>
					 
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link"  style="color:white">Products</a></li>
			</ul>
			<h6 style="text-align:right; margin-left:70%; padding:5px; border-radius:5px; color:white; background: rgba(63, 23, 135, 0.6);">Made by Techie7</h6>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container" style="Color: white">
			<h3 class="text-center"
				style="background: rgba(142, 23, 247, 0.5); width: 50hw; color: dark; border-radius: 5px; padding: 10px">List
				of Products</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success"
					style="background: rgba(142, 23, 247, 0.5); border-style: none">Add
					New Product</a>
			</div>
			<br>
			<table class="table table-bordered" style="Color: white">
				<thead>
					<tr style="background: rgba(142, 23, 247, 0.5)">
						<th>ID</th>
						<th>Product Name</th>
						<th>Product Description</th>
						<th>Product Price</th>
						<th>Quantity</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="product" items="${listProduct}">

						<tr>
							<td><c:out value="${product.id}" /></td>
							<td><c:out value="${product.name}" /></td>
							<td><c:out value="${product.description}" /></td>
							<td><c:out value="${product.price}" /></td>
							<td><c:out value="${product.quantity}" /></td>
							<td><a
								style="color: white; background: rgba(255, 255, 255, 0.1); padding: 5px; border-radius: 5px"
								href="edit?id=<c:out value='${product.id}' />">Edit</a> <a
								style="color: white; background: rgba(255, 255, 255, 0.1); padding: 5px; border-radius: 5px"
								href="delete?id=<c:out value='${product.id}' />">Delete</a></td>
						</tr>
					</c:forEach>

				</tbody>

			</table>
		</div>
	</div>
</body>
</html>