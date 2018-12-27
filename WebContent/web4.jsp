<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>国家</title>
    <meta name="description" content="Grandin is a Dashboard & Admin Site Responsive Template by hencework." />
    <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Grandin Admin, Grandinadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
    <meta name="author" content="hencework" />

	<link rel="shortcut icon" href="img/favicon.ico">
	<link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <!-- vector map CSS -->
    <link href="vendors/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" type="text/css" />

    <!-- Custom CSS -->
    <link href="full-width-light/dist/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
    <!-- Main Content -->
    <div class="page-wrapper" style="background-color: #cce5ff;">
        <div class="container-fluid">
            <!-- Title -->
            <div class="row heading-bg">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h5 class="txt-dark" style="color:white">国家</h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="main.jsp">Return</a></li>
                        <li class="active"><span style="font: 25px">影片地区统计图</span></li>
                    </ol>
                </div>

            </div>
            <!-- /Title -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default card-view" style="width:1200px;height:700px;border:1px solid black; margin: auto  auto ;background-color:#85adad">
                        <div class="panel-heading" style="margin: 25px auto">
                            <div class="pull-left">
                                <h5 class="panel-title txt-dark">各国家出品影片数量统计图</h5>
                            </div>
                        </div>
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div id="world_map_marker_1" style="width: 1100px;height:550px;margin: auto auto"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Footer -->
            <footer class="footer container-fluid pl-30 pr-30" style="marig-top:15px">
                <div class="row">
                    <div class="col-sm-12">
                        <p>2018 &copy; TypeMoon. created by 李威,龚利,钟平辉,孙维新</p>
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

    <!-- Bootstrap Core JavaScript -->
    <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Vector Maps JavaScript -->
    <script src="vendors/vectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="vendors/vectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="vendors/vectormap/jquery-jvectormap-in-mill.js"></script>
    <script src="vendors/vectormap/jquery-jvectormap-uk-mill-en.js"></script>
    <script src="vendors/vectormap/jquery-jvectormap-us-aea-en.js"></script>
    <script src="vendors/vectormap/jquery-jvectormap-au-mill.js"></script>
    <script src="full-width-light/dist/js/vectormap-data.js"></script>

    <!-- Slimscroll JavaScript -->
    <script src="full-width-light/dist/js/jquery.slimscroll.js"></script>

    <!-- Fancy Dropdown JS -->
    <script src="full-width-light/dist/js/dropdown-bootstrap-extended.js"></script>

    <!-- Owl JavaScript -->
    <script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

    <!-- Switchery JavaScript -->
    <script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>

    <!-- Init JavaScript -->
    <script src="full-width-light/dist/js/init.js"></script>

</body>

</html>
