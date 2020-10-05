<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${rootPath}/static/css/product-write.css">
<script src="${rootPath}/static/js/home.js"></script>
<script>
	document.addEventListener("DOMContentLoaded", function () {
		let edit=document.querySelector("#btn-save")
		edit.addEventListener("click", function () {
			document.querySelector("form").submit()
		})
	})
</script>
<h3>상품정보 등록</h3>
<form:form modelAttribute="PRO_VO">
	<div>
		<form:input path="io_seq" value="${PRO_VO.io_seq}" type="hidden" />
	</div>
	<div>
		<label>일자</label><form:input path="io_date" />
	</div>
	<div>
		<label>시각</label><form:input path="io_time" />
	</div>
	<div>
		<label>상품명</label><form:input path="io_pname" />
	</div>
	<div>
		<label>구분</label><form:input path="io_input" />
	</div>
	<div>
		<label>단가</label><form:input path="io_price" />
	</div>
	<div>
		<label>수량</label><form:input path="io_quan" />
	</div>
	<div id="btn_box">
		<button type="button" id="btn-list">목록</button>
		<button type="button" id="btn-save">저장</button>
	</div>
</form:form>