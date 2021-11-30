<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class = "navbar navbar-expand-md navbar-light fixed-top" style="background-color: #C9D6FF;">
	<div class="container-fluid">
		<a class = "navbar-brand" href = "./welcome.jsp">Home</a>
		<ul class="nav navbar-nav navbar-left">
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">분류</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="./kpop.jsp">K-POP</a>
					<a class="dropdown-item" href="./musician.jsp">국내뮤지션</a>
					<a class="dropdown-item" href="./opera.jsp">오페라</a>
					<a class="dropdown-item" href="./musical.jsp">뮤지컬</a>
				</div>
			</li>
		</ul>
		<div>
		<ul class="navbar-nav mr-auto">
			<c:choose>
				<c:when test="${empty sessionId }">
					<li class="nav-item"><a class="nav-link" href="<c:url value="./loginMember.jsp" />">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href='<c:url value="./addMember.jsp"/>'>회원 가입</a>
				</c:when>
				<c:otherwise>
					<li style="padding-top: 7px; color: white">[<%=sessionId%>님]</li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="./logoutMember.jsp"/>">로그아웃 </a></li>
					<li class="nav-item"><a class="nav-link" href='<c:url value="./updateMember.jsp"/>'>회원 수정</a>
				</c:otherwise>
			</c:choose>
			<li class="nav-item"><a class="nav-link" href="./addConcert.jsp">공연 등록</a></li>
			<li class="nav-item"><a class="nav-link" href="./editConcert.jsp?edit=update">공연 수정</a></li>
			<li class="nav-item"><a class="nav-link" href="./editConcert.jsp?edit=delete">공연 삭제</a></li>
		</ul>
	</div>
	</div>
</nav>

<style>
.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
}
</style>