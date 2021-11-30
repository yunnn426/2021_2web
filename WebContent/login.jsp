<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<title>로그인</title>
</head>
<style type="text/css">
body {
	background: #C9D6FF;  /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #E2E2E2, #C9D6FF);  /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #E2E2E2, #C9D6FF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}
</style>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
	<div class="col-md-4 col-md-offset-4">
		<h3 class="form-signin-heading">Please sign in</h3>
		<%
			String error = request.getParameter("error");
			if (error != null) {
				out.println("<div class='alert alert-danger'>");
				out.println("아이디와 비밀번호를 확인해주세요");
				out.println("</div>");
			}
		%>
		 	<form class="form-signin" action="j_security_check" method="post">
		 		<div class="form-group">
		 			<label for="inputUserName" class="sr-only">User Name</label>
		 			<input type="text" class="form-control" placeholder="ID" name='j_username' required autofocus></label>
		 		</div>
		 		<div class="form-group">
		 			<label for="inputPassword" class="sr-only">Password</label>
		 			<input type="password" class="form-control" placeholder="Password" name='j_password' required>
		 		</div>
		 		<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
		 	</form>
	</div>
	</div>
</body>
</html>