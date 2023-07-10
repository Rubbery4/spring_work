<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
      <h3>강화</h3>
      
      <table class="table table-bordered animate_animated animate_bounceInDown">
         <tr>
            <th>번호</th>
            <td>${dto.num }</td>
         </tr>
         <tr>
            <th>아이디</th>
            <td>${dto.id }</td>
         </tr>
         <tr>
            <th>장비 분류</th>
            <td>${dto.type }</td>
         </tr>
         <tr>
            <th>시도 횟수</th>
            <td>${dto.enhance }</td>   
         </tr>
         <tr>
            <th>등급</th>
            <td>${dto.rating }</td>
         </tr>
         <tr>
            <th>소지금</th>
            <td id="meso2"></td>
         </tr>
         <tr>
            <th>생성일</th>
            <td>${dto.regdate }</td>
         </tr>
         <td>
			<c:if test="${dto.id eq sessionScope.id }">
				<a href="javascript:deleteConfirm(${dto.num })">삭제</a>
			</c:if>
		</td>   
      </table>
      <form action="${pageContext.request.contextPath}/maple/update" method="post">		
			<input type="hidden" id="num" name="num" value="${dto.num}"/>		
			<div>
				<input type="hidden" id="enhance" name="enhance" value="${dto.enhance }"/>
			</div>
			<div>
				<input type="hidden" id="rating" name="rating" value="${dto.rating }"/>
			</div>
			<div>
				<input type="hidden" id="falseCount" name="falseCount" value="${dto.falseCount }"/>
			</div>
			<div>
				<input type="hidden" id="meso" name="meso" value="${dto.meso }"/>
			</div>
			<div>
				<input type="hidden" id="break1" name="break1" value="${dto.break1 }"/>
			</div>
			<button id="star" type="submit">강화</button>
		</form>
		<form action="${pageContext.request.contextPath}/maple/update" method="post">		
			<input type="hidden" id="num" name="num" value="${dto.num}"/>		
			<div>
				<input type="hidden" id="enhance" name="enhance" value="0"/>
			</div>
			<div>
				<input type="hidden" id="rating" name="rating" value="12"/>
			</div>
			<div>
				<input type="hidden" id="falseCount" name="falseCount" value="0"/>
			</div>
			<div>
				<input type="hidden" id="meso" name="meso" value="${dto.meso }"/>
			</div>
			<div>
				<input type="hidden" id="break1" name="break1" value="0"/>
			</div>
			<button type="submit">초기화</button>
		</form>
		<form action="${pageContext.request.contextPath}/maple/update" method="post">		
			<input type="hidden" id="num" name="num" value="${dto.num}"/>		
			<div>
				<input type="hidden" id="enhance" name="enhance" value="${dto.enhance}"/>
			</div>
			<div>
				<input type="hidden" id="rating" name="rating" value="${dto.rating}"/>
			</div>
			<div>
				<input type="hidden" id="falseCount" name="falseCount" value="${dto.falseCount}"/>
			</div>
			<div>
				<input type="hidden" id="meso1" name="meso" value="${dto.meso }"/>
			</div>
			<div>
				<input type="hidden" id="break1" name="break1" value="${dto.break1}"/>
			</div>
			<button id="mesoadd" type="submit">소지금 추가</button>
		</form>		
		<button id="cancel">나가기</button>
      <script>
      // 삭제 함수
      function deleteConfirm(num){
			let isDelete=confirm("삭제 하시겠습니까?");
			if(isDelete){
				location.href="delete?num="+num;
			}
		}
      document.querySelector("#cancel").addEventListener("click", ()=>{
    	  location.href="list"
      })
      
      
      let meso1 = document.querySelector("#meso").value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
      meso2.innerHTML=meso1
      	let starforce = function() {
      		const ran = Math.random() * 99 +1
      		const rat = ${dto.rating}
      		const mes = ${dto.meso}
      		const brk = ${dto.break1}
      		if(rat==0) {
				if(mes<0) {
					alert("소지금 부족")
					return;
				}
      			if(ran>5) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-321000
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-321000
	      			console.log("실패")
	      		}
      		}
      		if(rat==1) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>10) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-641000
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-641000
	      			console.log("실패")
	      		}
      		}
      		if(rat==2) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>15) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-961000
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-961000
	      			console.log("실패")
	      		}
      		}
      		if(rat==3) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>15) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-1281000
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-1281000
	      			console.log("실패")
	      		}
      		}
      		if(rat==4) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>20) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-1601000
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-1601000
	      			console.log("실패")
	      		}
      		}
      		if(rat==5) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>25) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-1921000
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-1921000
	      			console.log("실패")
	      		}
      		}
      		if(rat==6) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>30) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-2241000
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-2241000
	      			console.log("실패")
	      		}
      		}
      		if(rat==7) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>35) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-2561000
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-2561000
	      			console.log("실패")
	      		}
      		}
      		if(rat==8) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>40) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-2881000
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-2881000
	      			console.log("실패")
	      		}
      		}
      		if(rat==9) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>45) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-3201000
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-3201000
	      			console.log("실패")
	      		}
      		}
      		if(rat==10) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>50) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-12966500
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-12966500
	      			console.log("실패")
	      		}
      		}
      		if(rat==11) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>55) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-29817500
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-29817500
	      			console.log("실패")
	      		}
      		}
      		if(rat==12) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>60) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-54281700
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-54281700
	      			console.log("실패")
	      		}
      		}
      		if(rat==13) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
	      		if(ran>65) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-90416500
	      			console.log("성공")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-90416500
	      			console.log("실패")
	      		}
      		}
      		if(rat==14) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
      			if(ran>70) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-159763600
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-159763600
	      			console.log("실패")
	      		}
      		}
      		if(rat==15) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
      			if(brk==1) {
      				alert("장비가 파괴되었습니다.")
      				return;
      			}
      			if(${dto.falseCount}==2) {
      				document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-71316500
	      			document.querySelector("#falseCount").value=0
      			}
      			else if(ran>70) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-71316500
	      			document.querySelector("#falseCount").value=0
	      		} else if(ran<70 && ran>3) {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-71316500
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-71316500
	      			document.querySelector("#break1").value=1
	      		}
      		}
      		if(rat==16) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
      			if(brk==1) {
      				alert("장비가 파괴되었습니다.")
      				return;
      			}
      			if(${dto.falseCount}==2) {
      				document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-83999600
	      			document.querySelector("#falseCount").value=0
      			}
      			else if(ran>70) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-83999600
	      			document.querySelector("#falseCount").value=0
	      		} else if(ran<70 && ran>3) {
	      			document.querySelector("#rating").value=${dto.rating}-1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-83999600
	      			console.log("실패")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-83999600
	      			document.querySelector("#break1").value=1
	      		}
      		}
      		if(rat==17) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
      			if(brk==1) {
      				alert("장비가 파괴되었습니다.")
      				return;
      			}
      			if(${dto.falseCount}==2) {
      				document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-98016700
	      			document.querySelector("#falseCount").value=0
      			}
      			else if(ran>70) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-98016700
	      			document.querySelector("#falseCount").value=0
	      		} else if(ran<70 && ran>3) {
	      			document.querySelector("#rating").value=${dto.rating}-1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-98016700
	      			document.querySelector("#falseCount").value=${dto.falseCount}+1
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-98016700
	      			document.querySelector("#break1").value=1
	      		}
      		}
      		if(rat==18) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
      			if(brk==1) {
      				alert("장비가 파괴되었습니다.")
      				return;
      			}
      			if(${dto.falseCount}==2) {
      				document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-113422300
	      			document.querySelector("#falseCount").value=0
      			}
      			else if(ran>70) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-113422300
	      			document.querySelector("#falseCount").value=0
	      		} else if(ran<70 && ran>4) {
	      			document.querySelector("#rating").value=${dto.rating}-1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-113422300
	      			document.querySelector("#falseCount").value=${dto.falseCount}+1
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-113422300
	      			document.querySelector("#break1").value=1
	      		}
      		}
      		if(rat==19) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
      			if(brk==1) {
      				alert("장비가 파괴되었습니다.")
      				return;
      			}
      			if(${dto.falseCount}==2) {
      				document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-130270000
	      			document.querySelector("#falseCount").value=0
      			}
      			else if(ran>70) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-130270000
	      			document.querySelector("#falseCount").value=0
	      		} else if(ran<70 && ran>4) {
	      			document.querySelector("#rating").value=${dto.rating}-1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-130270000
	      			document.querySelector("#falseCount").value=${dto.falseCount}+1
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-130270000
	      			document.querySelector("#break1").value=1
	      		}
      		}
      		if(rat==20) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
      			if(brk==1) {
      				alert("장비가 파괴되었습니다.")
      				return;
      			}
	      		if(ran>70) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-148612400
	      			console.log("성공")
	      		} else if(ran<70 && ran>8) {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-148612400
	      			console.log("실패")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-148612400
	      			document.querySelector("#break1").value=1
	      		}
      		}
      		if(rat==21) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
      			if(brk==1) {
      				alert("장비가 파괴되었습니다.")
      				return;
      			}
	      		if(ran>70) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-168501500
	      			console.log("성공")
	      		} else if(ran<70 && ran>8) {
	      			document.querySelector("#rating").value=${dto.rating}-1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-168501500
	      			console.log("실패")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-168501500
	      			document.querySelector("#break1").value=1
	      		}
      		}
      		if(rat==22) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
      			if(brk==1) {
      				alert("장비가 파괴되었습니다.")
      				return;
      			}
	      		if(ran>70) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-189988600
	      			console.log("성공")
	      		} else if(ran<70 && ran>21) {
	      			document.querySelector("#rating").value=${dto.rating}-1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-189988600
	      			console.log("실패")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-189988600
	      			document.querySelector("#break1").value=${dto.break1}+1
	      		}
      		}
      		if(rat==23) {
      			if(mes<0) {
					alert("소지금 부족")
					return;
				}
      			if(brk==1) {
      				alert("장비가 파괴되었습니다.")
      				return;
      			}
	      		if(ran>97) {
	      			document.querySelector("#rating").value=${dto.rating}+1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-213124000
	      			console.log("성공")
	      		} else if(ran<70 && ran>31) {
	      			document.querySelector("#rating").value=${dto.rating}-1
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-213124000
	      			console.log("실패")
	      		} else {
	      			document.querySelector("#enhance").value=${dto.enhance}+1
	      			document.querySelector("#meso").value=${dto.meso}-213124000
	      			document.querySelector("#break1").value=1
	      		}
      		}
      	};
      	document.querySelector("#star").addEventListener("click", ()=>{
      		starforce()
      	})
		document.querySelector("#mesoadd").addEventListener("click", ()=>{
			document.querySelector("#meso1").value=${dto.meso}+10000000000
      	})
      </script>
</body>
</html>