<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>导演编剧</title>
	<meta name="description" content="Grandin is a Dashboard & Admin Site Responsive Template by hencework." />
	<meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Grandin Admin, Grandinadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
	<meta name="author" content="hencework"/>
	
	<!-- Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<link rel="icon" href="img/favicon.ico" type="image/x-icon">
	
	<!-- Data table CSS -->
	<link href="vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
	<link href="vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">
	
	<!-- Custom CSS -->
	<link href="full-width-light/dist/css/style.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="js/echarts.min.js"></script>
	<script type="text/javascript" src="js/macarons.js"></script>
</head>

<body>
	
		<div class="page-wrapper">
            <div class="container-fluid pt-25">
				<!-- Title -->					
				<div class="row heading-bg">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
					  <h5 class="txt-dark">导演编剧</h5>
					</div>
					<!-- Breadcrumb -->
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
					  <ol class="breadcrumb">
						<li><a href="main.jsp">Return</a></li>
						<li class="active"><span>导演编剧</span></li>
					  </ol>
					</div>
					
					
				</div>
				<!-- /Title -->
				<div id="director" style="width: 1300px;height:600px;"></div>
				
				<div id="scriptwriter" style="width: 1300px;height:600px;"></div>
			</div>
			
			<!-- Footer -->
			<footer class="footer container-fluid pl-30 pr-30">
				<div class="row">
					<div class="col-sm-12">
						<p>2018 &copy; TypeMoon. created by 李威,龚利,钟平辉,孙维新</p>
					</div>
				</div>
			</footer>
			<!-- /Footer -->
			
		</div>
        <!-- /Main Content -->

    <!-- /#wrapper -->
	
	<!-- JavaScript -->
	
    <!-- jQuery -->
    <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    
	<!-- Data table JavaScript -->
	<script src="vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	
	<!-- Slimscroll JavaScript -->
	<script src="full-width-light/dist/js/jquery.slimscroll.js"></script>
	
	<!-- Init JavaScript -->
	<script src="full-width-light/dist/js/init.js"></script>
	<script src="full-width-light/dist/js/echart-data.js"></script>
	<script src="js/data2.js"></script>
	
</body>

</html>
