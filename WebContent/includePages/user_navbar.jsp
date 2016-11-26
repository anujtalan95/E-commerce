
 <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home.jsp"><img src="images/logo.png" alt="logo" width="200" height="50"></a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="Home.jsp">Home</a></li>
      <li class="nav-item dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" href="#">Products<i class="fa fa-angle-down"></i></a>
        <ul class="dropdown-menu">
          <li><a href="viewProducts.jsp">Book</a></li>
          <li><a href="viewProducts_1.jsp">Notebooks</a></li>
          <li><a href="viewProducts_2.jsp">Pens</a></li> 
        </ul>
      </li>
      <li><a href="About.jsp">About</a></li> 
    </ul>
   
    <ul class="nav navbar-nav navbar-right">
       <li><form class="navbar-form" role="search" action="ProductSearch" method="post">
       
     <!--  <div class="ui search">
             <div class="ui icon input">
                         <input class="prompt" type="text" placeholder="Search products...">
                         <i class="search icon"></i>
                 </div>
                 <div class="results"></div>
        </div> -->
       
             <div class="input-group">
            <input type="text" class="form-control" placeholder="Search" name="psearch" id="search">
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
        </form></li>
      <li><a href="#">Welcome</a></li>
     <li class="nav-item dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" href="#"><i class="fa fa-user fa-2x" aria-hidden="true"></i><i class="fa fa-angle-down"></i></a>
        <ul class="dropdown-menu">
        <li><a href="MyOrders.jsp">My Orders</a></li>
          <li><a href="Logout">logout</a></li>
         
        </ul>
      </li>
      <li><a href="cart.jsp"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Cart</a></li>
    </ul>
  </div>
</nav>
<script>
 $( function() {
	    var availableTags = [
	      "Harry Potter and the Cursed Child",
	      "Concepts of Physics (Volume - 1)",
	      "Concepts of Physics (Volume - 2)",
	      "The Complete Sherlock Holmes: Stories and Novels",
	      "Word Power Made Easy Revised & Expanded Edition",
	      "A Modern Approach To Logical Reasoning",
	      "Quantitative Aptitude For Competitive Examinations",
	      "Notes & Musings",
	      "Tribal Art",
	      "NOTE",
	      "Superhero Collection (Set of 4)",
	      "Tardy World Domination (Set of 2)",
	      "I cant adult Today",
	      "Be Bold",
	      "Uniball Eye",
	      "Pilot Frixion (Set of 12)",
	      "Reynolds 045 (Pack of 10)",
	      "WriteFlo",
	      "ADD Gel Achiever",
	      "Pilot Hi-Tecpoint V5 Black",
	      "Pilot Hi-Tecpoint V5 Red"
	    ];
	    $( "#search" ).autocomplete({
	      source: availableTags
	    });
	  });
 </script>