<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Spring 4 MVC -HelloWorld</title>
</head>
<body>
	<div class="container-fluid">
		<div>
			<h4>Select Your Order Size</h4>
		</div>
		<ul class="nav nav-tabs nav-justified"">
			<li class="active"><a data-toggle="tab" href="#individual">Individual</a></li>
			<li><a data-toggle="tab" href="#party">Party</a></li>
		</ul>
		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<form role="form" action="deliveryDetails" method="post">
					<div class="form-group">
						<table class="table table-striped">
							<thead>
								<tr>
									<th >Pack Size:</th>
								</tr>
							</thead>
							<tbody>
								
								<c:forEach items="${itemList}" var= "item">
									<tr>
										<td>
											<div><label><c:out value="${item.itemName}"></c:out></label>
											</div>
										</td>
										<td>
											<div class="input-group">
												<span class="input-group-addon">Quantity</span>
												<input type="text" class="form-control bfh-number" name="item~${item.itemId}" />											
											</div>
										</td>										
									</tr>
								</c:forEach>
								<tr><td>
									<input type="hidden" id="orderId" class="form-control" name="orderId" value="${orderId}"/>
								</td>
								</tr>
							<tbody>
						</table>
					</div>
					
					<input type="submit" class="btn btn-success" value="Submit">
				</form>
			</div>
			<div id="party" class="tab-pane fade">
				<p>Some content in menu 1.</p>
			</div>
		</div>

		<div class="panel-group">
			<div class="panel panel-primary">
				<div class="panel-heading">Why Us</div>
				<div class="panel-body">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Factors</th>
								<th>Us</th>
								<th>Others</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><label>Hygene</label></td>
								<td><label>Very Higenic</label></td>
								<td><label>Dont know???</label></td>
							</tr>
							<tr>
								<td><label>Rates for 16</label></td>
								<td><label>70</label></td>
								<td><label>68</label></td>
							</tr>
							<tr>
								<td><label>Delivery</label></td>
								<td><label>Yes</label></td>
								<td><label>No</label></td>
							</tr>
						<tbody>
					</table>
				</div>
			</div>

		</div>
		</div>
</body>
</html>