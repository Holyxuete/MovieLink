<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.lookoop.film.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
  <body>
		<div class="container mt-5 col-lg-4">
            <div class="input-group mb-3">
                <form action="search.do" method="post">
                	<input type="text" class="form-control" placeholder="输入影片标题" name="filmTitle">
	                <input type="submit" class="btn btn-outline-danger" value="Search">
                </form>
            </div>
       </div>
       
       <c:if test="${sessionScope.films != null}">
      	<div class="container">
	      	<c:forEach items="${sessionScope.films}" var="film">
	      		<div class = container>
	      			<img src="${film.posterPath }" class="img-fluid" alt="">
		            <span class="badge badge-primary">标题</span>:
		            <span>${film.title }</span><br>
		            <span class="badge badge-primary">导演</span>:
		            <span>${film.director }</span><br>
		            <span class="badge badge-primary">编剧</span>:
		            <span>${film.scriptwriter }</span><br>
		            <span class="badge badge-primary">阅读量</span>:
		            <span>${film.number }</span><br>
		            <span class="badge badge-primary">简介</span>:
		            <span>${film.info }</span><br>
		            <c:forEach items="${film.URIList }" var="magnet">
		            	<span class="badge badge-primary">磁力链接</span>:
		            	<span>${magnet }</span><br>
		            </c:forEach>
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