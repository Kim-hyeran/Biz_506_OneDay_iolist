<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<style>
	section {
		padding: 10px;
	}
	div#header {
		display: flex;
	}
	
	div#header div h3 {
		border-bottom: 5px solid #ffc1b5;
	}
	
	div#header div:nth-child(2) {
		margin-left: auto;
	}
	
	div#header div a {
		margin: 0 5px;
		color: #666;
		font-size: 1.1rem;
	}
	
	div#header div a i.fa-edit:hover {
		color: #ffc1b5;
		transition: 0.5s linear;
	}
	
	div#header div a i.fa-trash-alt:hover {
		color: #79e5cb;
		transition: 0.5s linear;
	}
	
	div#detail {
		margin: 20px 0;
	}
	
	div#button {
		display: flex;
	}
	
	button#list {
		margin: auto;
		border: none;
		font-size: inherit;
		padding: 10px;
		outline: none;
		background-color: #ffc1b5;
		transition: 0.3s linear;
	}
	
	button#list:hover {
		background-color: #79e5cb;
	}
</style>
<section>
	<div id="header">
		<div><h3>${ProductVO.io_pname}</h3></div>
		<div><a href="${rootPath}/product/update?id=${ProductVO.io_seq}"><i class="far fa-edit"></i></a></div>
		<div><a href="${rootPath}/product/delete?id=${ProductVO.io_seq}"><i class="far fa-trash-alt"></i></a></div>
	</div>
	<div id="detail">
		<p>일자 ${ProductVO.io_date} | ${ProductVO.io_time}</p>
		<p>구분 ${ProductVO.io_input}</p>
		<p>단가 ${ProductVO.io_price}</p>
		<p>수량 ${ProductVO.io_quan}</p>
		<p>합계 ${ProductVO.io_price*ProductVO.io_quan}</p>
	</div>
	<div id="button">
		<button id="list">목록</button>
	</div>
</section>
