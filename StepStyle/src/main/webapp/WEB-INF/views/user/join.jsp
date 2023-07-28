<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 가입</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	<style>
		body
		{
			font-family: Arial, sans-serif;
		}
		.container
		{
			max-width: 500px;
			margin: 0 auto;
			padding: 20px;
			border: solid 1px #dee2e6;
			box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
			border-radius: 20px;
			margin-top: 80px;
		}
        .logo-container
		{
			text-align: center;
			margin-bottom: 40px;
			margin-top: 30px;
		}
		.logo-container img
		{
			max-width: 300px;
		}
		.form-group
		{
			margin-bottom: 25px;
			display: flex;
			align-items: center;
		}
		.form-control
		{
			height: 50px!important;
		}
		.btn-container
		{
			display: flex;
			justify-content: space-between;
			margin-top: 20px;
			margin-bottom: 30px;
		}
		.btn-container button
		{
			flex-basis: 49%;
			height: 50px;
			font-size: 13px
		}
		.btn-primary{
			background-color: #3a3a3a;
			border: black;
		}
		label{
			font-size: 13px;
			color: #a1a1a1;
		}
		#frm div:nth-child(6){
			width: 457px;
			display: flex;
		}
		.mb-3 > button{
			background-color: #c3c3c3;
			color: #fff;
			font-size: 12px;
			border: none;
			border-radius: 5px;
			padding-right: 5px;
		}
    </style>
</head>
<body>
<div class="container">
	<div class="logo-container">
		<a href="${pageContext.request.contextPath}/">
		<img src="${pageContext.request.contextPath}/resources/img/stepstyle.png" alt="LOGO" width="40%"></a>
	</div>
	
	<form action="join.do" id="frm">
		<div class="form-floating mb-3">
			<input type="text" class="form-control rounded-3" id="userId" placeholder="name@example.com">
			<label for="floatingInput">아이디</label>
		</div>

		<div class="form-floating mb-3">
			<input type="text" class="form-control rounded-3" id="userId" placeholder="name@example.com">
			<label for="floatingInput">비밀번호</label>
		</div>

		<div class="form-floating mb-3">
			<input type="text" class="form-control rounded-3" id="userId" placeholder="name@example.com">
			<label for="floatingInput">비밀번호 확인</label>
		</div>

		<div class="form-floating mb-3">
			<input type="text" class="form-control rounded-3" id="userId" placeholder="name@example.com">
			<label for="floatingInput">이름</label>
		</div>
		
		<div class="form-floating mb-3">
			<input type="text" class="form-control rounded-3" id="userId" placeholder="name@example.com">
			<label for="floatingInput">닉네임</label>
		</div>
		
		<div class="form-floating mb-3">
			<input type="text" class="form-control rounded-3" id="userId" placeholder="name@example.com">
			<label for="floatingInput">휴대폰 번호를 '-'없이 입력해주세요</label>
			<button>인증번호 발송</button>
		</div>
		
		<div class="form-floating mb-3">
			<input type="text" class="form-control rounded-3" id="userId" placeholder="name@example.com">
			<label for="floatingInput">인증번호</label>
		</div>
		
		<div class="form-floating mb-3">
			<input type="text" class="form-control rounded-3" id="userId" placeholder="name@example.com">
			<label for="floatingInput">이메일</label>
		</div>
		
		<!--<div class="form-floating mb-3">
			<input type="text" class="form-control rounded-3" id="userId" placeholder="name@example.com">
			<label for="floatingInput">우편번호</label>
		</div>
		
		<div class="form-floating mb-3">
			<input type="text" class="form-control rounded-3" id="userId" placeholder="name@example.com">
			<label for="floatingInput">주소</label>
		</div>
		
		<div class="form-floating mb-3">
			<input type="text" class="form-control rounded-3" id="userId" placeholder="name@example.com">
			<label for="floatingInput">상세주소</label>
		</div>-->
		
		
		<div class="btn-container">
			<button type="submit" class="btn btn-primary">가입하기</button>
			<button type="button" class="btn btn-secondary">취소</button>
		</div>
	</form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
