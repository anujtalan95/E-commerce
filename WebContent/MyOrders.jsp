<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import ="java.sql.*,database.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="js/jquery-ui-1.12.0.custom/jquery-ui.css" rel="stylesheet" >
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/jquery-ui-1.12.0.custom/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/OrderStyle.css" rel="stylesheet">
<link href="css/footerStyle.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

<title>The Book Store</title>
</head>
<body>
 <jsp:include page="includePages/user_navbar.jsp"></jsp:include>
     
     <div class="order-heading">
      My Orders
     </div>
     

 <div class="orders">
 
 <%  
ResultSet rs1=null;
ResultSet rs2=null;
int o_id=0;
String name="";
int price=0;
String img="";
int order_id=0;
Date date;
int total_qty=0;
int total_price=0;
Db_con con = new Db_con();
Connection con1 = con.getConnection(); 
Connection con2 = con.getConnection();   
Connection con3 = con.getConnection(); 
Statement st= con1.createStatement(); 
Statement st1= con2.createStatement();
Statement st2= con3.createStatement();

ResultSet rs=st.executeQuery("select * from order_list where client_id='"+session.getAttribute("client")+"'");

  while(rs.next()){
	order_id=rs.getInt(1);
	date=rs.getDate(3);
	total_qty=rs.getInt(4); 
	total_price=rs.getInt(5);
	
	       %>
           <div class="order-card">
           

                <div class="order-number">
                <span class="status">PENDING</span>
                <span class="order-no">&nbsp;&nbsp;Order No: <%=order_id %></span>
                 <div class="placed-on">
                Placed on <%=date %>
                </div>  
                </div>   
                  
                <div class="shipment">
                      <div class="total-item">Items: <%=total_qty %></div>
                      <%    rs2= st2.executeQuery("select * from order_detail where order_id='"+order_id+"'");
                 	   while(rs2.next()){
                 		int p_id = rs2.getInt(2);
                 		int qty=rs2.getInt(3);
                 		int sub_tot=rs2.getInt(4);
                 	    rs1= st1.executeQuery("select * from product where product_id='"+p_id+"'");
                          while(rs1.next()) {
                          img= rs1.getString(6);
                          %>
                      <div class="thumbnail">
                      <a href="product.jsp?id=<%=p_id%>"><img src="<%=img %>" height="120" width="90" hspace="70"></a>
                      <p>Quantity :<%=qty %><br>
                      Sub Total :<i class="fa fa-inr"></i><%=sub_tot %>
                      </div>
                      <% } %>
                      <% } %>
                      <div class="price">Grand Total: <i class="fa fa-inr"></i><%=total_price %></div>
                </div>
           </div> 
           <% }
           rs.close();
           rs1.close();
           rs2.close();
           st.close();
           st1.close();
           st2.close();
           con1.close();
           con2.close();
           con3.close();
   %>
           <div class="push"></div>
  </div>
        
     <%@include file="includePages/footer2.jsp" %>
</body>
</html>