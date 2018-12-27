<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>web4</title>
	<meta name="description" content="Grandin is a Dashboard & Admin Site Responsive Template by hencework." />
	<meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Grandin Admin, Grandinadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
	<meta name="author" content="hencework"/>
	
    <!-- vector map CSS -->
	<link href="vendors/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" type="text/css"/>

	<!-- Custom CSS -->
	<link href="full-width-light/dist/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>       
	    <!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				<!-- Title -->					
				<div class="row heading-bg">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
					  <h5 class="txt-dark">æ°æ®åæé¡µé¢ä¸</h5>
					</div>
					<!-- Breadcrumb -->
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
					  <ol class="breadcrumb">
						<li><a href="main.jsp">Dashboard</a></li>
						<li><a href="#"><span>table</span></a></li>
						<li class="active"><span>RSPV DataTable</span></li>
					  </ol>
					</div>
					
				</div>
				<!-- /Title -->
				<div class="row">
					<div class="col-lg-6">
                        <div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark">world map</h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div id="world_map_marker_1" style="height: 400px"></div>
								</div>
							</div>
						</div>
                    </div>
				</div>
				  
				
			
			<!-- Footer -->
			<footer class="footer container-fluid pl-30 pr-30">
				<div class="row">
					<div class="col-sm-12">
						<p>2018 &copy; Grandin. Pampered by æå¨ é¾å© éå¹³è¾ å­ç»´æ°</p>
					</div>
				</div>
			</footer>
			<!-- /Footer -->
			
        </div>
        <!-- /Main Content -->

    </div>
    <!-- /#wrapper -->
	
	<!-- JavaScript -->
	
    <!-- jQuery -->
    <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="vendors/vectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="vendors/vectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="vendors/vectormap/jquery-jvectormap-in-mill.js"></script>
    <script src="vendors/vectormap/jquery-jvectormap-uk-mill-en.js"></script>
    <script src="vendors/vectormap/jquery-jvectormap-us-aea-en.js"></script>
    <script src="vendors/vectormap/jquery-jvectormap-au-mill.js"></script>
	<script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>
	<script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>	
    <script src="full-width-light/dist/js/vectormap-data.js"></script>
	<script src="full-width-light/dist/js/jquery.slimscroll.js"></script>
	<script src="full-width-light/dist/js/dropdown-bootstrap-extended.js"></script>
	<script src="full-width-light/dist/js/init.js"></script>
	
</body>

</html>
