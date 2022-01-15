<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board" />
<%@ taglib prefix="jk" tagdir="/WEB-INF/tags" %>
<% String userid=(String)session.getAttribute("userid");  System.out.println("아이디출력 : " + userid);%>
<% String email_1=(String)session.getAttribute("email");  System.out.println("세션이메일출력 : " + email_1);%>
<% String email_2 = (String)request.getAttribute("email");  System.out.println("정보이메일출력 : " + email_2);%>
<!DOCTYPE html> 
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
							<li><a href="/about">About Us</a></li> <!-- 수정필요 -->
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
                 <h2>${board.title}</h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                   <!--  <li><fmt:message key="BOARD"/></li>-->
                   <!--  <li class="active">
                    <fmt:message key="CONTENT"/>
                    </li> -->
                </ol>
            </div>                      
        </div>
    </div>
	<div class="content">

	<table class="table table-bordered">
	<tr class="pc">
		<td colspan=2 align="right">
		<a href='<c:url value="/board/cat/${categoryId}"/>'><button type="button" class="button"><fmt:message key="BOARD_LIST"/></button></a>
		<!-- <a href='<c:url value="/board/write/${categoryId}"/>'><button type="button" class="btn btn-info"><fmt:message key="WRITE_NEW_ARTICLE"/></button></a>
		<a href='<c:url value="/board/reply/${board.boardId}"/>'><button type="button" class="btn btn-info"><fmt:message key="REPLY"/></button></a>
		<a href='<c:url value="/board/update/${board.boardId}"/>'><button type="button" class="btn btn-info"><fmt:message key="UPDATE"/></button></a>
		<a href='<c:url value="/board/delete/${board.boardId}"/>'><button type="button" class="btn btn-info"><fmt:message key="DELETE"/></button></a>-->
		</td>
	</tr>
	<tr>
		<td width="20%"><fmt:message key="BOARD_ID"/></td>
		<td>${board.boardId}</td>
	</tr>
	<tr>
		<td></td>
		<td> </td>
	</tr>
	<tr>
		<td width="20%"><fmt:message key="WRITER"/></td>
		<td>${board.writer}</td>
	</tr>
	<tr>
		<td width="20%"><fmt:message key="WRITE_DATE"/></td>
		<td><fmt:formatDate value="${board.writeDate}" pattern="YYYY-MM-dd HH:mm:ss"/></td>
	</tr>
	<tr>
		<td><fmt:message key="SUBJECT"/> </td>
		<td>${board.title}</td>
	</tr>
	<tr>
		<td><fmt:message key="CONTENT"/></td>
		<td class="board_content">${board.content}</td>
	</tr>
	<c:if test="${!empty board.fileName}">
	<tr>
		<td><fmt:message key="FILE"/></td>
		<td>
		<%--c:if test="${!empty sessionScope.userid}"--%>
		<c:set var="len" value="${fn:length(board.fileName)}"/>
		<c:set var="filetype" value="${fn:toUpperCase(fn:substring(board.fileName, len-4, len))}"/>
		<c:if test="${(filetype eq '.JPG') or (filetype eq 'JPEG') or (filetype eq '.PNG') or (filetype eq '.GIF')}"><img src='<c:url value="/file/${board.fileId}"/>' class="img-thumbnail"><br></c:if>
		<%--/c:if--%>
		<a href='<c:url value="/file/${board.fileId}"/>'>${board.fileName} (<fmt:formatNumber>${board.fileSize}</fmt:formatNumber>byte)</a>
		</td>
	</tr>
	</c:if>
	 <tr>
		<td colspan=2 align="right">
		<%try{ %>
		<%if(email_1.equals(email_2) && !userid.equals("admin")) {%>
	 	<!-- <a href='<c:url value="/board/cat/${categoryId}"/>'><button type="button" class="btn btn-info"><fmt:message key="BOARD_LIST"/></button></a>-->
			<a href='<c:url value="/board/write/${categoryId}"/>'><button type="button" class="button"><fmt:message key="WRITE_NEW_ARTICLE"/></button></a>
			<a href='<c:url value="/board/update/${board.boardId}"/>'><button type="button" class="button"><fmt:message key="UPDATE"/></button></a>
			<a href='<c:url value="/board/delete/${board.boardId}"/>'><button type="button" class="button"><fmt:message key="DELETE"/></button></a>
			<a href='<c:url value="/board/reply/${board.boardId}"/>'><button type="button" class="button"><fmt:message key="REPLY"/></button></a>
		<%} if (userid.equals("admin")){ %>
			<a href='<c:url value="/board/write/${categoryId}"/>'><button type="button" class="button"><fmt:message key="WRITE_NEW_ARTICLE"/></button></a>
			<a href='<c:url value="/board/update/${board.boardId}"/>'><button type="button" class="button"><fmt:message key="UPDATE"/></button></a>
			<a href='<c:url value="/board/delete/${board.boardId}"/>'><button type="button" class="button"><fmt:message key="DELETE"/></button></a>
			<a href='<c:url value="/board/reply/${board.boardId}"/>'><button type="button" class="button"><fmt:message key="REPLY"/></button></a>
		<%} %>
		<% } catch(Exception e){%>
			<% e.printStackTrace();%>
			<!-- <a href='<c:url value="/board/reply/${board.boardId}"/>'><button type="button" class="button"><fmt:message key="REPLY"/></button></a> -->
			<% } %>
		</td>
	</tr>
	
	</table>
</div>
</div>

<div id="main" class="container">	</div>	
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
