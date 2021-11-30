<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery.js"></script>
<style type="text/css">
body {
	background: #C9D6FF;  /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #E2E2E2, #C9D6FF);  /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #E2E2E2, #C9D6FF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}
</style>
<div class="container">
	<div class="row">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from concert";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				String check = "";
				while (rs.next()) {
					if (check.equals(rs.getString("c_name")))
						continue;
					check = rs.getString("c_name");
			%>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="./resources/image/<%=rs.getString("c_fileName") %>" alt="cImage" width="280" height="400">
					<div class="caption">
						<br>
						<h3><%=rs.getString("c_name") %></h3><br>
						<p><%=rs.getString("c_artist") %>
						<p><% String s = rs.getString("c_description"); 
							s = s.replace("\n", "<br>");
							out.println(s);
						%></p><br>
						<p>
							<a href="./concert.jsp?id=<%=rs.getString("c_id") %>" class="btn btn-primary" role="button">예매하기</a>
						</p>
				</div>
			</div>
		</div>
<%
	}
%>
	</div>
</div>