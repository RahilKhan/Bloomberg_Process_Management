<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<!-- SCRIPTS -->

    <!-- JQuery -->
    <script type ="text/javascript" src="../resources/javascript/vendor/jquery/jquery.min.js"></script>
    
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="../resources/javascript/vendor/bootstrap-4/js/tether.js"></script>

    <!-- Bootstrap core JavaScript -->
	<script type ="text/javascript" src="../resources/javascript/vendor/bootstrap-4/js/bootstrap.js"></script>

    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="../resources/javascript/vendor/bootstrap-4/js/mdb.js"></script>


    <script>
        // SideNav Init
        $(".button-collapse").sideNav();
        // Tooltips init        
        $('[data-toggle="tooltip"]').tooltip()
    </script>

	<script>
	    // SideNav Init
	    $(".button-collapse").sideNav();
	    $(function () {
	    	  $('[data-toggle="tooltip"]').tooltip()
	    	})	
	</script>
	
	
</head>
<body>

	<!--Navigation-->
	<header>
		<!-- SideNav slide-out button 
	    <a href="#" data-activates="slide-out" class="button-collapse"><i class="fa fa-bars"></i></a>
	    -->
	    <!--/. SideNav slide-out button -->
	
	    <!-- Sidebar navigation -->
	    <ul id="slide-out" class="side-nav fixed default-side-nav light-side-nav">
	
	        <!-- Logo -->
	        <div class="logo-wrapper waves-light">
	            <a href="#"><img src="https://mdbootstrap.com/wp-content/uploads/2015/12/mdb-white2.png" class="img-fluid flex-center"></a>
	        </div>
	        <!--/. Logo -->
	
	        <!--Search Form-->
	        <form class="search-form" role="search">
	            <div class="form-group waves-effect">
	                <input type="text" class="form-control" placeholder="Search">
	            </div>
	        </form>
	        <!--/.Search Form-->
	
	        <!-- Side navigation links -->
	        <ul class="collapsible collapsible-accordion">
	            <li><a class="collapsible-header waves-effect">Click me</a>
	                <div class="collapsible-body">
	                    <ul>
	                        <li><a href="#" class="waves-effect">Link</a>
	                        </li>
	                        <li><a href="#" class="waves-effect">Link</a>
	                        </li>
	                    </ul>
	                </div>
	            </li>
	            <li><a class="collapsible-header waves-effect">Click me</a>
	                <div class="collapsible-body">
	                    <ul>
	                        <li><a href="#" class="waves-effect">Link</a>
	                        </li>
	                        <li><a href="#" class="waves-effect">Link</a>
	                        </li>
	                    </ul>
	                </div>
	            </li>
	            <li><a class="collapsible-header waves-effect">Click me</a>
	                <div class="collapsible-body">
	                    <ul>
	                        <li><a href="#" class="waves-effect">Link</a>
	                        </li>
	                        <li><a href="#" class="waves-effect">Link</a>
	                        </li>
	                    </ul>
	                </div>
	            </li>
	        </ul>
	        <!--/. Side navigation links -->
	    </ul>
	    <!--/. Sidebar navigation -->	
	    

		<!--Navbar-->
		<nav class="navbar navbar-fixed-top scrolling-navbar double-nav">
		
		    <!-- SideNav slide-out button -->
		    <div class="pull-left">
		        <a href="#" data-activates="slide-out" class="button-collapse"><i class="fa fa-bars"></i></a>
		    </div>
		
		    <!-- Breadcrumb-->
		    <div class="breadcrumb-dn">
		        <p>Material Design for Bootstrap</p>
		    </div>
		
		    <ul class="nav navbar-nav pull-right">
		
		        <li class="nav-item ">
		            <a class="nav-link"><i class="fa fa-envelope"></i> <span class="hidden-sm-down">Contact</span></a>
		        </li>
		        <li class="nav-item ">
		            <a class="nav-link"><i class="fa fa-comments-o"></i> <span class="hidden-sm-down">Support</span></a>
		        </li>
		        <li class="nav-item ">
		            <a class="nav-link"><i class="fa fa-user"></i> <span class="hidden-sm-down">Account</span></a>
		        </li>
		        <li class="nav-item dropdown">
		            <a class="nav-link dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i> Profile</a>
		            <div class="dropdown-menu dropdown-primary dd-right" aria-labelledby="dropdownMenu1" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
		                <a class="dropdown-item" href="#">Action</a>
		                <a class="dropdown-item" href="#">Another action</a>
		                <a class="dropdown-item" href="#">Something else here</a>
		            </div>
		        </li>
		    </ul>
		
		</nav>
		<!--/.Navbar-->	    
	</header>
	<!--/Navigation-->
	
	<!--Main layout-->
	<main>
		<div class="main-wrapper">
		        <div class="container-fluid">
		
		            <!--Main carousel-->
		            
		            <!--/.Main carousel-->
		
		            <h5 class="section-title st-mdb">Bestsellers <small>Secondary text</small></h5>
		
		            <!--Featured cards-->
		            <div class="row">
		
		                <!--First column-->
		                <div class="col-md-4">
		
		                </div>
		                <!--/First column-->
		
		                <!--Second column-->
		                <div class="col-md-4">
		
		                </div>
		                <!--/Second column-->
		
		                <!--Third column-->
		                <div class="col-md-4">
		
		                </div>
		                <!--/Third column-->
		            </div>
		            <!--/Featured cards-->
		
		            <h5 class="section-title st-mdb">Collections <small>Secondary text</small></h5>
		
		            <!--Collections-->
		            <div class="row">
		                <!--First column-->
		                <div class="col-md-3">
		
		                </div>
		                <!--/First column-->
		
		                <!--Second column-->
		                <div class="col-md-3">
		
		                </div>
		                <!--/Second column-->
		
		                <!--Third column-->
		                <div class="col-md-3">
		
		                </div>
		                <!--/Third column-->
		
		                <!--Fourth column-->
		                <div class="col-md-3">
		
		                </div>
		                <!--/Fourth column-->
		            </div>
		            <!--/Collections-->
		
		            <h5 class="section-title st-mdb">Additional cards <small>Secondary text</small></h5>
		
		            <!--Additional cards-->
		            <div class="row">
		                <!--First column-->
		                <div class="col-md-6">
		
		                </div>
		                <!--/First column-->
		
		                <!--Second column-->
		                <div class="col-md-6">
		
		                </div>
		                <!--/Second column-->
		            </div>
		            <!--/Additional cards-->
		
		            <h5 class="section-title st-mdb">Products carousel <small>Secondary text</small></h5>
		
		            <!--Products carousel-->
		            <div class="row">
		
		            </div>
		            <!--/Products carousel-->
		
		            <h5 class="section-title st-mdb">Blog <small>Secondary text</small></h5>
		
		            <!--Blog card-->
		            <div class="row">
		                <!--First column-->
		                <div class="col-md-4">
		
		                </div>
		                <!--/First column-->
		
		                <!--Second column-->
		                <div class="col-md-4">
		
		                </div>
		                <!--/Second column-->
		
		                <!--Third column-->
		                <div class="col-md-4">
		
		                </div>
		                <!--/Third column-->
		            </div>
		            <!--/Blog card-->
		
		        </div>
		    </div>	
	</main>
	<!--/Main layout-->
	
	<!--Footer-->
	<footer>
	</footer>
	<!--/Footer-->    	
	
</body>
</html>