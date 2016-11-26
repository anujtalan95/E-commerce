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
<style type="text/css">
.row
{
   position: relative;
   top: 100px;
}
</style>
<title>About Us</title>
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
    <% } %>
    <div class="container">

        
        <div class="row">
            <div class="col-xs-12 col-md-8">
                <h1 class="page-header"> <b><u> About Us </b></u><br>
				    <p> <b> The Book Store</b>, an e-commerce shopping complex for personal, institutional and office stationery.
					This virtual stationery market endeavours to bring a wide variety of products at discounted rates.
					Being into operation since 2016, the company has shaped a broad mount of satisfied consumers from Colleges and Universities. <br>
				
                    
                </h1>
				<h2 class="page-header"> <b> <u> How we make it better? </b></u><br>
				   <p>At The Book store, we enlist thousands of stationery products that unknowingly become a part of our daily life at home,
				   office, school or college. The wide list of products that our warehouse stores is sure to cover your specific requirements.<br>
                             -Our 7 day return policy can help you change the colours or size of purchased products.<br>
                             -We complement direct office or institutional orders with special bulk discounts.<br>
                             
<br>
<br>
                   We constantly keep adding to this petty list of attractions for the only reason to bring you joyous smiles and comfortable shopping. 
                   Just to let you know, we keep our inbox logged in throughout the day, even on Sundays. 
                    So you are welcome to contact us anytime at support@thebookstore.in.
                    For you need a telephone conversation, we are open from Monday to Saturday 9 to 6 pm at +91-9999999999. </p>
                </h2>
         
            </div>
        </div>

   
       <!-- <div class="row">
            <div class="col-lg-3">
                <h2 class="page-header"><b><u>Our Team</b></u></h2>
            </div>
            <div class="col-lg-3 col-sm-3 text-center">
                <img class="img-circle img-responsive img-center" src="" alt="">
                <h3> Anuj <br>
                    <small>Job Title</small>
                </h3>
                <p> </p>
            </div>
            <div class="col-lg-3 col-sm-3 text-center">
                <img class="img-circle img-responsive img-center" src="" alt="">
                <h3> Harsh chaudhary <br>
                    <small>Job Title</small>
                </h3>
                <p> </p>
            </div>
            <div class="col-lg-3 col-sm-3 text-center">
                <img class="img-circle img-responsive img-center" src="" alt="">
                <h3>Ankita <br>
                    <small>Job Title</small>
                </h3>
                <p> </p>
            </div>
            
        </div> -->

        <hr>

        <footer>
            <div class="row">
                <div class="col-xs-12 col-md-8">
                    <p>Copyright © 2016 The Book Store / All rights reserved.</p>
                </div>
                
            </div>
            
        </footer>

    </div>
    

</body>
</html>