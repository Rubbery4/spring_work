<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</head>
<body>
		<div class="container">
			<h1>방명록 목록</h1>
		<div class="text-end">
			<a href="${pageContext.request.contextPath }/guest/insertform">방명록 추가</a>
		</div>
		<c:forEach var="tmp" items="${list }">
		<div>
			<hr class="my-2" size="1" width="530"/>
			<p>${tmp.writer }</p>
			<div>
				<pre>${tmp.content }</pre>
			</div>
			<div>
				<p>${tmp.regdate }</p>
				<a href="updateform?num=${tmp.num}">수정</a>
			<form action="delete?num=${tmp.num }" method="post" id="f1">
					<input class="visually-hidden" type="hidden" id="num" name="num" value="${tmp.num }" />
				<div class="input-group mb-3">
					<input type="password" id="pwd" name="pwd" placeholder="비밀번호를 입력하세요."/>
					<button type="submit">삭제</button>
				</div>
			</form>
			</div>
				<hr class="my-2" size="1" width="530"/>
		</div>
		</c:forEach>
		</div>
</body>
</html>