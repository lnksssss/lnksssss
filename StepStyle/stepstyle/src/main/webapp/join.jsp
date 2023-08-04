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
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   
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
      #frm div:nth-child(8){
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
      	 box-sizing: content-box;
      }
      .add{
      text-align:center;
      width:80px;
      background-color: #c3c3c3;
         color: #fff;
         font-size: 12px;
         border: none;
         border-radius: 5px;
         padding-right: 5px;
      	padding: 1px 5px;
      }
    </style>
</head>
<body>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
</script>

<div class="container">
   <div class="logo-container">
      <a href="${pageContext.request.contextPath}/index.do"><img src="${pageContext.request.contextPath}/resources/img/stepstyle.png" alt="LOGO" width="40%"></a>   
   </div>
   <form action="join.do" id="frm" method="post">
      <div class="form-floating mb-3">
         <input type="text" class="form-control rounded-3" id="uId" name="uId" placeholder="d">
         <label for="floatingInput">아이디</label>
      </div>

      <div class="form-floating mb-3">
         <input type="password" class="form-control rounded-3" id="uPw" name="uPw" placeholder="d">
         <label for="floatingInput">비밀번호</label>
      </div>

      <div class="form-floating mb-3">
         <input type="password" class="form-control rounded-3" id="uPw2" name="uPw2" placeholder="d">
         <label for="floatingInput">비밀번호 확인</label>
      </div>

      <div class="form-floating mb-3">
         <input type="text" class="form-control rounded-3" id="uName" name="uName" placeholder="d">
         <label for="floatingInput">이름</label>
      </div>
      
      <div class="form-floating mb-3">
         <input type="text" class="form-control rounded-3" id="uNick" name="uNick" placeholder="d">
         <label for="floatingInput">닉네임</label>
      </div>
      
      <div class="form-floating mb-3">
         <input type="text" class="form-control rounded-3" id="uPhone" name="uPhone" placeholder="d">
         <label for="floatingInput">휴대폰 번호를 '-'없이 입력해주세요</label>
         <button>인증번호 발송</button>
      </div>
      
   <!-- 
      <div class="form-floating mb-3">
         <input type="text" class="form-control rounded-3" id="userId" placeholder="d">
         <label for="floatingInput">인증번호</label>
      </div>
    -->
      <div class="form-floating mb-3">
         <input type="text" class="form-control rounded-3" id="uMail" name="uMail" placeholder="d">
         <label for="floatingInput">이메일</label>
      </div>
      
      <div class="form-floating mb-3">
         <input type="text" class="form-control rounded-3" id="postcode" placeholder="d">
         <label for="floatingInput">우편번호</label>
         <input class="add" type="button" onclick="execDaumPostcode()" value="우편번호찾기"><br>
      </div>
      
      <div class="form-floating mb-3">
         <input type="text" class="form-control rounded-3" id="address" placeholder="d">
         <label for="floatingInput">주소</label>
      </div>
      
      <div class="form-floating mb-3">
         <input type="text" class="form-control rounded-3" id="detailAddress" placeholder="d">
         <label for="floatingInput">상세주소</label>
      </div>
      
      <div class="btn-container">
         <button type="submit" class="btn btn-primary">가입하기</button>
         <button type="button" class="btn btn-secondary">취소</button>
      </div>
   </form>
   
</div>
<script src="https://code.jquery.com/jquery-3.6.3.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
