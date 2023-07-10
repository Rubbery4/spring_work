<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/file/upload_form2.jsp</title>
</head>
		<style>
            .upload-box{
                width:500px;
                height: 300px;
                border:1px solid gray;
                box-shadow: 2px 3px 9px hsl(0, 0%, 47%);
                padding:10px;
            }
        </style>
<body>
	<div class="container" id="ex9">
		<h3>이미지 업로드 폼 입니다.</h3>
		<form id="uploadFile" action="${pageContext.request.contextPath }/gallery/upload" method="post" enctype="multipart/form-data">
			<div>
				<label for="title">설명</label>
				<input type="text" name="caption" id="caption" />
			</div>
			<div class="upload-box">
				<label id="btn-upload" for="image">첨부파일</label>
				<input type="file" name="image" id="image"
				accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
			</div>
			<button type="submit">업로드</button>
		</form>
		<br />
		<img  alt="미리보기" id="preview" />
	</div>
</body>
	<script>
		document.querySelector("#image").addEventListener("change", (e)=>{
			// 선택된 파일 배열 객체를 얻어낸다.
			const files = e.target.files;
			// 만일 파일이 존재한다면
			if(files.length > 0) {
				// 파일로 부터 데이터를 읽어들일 객체
				const reader = new FileReader();
				// 로딩이 완료(파일데이터를 모두 읽었을때) 되었을때 실행할 함수 등록
				reader.onload=(event)=>{
					// 읽은 파일 데이터 얻어내기
					const data = event.target.result;
					document.querySelector("#preview").setAttribute("src", data);
				};
				// 파일을 DataURL 형식의 문자열로 읽어들이기
				reader.readAsDataURL(files[0]);
			}
		});

			var sec9 = document.querySelector('#ex9');
		    var btnUpload = sec9.querySelector('.btn-upload');
		    var inputFile = sec9.querySelector('input[type="file"]');
		    var uploadBox = sec9.querySelector('.upload-box');
		
		    /* 박스 안에 Drag 들어왔을 때 */
		    uploadBox.addEventListener('dragenter', function(e) {
		        console.log('dragenter');
		    });
		    
		    /* 박스 안에 Drag를 하고 있을 때 */
		    uploadBox.addEventListener('dragover', function(e) {
		        e.preventDefault();
		        console.log('dragover');
		
		        this.style.backgroundColor = 'green';
		    });
		    
		    /* 박스 밖으로 Drag가 나갈 때 */
		    uploadBox.addEventListener('dragleave', function(e) {
		        console.log('dragleave');
		
		        this.style.backgroundColor = 'white';
		    });
		    
		    /* 박스 안에서 Drag를 Drop했을 때 */
		    uploadBox.addEventListener('drop', function(e) {
		        e.preventDefault();
		
		        console.log('drop');
		        this.style.backgroundColor = 'white';
		        
		        console.dir(e.dataTransfer);
		        document.querySelector("#image").files = e.dataTransfer.files;
           
		    });

	</script>
</html>