<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board" />
<%@ taglib prefix="jk" tagdir="/WEB-INF/tags" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
총인원수 확인 : ${count}
<table border="1">
<tr>
<th>아이디</th>
<th>이메일</th>
</tr>

<c:forEach var="mem" items="${memberlist}">
<tr>
<td>${mem.userid}</td>
<td>${mem.email}</td>
</tr>
</c:forEach>
</table>
</body>
</html>