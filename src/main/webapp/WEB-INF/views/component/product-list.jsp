<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${rootPath}/static/css/product-list.css">
</head>
<body>
<article>
	<a href="${rootPath}/write"><i class="fas fa-plus"></i></a>
</article>
<p id="notice">※제품명을 클릭하면 상세 페이지로 이동할 수 있습니다.<br/>(수량 : 개, 가격 : 원)</p>
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
				<c:forEach items="${PRO_LIST}" var="PRO_VO" varStatus="i">
			        <tr id="tr_body">
			            <td>${i.count}</td>
			            <td>${PRO_VO.io_date}</td>
			            <td>${PRO_VO.io_time}</td>
			            <td data-seq="${PRO_VO.io_seq}"><a href="detail?id=${PRO_VO.io_seq}">${PRO_VO.io_pname}</a></td>
			            <td>${PRO_VO.io_iprice}</td>
			            <td>${PRO_VO.io_oprice}</td>
			            <td>${PRO_VO.io_quan}</td>
			            <td>${PRO_VO.io_iprice*PRO_VO.io_quan}</td>
			            <td>${PRO_VO.io_oprice*PRO_VO.io_quan}</td>
			        </tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</tbody>
</table>