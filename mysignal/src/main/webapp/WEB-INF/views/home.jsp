<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="UTF-8">
<title>Travel Signal - Main Page</title>
<link href="${path}/resources/css/bootstrap.css" rel="stylesheet"/>
<link href="${path}/resources/css/custom.css" rel="stylesheet"/>
</head>

<body>
	<h1>여행시그널 회원가입</h1>

	<!-- 로그인 , 로그아웃 , 회원가입 영역 -->
<div class="signup-container">
	<c:if test="${user == null}">
		<form role="form" method="post" autocomplete="off" action="/user/login">
			<p>
				<label for="id">아이디</label> <input type="text" id="id" name="id" />
			</p>
			<p>
				<label for="password">패스워드</label> <input type="password"
					id="password" name="password" />
			</p>
			<p>
				<button type="submit">로그인</button>
			</p>
			<p>
				<a href="/user/register">회원가입</a>
			</p>
		</form>
	</c:if>
</div>

	<c:if test="${user != null}">
		<p>${user.name}님환영합니다.</p>
		<br />
		<a href="user/logout">로그아웃</a>
	</c:if>

	<!-- 로그인 , 로그아웃 , 회원가입 영역 -->

</body>
</html>
