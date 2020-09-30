<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src="https://kit.fontawesome.com/c2f525edad.js" crossorigin="anonymous"></script>
<title>Loo9</title>
<style>
	* {
		font-family: 'Roboto' San-serif;
		margin: 0;
		padding: 0;
	}
	
	header {
		margin: 50px 0;
		text-align: center;
	}
	
	header div {
		margin: 0 auto;
		padding: 0 8px;
		width: fit-content;
		background: #ffc1b5;
		transition: 0.5s linear;
		cursor: pointer;
	}
	
	header p {
		font-size: 0.8rem;
	}
	
	header div:hover {
		background: #79e5cb;
	}
	
	div#container {
		border: 1px solid #ddd;
		font-size: 0.9rem;
		width: 50%;
		margin: 5px auto;
		padding: 10px;
	}
	
	#candybox {
		width: 50%;
		margin: 0 auto;
	}
	
	#candybox p {
		font-size: 0.7rem;
		text-align: right;
		font-style: italic;
	}
	
	#candybox a {
		color: #ccc;
		text-decoration:none;
	}
</style>
</head>
<body>
	<header>
		<div><h2>Loo9</h2></div>
		<p>매입매출 관리 간편장부</p>
	</header>
	<div id="container">
		<section>
			<c:choose>
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