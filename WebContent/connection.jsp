<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/connectionStyleSheet.css" >
	<title>Connexion</title>
</head>

<body>
  <div class="wrapper">
	<div class="container">
		<input type="hidden" id="userNameParam" value="${param.userName}"/>
		<input type="hidden" id="connectionFailedError" value="${requestScope.connectionFailedError}"/>
		
		<h1 id="welcomeMsg"></h1>
		
		<form id="form" class="form" method="GET" action="connect">
			<input type="text" placeholder="Username" name="userName">
			<input type="password" placeholder="Password" name="password">
			<input type="submit" id="login-button" value="login"/>
		</form>
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/connection.js"></script>

</body>
</html>