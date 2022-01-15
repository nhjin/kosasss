<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board" />
<%@ taglib prefix="jk" tagdir="/WEB-INF/tags" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>:::The Safety Saviors:::Helmet Detection</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/css/about.css" />
	</head>

	<body class="is-preload">
		<div id="page-wrapper">

	<!-- Header -->
						<header id="header">
				<h1>
					<a href="/">Helmet Detection System</a> by Triple S
				</h1>
				<nav id="nav">
					<ul>
						<li><a href="/">Home</a></li>
						<li><a href="#" class="icon solid fa-angle-down">Menu</a>
							<ul>
								<li><a href="/detection">헬멧 착용 인증</a></li>
								<li><a href="#">커뮤니티</a>
									<ul>
										<li><a href="/board/cat/1">안전소식 알리미</a></li>
										<li><a href="/board/cat/2">자유게시판</a></li>
										<li><a href="/board/cat/3">건의사항</a></li>
									</ul></li>
								<li><a href="/about">About Us</a></li>
								<!-- 수정필요 -->
							</ul></li>
					<c:if test="${empty sessionScope.userid}">
					<li><a href="/member/login" class="button">Sign In</a></li>
					</c:if>
					<c:if test="${not empty sessionScope.userid}">
					<li><a href="/member/logout" class="button">Sign out</a></li>
					</c:if>
					</ul>
				</nav>
			</header>

<!-- about -->
	<section id="about">
		<div class='container mx-auto mt-5 col-md-10 mt-100'>
			<div class="header">
				<div class="title">About Us</div>
				<p><small class="text-muted">The Safety Saviors의 멤버를 소개합니다.</small></p>
			</div>
			<!--<div class="row" style="justify-content: center">-->
			<div class="card col-md-3 mt-100" style="justify-content: center">
				<div class="card-content">
					<div class="card-body p-0">
						<div class="profile"> <img src="/images/jjh.jpg"> </div>
						<div class="card-title"> 정재홍 </div>
						<div class="card-subtitle">
							<p> <small class="text-muted"> 팀장 </small> </p>
							<p> <small class="text-muted"> "CHOCO CHANEL, 일요일에는 풋살해요." </small> </p>
						</div>
					</div>
				</div>
			</div>
			<div class="card col-md-3 mt-100" style="justify-content: center">
				<div class="card-content">
					<div class="card-body p-0">
						<div class="profile"> <img src="/images/njw.png"> </div>
						<div class="card-title"> 남준원 </div>
						<div class="card-subtitle">
							<p> <small class="text-muted"> 레고 </small> </p>
							<p> <small class="text-muted"> "운동하는 레고입니다." </small> </p>
						</div>
					</div>
				</div>
			</div>
			<div class="card col-md-3 mt-100" style="justify-content: center">
				<div class="card-content">
					<div class="card-body p-0">
						<div class="profile"> <img src="/images/mjh.png"> </div>
						<div class="card-title"> 문종현 </div>
						<div class="card-subtitle">
							<p> <small class="text-muted"> 간식보부상 </small> </p>
							<p> <small class="text-muted"> "죠르디를 좋아하고 간식을 품고 다녀요." </small> </p>
						</div>
					</div>
				</div>
			</div>
			<div class="card col-md-3 mt-100" style="justify-content: center">
				<div class="card-content">
					<div class="card-body p-0">
						<div class="profile"> <img src="/images/mkw.png"> </div>
						<div class="card-title"> 민경우 </div>
						<div class="card-subtitle">
							<p> <small class="text-muted"> 뽀둥뽀둥 </small> </p>
							<p> <small class="text-muted"> "점심 메뉴 정해주기 달인!" </small> </p>
						</div>
					</div>
				</div>
			</div>
			<div class="card col-md-3 mt-100" style="justify-content: center">
				<div class="card-content">
					<div class="card-body p-0">
						<div class="profile"> <img src="/images/lsh.png"> </div>
						<div class="card-title"> 이소현 </div>
						<div class="card-subtitle">
							<p> <small class="text-muted"> 마피아 </small> </p>
							<p> <small class="text-muted"> "I'm the mafia!" </small> </p>
						</div>
					</div>
				</div>
			</div>
			<div class="card col-md-3 mt-100" style="justify-content: center">
				<div class="card-content">
					<div class="card-body p-0">
						<div class="profile"> <img src="/images/jhj.png"> </div>
						<div class="card-title"> 지현진 </div>
						<div class="card-subtitle">
							<p> <small class="text-muted"> 헤르미온느, 척척석사 </small> </p>
							<p> <small class="text-muted"> "24시간이 모자라!" </small> </p>
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<!--div class="ft">
				<div class="btn btn-outline">Tell a nice word</div>
			</div-->
		</div>
	</section>

	<!-- 추가 -->
		<div id="main" class="container"></div>
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