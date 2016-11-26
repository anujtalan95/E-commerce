<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*,database.*" %>
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
<link href="css/cartStyle.css" rel="stylesheet">
<link href="css/footerStyle.css" rel="stylesheet">
<title>The Book Store</title>
</head>
<body>
     
       <jsp:include page="includePages/user_navbar.jsp"></jsp:include>
      <script type="text/javascript">
      $(document).ready(function(){
    		 
    		 $(".btn-sm").click(function(){
    		      var value1 = $(this).closest('div').find("#qty").val();
    		        var value = $(this).closest('div').find(".pid").val();
    		         	  $.post("quantity",{q:value1,p:value},function(data){
    		         		 location.reload();
    		               });
    		         	   
    		});
    		 
    	    $(".btn-danger").click(function(){
    	    	 var value = $(this).closest('div').find(".val").val();
    	        $.post("delete",{q:value},function(data){	
    	             location.reload();
    	    	});
    	    
    	    });
    	    
    	});
      </script>
<%
Db_con conn = new Db_con();
Connection con4 = conn.getConnection(); 
Statement st4= con4.createStatement(); 
ResultSet rs4=st4.executeQuery("select count(client_id) from cart where client_id='"+session.getAttribute("client")+"'");
rs4.next();
int cnt=rs4.getInt(1);
if(cnt==0) {
%>
<div class="empty-cart">
  <i class="fa fa-cart-plus fa-4x" aria-hidden="true"></i><br>
  <p>Your Shopping Cart is Empty.</p><br>
                         <a href="Home.jsp">
                        <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></a>
   <div class="push"></div>
  </div>
  	<% } else { %>  
 <div class="container">  
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Sub Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>

<%  
ResultSet rs1=null;
ResultSet rs2=null;
int p_id=0;
int sum=0;
String name="";
String cat="";
int price=0;
String img="";
Db_con con = new Db_con();
Connection con1 = con.getConnection(); 
Connection con2 = con.getConnection();   
Connection con3 = con.getConnection(); 
Statement st= con1.createStatement(); 
Statement st1= con2.createStatement();
Statement st2= con3.createStatement();

ResultSet rs=st.executeQuery("select * from cart where client_id='"+session.getAttribute("client")+"'");

  while(rs.next()){
	int client_id=rs.getInt(1);
	int prouduct_id=rs.getInt(2);
	int qty=rs.getInt(3);
	int total=rs.getInt(4); 
	rs2 = st2.executeQuery("select SUM(sub_total) from cart where client_id='"+session.getAttribute("client")+"'");
	rs2.next();
	sum = rs2.getInt(1);
    rs1= st1.executeQuery("select * from product where product_id='"+rs.getInt(2)+"'");
	    
	         while(rs1.next()) {
	    	 p_id=rs1.getInt(1);
             name=rs1.getString(2);
             price=rs1.getInt(3);
             cat=rs1.getString(4);
             img= rs1.getString(6); 
             %>
                    <tr class="cart">
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="product.jsp?id=<%=p_id%>"> <img class="media-object" src="<%=img%>" height="100" width="100"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="product.jsp?id=<%=p_id%>"><%=name%></a></h4>
                                <h5 class="media-heading"> Category <a href="#"><%=cat %></a></h5>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                   <!--   <select id="qty">
                                <option value="1">1</option>
                                 <option value="2">2</option>
                                 <option value="3">3</option>
                                 <option value="4">4</option>
                         </select>  -->
                      <input type="hidden" name="<%=p_id %>" class="pid" value="<%=p_id %>">
                       <!-- input type="number" class="form-control text-center" id="qty" value="<%=qty%>"> -->
                       <P><%=qty%></P>
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong><i class="fa fa-inr"></i><%=price%></strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong><i class="fa fa-inr"></i><%=total %></strong></td>
                        <td class="col-sm-1 col-md-1">
                        <div class="remove">
                        <input type="hidden" name="<%=p_id %>" value="<%=p_id %>"  class="val">
					<!-- <button type="submit" class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button> -->
                        <button type="submit" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></div>
                        </td>
                    </tr>
               
                    <% } %>
                    <% } %>
                 
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong><i class="fa fa-inr"></i><%=sum%></strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href="Home.jsp">
                        <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></a></td>
                        <td><a href="checkout.jsp">
                            <button type="submit" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="push"></div>
</div>


<% rs.close();
rs1.close();
rs2.close();
rs4.close();
st.close();
st1.close();
st2.close();
st4.close();
con1.close();
con2.close();
con3.close();
con4.close();
} %> 
 <%@include file="includePages/footer2.jsp" %>
</body>
</html>