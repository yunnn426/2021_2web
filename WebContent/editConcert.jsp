<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<title>상품 편집</title>
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 공연을 삭제합니다!!") == true)
			location.href = "./deleteConcert.jsp?id=" + id;
		else
			return;		
	}
</script>
<style type="text/css">
body {
	background: #C9D6FF;  /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #E2E2E2, #C9D6FF);  /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #E2E2E2, #C9D6FF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}
</style>
</head>
<%
	String edit = request.getParameter("edit");
%>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">공연 편집</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from concert";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-4">
				<img src="./resources/image/<%=rs.getString("c_fileName") %>" style="width: 100%">
				<h3><%=rs.getString("c_name") %></h3>
				<p><%=rs.getString("c_description") %>
				<p><%=rs.getString("c_unitPrice") %>
				<p><%=rs.getString("c_date") %>
				<p><%
					if (edit.equals("update")) {
					%>
					<a href="./updateConcert.jsp?id=<%=rs.getString("c_id") %>" class="btn btn-success" role="button"> 수정 &raquo;</a>
					<%
					} else if (edit.equals("delete")){
					%>
					<a href="#" onclick="deleteConfirm('<%=rs.getString("c_id") %>')" class="btn btn-danger" role="button"> 삭제&raquo;</a>
					<%
					}
					%>
			</div>
			<%	
				}
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>