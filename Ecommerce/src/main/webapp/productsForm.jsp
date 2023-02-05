

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Ecommerce Site</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 
</head>
<body style="background: rgba(63, 23, 135, 1)">

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background: rgba(142, 23, 247, 0.5); border: 1px solid rgba(255, 255, 255, 0.18)">
			<div>
				<a href=" " class="navbar-brand"
					style="background: rgba(63, 23, 135, 0.6); border-radius: 5px; padding: 5px">
					Ecommerce Site </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link" style="color: white">Products List</a></li>
			</ul>
				<h6 style="text-align:right; margin-left:70%; padding:5px; border-radius:5px; color:white; background: rgba(63, 23, 135, 0.6);">Made by Techie7</h6>
			
		</nav>
	</header>
	<br>
	<div class="container col-md-5 main-card">
		<div class="card"
			style="background: rgba(142, 23, 247, 0.5); box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37); backdrop-filter: blur(1px); -webkit-backdrop-filter: blur(1px); border-radius: 10px; border: 1px solid rgba(255, 255, 255, 0.18); color: white">

			<div class="card-body">
				<c:if test="${product != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${product == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${product != null}">
            			Edit Product
            		</c:if>
						<c:if test="${product == null}">
							<span
								style="background: rgba(142, 23, 247, 0.8); padding: 5px; border-radius: 5px">Add
								New Product</span>
						</c:if>
					</h2>
				</caption>

				<c:if test="${product != null}">
					<input type="hidden" name="id"
						value="<c:out value='${product.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Product Name</label> <input type="text"
						value="<c:out value='${product.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Product Description</label> <input type="text"
						value="<c:out value='${product.description}' />"
						class="form-control" name="description">
				</fieldset>

				<fieldset class="form-group">
					<label>Product Price</label> <input type="text"
						value="<c:out value='${product.price}' />" class="form-control"
						name="price">
				</fieldset>

				<fieldset class="form-group">
					<label>Quantity</label> <input type="text"
						value="<c:out value='${product.quantity}' />" class="form-control"
						name="quantity">
				</fieldset>


				<button type="submit" class="btn"
					style="color: white; background: rgba(142, 23, 247, 0.8);">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>