<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>Grandin I Fast build Admin dashboard for any platform</title>
	<meta name="description" content="Grandin is a Dashboard & Admin Site Responsive Template by hencework." />
	<meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Grandin Admin, Grandinadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
	<meta name="author" content="hencework"/>
	
	<!-- Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<link rel="icon" href="img/favicon.ico" type="image/x-icon">
	
	<!-- Data table CSS -->
	<link href="vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
	
	<!-- Toast CSS -->
	<link href="vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">
	
	<!-- Custom CSS -->
	<link href="full-width-light/dist/css/style.css" rel="stylesheet" type="text/css">
	<link href="css/search.css" rel="stylesheet" type="text/css">
	<script src="js/echarts.min.js"></script>
</head>

<body>
	<!-- Preloader -->
	<div class="preloader-it">
		<div class="la-anim-1"></div>
	</div>
	<!-- /Preloader -->
    <div class="wrapper theme-6-active pimary-color-pink sidebar-hover">
		<!-- Top Menu Items -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="mobile-only-brand pull-left">
				<div class="nav-header pull-left">
					<div class="logo-wrap">
						<a href="main.jsp">
							<img class="brand-img" src="../img/logo.png" alt="brand"/>
							<span class="brand-text">Grandin</span>
						</a>
					</div>
				</div>	
				<a id="toggle_nav_btn" class="toggle-left-nav-btn inline-block ml-20 pull-left" href="javascript:void(0);"><i class="zmdi zmdi-menu"></i></a>
			</div>
		</nav>
		
		<!-- Left Sidebar Menu -->
		<div class="fixed-sidebar-left">
			<ul class="nav navbar-nav side-nav nicescroll-bar">
				<li class="navigation-header">
					<span>component</span> 
					<i class="zmdi zmdi-more"></i>
				</li>
				<li>
					<a href="web1.jsp" data-toggle="collapse" data-target="#ui_dr">
						<div class="pull-left">
							<i class="zmdi zmdi-smartphone-setup mr-20"></i>
							<span class="right-nav-text">UI Elements</span>
						</div>
						<div class="pull-right"></div>
						<div class="clearfix"></div>
					</a>
				</li>
				<li>
					<a href="web2.jsp" data-toggle="collapse" data-target="#form_dr">
						<div class="pull-left">
							<i class="zmdi zmdi-edit mr-20"></i>
							<span class="right-nav-text">Forms</span>
						</div><div class="pull-right"></div>
						<div class="clearfix"></div>
					</a>
				</li>
				<li>
					<a href="web3.jsp" data-toggle="collapse" data-target="#chart_dr">
						<div class="pull-left">
							<i class="zmdi zmdi-chart-donut mr-20"></i>
							<span class="right-nav-text">Charts </span>
						</div>
						<div class="pull-right"></div>
						<div class="clearfix"></div>
					</a>
				</li>
				<li>
					<a href="web4.jsp" data-toggle="collapse" data-target="#table_dr">
						<div class="pull-left">
							<i class="zmdi zmdi-format-size mr-20"></i>
							<span class="right-nav-text">Tables</span>
						</div>
						<div class="pull-right"></div>
						<div class="clearfix"></div>
					</a>
				</li>
				<li>
					<a href="web5.jsp" data-toggle="collapse" data-target="#icon_dr">
						<div class="pull-left">
							<i class="zmdi zmdi-iridescent mr-20"></i>
							<span class="right-nav-text">Icons</span>
						</div>
						<div class="pull-right"></div>
						<div class="clearfix"></div>
					</a>
				</li>
				<li>
					<a href="filmSearch.jsp" data-toggle="collapse" data-target="#maps_dr">
						<div class="pull-left">
							<i class="zmdi zmdi-map mr-20"></i>
							<span class="right-nav-text">Film Search</span>
						</div>
						<div class="pull-right"></div>
						<div class="clearfix"></div>
					</a>
				</li>
			</ul>
		</div>
    </div>
		<div class="page-wrapper">
            <div class="container-fluid pt-25">
				<div class="row">
			    	<div class="col-lg-6">
							<div class="panel panel-default card-view">
								<div class="panel-heading">
									<div class="pull-left">
										<h6 class="panel-title txt-dark">polar area Chart</h6>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="panel-wrapper collapse in">
									<div class="panel-body">
										<canvas id="chart_4" height="200"></canvas>
									</div>	
								</div>
							</div>
						</div>
					
					<div class="col-lg-6">
						<div id="durations" style="width:620px;height:435px;"></div>
					</div>	
				</div>
				
				
				<div class="row">
						<div id="genre" style="height:680px;"></div>
				</div>		
			   </div>
			</div>
      <!-- jQuery -->
    <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    
	<!-- Data table JavaScript -->
	<script src="vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	
	<!-- Slimscroll JavaScript -->
	<script src="full-width-light/dist/js/jquery.slimscroll.js"></script>
	
	<!-- simpleWeather JavaScript -->
	<script src="vendors/bower_components/moment/min/moment.min.js"></script>
	<script src="vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
	<script src="full-width-light/dist/js/simpleweather-data.js"></script>
	
	<!-- Progressbar Animation JavaScript -->
	<script src="vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
	<script src="vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>
	
	<!-- Fancy Dropdown JS -->
	<script src="full-width-light/dist/js/dropdown-bootstrap-extended.js"></script>
	
	<!-- Sparkline JavaScript -->
	<script src="vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>
	
	<!-- Owl JavaScript -->
	<script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>
	
	<!-- Toast JavaScript -->
	<script src="vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>
	
	<!-- EChartJS JavaScript -->
	<script src="vendors/bower_components/echarts/dist/echarts-en.min.js"></script>
	<script src="vendors/echarts-liquidfill.min.js"></script>
	
	<!-- Switchery JavaScript -->
	<script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>
	
	
	<!-- Init JavaScript -->
	<script src="full-width-light/dist/js/init.js"></script>
	<script src="full-width-light/dist/js/dashboard-data.js"></script>
	<script src="full-width-light/dist/js/chartjs-data.js"></script>
	<script src="vendors/chart.js/Chart.min.js"></script>
	<script src="js/data.js"></script>
	<script src="js/echarts.min.js"></script>
</body>

</html>
