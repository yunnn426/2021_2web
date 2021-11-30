<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<title>공연 수정</title>
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
			<h1 class="display-3">공연 수정</h1>
		</div>
	</div>
	
	<%@ include file="dbconn.jsp" %>
	<%
		String concertId = request.getParameter("id");
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from concert where c_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, concertId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<img src="./resources/image/<%=rs.getString("c_fileName") %>" alt="image" style="width: 100%" />
					</div>
					<div class="com-md-8">
						<form name="newConcert" action="./processUpdateConcert.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
							<div class="form-group-row">
								<label class="col-sm-2"> 공연 코드</label>
								<div class="com-sm-3">
									<input type="text" id="concertId" name="concertId" class="form-control" value="<%=rs.getString("c_id") %>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2"> 공연명</label>
								<div class="com-sm-5">
									<textarea name="name" cols="50" rows="2" class="form-control"><%=rs.getString("c_name") %></textarea>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2"> 출연자</label>
								<div class="com-sm-3">
									<input type="text" id="artist" name="artist" class="form-control" value="<%=rs.getString("c_artist") %>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2"> 가격</label>
								<div class="com-sm-3">
									<input type="text" id="unitPrice" name="unitPrice" class="form-control" value="<%=rs.getString("c_unitPrice") %>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2"> 상세 설명</label>
								<div class="com-sm-5">
									<textarea name="description" cols="50" rows="2" class="form-control"><%=rs.getString("c_description") %></textarea>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2"> 분류</label>
								<div class="com-sm-3">
									<input type="text" id="category" name="category" class="form-control" value="<%=rs.getString("c_category") %>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2"> 이미지</label>
								<div class="com-sm-5">
									<input type="file" name="concertImage" class="form-control">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2"> 날짜</label>
								<div class="com-sm-3">
									<input type="text" id="date" name="date" class="form-control" value="<%=rs.getString("c_date") %>">
								</div>
							</div>
							
							<div class="form-group row">
								<div class="com-sm-offset-2 col-sm-10">
									<input type="submit" class="btn btn-primary" value="등록">
								</div>
							</div>
						</form>
					</div>
				</div>
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
</body>
</html>