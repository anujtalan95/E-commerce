<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap-theme.min.css" rel="stylesheet" >
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="js/jquery-ui-1.12.0.custom/jquery-ui.css" rel="stylesheet" >
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/jquery-ui-1.12.0.custom/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/checkoutStyle.css" rel="stylesheet">
<title>The Book Store</title>
</head>
<body>
 <jsp:include page="includePages/user_navbar.jsp"></jsp:include>
 
 <div class="checkout">
            <div class="row">
                    <div class="col-md-6">
                         <div class="form-group">
                             <label for="hostelname">Hostel Name</label>
                              <input type="text" class="form-control" id="hostelname" placeholder="Hostal Name">
                        </div>
                         <div class="form-group">
                            <label for="zipcode">Zip Code</label>
                             <input type="text" class="form-control" id="zipcode" placeholder="Enter Your PinCode">
                        </div>
                        <div class="form-group">
                            <label for="cityname">City</label>
                             <input type="text" class="form-control" id="cityname" placeholder="Enter Your City">
                        </div>
                         <div class="form-group">
                            <label for="ph_num">Phone Number</label>
                             <input type="text" class="form-control" id="ph_num" placeholder="Enter Phone Number">
                        </div>
                        <div class="form-group">
                            <label for="collegename">College</label>
                             <select class="form-control" id="collegename">
                                <option>Sharda University</option>
                                <option>Galgotia College</option>
                                <option>DU North Campus</option>
                             </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="payment">Payment</div>
                        <div class="btn-group" data-toggle="buttons">
                                          <label class="btn btn-primary">
                                          <input type="radio" name="options" id="option1" autocomplete="off" checked>Cash On Delivery
                                        </label>
                        </div>
                    </div>
                    <div class="buttons">
                    <a href="Home.jsp">
                        <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></a></td>
                        <form action="ID" method="post">
                        <button type="submit" class="btn btn-success">
                            Confirm Order <span class="glyphicon glyphicon-play"></span>
                        </button>
                        </form>
                        </div>
            </div>
 </div>
</body>
</html>