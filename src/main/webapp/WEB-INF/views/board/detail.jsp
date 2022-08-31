<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<h1>detail page</h1>
<hr/>
<div>아이디가 2번인 페이지면 관리자 메시지를 걸어보자</div>
<c:if test="${board.id eq 2}"><h2>관리자</h2></c:if>
<hr/>
<div>아이디가 1번이면 ok 출력, 1번이 아니면 no 출력</div>
<c:choose>
	<c:when test="${id==1}">
		<h1>ok</h1>	
	</c:when>
	<c:otherwise>
		<h1>no</h1>
	</c:otherwise>
</c:choose>
<hr/>
이거 빼고 jsp 문법 안 써도 됨

empty : 공백과 널(null || \"\"), eq 이런 건 몰라도 됨
test에 조건 넣기

컨트룰러에서도 로직을 구현할 수 있음. 뷰에서 구현하면, 자바 코드가 복잡하게 생김으로 역할이 혼재된 느낌.
되도록 if 문 같은 게 없도록 해야 됨 -> 나머지에서 처리하고 뷰나 뭐 다른 곳에서 처리되도록

컨트룰러에서 만들어서 뷰를 깔끔하게 구성. 

번호 : ${board.id}, 제목 : ${board.title}, 내용 :${board.content}
<%@ include file="../layout/footer.jsp" %>