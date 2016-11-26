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
<link href="css/footerStyle.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

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
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/banner1.png" alt="banner" width="1350" >
      <div class="carousel-caption">
       
      </div>
    </div>

    <div class="item">
      <img src="images/banner2.png" alt="banner" height="100" width="1350">
      <div class="carousel-caption">
        
      </div>
    </div>

    <div class="item">
      <img src="images/banner3.png" alt="banner" height="100" width="1350">
      <div class="carousel-caption">
       
      </div>
    </div>

    <div class="item">
      <img src="images/banner4.png" alt="banner" height="100" width="1350">
      <div class="carousel-caption">
       
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div class="small-banner" >
<a href="viewProducts.jsp"><img src="images/promo.jpg" alt="offers" width="1350"></a>
</div>


<div class="row">
  <div class="heading"><h1>Explore more around the book store</h1>
       <div class="col-sm-4">
           <a href="product.jsp?id=1"><img src="images/book/1.jpg" height="280" width="210"></a>
           <!--  <form action="product.jsp" method="post">
             <input type="hidden" name="1" value="product_1">
             <input type="image" src="images/book/1.jpg" alt="submit"  height="280" width="210">
             </form> -->
            <p>Harry Potter and the Cursed Child -<br> Parts I & II (Special Rehearsal Edition)</p>
            <i class="fa fa-inr"></i> 575<br>
           <div class="addtocart">
            <input type="hidden" name="1" value="1" class="pid">
            <button type="submit" class="btn btn-primary btn-md">Add To Cart</button>
          </div>
        </div>
        <div class="col-sm-4">
        <a href="product.jsp?id=2"><img src="images/book/2.jpg" height="280" width="210"></a>
         <!-- <form action="product.jsp" method="post">
             <input type="hidden" name="2" value="1">
             <input type="image" src="images/book/2.jpg" alt="submit"  height="280" width="210">
             </form> -->
             <p> Concepts of Physics (Volume - 1)</p>
             <i class="fa fa-inr"></i> 209<br>
     <div class="addtocart">
            <input type="hidden" name="2" value="2" class="pid">
            <button type="submit" class="btn btn-primary btn-md">Add To Cart</button>
      </div>
         </div>
         <div class="col-sm-4">
         <a href="product.jsp?id=4"><img src="images/book/4.jpg" height="280" width="210"></a>
         <!--   <form action="product.jsp" method="post">
               <input type="hidden" name="4" value="product_1">
               <input type="image" src="images/book/4.jpg" alt="submit"  height="280" width="210">
             </form> -->
             <p>The Complete Sherlock Holmes: Stories and Novels </p>
             <i class="fa fa-inr"></i> 263<br>
       <div class="addtocart">
            <input type="hidden" name="4" value="4" class="pid">
            <button type="submit" class="btn btn-primary btn-md">Add To Cart</button>
         </div>
          </div>
  </div>
</div>


<div class="row">
<div class="heading">
  <div class="col-sm-4">
  <a href="product.jsp?id=11"><img src="images/notebook/4.jpg" height="280" width="210"></a>
        <!-- <form action="product.jsp" method="post">
             <input type="hidden" name="11" value="product_1">
             <input type="image" src="images/notebook/4.jpg" alt="submit"  height="280" width="210">
             </form> -->
            <p> Superhero Collection (Set of 4)</p>
            <i class="fa fa-inr"></i> 350<br>
        <div class="addtocart">
            <input type="hidden" name="11" value="11" class="pid">
            <button type="submit" class="btn btn-primary btn-md">Add To Cart</button>
        </div>
  </div>
  <div class="col-sm-4">
  <a href="product.jsp?id=12"><img src="images/notebook/5.jpg" height="280" width="210"></a>
           <!--   <form action="product.jsp" method="post">
             <input type="hidden" name="12" value="product_1">
             <input type="image" src="images/notebook/5.jpg" alt="submit"  height="280" width="210">
             </form> -->
            <p>Tardy World Domination (Set of 2)</p>
            <i class="fa fa-inr"></i> 180<br>
     <div class="addtocart">
            <input type="hidden" name="12" value="12" class="pid">
            <button type="submit" class="btn btn-primary btn-md" >Add To Cart</button>
      </div>
  </div>
  <div class="col-sm-4">
  <a href="product.jsp?id=13"><img src="images/notebook/6.jpg" height="280" width="210"></a>
            <!-- <form action="product.jsp" method="post">
             <input type="hidden" name="13" value="product_1">
             <input type="image" src="images/notebook/6.jpg" alt="submit"  height="280" width="210">
             </form> -->
            <p>I cant adult Today </p>
            <i class="fa fa-inr"></i> 90<br>
    <div class="addtocart">
            <input type="hidden" name="13" value="13" class="pid">
            <button type="submit" class="btn btn-primary btn-md" >Add To Cart</button>
     </div>
  </div>
  </div>
</div>



 <section id="cta-section" class="section cta-section text-center home-cta-section">
            <div class="container">
               <h2 class="heading">Be a part of our family.</h2>
               <a href="#"><img src="images/play-store1.png" height="100" width="300"></a><br>
               &nbsp<br>
               &nbsp<br>
               <a href="#"><img src="images/app-store.png" height="100"></a>
            </div>
        </section>
        
        
  <jsp:include page="includePages/footer2.jsp"></jsp:include>
  
  
</body>
</html>