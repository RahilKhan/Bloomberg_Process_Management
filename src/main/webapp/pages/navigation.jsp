<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
	<!-- /.navbar-header -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="index.html">Bloomberg Process Management</a>
	</div>
	<!-- /.navbar-header -->

	<!-- /.dropdown -->
	<ul class="nav navbar-top-links navbar-right">
		<!-- /.dropdown -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">
				<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li>
					<a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
				</li>
				<li>
					<a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
				</li>
				<li class="divider"></li>
				<li>
					<a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
				</li>
			</ul>
			<!-- /.dropdown-user -->
		</li>
		<!-- /.dropdown -->
	</ul>
	<!-- /.navbar-top-links -->

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input id="searchText" type="text" class="form-control" placeholder="Search file name...">
						<span class="input-group-btn">
							<button id ="fileSearch" class="btn btn-default" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
					<!-- /input-group -->
				</li>
				<li>
					<a href="#"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
				</li>
				<li>
					<a href="pages/fileUpload.jsp"><i class="fa fa-dashboard fa-fw"></i> FileUpload</a>
				</li>				
				<li>
					<!-- <a id="fileUpload" href="#"><i class="fa fa-upload fa-fw"></i> Data Upload</a> -->
					<button  id="fileUpload" type="button" class="btn"><i class="fa fa-upload fa-fw"></i>Data Upload</button>
				</li>
				<li>
					<button  id="csvUpload" type="button" class="btn"><i class="fa fa-upload fa-fw"></i>CSV Upload</button>
				</li>
				
			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->
</nav>