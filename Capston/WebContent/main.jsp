<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/costom.css">
<title>캡스톤 기부 사이트</title>
<!-- <style>
body {
	background-image: url(3.jpg);
	background-repeat: space;
	background-position: left top;
	background-size: cover;
}
</style> -->

</head>
<body>
	<%
		String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="vnfmsqlcthro.jsp">푸른빛 소개</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="jumbotron">
		<div class=container>
			<h1>대충 게시판 만듬</h1>
			<p>JSP로 만듬 <br> <br><br><br> <a class="btn btn-primary btn-pull"
					href="wktpgl.jsp" role="button">자세히 알아보고 싶으면 눌러보던지</a>
		</div>
	</div>
	<div id="myCarousel" class="carousel slide" data-ride="carousel" >
		<!-- data-interval="false" 자동 넘기기 끄기-->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img src="image/1.jpg" alt="깨짐ㅠ" class="img-responsive center-block" >
			</div>
			<div class="item">
				<img src="image/2.jpg" alt="깨짐ㅠ" class="img-responsive center-block">
			</div>
			<div class="item">
				<img src="image/3.jpg" alt="깨짐ㅠ" class="img-responsive center-block">
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"> </span>
		</a> 
		<a class="right carousel-control" href="#myCarousel"data-slide="next"> 
			<span class="glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>