<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board" />
<%@ taglib prefix="jk" tagdir="/WEB-INF/tags" %>
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
<!-- Header -->
	<section id="main">
		<header id="header" >
			<h1><a href="/">Helmet Detection System</a> by Triple S</h1>
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
							<li><a href="elements.html">About Us</a></li> <!-- 수정필요 -->
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
	<!-- header끝 -->
<div class="container">
	<div class="pg-opt">
        <div class="row">
            <div class="col-md-6 pc">
                <h2><fmt:message key="REPLY_ARTICLE"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="BOARD"/></li>
                    <li class="active"><fmt:message key="REPLY_ARTICLE"/></li>
                </ol>
            </div>
        </div>
    </div>
	<div class="content">
	<form action="<c:url value='/board/reply'/>" method="post" enctype="multipart/form-data" class="form-horizontal">
	<div class="form-group">
      <label class="control-label col-sm-2" for="writer"><fmt:message key="WRITER"/></label>
      <div class="col-sm-2">
        <input type="text" name="writer" id="writer" value="${sessionScope.name}" ${!empty sessionScope.name ? "readonly" : "" } class="form-control">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email"><fmt:message key="EMAIL"/></label>
      <div class="col-sm-4">
        <input type="text" name="email" id="email" value="${sessionScope.email}" ${!empty sessionScope.email ? "readonly" : "" } class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="password"><fmt:message key="PASSWORD"/></label>
      <div class="col-sm-2">
        <input type="password" name="password" id="password" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="title"><fmt:message key="TITLE"/></label>
      <div class="col-sm-8">
        <input type="text" name="title" id="title" class="form-control" value="${board.title}" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="content"><fmt:message key="CONTENT"/></label>
      <div class="col-sm-8">
        <textarea name="content" rows="10" cols="100" class="form-control">${board.content}</textarea>
      </div>
    </div>
    <%--c:if test="${!empty userid}"--%>
    <div class="form-group">
      <label class="control-label col-sm-2" for="photo"><fmt:message key="FILE"/></label>
      <div class="col-sm-8">
        <input type="file" id="i_file" name="file">
      </div>
    </div>
    <%--/c:if--%>
    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
			<input type="hidden" name="boardId" value="${board.boardId}">
			<input type="hidden" name="categoryId" value="${board.categoryId}">
			<input type="hidden" name="masterId" value="${board.masterId}">
			<input type="hidden" name="replyNumber" value="${board.replyNumber}">
			<input type="hidden" name="replyStep" value="${board.replyStep}">
			<input type="submit" id="i_submit" class="btn btn-info" value="<fmt:message key="REPLY"/>"> <input type="reset" class="btn btn-info" value="<fmt:message key="CANCEL"/>">
		</div>
	</div>
	</form>
	</div>
</div>
<!-- 추가 -->
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