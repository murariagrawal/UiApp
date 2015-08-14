<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<script
	src="js/mwf-core-ajax.js"></script>
	<script type="text/javascript">
	function getAddressDetails() {
		ajax.getJSON("fetchDeliveryDetails", $("#phoneNumber").val()).done(function(data) {
			alert();          
        }).fail(function(data) {
        	
        	alert("failed");
        });
			alert();
	
		
	}
	
	</script>
<title>Verify Order</title>
</head>
<body>
	<div class="container-fluid">
		<div class="panel-group">
			<div class="panel panel-primary">
				<div class="panel-heading">Delivery Details</div>
				<div class="panel-body">
					<form role="form" id="deliveryForm" action="verifyOrder" method="post">
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">Phone number:</span> 
								<input type="text" class="form-control" id="phoneNumber" onblur="getAddressDetails()"/>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Address:</span>
								<input type="text" class="form-control" id="address">
							</div>
							<div class="input-group">
								<span class="input-group-addon">Landmark:</span> 
								<input type="text" class="form-control" id="landmark" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Pincode:</span>
								<input type="text" class="form-control" id="pincode" />
							</div>
							
							<div class="input-group">
								<label for="DeliverySlot">Select Delivery Slot:</label> 
								<select	class="form-control selectpicker" id="deliveryslot">
									<option>4-5</option>
									<option>5-6</option>
									<option>6-7</option>
									<option>7-8</option>
								</select>
							</div>
						</div>
						<input type="submit" class="btn btn-success" value="Submit">

					</form>

				</div>
			</div>
		</div>
	</div>
</body>
</html>