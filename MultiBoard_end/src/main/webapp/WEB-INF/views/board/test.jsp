<%@ page contentType="text/html; charset=utf-8"
	trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/board" />
<%@ taglib prefix="jk" tagdir="/WEB-INF/tags"%>

<!--
	Alpha by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
	테스트가 리스트입니다 테스트용으로 리스트를 해서 그렇습니다 이름바꾸면됨 
-->
<html>
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
										<!-- 주소가 쌓이는 거 -->
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
		</section>
		<!-- 
		메인 페이지('/')의 헤더는 배너의 배경이미지에 맞게 흰색 글씨로 설정되어 있음
		1depth 페이지('/detection'이나 '/tomodel')는 배너가 없이도 헤더의 글씨가 잘 보이도록
		헤더에 검은색 nav바...?를 추가해서 흰글씨가 잘 보임
		메인 페이지와 1depth 페이지의 헤더 클래스가 서로 달랐었음!!! detection 페이지의 헤더를 사용하면 아마 글씨가 잘 보일것임
		 -->
		<!-- Banner -->
		<!-- 	<section id="banner">
					<h2>Triple S</h2>
					<p>Safety Saviors와 함께 안전한 전동킥보드 생활을 경험하세요.</p>
					<ul class="actions special">
						<li><a href="#" class="button primary">회원가입</a></li>
						<li><a href="/detection" class="button">헬멧 착용 인증
						</a></li>
					</ul>
				</section> -->

		<!-- 전Main -->
		<!-- 게시판테스트 -->

		<div class="container">
			<div class="pg-opt">
				<div class="row">
					<!--   <header>
	    	<h2>게시판</h2>
	    	<p>게시판이지롱</p>
	    </header> -->
					<!-- <div class="col-md-6 pc">
	            <h2><fmt:message key="BOARD_LIST"/> 
	            <c:if test="${empty name}">
	            <small style="color:red;"><fmt:message key="LOGIN"/></small>
	            </c:if>
	            </h2>
	        </div>
	        <div class="col-md-6">
	            <ol class="breadcrumb">
	                <li><fmt:message key="BOARD"/></li>
	                <li class="active"><fmt:message key="BOARD_LIST"/></li>
	            </ol>
	        </div>-->
				</div>
			</div>



<c:if test= "${categoryId eq 1}">
<h2>안전소식알리미</h2>
</c:if>
<c:if test= "${categoryId eq 2}">
<h2>자유게시판</h2>
</c:if>
<c:if test= "${categoryId eq 3}">
<h2>건의사항</h2>
</c:if>

			<c:if test="${not empty sessionScope.userid}">
				<c:if test="${sessionScope.userid eq 'admin' }">
					<a href="<c:url value='/board/write/${categoryId}'/>"
						class="button">공지쓰기</a>
				</c:if>
				<c:if test="${categoryId eq 2 || categoryId eq 3}">
				<a href="<c:url value='/board/write/${categoryId}'/>"
						class="button">글쓰기</a>
				</c:if>
			</c:if>

			<!--  --><div class="form-group">
   <!--    <label class="control-label col-sm-2" for="name"><fmt:message key="CATEGORY"/></label>-->
      <div class="col-sm-4">
    
      </div>
    </div>       
			<!-- 적당한 간격이 필요한데 뭐 어떤거 써야할지 아직은 모르겠음  -->
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<!-- td class="pc"><fmt:message key="NO"/></td-->
						<td><fmt:message key="BOARD_ID" /></td>
						<td class="pc"><fmt:message key="WRITER" /></td>
						<td><fmt:message key="SUBJECT" /></td>
						<td class="pc"><fmt:message key="WRITE_DATE" /></td>
						<td class="pc"><fmt:message key="READ_COUNT" /></td>
						<!--td class="pc"><fmt:message key="FILE"/></td-->
					</tr>
				</thead>
				<c:set var="seq" value="${(page-1)*10}" scope="page" />
				<c:forEach var="board" items="${boardList}">
					<tr>
						<c:set var="seq" value="${seq + 1}" scope="page" />
						<!-- td class="pc">${seq}</td-->
						<td>${board.boardId}<!-- (${board.categoryId})--></td>
						<td class="pc">${board.writer}</td>
						<td><jk:reply replynum="${board.replyNumber}"
								replystep="${board.replyStep}" /> <a
							href='<c:url value="/board/${board.boardId}"/>'>${board.title}</a>
						</td>
						<td class="pc"><fmt:formatDate value="${board.writeDate}"
								pattern="YYYY-MM-dd" /></td>
						<td class="pc">${board.readCount}</td>
						<!-- td class="pc"><span class="glyphicon glyphicon-file"></span-->
					</tr>
				</c:forEach>
			</table>

			${message}
			<div class="content">
				<form action="<c:url value='/board/search/1'/>" method="get">
					<div class="pull-right" style="margin-bottom: 5px;">
						<div class="col-xs-9">
							<!-- 크기 수정 -->
							<input type="text" name="keyword" class="form-control">
						</div>
						<input type="submit" class="btn btn-warning"
							value="<fmt:message key="SEARCH"/>">
					</div>
				</form>

			</div>
		</div>
		<div id="main" class="container"></div>
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