<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<style>
	h3 {
		width:fit-content;
		text-align: center;
		margin: 15px auto;
		border-bottom: 5px solid #ffc1b5;
	}
	
	form {
		margin-top: 10px;
	}
	
	form div{
		display: flex;
		margin: 5px 10px;
		padding: 8px;
		justify-content: center;
		item-align: center;
	}
	
	form div label {
		width: 10%;
		text-align: right;
		font-weight: bold;
		margin-right: 10px;
	}
	
	form div input {
		width: 60%;
		padding: 5px;
		border: 0;
		border-bottom: 1px solid #ddd;
	}
	
	button {
		border: none;
		font-size: inherit;
		margin: 10px;
		padding: 10px;
		outline: none;
	}
	
	button#btn-list {
		background-color: #ddd;
		transition: 0.3s linear;
	}
	
	button#btn-save {
		background-color: #ffc1b5;
		transition: 0.3s linear;
	}
	
	button#btn-list:hover,
	button#btn-save:hover {
		background-color: #79e5cb;
	}
</style>
<h3>상품정보 등록</h3>
<form:form modelAttribute="PRO_VO">
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
		<label>구분</label><form:input path="io_input" placeholder="매입은 1, 매출은 2로 표시하세요" />
	</div>
	<div>
		<label>단가</label><form:input path="io_price" />
	</div>
	<div>
		<label>수량</label><form:input path="io_quan" />
	</div>
	<div id="btn_box">
		<button type="button" id="btn-list">목록</button>
		<button type="submit" id="btn-save">저장</button>
	</div>
</form:form>