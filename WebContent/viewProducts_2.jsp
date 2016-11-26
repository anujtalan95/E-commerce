<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
 <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
 <link href="css/productStyle.css" rel="stylesheet">
 <link href="css/footerStyle.css" rel="stylesheet">
<title>The Book Store</title>
</head>
<body>
               <%
        if (session.getAttribute("client") == null ){
            %>
            <jsp:include page="includePages/login_bar.jsp"></jsp:include>
        <%
        }else {
            %>
            <jsp:include page="includePages/user_navbar.jsp"></jsp:include>
             <script type="text/javascript">
            $(document).ready(function(){
                $(".btn").click(function(){
   
                   var value = $(this).closest('div').find(".pid").val();
                      $.post("cart",{q:value},function(data){
     
       		  alert("Item added to cart");
        });
    	   
    });
 });
      </script> 
        <%
        }
        %> 
                <div class="row">

                    <div class="col-sm-4">
                        <div class="thumbnail">
                        <a href="product.jsp?id=15"><img src="images/pen/1.jpg" height="280" width="210"></a>
                    <!--     <form action="product.jsp" method="post">
                             <input type="hidden" name="15" value="product_1">
                             <input type="image" src="images/pen/1.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p>Uniball Eye</p>
                              <b><i class="fa fa-inr"></i>60<br></b>
                              <div class="addtocart">
            <input type="hidden" name="15" id="pid" value="15" class="pid">
            <button type="submit" class="btn btn-primary btn-md" >Add To Cart</button>
            </div>
                             <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                            
                            </div>
                            
                        </div>
						

                     <div class="col-sm-4">
                        <div class="thumbnail">
                        <a href="product.jsp?id=16"><img src="images/pen/2.jpg" height="280" width="210"></a>
                    <!--    <form action="product.jsp" method="post">
                             <input type="hidden" name="16" value="product_1">
                             <input type="image" src="images/pen/2.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p> Pilot Frixion (Set of 12)</p>
                              <b><i class="fa fa-inr"></i>990<br></b>
                             <div class="addtocart">
            <input type="hidden" name="16" id="pid" value="16" class="pid">
            <button type="submit" class="btn btn-primary btn-md" >Add To Cart</button>
           </div>
                             <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                            
                            </div>
                            
                        </div>
						

                     <div class="col-sm-4">
                        <div class="thumbnail">
                        <a href="product.jsp?id=17"><img src="images/pen/3.jpg" height="280" width="210"></a>
                     <!--      <form action="product.jsp" method="post">
                             <input type="hidden" name="17" value="product_1">
                             <input type="image" src="images/pen/3.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p>  Reynolds 045 (Pack of 10) </p>
                             <b><i class="fa fa-inr"></i>55<br></b>
                             <div class="addtocart">
            <input type="hidden" name="17" id="pid" value="17" class="pid">
            <button type="submit" class="btn btn-primary btn-md" >Add To Cart</button>
           </div>
                             <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                            
                            </div>
                            
                        </div>
						
                    </div>
                    
					<div class="row">
                    <div class="col-sm-4">
                        <div class="thumbnail">
                        <a href="product.jsp?id=18"><img src="images/pen/4.jpg" height="280" width="210"></a>
                       <!--  <form action="product.jsp" method="post">
                             <input type="hidden" name="18" value="product_1">
                             <input type="image" src="images/pen/4.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p> WriteFlo </p>
                             <b><i class="fa fa-inr"></i>160<br></b>
                             <div class="addtocart">
            <input type="hidden" name="18" id="pid" value="18" class="pid">
            <button type="submit" class="btn btn-primary btn-md" >Add To Cart</button>
         </div>
                             <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                            
                            </div>
                            
                        </div>
						
                     <div class="col-sm-4">
                        <div class="thumbnail">
                        <a href="product.jsp?id=19"><img src="images/pen/5.jpg" height="280" width="210"></a>
                      <!--    <form action="product.jsp" method="post">
                             <input type="hidden" name="19" value="product_1">
                             <input type="image" src="images/pen/5.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p>  ADD Gel Achiever</p>
                             <b><i class="fa fa-inr"></i>47<br></b>
                            <div class="addtocart">
            <input type="hidden" name="19" id="pid" value="19" class="pid">
            <button type="submit" class="btn btn-primary btn-md" >Add To Cart</button>
         </div>
                             <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                            
                            </div>
                            
                        </div>
						
                     <div class="col-sm-4">
                        <div class="thumbnail">
                        <a href="product.jsp?id=20"><img src="images/pen/6.jpg" height="280" width="210"></a>
                      <!--   <form action="product.jsp" method="post">
                             <input type="hidden" name="20" value="product_1">
                             <input type="image" src="images/pen/6.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p> Pilot Hi-Tecpoint V5 </p>
                             <b><i class="fa fa-inr"></i>50<br></b>
                              <div class="addtocart">
            <input type="hidden" name="20" id="pid" value="20" class="pid">
            <button type="submit" class="btn btn-primary btn-md">Add To Cart</button>
           </div>
                             <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                            
                            </div>
                            
                        </div>
						<div class="push"></div>
                    </div>
                    
                    
                    
<jsp:include page="includePages/footer2.jsp"></jsp:include></div>
               
</body>
</html>