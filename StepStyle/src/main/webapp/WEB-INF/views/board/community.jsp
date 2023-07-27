<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>게시판</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/community.css" />
  </head>
  <body>
    <header>
      <div class="wrap">
        <div class="main_nav">
          <div class="navBox">
            <h1>
              <a href="${pageContext.request.contextPath}/index.do"
                ><img
                  src="${pageContext.request.contextPath}/resources/img/stepstyle.png"
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
                <li><a href="community.do">COMMUNITY</a></li>
              </ul>
            </nav>
          </div>
          <div class="submitBox">
            <form action="" method="post">
              <input type="text" name="search" placeholder="직접 입력"/>
              <i class="fa fa-search" aria-hidden="true"></i>
            </form>
            <a href="${pageContext.request.contextPath}/user/login.do"><i class="fa-solid fa-user" style="color: #000000"></i></a>
          </div>
        </div>
      </div>
    </header>
    <div class="board">
      <div>
        <h2>자유게시판</h2>
        <button><a href="write.do">글 작성</a></button>
      </div>
      <table border="0" width="100%">
        <tr>
          <td>번호</td>
          <td style="text-align: center">제목</td>
          <td>작성자</td>
          <td>작성일</td>
          <td>조회수</td>
        </tr>
        <tr>
          <td>1</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>2</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>3</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>4</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>5</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>6</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>7</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>8</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>9</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>10</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>11</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>12</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
        <tr>
          <td>13</td>
          <td>
            <a href="">안녕하세요 반갑습니다 어서오세요</a>
          </td>
          <td>김길똥</td>
          <td>2023-07-18</td>
          <td>10</td>
        </tr>
      </table>
      <p>&lt; 1 2 3 4 5 6 7 8 9 &gt;</p>
    </div>
    <footer>
      <div class="full_box">
        <div class="Information_box">
          <p>
            (주)Step Style | 대표자:최훈, 이남기, 최하진 | 사업장 : 전라북도
            전주시 덕진구 백제대로 572
          </p>
          <p>고객센터 | aaa@stepStyle.co.kr, 063-123-4567</p>
          <p>이메일 : aaa@stepStyle.com | 개인정보관리책임자 : 팀 Step Style</p>
          <p>Copyright by EZEN All rights reserved.</p>
        </div>
      </div>
    </footer>
  </body>
</html>