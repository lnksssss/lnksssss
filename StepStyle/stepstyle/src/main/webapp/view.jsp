<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>게시글</title>
	<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />
	<link rel="stylesheet" href="resources/css/view.css">
</head>
<body>
	<header>
      <div class="wrap">
        <div class="main_nav">
          <div class="navBox">
            <h1>
              <a href="index.html"
                ><img
                  src="resources/img/stepstyle.png"
                  alt="메인로고"
                  width="124px"
                  height="54px"
              /></a>
            </h1>
            <nav>
              <ul class="nav">
                <li><a href="">SHOES</a></li>
                <li><a href="">STYLE</a></li>
                <li><a href="">DROP</a></li>
                <li><a href="community.html">COMMUNITY</a></li>
              </ul>
            </nav>
          </div>
          <div class="submitBox">
            <a href="login.html"
              ><i class="fa-solid fa-user" style="color: #000000"></i
            ></a>
          </div>
        </div>
      </div>
    </header>
		<div class="board">
			<h2>게시글 </h2>
			<form action="">
				<table border="0" width="1200px">
					<tr>
						<td style="text-align: center; width: 500px;">제목</td>
						<td>&nbsp;<input type="text" id="title" name="title"></td>
					</tr>
					<tr>
						<td style="text-align: center; width: 500px;">작성자</td>
						<td>&nbsp;&nbsp;김똥개</td>
					</tr>
					<tr>
						<td style="text-align: center; width: 500px;">작성일</td>
						<td>&nbsp;&nbsp;2023-07-20</td>
					</tr>
					<!--<tr>
						<td>&nbsp;첨부파일</td>
						<td>
							&nbsp;<input type="file" id="imgFile" name="imgFile" accept="image/*">
						</td>
					</tr>-->
					<tr>
						<td colspan="2">
							<div class="titleView"></div>
						</td>
					</tr>
				</table>
				<button class="butn">수정하기</button>
				<button class="butn">삭제하기</button>
			</form>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>