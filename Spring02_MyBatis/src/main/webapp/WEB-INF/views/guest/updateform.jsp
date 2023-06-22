<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>방명록 수정</h1>
		<form action="${pageContext.request.contextPath }/guest/update" method="post">
			<div class="mb-1">
				<input class="visually-hidden" type="text" id="num" name="num" value="${dto.num }" readonly/>
			</div class="mb-1">
			<div class="text-end">
			<a href="list.jsp">글 목록</a>
			</div>
			<div>
				<label class="form-label" for="writer">작성자</label>
				<input class="form-control" type="text" id="writer" name="writer" value="${dto.writer }"/>
			</div class="mb-1">
			<div >
				<label for="content">내용</label>
				<textarea class="form-control" name="content" id="content" cols="30" rows="10">${dto.content }</textarea>
			</div class="mb-3">
			<div>
				<label class="form-label" for="pwd">비밀번호</label>
				<input class="form-control" type="password" id="pwd" name="pwd"/>
			</div class="mb-1">
			<br />
			<div class="text-end">
			<button class="btn btn-outline-primary" type="submit">수정확인</button>
			<button class="btn btn-outline-warning" type="reset">취소</button>
			</div>
		</form>
	</div>
	
</body>
</html>