<%@ page contentType="text/html; charset=utf-8" %>
<%
	session.invalidate(); //세션 날리기
	response.sendRedirect("addProduct.jsp");
%>