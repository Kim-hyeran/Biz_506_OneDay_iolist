<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<style>
	article {
		width: 90%;
		text-align: right;
		font-size: 1.5rem;
		margin: 5px auto;
	}
	
	article a {
		text-decoreation: none;
		color: #ffc1b5;
		transition: 0.3s linear;
	}
	
	article a:hover {
		color: #79e5cb;
	}
	
	table {
		border-collapse: collapse;
		width: 95%;
		margin: 10px auto;
		text-align: center;
	}
	
	table tr th {
		padding: 8px;
		border-bottom: 1px solid #ccc;
	}
	
	tr, td {
		padding: 8px;
	}
</style>
</head>
<body>
<article>
	<a href="${rootPath}/product/write"><i class="fas fa-plus"></i></a>
</article>
<table>
	<thead>
		<tr>
			<th>No.</th>
			<th>일자</th>
			<th>시각</th>
			<th>상품명</th>
			<th>매입단가</th>
			<th>판매단가</th>
			<th>수량</th>
			<th>매입합계</th>
			<th>판매합계</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${empty PRO_LIST}">
				<tr>
					<td colspan="9">데이터가 존재하지 않습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${PRO_LIST}" var="VO" varStatus="i">
			        <tr>
			            <td>${i.count}</td>
			            <td>${VO.io_date}</td>
			            <td>${VO.io_time}</td>
			            <td><a href="detail?id=${VO.io_seq}">${VO.io_pname}</a></td>
			            <td>${VO.io_price}</td>
			            <td>${VO.io_price}</td>
			            <td>${VO.io_quan}</td>
			            <td>${VO.io_price*VO.io_quan}</td>
			            <td>${VO.io_price*VO.io_quan}</td>
			        </tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</tbody>
</table>