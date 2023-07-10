<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<body>
	<div class="container">
		<h3>장비 추가</h3>
		<form action="insert" method="post" enctype="multipart/form-data">
			<select class="form-select mb-3" name="type" id="type">
                <option value="">장비 선택</option>
                <option value="weapon">무기</option>
                <option value="armor">방어구</option>
            </select>
			<button type="submit">추가</button>
		</form>
	</div>
</body>
</html>