<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board" />
<%@ taglib prefix="jk" tagdir="/WEB-INF/tags" %>
<!DOCTYPE HTML>
<!--
	Alpha by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>:::The Safety Saviors:::</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/css/main.css" />
	</head>
	<body class="landing is-preload">
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
								<li><a href="http://192.168.43.33/detection">헬멧 착용 인증</a></li> <!-- url localhost로 전부변경 -->
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
					<c:if test="${sessionScope.userid eq 'admin' }">
					<li><a href="/admin">ADMIN PAGE </a></li>
					</c:if>
					</ul>
				</nav>
			</header>

			<!-- Banner -->
				<section id="banner">
					<h1>Safety,<br>Speed,<br>Smile.</h1>
					<br>
					<br>


					<ul class="actions special">
						<li><a href="/member/insert" class="button primary">회원가입</a></li>
						<li><a href="http://localhost" class="button">헬멧 착용 인증</a></li> <!-- url localhost로 전부변경 -->
					</ul>

				</section>

			<!-- Main -->
				<section id="main" class="container">
					<section class="box special">
						<header class="major">
							<h2>The Safety Saviors</h2>
							<p>The Safety Saviors와 함께 안전한 전동킥보드 생활을 경험하세요.</p>
						</header>

						<span class="image featured"><img src="/images/pic01-1.jpg" alt="" /></span>

					</section>

					<section class="box special features">
						<div class="features-row">
							<section>
								<span class="icon solid major fa-bolt accent2"></span>
								<h3>빠른 속도</h3>
								<p>3초면 인증이 완료됩니다.</p>
							</section>
							<section>
								<span class="icon solid major fa-chart-area accent3"></span>
								<h3>높은 정확성</h3>
								<p>높은 정확도로 헬멧 착용 상태를 인식합니다.</p>
							</section>
						</div>
						<div class="features-row">
							<section>
								<span class="icon solid major fa-cloud accent4"></span>
								<h3>이용자간의 소통</h3>
								<p>커뮤니티 게시판을 통해 다양한 경험을 서로 나눌 수 있습니다.</p>
							</section>
							<section>
								<span class="icon solid major fa-lock accent5"></span>
								<h3>정기적인 점검 및 유지보수</h3>
								<p>더 나은 시스템을 위한 The Safety Saviors의 노력은 계속됩니다.</p>
							</section>
						</div>
					</section>

					<div class="row">
						<div class="col-6 col-12-narrower">
							<section class="box special">
								<span class="image featured"><img src="/images/pic02.jpg" alt="" /></span>
								<h3>커뮤니티</h3>
								<p>새 소식을 빠르게 확인하고, 서로 정보를 공유하고, 개발진에게 질문할 수 있습니다.</p>
								<ul class="actions special">
									<li><a href="/board/cat/1" class="button alt">더 알아보기</a></li>
								</ul>
							</section>
						</div>
						<div class="col-6 col-12-narrower">
							<section class="box special">
								<span class="image featured"><img src="/images/pic03.jpg" alt="" /></span>
								<h3>About Us</h3>
								<p>The Safety Saviors의 소개</p>
								<ul class="actions special">
									<li><a href="/about" class="button alt">더 알아보기</a></li>
								</ul>
							</section>

						</div>
					</div>

				</section>

			<!-- CTA -->
				<section id="cta">

					<h2>빠른 회원가입</h2>
					<p>지금 회원으로 등록하고 커뮤니티 게시판을 자유롭게 이용해보세요.</p>

					<form>
						<div class="row gtr-50 gtr-uniform">
							<div class="col-8 col-12-mobilep">
								<input type="email" name="email" id="email" placeholder="이메일" />
							</div>
							<div class="col-4 col-12-mobilep">
								<input type="submit" value="회원가입" class="fit" /> <!-- 폼태그라 submit -->
							</div>
						</div>
					</form>

				</section>

			<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon brands fa-google-plus"><span class="label">Google+</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Triple S: Safety Saviors. All rights reserved.</li><li>재홍 준원 종현 경우 소현 현진</li>
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