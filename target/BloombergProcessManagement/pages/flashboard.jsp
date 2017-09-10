<!DOCTYPE html>
<html>
<head>
	
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	
	<title>Material Design Bootstrap</title>
	
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
	
	<!-- Bootstrap core CSS -->
	<link href="../resources/css/vendor/bootstrap-4/css/bootstrap.min.css" rel="stylesheet">

	<!-- Material Design Bootstrap -->
	<meta charset="utf-8">
	<link href="../resources/css/vendor/bootstrap-4/css/mdb.min.css" rel="stylesheet">
	<!-- Your custom styles (optional) -->
	<link href="../resources/css/vendor/bootstrap-4/css/style.css" rel="stylesheet">
	
</head>
<body>

	<!-- Modal Contact -->
	<div class="modal fade modal-ext" id="modal-contact" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<!--Content-->
			<div class="modal-content">
				<!--Header-->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Write to us</h4>
				</div>
				<!--Body-->
				<div class="modal-body">
					<p>We like to receive a messages.</p>
					<br>
					<div class="md-form">
						<i class="fa fa-user prefix"></i> <input id="form22"
							class="form-control" type="text"> <label for="form42">Your
							name</label>
					</div>

					<div class="md-form">
						<i class="fa fa-envelope prefix"></i> <input id="form32"
							class="form-control" type="text"> <label for="form34">Your
							email</label>
					</div>

					<div class="md-form">
						<i class="fa fa-tag prefix"></i> <input id="form32"
							class="form-control" type="text"> <label for="form34">Subject</label>
					</div>

					<div class="md-form">
						<i class="fa fa-pencil prefix"></i>
						<textarea type="text" id="form8" class="md-textarea"></textarea>
						<label for="form8">Icon Prefix</label>
					</div>

					<div class="text-xs-center">
						<button class="btn btn-primary waves-effect waves-light">Submit</button>

						<div class="call">
							<p>
								Or would you prefer to call? <span class="cf-phone"><i
									class="fa fa-phone"> +01 234 565 280</i></span>
							</p>
						</div>
					</div>
				</div>
				<!--Footer-->
				<div class="modal-footer">
					<button type="button"
						class="btn btn-default waves-effect waves-light"
						data-dismiss="modal">Close</button>
				</div>
			</div>
			<!--/.Content-->
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade cart-modal" id="cart-modal-ex" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<!--Content-->
			<div class="modal-content">
				<!--Header-->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Your cart</h4>
				</div>
				<!--Body-->
				<div class="modal-body">

					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th>Product name</th>
								<th>Price</th>
								<th>Remove</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Product 1</td>
								<td>100$</td>
								<td><a><i class="fa fa-remove"></i></a></td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Product 2</td>
								<td>100$</td>
								<td><a><i class="fa fa-remove"></i></a></td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Product 3</td>
								<td>100$</td>
								<td><a><i class="fa fa-remove"></i></a></td>
							</tr>
							<tr>
								<th scope="row">4</th>
								<td>Product 4</td>
								<td>100$</td>
								<td><a><i class="fa fa-remove"></i></a></td>
							</tr>
							<tr class="total">
								<th scope="row">5</th>
								<td>Total</td>
								<td>400$</td>
							</tr>
						</tbody>
					</table>

					<button class="btn btn-primary waves-effect waves-light">Checkout</button>

				</div>
				<!--Footer-->
				<div class="modal-footer">
					<button type="button"
						class="btn btn-default waves-effect waves-light"
						data-dismiss="modal">Close</button>
				</div>
			</div>
			<!--/.Content-->
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade ql-modal" id="quick-look-ex" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<!--Content-->
			<div class="modal-content">
				<!--Header-->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Quick look</h4>
				</div>
				<!--Body-->
				<div class="modal-body">
					<!--Grid-->
					<div class="container-fluid">
						<div class="row">

							<!--First column-->
							<div class="col-md-3">
								<h4>Gallery</h4>
								<hr>
								<!--Carousel Wrapper-->
								<div id="carousel-example-1"
									class="carousel slide carousel-fade" data-ride="carousel">

									<!--Slides-->
									<div class="carousel-inner" role="listbox">
										<div class="carousel-item">
											<img
												src="https://mdbootstrap.com/images/ecommerce/vertical/img%20(13).jpg"
												alt="First slide">
										</div>
										<div class="carousel-item">
											<img
												src="https://mdbootstrap.com/images/ecommerce/vertical/img%20(15).jpg"
												alt="Second slide">
										</div>
										<div class="carousel-item active">
											<img
												src="https://mdbootstrap.com/images/ecommerce/vertical/img%20(16).jpg"
												alt="Third slide">
										</div>
									</div>
									<!--/.Slides-->

									<!--Controls-->
									<a class="left carousel-control" href="#carousel-example-1"
										role="button" data-slide="prev"> <span class="icon-prev"
										aria-hidden="true"></span> <span class="sr-only">Previous</span>
									</a> <a class="right carousel-control" href="#carousel-example-1"
										role="button" data-slide="next"> <span class="icon-next"
										aria-hidden="true"></span> <span class="sr-only">Next</span>
									</a>
									<!--/.Controls-->
								</div>
								<!--/.Carousel Wrapper-->
							</div>
							<!--/.First column-->

							<!--Second column-->
							<div class="col-md-4">
								<!--Title-->
								<a><h4>Product title</h4></a>
								<hr>
								<!--Price-->
								<div class="price">
									<p>
										<span class="price-after">$500</span> <span
											class="price-before">$700</span>
									</p>
									<span class="label">-20%</span>
								</div>
								<!--Size-->
								<select class="mdb-select">
									<option value="" disabled="" selected="">Choose your
										size</option>
									<option value="1">20-30</option>
									<option value="2">31-40</option>
									<option value="3">41-50</option>
								</select>
								<!--Call to action-->
								<button class="btn btn-default waves-effect waves-light">Buy
									now</button>
								<a class="btn-floating wishlist waves-effect waves-light"
									data-toggle="tooltip" data-placement="bottom" title=""
									data-original-title="Add to wishlist"><i
									class="fa fa-heart"></i></a>

								<hr>

								<h4>Short description</h4>
								<hr>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Suscipit est, ex nulla voluptates eaque aperiam repudiandae
									consectetur quae quod.</p>
								<br>
								<!--Social buttons-->
								<p class="text-xs-center">Share with your friends!</p>
								<ul class="inline-ul">
									<li><a
										class="btn-floating btn-small btn-fb waves-effect waves-light"><i
											class="fa fa-facebook"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-tw waves-effect waves-light"><i
											class="fa fa-twitter"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
											class="fa fa-google-plus"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-li waves-effect waves-light"><i
											class="fa fa-linkedin"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-git waves-effect waves-light"><i
											class="fa fa-github"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-pin waves-effect waves-light"><i
											class="fa fa-pinterest"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-ins waves-effect waves-light"><i
											class="fa fa-instagram"> </i></a></li>
								</ul>


							</div>
							<!--/.Second column-->

							<!--Third column-->
							<div class="col-md-5">
								<h4>Reviews</h4>
								<hr>

								<!--First review-->
								<div class="media">
									<a class="media-left waves-light waves-effect waves-light">
										<img class="img-circle"
										src="https://mdbootstrap.com/wp-content/uploads/2015/10/team-avatar-1.jpg"
										alt="Generic placeholder image">
									</a>
									<div class="media-body">
										<h4 class="media-heading">John Doe</h4>
										<ul class="rating inline-ul">
											<li><i class="fa fa-star amber-text"></i></li>
											<li><i class="fa fa-star amber-text"></i></li>
											<li><i class="fa fa-star amber-text"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Nisi cupiditate temporibus iure soluta. Quasi mollitia
											maxime nemo quam accusamus possimus.</p>
									</div>
								</div>

								<!--Second review-->
								<div class="media">
									<a class="media-left waves-light waves-effect waves-light">
										<img class="img-circle"
										src="https://mdbootstrap.com/wp-content/uploads/2015/10/team-avatar-2.jpg"
										alt="Generic placeholder image">
									</a>
									<div class="media-body">
										<h4 class="media-heading">Nathan Casie</h4>
										<ul class="rating inline-ul">
											<li><i class="fa fa-star amber-text"></i></li>
											<li><i class="fa fa-star amber-text"></i></li>
											<li><i class="fa fa-star amber-text"></i></li>
											<li><i class="fa fa-star amber-text"></i></li>
											<li><i class="fa fa-star amber-text"></i></li>
										</ul>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Nisi cupiditate temporibus iure soluta. Quasi mollitia
											maxime nemo quam accusamus possimus.</p>
									</div>
								</div>

								<!--Second review-->
								<div class="media">
									<a class="media-left waves-light waves-effect waves-light">
										<img class="img-circle"
										src="https://mdbootstrap.com/wp-content/uploads/2015/10/team-avatar-3.jpg"
										alt="Generic placeholder image">
									</a>
									<div class="media-body">
										<h4 class="media-heading">Dave Snow</h4>
										<ul class="rating inline-ul">
											<li><i class="fa fa-star amber-text"></i></li>
											<li><i class="fa fa-star amber-text"></i></li>
											<li><i class="fa fa-star amber-text"></i></li>
											<li><i class="fa fa-star amber-text"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Nisi cupiditate temporibus iure soluta. Quasi mollitia
											maxime nemo quam accusamus possimus, voluptatum expedita
											assumenda. Earum sit id ullam eum vel delectus!</p>
									</div>
								</div>
							</div>
							<!--/.Third column-->
						</div>
					</div>
					<!--/.Grid-->

				</div>
				<!--Footer-->
				<div class="modal-footer">
					<a class="btn btn-default waves-effect waves-light">Ask about
						details</a>
					<button type="button"
						class="btn btn-primary waves-effect waves-light"
						data-dismiss="modal">Close</button>
				</div>
			</div>
			<!--/.Content-->
		</div>
	</div>
	<!--/Modal-->

	<header>

		<!-- Sidebar navigation -->
		<ul id="slide-out"
			class="side-nav fixed default-side-nav dark-side-nav"
			style="transform: translateX(0%);">

			<!-- Logo -->
			<div class="logo-wrapper waves-light waves-effect waves-light">
				<a href="#"><img
					src="https://mdbootstrap.com/wp-content/uploads/2015/12/mdb-white2.png"
					class="img-fluid flex-center"></a>
			</div>
			<!--/. Logo -->

			<!--Search Form-->
			<form class="search-form" role="search">
				<div class="form-group waves-light waves-effect waves-light">
					<input class="form-control" placeholder="Search" type="text">
				</div>
			</form>
			<!--/.Search Form-->

			<!-- Side navigation links -->
			<ul class="collapsible collapsible-accordion">
				<li><a
					class="collapsible-header waves-light waves-effect waves-light">Click
						me</a>
					<div class="collapsible-body" style="">
						<ul>
							<li><a href="#" class="waves-light waves-effect waves-light">Link</a>
							</li>
							<li><a href="#" class="waves-light waves-effect waves-light">Link</a>
							</li>
						</ul>
					</div></li>
				<li><a
					class="collapsible-header waves-light waves-effect waves-light">Click
						me</a>
					<div class="collapsible-body" style="">
						<ul>
							<li><a href="#" class="waves-light waves-effect waves-light">Link</a>
							</li>
							<li><a href="#" class="waves-light waves-effect waves-light">Link</a>
							</li>
						</ul>
					</div></li>
				<li><a
					class="collapsible-header waves-light waves-effect waves-light">Click
						me</a>
					<div class="collapsible-body" style="">
						<ul>
							<li><a href="#" class="waves-light waves-effect waves-light">Link</a>
							</li>
							<li><a href="#" class="waves-light waves-effect waves-light">Link</a>
							</li>
						</ul>
					</div></li>
			</ul>
			<!--/. Side navigation links -->
		</ul>
		<!--/. Sidebar navigation -->

		<!-- Navbar-->
		<nav
			class="navbar navbar-fixed-top scrolling-navbar double-nav elegant-color top-nav-collapse">

			<!-- SideNav slide-out button -->
			<div class="pull-left">
				<a href="#" data-activates="slide-out" class="button-collapse"><i
					class="fa fa-bars"></i></a>
			</div>

			<!-- Breadcrumb-->
			<div class="breadcrumb-dn">
				<p>Material Design for Bootstrap</p>
			</div>

			<!--Navigation icons-->
			<ul class="nav-icons">
				<li><a href="#" class=" waves-effect waves-light"
					data-toggle="modal" data-target="#modal-contact"><i
						class="fa fa-envelope-o"></i><br> <span>Contact</span></a></li>
				<li><a href="#" class=" waves-effect waves-light"><i
						class="fa fa-comments-o"></i><br> <span>Support</span></a></li>
				<li data-toggle="modal" data-target="#modal-login"><a href="#"
					class=" waves-effect waves-light"><i class="fa fa-sign-in"></i><br>
						<span>LogIn</span></a></li>
				<li><a href="#" class=" waves-effect waves-light"><i
						class="fa fa-sign-out"></i><br> <span>LogOut</span></a></li>
				<li><a href="#" class=" waves-effect waves-light"><i
						class="fa fa-user"></i><br> <span>Account</span></a></li>
				<li><a href="#cart-modal-ex" data-toggle="modal"
					class=" waves-effect waves-light"><i
						class="fa fa-shopping-cart"></i><br> <span>Cart</span></a></li>
				<span class="nav-counter">5</span>
			</ul>
		</nav>
		<!-- /.Navbar-->

	</header>

	<!-- Main layout-->
	<main>
	<div class="main-wrapper">
		<div class="container-fluid">

			<!--Main carousel-->

			<!--Carousel Wrapper-->
			<div id="carousel-example-2"
				class="carousel slide carousel-fade z-depth-1-half"
				data-ride="carousel">
				<!--Indicators-->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-2" data-slide-to="0" class=""></li>
					<li data-target="#carousel-example-2" data-slide-to="1" class=""></li>
					<li data-target="#carousel-example-2" data-slide-to="2"
						class="active"></li>
				</ol>
				<!--/.Indicators-->

				<!--Slides-->
				<div class="carousel-inner" role="listbox">
					<!--First slide-->
					<div class="carousel-item">
						<!--Mask color-->
						<div class="view hm-black-light">
							<img
								src="https://mdbootstrap.com/images/ecommerce/slides/slide%20(5).jpg"
								class="img-fluid" alt="">
							<div class="full-bg-img"></div>
						</div>
						<!--Caption-->
						<div class="carousel-caption">
							<div class="animated fadeInDown">
								<h3 class="h3-responsive">Light mask</h3>
								<p>Secondary text</p>
							</div>
						</div>
						<!--Caption-->
					</div>
					<!--/First slide-->

					<!--Second slide-->
					<div class="carousel-item">
						<!--Mask color-->
						<div class="view hm-black-strong">
							<img
								src="https://mdbootstrap.com/images/ecommerce/slides/slide%20(4).jpg"
								class="img-fluid" alt="">
							<div class="full-bg-img"></div>
						</div>
						<!--Caption-->
						<div class="carousel-caption">
							<div class="animated fadeInDown">
								<h3 class="h3-responsive">Strong mask</h3>
								<p>Secondary text</p>
							</div>
						</div>
						<!--Caption-->
					</div>
					<!--/Second slide-->

					<!--Third slide-->
					<div class="carousel-item active">
						<!--Mask color-->
						<div class="view hm-black-slight">
							<img
								src="https://mdbootstrap.com/images/ecommerce/slides/slide%20(2).jpg"
								class="img-fluid" alt="">
							<div class="full-bg-img"></div>
						</div>
						<!--Caption-->
						<div class="carousel-caption">
							<div class="animated fadeInDown">
								<h3 class="h3-responsive">Super light mask</h3>
								<p>Secondary text</p>
							</div>
						</div>
						<!--Caption-->
					</div>
					<!--/Third slide-->
				</div>
				<!--/.Slides-->

				<!--Controls-->
				<a class="left carousel-control" href="#carousel-example-2"
					role="button" data-slide="prev"> <span class="icon-prev"
					aria-hidden="true"></span> <span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-2"
					role="button" data-slide="next"> <span class="icon-next"
					aria-hidden="true"></span> <span class="sr-only">Next</span>
				</a>
				<!--/.Controls-->
			</div>
			<!--/.Carousel Wrapper-->

			<!--/.Main carousel-->

			<h5 class="section-title st-mdb">
				Bestsellers <small>Secondary text</small>
			</h5>

			<!--Featured cards-->
			<div class="row">

				<!--First column-->
				<div class="col-md-4">

					<!--Card-->
					<div class="card product-card">

						<!--Card image-->
						<div class="view overlay hm-white-slight">
							<img
								src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(24).jpg"
								class="img-fluid" alt=""> <a>
								<div class="mask waves-effect waves-light"></div>
							</a>
						</div>
						<!--/.Card image-->

						<!--Discount label-->
						<span class="label">-20%</span>

						<!--Rating-->
						<a class="btn rating btn-primary waves-effect waves-light"> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
						</a>

						<!--Buttons-->
						<div class="action-buttons">
							<a class="btn-floating activator waves-effect waves-light"><i
								class="fa fa-share-alt"></i></a> <a
								class="btn-floating red waves-effect waves-light"
								data-toggle="tooltip" data-placement="bottom" title=""
								data-original-title="Add to wishlist"><i class="fa fa-heart"></i></a>
						</div>

						<!--Card content-->
						<div class="card-block">
							<!--Title-->
							<a><h4 class="card-title">Product name</h4></a>
							<!--Text-->
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>

						<!--Call to action-->
						<div class="cta">
							<p>
								$500 <span>$700</span>
							</p>

							<button class="btn btn-primary waves-effect waves-light">Buy
								now</button>
							<button class="btn btn-default waves-effect waves-light"
								data-toggle="modal" data-target="#quick-look-ex">Quick
								look</button>
						</div>

						<!--Card reveal-->
						<div class="card-reveal">
							<div class="content text-xs-center">

								<h4 class="card-title">
									Social shares <i class="fa fa-close"></i>
								</h4>
								<hr>

								<!--Social Icons-->
								<ul class="inline-ul">
									<li><a
										class="btn-floating btn-small btn-fb waves-effect waves-light"><i
											class="fa fa-facebook"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-tw waves-effect waves-light"><i
											class="fa fa-twitter"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
											class="fa fa-google-plus"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-li waves-effect waves-light"><i
											class="fa fa-linkedin"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-git waves-effect waves-light"><i
											class="fa fa-github"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-pin waves-effect waves-light"><i
											class="fa fa-pinterest"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-ins waves-effect waves-light"><i
											class="fa fa-instagram"> </i></a></li>
								</ul>

							</div>
						</div>
						<!--/.Card reveal-->

					</div>
					<!--/.Card-->

				</div>
				<!--/First column-->

				<!--Second column-->
				<div class="col-md-4">

					<!--Card-->
					<div class="card product-card">

						<!--Card image-->
						<div class="view overlay hm-white-slight">
							<img
								src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(15).jpg"
								class="img-fluid" alt=""> <a>
								<div class="mask waves-effect waves-light"></div>
							</a>
						</div>
						<!--/.Card image-->

						<!--Discount label-->
						<span class="label">-20%</span>

						<!--Rating-->
						<a class="btn rating btn-primary waves-effect waves-light"> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
						</a>

						<!--Buttons-->
						<div class="action-buttons">
							<a class="btn-floating activator waves-effect waves-light"><i
								class="fa fa-share-alt"></i></a> <a
								class="btn-floating red waves-effect waves-light"
								data-toggle="tooltip" data-placement="bottom" title=""
								data-original-title="Add to wishlist"><i class="fa fa-heart"></i></a>
						</div>

						<!--Card content-->
						<div class="card-block">
							<!--Title-->
							<a><h4 class="card-title">Product name</h4></a>
							<!--Text-->
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>

						<!--Call to action-->
						<div class="cta">
							<p>
								$500 <span>$700</span>
							</p>

							<button class="btn btn-primary waves-effect waves-light">Buy
								now</button>
							<button class="btn btn-default waves-effect waves-light"
								data-toggle="modal" data-target="#quick-look-ex">Quick
								look</button>
						</div>

						<!--Card reveal-->
						<div class="card-reveal">
							<div class="content text-xs-center">

								<h4 class="card-title">
									Social shares <i class="fa fa-close"></i>
								</h4>
								<hr>

								<!--Social Icons-->
								<ul class="inline-ul">
									<li><a
										class="btn-floating btn-small btn-fb waves-effect waves-light"><i
											class="fa fa-facebook"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-tw waves-effect waves-light"><i
											class="fa fa-twitter"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
											class="fa fa-google-plus"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-li waves-effect waves-light"><i
											class="fa fa-linkedin"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-git waves-effect waves-light"><i
											class="fa fa-github"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-pin waves-effect waves-light"><i
											class="fa fa-pinterest"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-ins waves-effect waves-light"><i
											class="fa fa-instagram"> </i></a></li>
								</ul>

							</div>
						</div>
						<!--/.Card reveal-->

					</div>
					<!--/.Card-->

				</div>
				<!--/Second column-->

				<!--Third column-->
				<div class="col-md-4">

					<!--Card-->
					<div class="card product-card">

						<!--Card image-->
						<div class="view overlay hm-white-slight">
							<img
								src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(21).jpg"
								class="img-fluid" alt=""> <a>
								<div class="mask waves-effect waves-light"></div>
							</a>
						</div>
						<!--/.Card image-->

						<!--Discount label-->
						<span class="label">-20%</span>

						<!--Rating-->
						<a class="btn rating btn-primary waves-effect waves-light"> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
						</a>

						<!--Buttons-->
						<div class="action-buttons">
							<a class="btn-floating activator waves-effect waves-light"><i
								class="fa fa-share-alt"></i></a> <a
								class="btn-floating btn-small red waves-effect waves-light"
								data-toggle="tooltip" data-placement="bottom" title=""
								data-original-title="Add to wishlist"><i class="fa fa-heart"></i></a>
						</div>

						<!--Card content-->
						<div class="card-block">
							<!--Title-->
							<a><h4 class="card-title">Product name</h4></a>
							<!--Text-->
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>

						<!--Call to action-->
						<div class="cta">
							<p>
								$500 <span>$700</span>
							</p>

							<button class="btn btn-primary waves-effect waves-light">Buy
								now</button>
							<button class="btn btn-default waves-effect waves-light"
								data-toggle="modal" data-target="#quick-look-ex">Quick
								look</button>
						</div>

						<!--Card reveal-->
						<div class="card-reveal">
							<div class="content text-xs-center">

								<h4 class="card-title">
									Social shares <i class="fa fa-close"></i>
								</h4>
								<hr>

								<!--Social Icons-->
								<ul class="inline-ul">
									<li><a
										class="btn-floating btn-small btn-fb waves-effect waves-light"><i
											class="fa fa-facebook"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-tw waves-effect waves-light"><i
											class="fa fa-twitter"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
											class="fa fa-google-plus"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-li waves-effect waves-light"><i
											class="fa fa-linkedin"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-git waves-effect waves-light"><i
											class="fa fa-github"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-pin waves-effect waves-light"><i
											class="fa fa-pinterest"> </i></a></li>
									<li><a
										class="btn-floating btn-small btn-ins waves-effect waves-light"><i
											class="fa fa-instagram"> </i></a></li>
								</ul>

							</div>
						</div>
						<!--/.Card reveal-->

					</div>
					<!--/.Card-->

				</div>
				<!--/Third column-->
			</div>
			<!--/Featured cards-->

			<h5 class="section-title st-mdb">
				Collections <small>Secondary text</small>
			</h5>

			<!--Collections-->
			<div class="row">
				<!--First column-->
				<div class="col-md-3">

					<!--Collection card-->
					<div class="card collection-card">
						<!--Card image-->
						<div class="view  hm-zoom">
							<img
								src="https://mdbootstrap.com/images/ecommerce/vertical/img%20(14).jpg"
								class="img-fluid" alt="">
							<div class="stripe dark">
								<a>
									<p>
										Title <i class="fa fa-chevron-right"></i>
									</p>
								</a>
							</div>
						</div>
						<!--/.Card image-->
					</div>
					<!--/.Collection card-->

				</div>
				<!--/First column-->

				<!--Second column-->
				<div class="col-md-3">

					<!--Collection card-->
					<div class="card collection-card">
						<!--Card image-->
						<div class="view  hm-zoom">
							<img
								src="https://mdbootstrap.com/images/ecommerce/vertical/img%20(15).jpg"
								class="img-fluid" alt="">
							<div class="stripe light">
								<a>
									<p>
										Title <i class="fa fa-chevron-right"></i>
									</p>
								</a>
							</div>
						</div>
						<!--/.Card image-->
					</div>
					<!--/.Collection card-->

				</div>
				<!--/Second column-->

				<!--Third column-->
				<div class="col-md-3">

					<!--Collection card-->
					<div class="card collection-card">
						<!--Card image-->
						<div class="view  hm-zoom">
							<img
								src="https://mdbootstrap.com/images/ecommerce/vertical/img%20(16).jpg"
								class="img-fluid" alt="">
							<div class="stripe dark">
								<a>
									<p>
										Title <i class="fa fa-chevron-right"></i>
									</p>
								</a>
							</div>
						</div>
						<!--/.Card image-->
					</div>
					<!--/.Collection card-->

				</div>
				<!--/Third column-->

				<!--Fourth column-->
				<div class="col-md-3">

					<!--Collection card-->
					<div class="card collection-card">
						<!--Card image-->
						<div class="view  hm-zoom">
							<img
								src="https://mdbootstrap.com/images/ecommerce/vertical/img%20(19).jpg"
								class="img-fluid" alt="">
							<div class="stripe light">
								<a>
									<p>
										Title <i class="fa fa-chevron-right"></i>
									</p>
								</a>
							</div>
						</div>
						<!--/.Card image-->
					</div>
					<!--/.Collection card-->

				</div>
				<!--/Fourth column-->
			</div>
			<!--/Collections-->

			<h5 class="section-title st-mdb">
				Additional cards <small>Secondary text</small>
			</h5>

			<!--Additional cards-->
			<div class="row">
				<!--First column-->
				<div class="col-md-6">
					<!--Card-->
					<div class="card product-card">

						<!--Card image-->
						<div class="view overlay hm-white-slight">
							<img
								src="https://mdbootstrap.com/images/ecommerce/slides/slide%20(1).jpg"
								class="img-fluid" alt=""> <a>
								<div class="mask waves-effect waves-light"></div>
							</a>
						</div>
						<!--/.Card image-->

						<!--Discount label-->
						<span class="label">-20%</span>

						<!--Card content-->
						<div class="card-block">
							<!--Title-->
							<a><h4 class="card-title">Product name</h4></a>

							<!--Text-->
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Explicabo dolorem saepe voluptas itaque
								doloribus.</p>
						</div>
						<!--/.Card content-->

						<!--Call to action-->
						<div class="cta">
							<p>
								$500 <span>$700</span>
							</p>

							<button class="btn btn-primary waves-effect waves-light">Buy
								now</button>
							<button class="btn btn-default waves-effect waves-light">Live
								preview</button>
						</div>

					</div>
					<!--/.Card-->
				</div>
				<!--/First column-->

				<!--Second column-->
				<div class="col-md-6">
					<!--Card-->
					<div class="card product-card">

						<!--Card image-->
						<div class="view overlay hm-white-slight">
							<img
								src="https://mdbootstrap.com/images/ecommerce/slides/slide%20(3).jpg"
								class="img-fluid" alt=""> <a>
								<div class="mask waves-effect waves-light"></div>
							</a>
						</div>
						<!--/.Card image-->

						<!--Discount label-->
						<span class="label">-20%</span>

						<!--Card content-->
						<div class="card-block">
							<!--Title-->
							<a><h4 class="card-title">Product name</h4></a>

							<!--Text-->
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Explicabo dolorem saepe voluptas itaque
								doloribus.</p>
						</div>
						<!--/.Card content-->

						<!--Call to action-->
						<div class="cta">
							<p>
								$500 <span>$700</span>
							</p>

							<button class="btn btn-primary waves-effect waves-light">Buy
								now</button>
							<button class="btn btn-default waves-effect waves-light">Live
								preview</button>
						</div>

					</div>
					<!--/.Card-->
				</div>
				<!--/Second column-->
			</div>
			<!--/Additional cards-->

			<h5 class="section-title st-mdb">
				Products carousel <small>Secondary text</small>
			</h5>

			<!--Products carousel-->
			<div class="row">

				<!--Carousel Wrapper-->
				<div id="multi-item-example"
					class="carousel slide carousel-multi-item" data-ride="carousel">

					<!--Controls-->
					<div class="controls-top">
						<a class="btn-floating btn-small waves-effect waves-light"
							href="#multi-item-example" data-slide="prev"><i
							class="fa fa-chevron-left"></i></a> <a
							class="btn-floating btn-small waves-effect waves-light"
							href="#multi-item-example" data-slide="next"><i
							class="fa fa-chevron-right"></i></a>
					</div>
					<!--/.Controls-->

					<!--Indicators-->
					<ol class="carousel-indicators">
						<li data-target="#multi-item-example" data-slide-to="0" class=""></li>
						<li data-target="#multi-item-example" data-slide-to="1" class=""></li>
						<li data-target="#multi-item-example" data-slide-to="2"
							class="active"></li>
					</ol>
					<!--/.Indicators-->

					<!--Slides-->
					<div class="carousel-inner" role="listbox">

						<!--First slide-->
						<div class="carousel-item">

							<div class="col-md-4">
								<!--Card-->
								<div class="card product-card">

									<!--Card image-->
									<div class="view overlay hm-white-slight">
										<img
											src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(9).jpg"
											class="img-fluid" alt=""> <a>
											<div class="mask waves-effect waves-light"></div>
										</a>
									</div>
									<!--/.Card image-->

									<!--Discount label-->
									<span class="label">-20%</span>

									<!--Rating-->
									<a class="btn rating  waves-effect waves-light"> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
									</a>

									<!--Buttons-->
									<div class="action-buttons">
										<a class="btn-floating activator waves-effect waves-light"><i
											class="fa fa-share-alt"></i></a> <a
											class="btn-floating waves-effect waves-light"
											data-toggle="tooltip" data-placement="bottom" title=""
											data-original-title="Add to wishlist"><i
											class="fa fa-heart"></i></a>
									</div>

									<!--Card content-->
									<div class="card-block">
										<!--Title-->
										<a><h4 class="card-title">Product name</h4></a>
									</div>

									<!--Call to action-->
									<div class="cta">
										<p>
											$500 <span>$700</span>
										</p>

										<button class="btn btn-primary waves-effect waves-light">Buy
											now</button>
										<button class="btn btn-default waves-effect waves-light"
											data-toggle="modal" data-target="#quick-look-ex">Quick
											look</button>
									</div>

									<!--Card reveal-->
									<div class="card-reveal">
										<div class="content text-xs-center">

											<h4 class="card-title">
												Social shares <i class="fa fa-close"></i>
											</h4>
											<hr>

											<!--Social Icons-->
											<ul class="inline-ul">
												<li><a
													class="btn-floating btn-small btn-fb waves-effect waves-light"><i
														class="fa fa-facebook"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-tw waves-effect waves-light"><i
														class="fa fa-twitter"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
														class="fa fa-google-plus"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-li waves-effect waves-light"><i
														class="fa fa-linkedin"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-git waves-effect waves-light"><i
														class="fa fa-github"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-pin waves-effect waves-light"><i
														class="fa fa-pinterest"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-ins waves-effect waves-light"><i
														class="fa fa-instagram"> </i></a></li>
											</ul>

										</div>
									</div>
									<!--/.Card reveal-->

								</div>
								<!--/.Card-->
							</div>

							<div class="col-md-4 hidden-sm-down">
								<!--Card-->
								<div class="card product-card">

									<!--Card image-->
									<div class="view overlay hm-white-slight">
										<img
											src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(8).jpg"
											class="img-fluid" alt=""> <a>
											<div class="mask waves-effect waves-light"></div>
										</a>
									</div>
									<!--/.Card image-->

									<!--Discount label-->
									<span class="label">-20%</span>

									<!--Rating-->
									<a class="btn rating  waves-effect waves-light"> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
									</a>

									<!--Buttons-->
									<div class="action-buttons">
										<a class="btn-floating activator waves-effect waves-light"><i
											class="fa fa-share-alt"></i></a> <a
											class="btn-floating waves-effect waves-light"
											data-toggle="tooltip" data-placement="bottom" title=""
											data-original-title="Add to wishlist"><i
											class="fa fa-heart"></i></a>
									</div>

									<!--Card content-->
									<div class="card-block">
										<!--Title-->
										<a><h4 class="card-title">Product name</h4></a>
									</div>

									<!--Call to action-->
									<div class="cta">
										<p>
											$500 <span>$700</span>
										</p>

										<button class="btn btn-primary waves-effect waves-light">Buy
											now</button>
										<button class="btn btn-default waves-effect waves-light"
											data-toggle="modal" data-target="#quick-look-ex">Quick
											look</button>
									</div>

									<!--Card reveal-->
									<div class="card-reveal">
										<div class="content text-xs-center">

											<h4 class="card-title">
												Social shares <i class="fa fa-close"></i>
											</h4>
											<hr>

											<!--Social Icons-->
											<ul class="inline-ul">
												<li><a
													class="btn-floating btn-small btn-fb waves-effect waves-light"><i
														class="fa fa-facebook"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-tw waves-effect waves-light"><i
														class="fa fa-twitter"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
														class="fa fa-google-plus"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-li waves-effect waves-light"><i
														class="fa fa-linkedin"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-git waves-effect waves-light"><i
														class="fa fa-github"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-pin waves-effect waves-light"><i
														class="fa fa-pinterest"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-ins waves-effect waves-light"><i
														class="fa fa-instagram"> </i></a></li>
											</ul>

										</div>
									</div>
									<!--/.Card reveal-->

								</div>
								<!--/.Card-->
							</div>

							<div class="col-md-4 hidden-sm-down">
								<!--Card-->
								<div class="card product-card">

									<!--Card image-->
									<div class="view overlay hm-white-slight">
										<img
											src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(7).jpg"
											class="img-fluid" alt=""> <a>
											<div class="mask waves-effect waves-light"></div>
										</a>
									</div>
									<!--/.Card image-->

									<!--Discount label-->
									<span class="label">-20%</span>

									<!--Rating-->
									<a class="btn rating  waves-effect waves-light"> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
									</a>

									<!--Buttons-->
									<div class="action-buttons">
										<a class="btn-floating activator waves-effect waves-light"><i
											class="fa fa-share-alt"></i></a> <a
											class="btn-floating waves-effect waves-light"
											data-toggle="tooltip" data-placement="bottom" title=""
											data-original-title="Add to wishlist"><i
											class="fa fa-heart"></i></a>
									</div>

									<!--Card content-->
									<div class="card-block">
										<!--Title-->
										<a><h4 class="card-title">Product name</h4></a>
									</div>

									<!--Call to action-->
									<div class="cta">
										<p>
											$500 <span>$700</span>
										</p>

										<button class="btn btn-primary waves-effect waves-light">Buy
											now</button>
										<button class="btn btn-default waves-effect waves-light"
											data-toggle="modal" data-target="#quick-look-ex">Quick
											look</button>
									</div>

									<!--Card reveal-->
									<div class="card-reveal">
										<div class="content text-xs-center">

											<h4 class="card-title">
												Social shares <i class="fa fa-close"></i>
											</h4>
											<hr>

											<!--Social Icons-->
											<ul class="inline-ul">
												<li><a
													class="btn-floating btn-small btn-fb waves-effect waves-light"><i
														class="fa fa-facebook"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-tw waves-effect waves-light"><i
														class="fa fa-twitter"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
														class="fa fa-google-plus"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-li waves-effect waves-light"><i
														class="fa fa-linkedin"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-git waves-effect waves-light"><i
														class="fa fa-github"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-pin waves-effect waves-light"><i
														class="fa fa-pinterest"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-ins waves-effect waves-light"><i
														class="fa fa-instagram"> </i></a></li>
											</ul>

										</div>
									</div>
									<!--/.Card reveal-->

								</div>
								<!--/.Card-->
							</div>

						</div>
						<!--/.First slide-->

						<!--Second slide-->
						<div class="carousel-item active left">

							<div class="col-md-4">
								<!--Card-->
								<div class="card product-card">

									<!--Card image-->
									<div class="view overlay hm-white-slight">
										<img
											src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(6).jpg"
											class="img-fluid" alt=""> <a>
											<div class="mask waves-effect waves-light"></div>
										</a>
									</div>
									<!--/.Card image-->

									<!--Discount label-->
									<span class="label">-20%</span>

									<!--Rating-->
									<a class="btn rating  waves-effect waves-light"> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
									</a>

									<!--Buttons-->
									<div class="action-buttons">
										<a class="btn-floating activator waves-effect waves-light"><i
											class="fa fa-share-alt"></i></a> <a
											class="btn-floating waves-effect waves-light"
											data-toggle="tooltip" data-placement="bottom" title=""
											data-original-title="Add to wishlist"><i
											class="fa fa-heart"></i></a>
									</div>

									<!--Card content-->
									<div class="card-block">
										<!--Title-->
										<a><h4 class="card-title">Product name</h4></a>
									</div>

									<!--Call to action-->
									<div class="cta">
										<p>
											$500 <span>$700</span>
										</p>

										<button class="btn btn-primary waves-effect waves-light">Buy
											now</button>
										<button class="btn btn-default waves-effect waves-light"
											data-toggle="modal" data-target="#quick-look-ex">Quick
											look</button>
									</div>

									<!--Card reveal-->
									<div class="card-reveal">
										<div class="content text-xs-center">

											<h4 class="card-title">
												Social shares <i class="fa fa-close"></i>
											</h4>
											<hr>

											<!--Social Icons-->
											<ul class="inline-ul">
												<li><a
													class="btn-floating btn-small btn-fb waves-effect waves-light"><i
														class="fa fa-facebook"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-tw waves-effect waves-light"><i
														class="fa fa-twitter"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
														class="fa fa-google-plus"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-li waves-effect waves-light"><i
														class="fa fa-linkedin"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-git waves-effect waves-light"><i
														class="fa fa-github"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-pin waves-effect waves-light"><i
														class="fa fa-pinterest"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-ins waves-effect waves-light"><i
														class="fa fa-instagram"> </i></a></li>
											</ul>

										</div>
									</div>
									<!--/.Card reveal-->

								</div>
								<!--/.Card-->
							</div>

							<div class="col-md-4 hidden-sm-down">
								<!--Card-->
								<div class="card product-card">

									<!--Card image-->
									<div class="view overlay hm-white-slight">
										<img
											src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(5).jpg"
											class="img-fluid" alt=""> <a>
											<div class="mask waves-effect waves-light"></div>
										</a>
									</div>
									<!--/.Card image-->

									<!--Discount label-->
									<span class="label">-20%</span>

									<!--Rating-->
									<a class="btn rating  waves-effect waves-light"> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
									</a>

									<!--Buttons-->
									<div class="action-buttons">
										<a class="btn-floating activator waves-effect waves-light"><i
											class="fa fa-share-alt"></i></a> <a
											class="btn-floating waves-effect waves-light"
											data-toggle="tooltip" data-placement="bottom" title=""
											data-original-title="Add to wishlist"><i
											class="fa fa-heart"></i></a>
									</div>

									<!--Card content-->
									<div class="card-block">
										<!--Title-->
										<a><h4 class="card-title">Product name</h4></a>
									</div>

									<!--Call to action-->
									<div class="cta">
										<p>
											$500 <span>$700</span>
										</p>

										<button class="btn btn-primary waves-effect waves-light">Buy
											now</button>
										<button class="btn btn-default waves-effect waves-light"
											data-toggle="modal" data-target="#quick-look-ex">Quick
											look</button>
									</div>

									<!--Card reveal-->
									<div class="card-reveal">
										<div class="content text-xs-center">

											<h4 class="card-title">
												Social shares <i class="fa fa-close"></i>
											</h4>
											<hr>

											<!--Social Icons-->
											<ul class="inline-ul">
												<li><a
													class="btn-floating btn-small btn-fb waves-effect waves-light"><i
														class="fa fa-facebook"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-tw waves-effect waves-light"><i
														class="fa fa-twitter"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
														class="fa fa-google-plus"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-li waves-effect waves-light"><i
														class="fa fa-linkedin"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-git waves-effect waves-light"><i
														class="fa fa-github"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-pin waves-effect waves-light"><i
														class="fa fa-pinterest"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-ins waves-effect waves-light"><i
														class="fa fa-instagram"> </i></a></li>
											</ul>

										</div>
									</div>
									<!--/.Card reveal-->

								</div>
								<!--/.Card-->
							</div>

							<div class="col-md-4 hidden-sm-down">
								<!--Card-->
								<div class="card product-card">

									<!--Card image-->
									<div class="view overlay hm-white-slight">
										<img
											src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(4).jpg"
											class="img-fluid" alt=""> <a>
											<div class="mask waves-effect waves-light"></div>
										</a>
									</div>
									<!--/.Card image-->

									<!--Discount label-->
									<span class="label">-20%</span>

									<!--Rating-->
									<a class="btn rating  waves-effect waves-light"> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
									</a>

									<!--Buttons-->
									<div class="action-buttons">
										<a class="btn-floating activator waves-effect waves-light"><i
											class="fa fa-share-alt"></i></a> <a
											class="btn-floating waves-effect waves-light"
											data-toggle="tooltip" data-placement="bottom" title=""
											data-original-title="Add to wishlist"><i
											class="fa fa-heart"></i></a>
									</div>

									<!--Card content-->
									<div class="card-block">
										<!--Title-->
										<a><h4 class="card-title">Product name</h4></a>
									</div>

									<!--Call to action-->
									<div class="cta">
										<p>
											$500 <span>$700</span>
										</p>

										<button class="btn btn-primary waves-effect waves-light">Buy
											now</button>
										<button class="btn btn-default waves-effect waves-light"
											data-toggle="modal" data-target="#quick-look-ex">Quick
											look</button>
									</div>

									<!--Card reveal-->
									<div class="card-reveal">
										<div class="content text-xs-center">

											<h4 class="card-title">
												Social shares <i class="fa fa-close"></i>
											</h4>
											<hr>

											<!--Social Icons-->
											<ul class="inline-ul">
												<li><a
													class="btn-floating btn-small btn-fb waves-effect waves-light"><i
														class="fa fa-facebook"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-tw waves-effect waves-light"><i
														class="fa fa-twitter"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
														class="fa fa-google-plus"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-li waves-effect waves-light"><i
														class="fa fa-linkedin"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-git waves-effect waves-light"><i
														class="fa fa-github"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-pin waves-effect waves-light"><i
														class="fa fa-pinterest"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-ins waves-effect waves-light"><i
														class="fa fa-instagram"> </i></a></li>
											</ul>

										</div>
									</div>
									<!--/.Card reveal-->

								</div>
								<!--/.Card-->
							</div>

						</div>
						<!--/.Second slide-->

						<!--Third slide-->
						<div class="carousel-item next left">

							<div class="col-md-4">
								<!--Card-->
								<div class="card product-card">

									<!--Card image-->
									<div class="view overlay hm-white-slight">
										<img
											src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(3).jpg"
											class="img-fluid" alt=""> <a>
											<div class="mask waves-effect waves-light"></div>
										</a>
									</div>
									<!--/.Card image-->

									<!--Discount label-->
									<span class="label">-20%</span>

									<!--Rating-->
									<a class="btn rating  waves-effect waves-light"> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
									</a>

									<!--Buttons-->
									<div class="action-buttons">
										<a class="btn-floating activator waves-effect waves-light"><i
											class="fa fa-share-alt"></i></a> <a
											class="btn-floating waves-effect waves-light"
											data-toggle="tooltip" data-placement="bottom" title=""
											data-original-title="Add to wishlist"><i
											class="fa fa-heart"></i></a>
									</div>

									<!--Card content-->
									<div class="card-block">
										<!--Title-->
										<a><h4 class="card-title">Product name</h4></a>
									</div>

									<!--Call to action-->
									<div class="cta">
										<p>
											$500 <span>$700</span>
										</p>

										<button class="btn btn-primary waves-effect waves-light">Buy
											now</button>
										<button class="btn btn-default waves-effect waves-light"
											data-toggle="modal" data-target="#quick-look-ex">Quick
											look</button>
									</div>

									<!--Card reveal-->
									<div class="card-reveal">
										<div class="content text-xs-center">

											<h4 class="card-title">
												Social shares <i class="fa fa-close"></i>
											</h4>
											<hr>

											<!--Social Icons-->
											<ul class="inline-ul">
												<li><a
													class="btn-floating btn-small btn-fb waves-effect waves-light"><i
														class="fa fa-facebook"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-tw waves-effect waves-light"><i
														class="fa fa-twitter"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
														class="fa fa-google-plus"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-li waves-effect waves-light"><i
														class="fa fa-linkedin"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-git waves-effect waves-light"><i
														class="fa fa-github"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-pin waves-effect waves-light"><i
														class="fa fa-pinterest"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-ins waves-effect waves-light"><i
														class="fa fa-instagram"> </i></a></li>
											</ul>

										</div>
									</div>
									<!--/.Card reveal-->

								</div>
								<!--/.Card-->
							</div>

							<div class="col-md-4 hidden-sm-down">
								<!--Card-->
								<div class="card product-card">

									<!--Card image-->
									<div class="view overlay hm-white-slight">
										<img
											src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(2).jpg"
											class="img-fluid" alt=""> <a>
											<div class="mask waves-effect waves-light"></div>
										</a>
									</div>
									<!--/.Card image-->

									<!--Discount label-->
									<span class="label">-20%</span>

									<!--Rating-->
									<a class="btn rating  waves-effect waves-light"> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
									</a>

									<!--Buttons-->
									<div class="action-buttons">
										<a class="btn-floating activator waves-effect waves-light"><i
											class="fa fa-share-alt"></i></a> <a
											class="btn-floating waves-effect waves-light"
											data-toggle="tooltip" data-placement="bottom" title=""
											data-original-title="Add to wishlist"><i
											class="fa fa-heart"></i></a>
									</div>

									<!--Card content-->
									<div class="card-block">
										<!--Title-->
										<a><h4 class="card-title">Product name</h4></a>
									</div>

									<!--Call to action-->
									<div class="cta">
										<p>
											$500 <span>$700</span>
										</p>

										<button class="btn btn-primary waves-effect waves-light">Buy
											now</button>
										<button class="btn btn-default waves-effect waves-light"
											data-toggle="modal" data-target="#quick-look-ex">Quick
											look</button>
									</div>

									<!--Card reveal-->
									<div class="card-reveal">
										<div class="content text-xs-center">

											<h4 class="card-title">
												Social shares <i class="fa fa-close"></i>
											</h4>
											<hr>

											<!--Social Icons-->
											<ul class="inline-ul">
												<li><a
													class="btn-floating btn-small btn-fb waves-effect waves-light"><i
														class="fa fa-facebook"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-tw waves-effect waves-light"><i
														class="fa fa-twitter"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
														class="fa fa-google-plus"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-li waves-effect waves-light"><i
														class="fa fa-linkedin"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-git waves-effect waves-light"><i
														class="fa fa-github"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-pin waves-effect waves-light"><i
														class="fa fa-pinterest"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-ins waves-effect waves-light"><i
														class="fa fa-instagram"> </i></a></li>
											</ul>

										</div>
									</div>
									<!--/.Card reveal-->

								</div>
								<!--/.Card-->
							</div>

							<div class="col-md-4 hidden-sm-down">
								<!--Card-->
								<div class="card product-card">

									<!--Card image-->
									<div class="view overlay hm-white-slight">
										<img
											src="https://mdbootstrap.com/images/ecommerce/reg/reg%20(1).jpg"
											class="img-fluid" alt=""> <a>
											<div class="mask waves-effect waves-light"></div>
										</a>
									</div>
									<!--/.Card image-->

									<!--Discount label-->
									<span class="label">-20%</span>

									<!--Rating-->
									<a class="btn rating  waves-effect waves-light"> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
									</a>

									<!--Buttons-->
									<div class="action-buttons">
										<a class="btn-floating activator waves-effect waves-light"><i
											class="fa fa-share-alt"></i></a> <a
											class="btn-floating waves-effect waves-light"
											data-toggle="tooltip" data-placement="bottom" title=""
											data-original-title="Add to wishlist"><i
											class="fa fa-heart"></i></a>
									</div>

									<!--Card content-->
									<div class="card-block">
										<!--Title-->
										<a><h4 class="card-title">Product name</h4></a>
									</div>

									<!--Call to action-->
									<div class="cta">
										<p>
											$500 <span>$700</span>
										</p>

										<button class="btn btn-primary waves-effect waves-light">Buy
											now</button>
										<button class="btn btn-default waves-effect waves-light"
											data-toggle="modal" data-target="#quick-look-ex">Quick
											look</button>
									</div>

									<!--Card reveal-->
									<div class="card-reveal">
										<div class="content text-xs-center">

											<h4 class="card-title">
												Social shares <i class="fa fa-close"></i>
											</h4>
											<hr>

											<!--Social Icons-->
											<ul class="inline-ul">
												<li><a
													class="btn-floating btn-small btn-fb waves-effect waves-light"><i
														class="fa fa-facebook"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-tw waves-effect waves-light"><i
														class="fa fa-twitter"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-gplus waves-effect waves-light"><i
														class="fa fa-google-plus"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-li waves-effect waves-light"><i
														class="fa fa-linkedin"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-git waves-effect waves-light"><i
														class="fa fa-github"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-pin waves-effect waves-light"><i
														class="fa fa-pinterest"> </i></a></li>
												<li><a
													class="btn-floating btn-small btn-ins waves-effect waves-light"><i
														class="fa fa-instagram"> </i></a></li>
											</ul>

										</div>
									</div>
									<!--/.Card reveal-->

								</div>
								<!--/.Card-->
							</div>

						</div>
						<!--/.Third slide-->

					</div>
					<!--/.Slides-->

				</div>
				<!--/.Carousel Wrapper-->

			</div>
			<!--/Products carousel-->

			<h5 class="section-title st-mdb">
				Blog <small>Secondary text</small>
			</h5>

			<!--Blog cards-->
			<div class="row">
				<!--First column-->
				<div class="col-md-4">
					<!--Card-->
					<div class="card">

						<!--Card image-->
						<div class="view overlay hm-white-slight">
							<img
								src="https://mdbootstrap.com/images/regular/people/img%20(2).jpg"
								class="img-fluid" alt=""> <a>
								<div class="mask waves-effect waves-light"></div>
							</a>
						</div>
						<!--/.Card image-->

						<!--Button-->
						<a
							class="btn-floating btn-action elegant-color waves-effect waves-light"><i
							class="fa fa-chevron-right"></i></a>

						<!--Card content-->
						<div class="card-block">
							<!--Title-->
							<h4 class="card-title">Card title</h4>
							<hr>
							<!--Text-->
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
						<!--/.Card content-->

						<!-- Card footer -->
						<div class="card-data">
							<ul>
								<li><i class="fa fa-clock-o"></i> 05/10/2015</li>
								<li><a href="#"><i class="fa fa-comments-o"></i>12</a></li>
								<li><a href="#"><i class="fa fa-facebook"> </i>21</a></li>
								<li><a href="#"><i class="fa fa-twitter"> </i>5</a></li>
							</ul>
						</div>
						<!-- Card footer -->

					</div>
					<!--/.Card-->
				</div>
				<!--/First column-->

				<!--Second column-->
				<div class="col-md-4">
					<!--Card-->
					<div class="card">

						<!--Card image-->
						<div class="view overlay hm-white-slight">
							<img
								src="https://mdbootstrap.com/images/regular/people/img%20(3).jpg"
								class="img-fluid" alt=""> <a>
								<div class="mask waves-effect waves-light"></div>
							</a>
						</div>
						<!--/.Card image-->

						<!--Button-->
						<a
							class="btn-floating btn-action elegant-color waves-effect waves-light"><i
							class="fa fa-chevron-right"></i></a>

						<!--Card content-->
						<div class="card-block">
							<!--Title-->
							<h4 class="card-title">Card title</h4>
							<hr>
							<!--Text-->
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
						<!--/.Card content-->

						<!-- Card footer -->
						<div class="card-data">
							<ul>
								<li><i class="fa fa-clock-o"></i> 05/10/2015</li>
								<li><a href="#"><i class="fa fa-comments-o"></i>12</a></li>
								<li><a href="#"><i class="fa fa-facebook"> </i>21</a></li>
								<li><a href="#"><i class="fa fa-twitter"> </i>5</a></li>
							</ul>
						</div>
						<!-- Card footer -->

					</div>
					<!--/.Card-->
				</div>
				<!--/Second column-->

				<!--Third column-->
				<div class="col-md-4">
					<!--Card-->
					<div class="card">

						<!--Card image-->
						<div class="view overlay hm-white-slight">
							<img
								src="https://mdbootstrap.com/images/regular/people/img%20(8).jpg"
								class="img-fluid" alt=""> <a>
								<div class="mask waves-effect waves-light"></div>
							</a>
						</div>
						<!--/.Card image-->

						<!--Button-->
						<a
							class="btn-floating btn-action elegant-color waves-effect waves-light"><i
							class="fa fa-chevron-right"></i></a>

						<!--Card content-->
						<div class="card-block">
							<!--Title-->
							<h4 class="card-title">Card title</h4>
							<hr>
							<!--Text-->
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
						<!--/.Card content-->

						<!-- Card footer -->
						<div class="card-data">
							<ul>
								<li><i class="fa fa-clock-o"></i> 05/10/2015</li>
								<li><a href="#"><i class="fa fa-comments-o"></i>12</a></li>
								<li><a href="#"><i class="fa fa-facebook"> </i>21</a></li>
								<li><a href="#"><i class="fa fa-twitter"> </i>5</a></li>
							</ul>
						</div>
						<!-- Card footer -->

					</div>
					<!--/.Card-->
				</div>
				<!--/Third column-->
			</div>
			<!--/Blog cards-->

		</div>
	</div>
	</main>
	<!-- /.Main layout-->

	<!--Footer-->
	<footer class="page-footer center-on-small-only elegant-color">

		<!--Footer Links-->
		<div class="container-fluid">
			<div class="row">

				<!--First column-->
				<div class="col-md-4">
					<p class="column-title white-text">About Material Design</p>
					<div class="column-content">
						<p class="thin-100 white-text">
							Material Design (codenamed Quantum Paper) is a design language
							developed by Google. <br> <br> Material Design for
							Bootstrap (MDB) is a powerful Material Design UI KIT for most
							popular HTML, CSS, and JS framework - Bootstrap.
						</p>
					</div>
				</div>
				<!--/.First column-->

				<hr class="hidden-md-up">

				<!--Second column-->
				<div class="col-md-2 offset-md-1">
					<p class="column-title white-text">USEFUL LINKS</p>
					<ul>
						<li><a href="#" data-toggle="modal" data-target="#myModal">Contact
								us</a></li>
						<li><a
							href="https://mdbootstrap.com/material-design-for-bootstrap/">About
								MDB</a></li>
						<li><a href="https://mdbootstrap.com/forums/forum/support/">Support</a></li>
						<li><a href="https://mdbootstrap.com/forums/forum/bugs/">Bug
								Report</a></li>
						<li><a href="https://mdbootstrap.com/license/">License</a></li>
						<li><a href="https://mdbootstrap.com/changelog/">ChangeLog</a></li>
					</ul>
				</div>
				<!--/.Second column-->

				<hr class="hidden-md-up">

				<!--Third column-->
				<div class="col-md-2">
					<p class="column-title white-text">MDB Free Popular</p>
					<ul>
						<li><a href="https://mdbootstrap.com/templates/">Templates</a></li>
						<li><a href="https://mdbootstrap.com/css/animations/">Animations</a></li>
						<li><a href="https://mdbootstrap.com/components/forms/">Forms</a></li>
						<li><a href="https://mdbootstrap.com/javascript/carousel/">Carousel</a></li>
						<li><a href="https://mdbootstrap.com/components/buttons/">Buttons</a></li>
						<li><a href="https://mdbootstrap.com/javascript/parallax/">Parallax</a></li>
					</ul>
				</div>
				<!--/.Third column-->

				<hr class="hidden-md-up">

				<!--Fourth column-->
				<div class="col-md-2">
					<p class="column-title white-text">MDB Pro Popular</p>
					<ul>
						<li><a href="https://mdbootstrap.com/sets/e-commerce/">E-commerce
								Set</a></li>
						<li><a href="https://mdbootstrap.com/sets/magazine/">Magazine
								Set</a></li>
						<li><a href="https://mdbootstrap.com/components/cards/">Cards</a></li>
						<li><a href="https://mdbootstrap.com/javascript/sidenav/">SideNav</a></li>
						<li><a
							href="https://mdbootstrap.com/components/material-box/">MaterialBox</a></li>
						<li><a
							href="https://mdbootstrap.com/components/social-buttons/">Social
								Buttons</a></li>
					</ul>
				</div>
				<!--/.Fourth column-->
			</div>
		</div>
		<!--/.Footer Links-->

		<hr>

		<!--Call to action-->
		<div class="call-to-action">
			<ul>
				<li>
					<h5>Register for free</h5>
				</li>
				<li><a href="" class="btn btn-danger waves-effect waves-light">GET
						STARTED!</a></li>
			</ul>
		</div>
		<!--/.Call to action-->

		<hr>

		<!--Social buttons-->
		<div class="social-section">
			<ul>
				<li><a href="https://www.facebook.com/mdbootstrap"
					class="btn btn-fb waves-effect waves-light"><i
						class="fa fa-facebook left"></i> Facebook</a></li>
				<li><a href="https://twitter.com/MDBootstrap"
					class="btn btn-tw waves-effect waves-light"><i
						class="fa fa-twitter left"></i> Twitter</a></li>
				<li><a
					href="https://plus.google.com/u/0/b/107863090883699620484/+Mdbootstrap/posts"
					class="btn btn-gplus waves-effect waves-light"><i
						class="fa fa-google-plus left"></i> Google +</a></li>
				<li><a href="https://mdbootstrap.com/forums/forum/support/"
					class="btn btn-comm waves-effect waves-light"><i
						class="fa fa-comments-o left"></i> Support</a></li>
			</ul>
		</div>
		<!--/.Social buttons-->

		<!--Copyright-->
		<div class="footer-copyright">
			<div class="container-fluid">
				© 2015 Copyright: <a href="https://mdbootstrap.com">
					MDBootstrap.com </a>
			</div>
		</div>
		<!--/.Copyright-->

	</footer>
	<!--/Footer-->


	<!-- SCRIPTS -->

	<!-- 
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="js/tether.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/mdb.min.js"></script>
 	-->
	
	<!-- Local Repository -->
	<script type ="text/javascript" src="../resources/javascript/vendor/jquery/jquery.min.js"></script>
	<script type ="text/javascript" src="../resources/javascript/vendor/bootstrap-4/js/utils.js"></script>
	<script type ="text/javascript" src="../resources/javascript/vendor/bootstrap-4/js/tether.js"></script>	
	<script type ="text/javascript" src="../resources/javascript/vendor/bootstrap-4/js/bootstrap.min.js"></script>
	<script type ="text/javascript" src="../resources/javascript/vendor/bootstrap-4/js/mdb.js"></script>

	<script>
        // SideNav Init
        $(".button-collapse").sideNav();
        // Tooltips init        
        $('[data-toggle="tooltip"]').tooltip()
    </script>

	<div class="drag-target" style="left: 0px; touch-action: pan-y; -moz-user-select: none;"></div>
	<div class="hiddendiv common"></div>

</body>
</html>