<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Your personal medicine shop</title>
	
	<!-- jQuery -->
	<script type ="text/javascript" src="resources/javascript/vendor/jquery/jquery.min.js"></script>
	
	<!-- Bootstrap Core CSS -->
	<link href="resources/css/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
	
	<!-- Bootstrap Core JavaScript -->
	<script type ="text/javascript" src="resources/javascript/vendor/bootstrap/js/bootstrap.min.js"></script>

	<style> 
	
	.flex-container {
	    display: -webkit-flex;
	    display: flex;  
	    -webkit-flex-flow: row wrap;
	    flex-flow: row wrap;
	    text-align: center;
	}
	
	.flex-container > * {
	    padding: 15px;
	    -webkit-flex: 1 100%;
	    flex: 1 100%;
	}
	
	.article {
	    text-align: left;
	}
	
	header {background: #42c5f4;color:white;} //#41f4e2
	footer {background: #aaa;color:white;}
		
	@media all and (min-width: 768px) {
	    .nav {text-align:left;-webkit-flex: 1 auto;flex:1 auto;-webkit-order:1;order:1;}
	    .article {-webkit-flex:5 0px;flex:5 0px;-webkit-order:2;order:2;}
	    footer {-webkit-order:3;order:3;}
	}
	</style>	
	
</head>
<body>

	<div class="flex-container">
		<header>
		  
		  
		</header>
		

		
		<article class="article">
		  <h1>London</h1>
		  <p>London is the capital city of England. It is the most populous city in the United Kingdom,
		  with a metropolitan area of over 13 million inhabitants.</p>
		  <p>Standing on the River Thames, London has been a major settlement for two millennia,
		  its history going back to its founding by the Romans, who named it Londinium.</p>
		  <p><strong>Resize this page to see that what happens!</strong></p>
		</article>
		
		<footer>Copyright &copy; W3Schools.com</footer>
	</div>

</body>
</html>