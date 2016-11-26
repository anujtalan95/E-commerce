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
<link href="css/main.css" rel="stylesheet">
<link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/productStyle.css" rel="stylesheet">
<link href="css/footerStyle.css" rel="stylesheet">
<title>The Book Store</title>
</head>
<body>
  <%
        if (session.getAttribute("client") == null ){// THen new user, show join now
            %>
            <jsp:include page="includePages/login_bar.jsp"></jsp:include>
        <%
        }else {
            %>
            <jsp:include page="includePages/user_navbar.jsp"></jsp:include>
            <script type="text/javascript">
            $(document).ready(function(){
                $(".btn").click(function(){
                 var value1 = $("#qty").val();
                   var value = $(this).closest('div').find(".pid").val();
                      $.post("cart",{q:value},function(data){
                    	  $.post("quantity",{q:value1,p:value},function(data){
                      	    
                          });
       		  alert("Item added to cart :"+value1);
        });
                    	   
    });
 });
      </script> 
        <%  }   %>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String p_id=request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","MySQL"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from product where product_id='"+p_id+"'");
rs.next();
int product_id=rs.getInt(1);
String product_name=rs.getString(2);
int price=rs.getInt(3);
String category=rs.getString(4);
String desc=rs.getString(5);
String img=rs.getString(6);
%>
<div class="product_img">
<img src="<%=img%>"height="550" width="450">
<h1><%= product_name %></h1>
   <h2> <i class="fa fa-inr"></i><%= price%></h2>
   <h3>In Stock</h3>
           <h4>Quantity</h4>
        <select class="form-control" id="qty">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
        </select>
           <div class="addtocart">
            <input type="hidden" name="<%=product_id %>" class="pid" value="<%=product_id %>">
             <button type="submit" class="btn btn-warning" >Add To Cart</button>
            </div> 
            

<div class="product_display">
  <p>
  <h3>Description</h3><br><%= desc %>
   </p>
  </div>
  <div class="push"></div>
  <%
  rs.close();
st.close();
con.close();
%>
  </div>
	<jsp:include page="includePages/footer2.jsp"></jsp:include>
	
</body>
</html>