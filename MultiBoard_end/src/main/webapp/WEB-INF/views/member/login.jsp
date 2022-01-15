<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board" />
<%@ taglib prefix="jk" tagdir="/WEB-INF/tags" %>
<html>
<body>
<head>
<title>:::Triple S:::</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/css/main.css" />
<!-- <link rel="stylesheet" href="/WEB-INF/resources/css/main.css" />-->
</head>
<body class="is-preload">

<div id="page-wrapper">

	<!-- Header -->
	<section id="main">
		<header id="header" >
			<h1><a href="/">Helmet Detection System</a> by Triple S</h1> <!-- http://localhost -->
			<nav id="nav">
				<ul>
					<li><a href="/">Home</a></li>
					<li>
						<a href="#" class="icon solid fa-angle-down">Menu</a>
						<ul>
							<li><a href="/detection">헬멧 착용 인증</a></li>
							<li>
								<a href="#">커뮤니티</a>
								<ul>
									<li><a href="/board/cat/1">안전소식 알리미</a></li>
									<li><a href="/board/cat/2">자유게시판</a></li>
									<li><a href="/board/cat/3">건의사항</a></li>
								</ul>
							</li>
							<li><a href="/about">About Us</a></li>
						</ul>
					</li>
					<c:if test="${empty sessionScope.userid}">
					<li><a href="/member/login" class="button">Sign In</a></li>
					</c:if>
					<c:if test="${not empty sessionScope.userid}">
					<li><a href="/member/logout" class="button">Sign out</a></li>
					</c:if>
				</ul>
			</nav>
		</header>
	</section>	
</div>


 <div class="container"> <!-- 추가 -->
 
	<div class="pg-opt">
        <div class="row">
            <div class="col-md-6 pc">
               <!--  <h2><fmt:message key="LOGIN"/><small style="color:red"> <fmt:message key="${not empty message ? message : 'BLANK'}"/></small></h2>-->
            </div>
            <div class="col-md-6">
               <!--  <ol class="breadcrumb">
                     <li><fmt:message key="MEMBER"/></li>
                    <li class="active"><fmt:message key="LOGIN"/></li>-->
                   <!--  <h2>LOGIN</h2>  -->        
                <!--   </ol>-->
            </div>
        </div>
    </div>
<div class="content">
<c:if test="${empty sessionScope.userid}">
	<form action="<c:url value='/member/login'/>" method="post" class="form-horizontal">
	<div class="form-group">
      <label class="control-label col-sm-2" for="id">
      MEMBER_ID
      <!--<fmt:message key="MEMBER_ID"/>-->
      </label>
      <div class="col-sm-8">
        <input type="text" name="userid" id="id" class="form-control" placeholder="MEMBER_ID" aria-describedby="basic-addon1">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pw">
      MEMBER_PW
      <!--<fmt:message key="MEMBER_PW"/>-->
      </label>
      <div class="col-sm-8">
        <input type="password" name="password" id="pw" class="form-control" placeholder="MEMBER_PW" aria-describedby="basic-addon1">
      </div>
    </div>
    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
    	<!-- 폰트가 없어서 키값으로 받아오지 않고 일단 지운 다음에 value값으로 지정해둠 ("<fmt:message key="SIGN_IN"/>") 다른 것들도 마찬가지 입니다.-->
    	<h2> </h2>
		 <input type="submit" class="btn btn-info" value="SIGN_IN">
		<!-- <a href="<c:url value='/'/>" class="button"> <!-- 버튼태그로 바꾸기  -->
		<!-- SIGN_IN
		</a>-->
		<!-- <input type="reset" class="btn btn-info" value="<fmt:message key="CANCEL"/>">-->
		<!-- <a href="<c:url value='/member/insert'/>" class="btn btn-success"><fmt:message key="INSERT_USER_INFO"/></a> -->
		<a href="<c:url value='/member/insert'/>" class="button"> <!-- 버튼태그로 바꾸기  -->
		INSERT_USER_INFO
		</a>
		</div>
	</div>
	</form>
</c:if>
<!-- 사인아웃 -->
<c:if test="${not empty sessionScope.userid}">
	<h4>${userid}</h4>
	<h4>${email}</h4>

	<!--홈페이지 사인아웃 -->
	<a href="<c:url value='/member/update'/>">[UPDATE_USER_INFO]</a>
	<a href="<c:url value='/member/logout'/>">[SIGN_OUT]</a>
	<a href="<c:url value='/member/delete'/>">[EXIT_MEMBER]</a> <!-- 이건 없어도 될 거 같긴 한데 -->
</c:if>
</div>
</div>
<div id="main" class="container">	</div>	
<div id="main" class="container">	</div>	
		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands fa-github"><span
						class="label">Github</span></a></li>
				<li><a href="#" class="icon brands fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon brands fa-google-plus"><span
						class="label">Google+</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Triple S: Safety Saviors. All rights reserved.</li>
				<li>재홍 준원 종현 경우 소현 현진</li>
			</ul>
		</footer>
	</div>
	<!-- Scripts -->
	<script src="/js/jquery.min.js"></script>
	<script src="/js/jquery.dropotron.min.js"></script>
	<script src="/js/jquery.scrollex.min.js"></script>
	<script src="/js/browser.min.js"></script>
	<script src="/js/breakpoints.min.js"></script>
	<script src="/js/util.js"></script>
	<script src="/js/main.js"></script>
</body>
</html>


