<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//이미지 파일 미리보기
	$("#imgUpload").on("change", function() {
		readURL(this);
	})
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
				$("#View").attr("src", e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	
});
</script>
</head>
<body>
<h1> SELL 상품 등록</h1>
${login }
<form action="SellRetrieve" method="get" enctype="multipart/form-data">
<input type="hidden" name="memberno" value="${login.memberno }">
<input type="hidden" name="nickname" value="${login.nickname }">
회원 번호 : <input type="text" name="" value=""><br>
래플 번호 : <input type="text" name="sell_rno" value="" placeholder="sell 래플번호 입력하세요"><br>
닉네임 : <input type="text" name="" value="${login.nickname }" readonly><br>
상품(래플)이름 : <input type="text" name="rafflename" value="" placeholder="상품이름을 입력하세요"><br>
가격 : <input type="text" id="raffleprice" name="raffleprice" value="" placeholder="가격을 입력하세요">원<br>
수량 : <input type="text" id="raffleamount" name="raffleamount" value="" placeholder="수량"><br>
래플 진행 기간 : <input type="date" id="deadline" name="deadline" value="" min="1980-01-01" max="2022-12-31">

<br>
제품 설명 : <input type="text" name="text" value="" placeholder="게시글 내용을 작성해주세요."><br>
이미지 등록 : <input type="file" id="imgUpload" name="img" value="" required="required" accept=".jpg, .jpeg, .png"><br>
		 <img id="View" src="#" alt="이미지 미리보기">
	
<hr>
<button>상품등록</button>
</form>
</body>
</html>