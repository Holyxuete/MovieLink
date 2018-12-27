<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/search.css">
    <link rel="shortcut icon" href="img/favicon.ico">
	<link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <script type="text/javascript" src="js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="js/myjs.js"></script>
</head>
  <body style="background-image:url('img/kuin.jpg');background-repeat: no-repeat;background-attachment:fixed;color:black;cursor:pointer">
       <div class="container mr-5" style="margin-bottom:50px;">
           	<form class=""  action="search.do" method="post">
                   <div style="margin:50px 0 0 200px;">
                   		<label class="my-1 mr-2  myfloat" for="inlineFormCustomSelectPref" style="margin-top:12px!important;color:black;font-weight:bold">根据</label>
	                   <select name="type" class="myselfSearch my-1 mr-sm-2 myfloat" id="inlineFormCustomSelectPref" style="margin-top:5px!important;">
	                       <option value="title" selected="selected">片名</option><i class="zmdi zmdi-search"></i>
	                       <option value="director">导演</option>
	                       <option value="genre">类型</option>
	                       <option value="time">上映时间</option>
	                   </select>
	                   
	                   <div>
	                       <input type="text" class="myselfSearch myfloat" placeholder="搜索" name="filmTitle" style="margin-top:5px!important;">
	                   </div>
	                   
	                   <input type="submit" class="btn btn-outline-danger my-1" style="margin-left:5px;" value="Search">
                   </div>
           	</form>
        </div>
        
       <c:if test="${sessionScope.films != null}">
       	<div style="width:200px;margin: -40px 0 30px 680px; font-size:20px;color:black;">共搜到 <span style="color: 	#1affff;font-size:30px;font-weight:bold">${fn:length(films) }</span> 条结果</div>
      	<div style="width:1250px;margin-left:150px;">
	      	<c:forEach items="${sessionScope.films}" var="film">
	      		<div style="border:1px #b8b8b8 solid; height:450px;background:rgba(255,255,255,0.8); margin-top:5px;">
	      			<div style="margin:15px 0 0 20px">
	      				<img src="${film.posterPath }" class="img-fluid mydata" alt="" style="width:300px;height:422px;">
	      			</div>
		            <div style="margin-left:330px;">
		            	<span class="badge badge-danger" style="float:left;">标题</span>:
			            <span style="width:100px;">${film.title }</span><br>
			            <span class="badge badge-danger">导演</span>:
			            <span>${film.director }</span><br>
			            <span class="badge badge-danger">编剧</span>:
			            <span>${film.scriptwriter }</span><br>
			            <span class="badge badge-danger">阅读量</span>:
			            <span>${film.number }</span><br>
			            <span class="badge badge-danger">简介</span>:
			            <span class="info">${film.info }</span><a href="" class="shrink">...展开</a><br>
			            <c:forEach items="${film.URIList }" var="magnet">
			            	<c:if test="${fn:contains(magnet,'网盘资源') }">
			            		<span><a href="${fn:substring(magnet,6,fn:length(magnet) - 8) }" style="color:#3880ff;">网盘地址</a></span>
			            		<span>密码: ${fn:substring(magnet,fn:length(magnet)-4,fn:length(magnet)) }</span>
			            	</c:if>
			            	<c:if test="${fn:contains(magnet,'磁力链接') }">
			            		<span><a href="${fn:substring(magnet,7,fn:length(magnet))}" style="color:#3880ff;">磁力链接</a></span>
			            	</c:if>
			            </c:forEach>
		             </div>
	      		</div>
	      	</c:forEach>
	    </div>
      </c:if>     
      
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>