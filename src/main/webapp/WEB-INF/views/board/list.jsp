<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
상대경로로 사용

<h1>list page</h1>
<hr/>
<table border="1">
	<tr>
	<th>번호</th>
	<th>제목</th>
	<th>내용</th>
	</tr>
	변수명, 모델키값
	<c:forEach var="board" items="${boards}">
		<tr>
		<th><a href="/board/${board.id}">${board.id}</a></th> 게터가 있어야 동작함, 게터로 불러오는 거니까
		<th>${board.title}</th>
		<th>${board.content}</th>
		</tr>
	</c:forEach>
</table>
<%@ include file="../layout/footer.jsp" %>