<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="${rootPath}/static/css/home.css">
<script src="https://kit.fontawesome.com/c2f525edad.js" crossorigin="anonymous"></script>
<title>Loo9</title>
<script>
	document.addEventListener("DOMContentLoaded", function () {
		let home = document.querySelector("#title")
		home.addEventListener("click", function () {
			document.location.href = "/iolist"
		})
	})
</script>
</head>
<body>
	<header>
		<div id="title"><h2>Loo9</h2></div>
		<p>매입매출 관리 간편장부</p>
	</header>
	<div id="container">
		<section>
			<c:choose>
				<c:when test="${BODY == 'PRO_HOME'}">
					<%@ include file="/WEB-INF/views/component/product-list.jsp"%>
				</c:when>
				<c:when test="${BODY == 'PRO_WRITE'}">
					<%@ include file="/WEB-INF/views/component/product-write.jsp"%>
				</c:when>
				<c:when test="${BODY == 'PRO_DETAIL'}">
					<%@ include file="/WEB-INF/views/component/product-detail.jsp"%>
				</c:when>
				<c:otherwise>
					<%@ include file="/WEB-INF/views/component/product-list.jsp"%>
				</c:otherwise>
			</c:choose>
		</section>
	</div>
		<div id="candybox">
			<p><a href="https://github.com/Kim-hyeran" target="_new">&copy;rankm</a></p>
		</div>
</body>
</html>