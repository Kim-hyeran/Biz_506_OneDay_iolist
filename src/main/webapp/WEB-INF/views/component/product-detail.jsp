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
			document.location.href = "/delete"
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
		<p>일자 ${PRO_VO.io_date} | ${PRO_VO.io_time}</p>
		<p>구분 ${PRO_VO.io_input}</p>
		<p>단가 ${PRO_VO.io_price}</p>
		<p>수량 ${PRO_VO.io_quan}</p>
		<p>합계 ${PRO_VO.io_price*PRO_VO.io_quan}</p>
	</div>
	<div id="button">
		<button id="btn-list">목록</button>
	</div>
</section>
