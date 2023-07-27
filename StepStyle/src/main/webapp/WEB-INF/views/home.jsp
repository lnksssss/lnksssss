<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%
	String serverTime = (String)request.getAttribute("serverTime");
%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>


<p>	<a href="<%=request.getContextPath() %>/index.do"> 인덱스 이동</a> </p>

<p>	<a href="<%=request.getContextPath() %>/user/login.do"> 로그인 이동 </a> </p>

<p>	<a href="<%=request.getContextPath() %>/user/join.do"> 회원가입 이동 </a> </p>

<p>	<a href="<%=request.getContextPath() %>/board/community.do"> 커뮤니티 게시판 이동 </a> </p>



</body>
</html>
