<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${rootPath}/static/css/product-detail.css">
<script src="${rootPath}/static/js/home.js"></script>
<script>
	document.addEventListener("DOMContentLoaded", function () {
		let trash = document.querySelector(".fa-trash-alt")
		trash.addEventListener("click", function () {
			alert("삭제할까요?")
			document.location.href="${rootPath}/delete?id=${PRO_VO.io_seq}"
		})
	})
</script>
<section>
	<div id="header">
		<div><h3>${PRO_VO.io_pname}</h3></div>
		<div><a href="${rootPath}/update?id=${PRO_VO.io_seq}"><i class="far fa-edit"></i></a></div>
		<div><a href="${rootPath}/delete?id=${PRO_VO.io_seq}"><i class="far fa-trash-alt"></i></a></div>
	</div>
	<div id="detail">
		<p><b>일자</b> ${PRO_VO.io_date} | ${PRO_VO.io_time}</p>
		<p><b>구분</b>
			<c:choose>
				<c:when test="${PRO_VO.io_input == '1'}"> 매입</c:when>
				<c:when test="${PRO_VO.io_input == '2'}"> 판매</c:when>
			</c:choose>
		</p>
		<p><b>단가</b> ${PRO_VO.io_price}</p>
		<p><b>수량</b> ${PRO_VO.io_quan}</p>
		<p><b>합계</b> ${PRO_VO.io_price*PRO_VO.io_quan}</p>
	</div>
	<div id="button">
		<button id="btn-list">목록</button>
	</div>
</section>
