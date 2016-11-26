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
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
 <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
 <link href="css/main.css" rel="stylesheet">
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
                        <a href="product.jsp?id=1"><img src="images/book/1.jpg" height="280" width="210"></a>
                     <!--    <form action="product.jsp" method="post">
                             <input type="hidden" name="1" value="product_1">
                             <input type="image" src="images/book/1.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p>Harry Potter and the Cursed Child (Special Rehearsal Edition)</p>
                              <b><i class="fa fa-inr"></i>570<br></b>
                                   <div class="addtocart">
                               <input type="hidden" name="1" value="1" class="pid">
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
						

                     <div class="col-sm-4">
                        <div class="thumbnail">
                        <a href="product.jsp?id=2"><img src="images/book/2.jpg" height="280" width="210"></a>
                  <!--       <form action="product.jsp" method="post">
                             <input type="hidden" name="2" value="product_1">
                             <input type="image" src="images/book/2.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p>Concepts of Physics (Volume - 1)</p>
                              <b><i class="fa fa-inr"></i>209<br></b>
                                  <div class="addtocart">
                              <input type="hidden" name="2" value="2" class="pid">
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
                        <a href="product.jsp?id=4"><img src="images/book/4.jpg" height="280" width="210"></a>
                     <!--    <form action="product.jsp" method="post">
                             <input type="hidden" name="4" value="product_1">
                             <input type="image" src="images/book/4.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p> The Complete Sherlock Holmes: Stories and Novels </p>
                             <b><i class="fa fa-inr"></i>263<br></b>
                                <div class="addtocart">
            <input type="hidden" name="4" value="4" class="pid">
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
                        <a href="product.jsp?id=5"><img src="images/book/5.jpg" height="280" width="210"></a>
                       <!--  <form action="product.jsp" method="post">
                             <input type="hidden" name="5" value="product_1">
                             <input type="image" src="images/book/5.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p> Word Power Made Easy Revised & Expanded Edition </p>
                             <b><i class="fa fa-inr"></i>108<br></b>
                                 <div class="addtocart">
            <input type="hidden" name="5" value="5" class="pid">
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
                        <a href="product.jsp?id=6"><img src="images/book/6.jpg" height="280" width="210"></a>
                    <!--       <form action="product.jsp" method="post">
                             <input type="hidden" name="6" value="product_1">
                             <input type="image" src="images/book/6.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p> A Modern Approach To Logical Reasoning )</p>
                             <b><i class="fa fa-inr"></i>160<br></b>
                                 <div class="addtocart">
            <input type="hidden" name="6" value="6" class="pid">
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
						
                     <div class="col-sm-4">
                        <div class="thumbnail">
                        <a href="product.jsp?id=7"><img src="images/book/7.jpg" height="280" width="210"></a>
                      <!--   <form action="product.jsp" method="post">
                             <input type="hidden" name="7" value="product_1">
                             <input type="image" src="images/book/1.jpg" alt="submit"  height="280" width="210">
                             </form> -->
                             <p> Quantitative Aptitude For Competitive Examinations </p>
                             <b><i class="fa fa-inr"></i>412<br></b>
                               <div class="addtocart">
            <input type="hidden" name="7" value="7" class="pid">
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
						<div class="push"></div>
                    </div>
                    
                    
                    
<jsp:include page="includePages/footer2.jsp"></jsp:include></div>
               
</body>
</html>