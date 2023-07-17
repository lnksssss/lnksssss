<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- 
<%@ page import="" %>
<%
	List<String> list = (List<String>request.getAttribute("list"));
%> 
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>게시글 목록</h2>
	게시글 목록화면입니다.
	<br>
	나중에 실제 목록을 뿌려볼거에요	<br>
	<c:forEach items="${list}" var="board">
	<table>
	<tr>
		<td>${board}</tr>
	</tr>
	</table>
	</c:forEach>
	<a href="view.do">게시글 상세페이지로 이동</a> <!-- /board/view.do -->
</body>
</html>