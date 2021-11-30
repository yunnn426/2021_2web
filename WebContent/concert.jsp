<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Concert" %>
<%@ page import="dao.ConcertRepository" %>
<%@ page errorPage="exceptionNoConcertId.jsp" %>
<%@ include file="dbconn.jsp" %>
<%
	ConcertRepository dao = ConcertRepository.getInstance();
	ArrayList<Concert> concertList = dao.getAllConcert();
	String concertId = request.getParameter("id");
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
		
	String sql = "select * from concert where c_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, concertId);
	rs = pstmt.executeQuery();
	if (rs.next()) {
%>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title><%=rs.getString("c_name") %></title>
<style type="text/css">
body {
	background: #C9D6FF;  /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #E2E2E2, #C9D6FF);  /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #E2E2E2, #C9D6FF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}
</style>
<script type="text/javascript">
	function addToCart() {
		if (confirm("공연을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		}
		else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<%@ include file="menu.jsp" %>
	
	<div class = "jumbotron">
		<div class = "container">
			<p>
			<p>공연 > <%=rs.getString("c_category") %>
			<h3 class = "display-4"><%=rs.getString("c_name") %></h3>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<img src="./resources/image/<%=rs.getString("c_fileName") %>" style="width: 100%" />
			</div>
			<div class="col-md-6">
				<br>
				<p><% String s = rs.getString("c_description"); 
					s = s.replace("\n", "<br>");
					out.println(s);
				%>
				<p><b>공연 코드: </b><span class="badge badge-danger"> <%=rs.getString("c_id") %></span>
				<p><b>출연자: </b><%=rs.getString("c_artist") %>
				<p><b>분류</b> : <%=rs.getString("c_category") %>
				<p><b>날짜</b> : <%=rs.getString("c_date") %>
				<h4><%=rs.getString("c_unitPrice") %>원</h4>
				<p> <form name="addForm" action="./addCart.jsp?id=<%=rs.getString("c_id") %>" method="post">
					<p><a href="#" class="btn btn-info" onclick="addToCart()"> 공연 예매 &raquo;</a> 
					<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
					<a href="./welcome.jsp" class="btn btn-secondary"> 공연 목록 &raquo;</a></p>
				</form>
			</div>
			<div class="col-md-2">
				<h5>다른 날짜로 예매하기</h5>
				<%
					for (Concert c: concertList) {
						if (rs.getString("c_name").equals(c.getCname())) {
							if (rs.getString("c_date").equals(c.getDate()))
								continue;
							else
				%>
								<p><a href="./concert.jsp?id=<%=c.getConcertId() %>"><%=c.getDate() %></a>
				<%
						}
					}
				%>
			</div>
		</div>
		<hr>
		
	</div>
	<%
		}
	%>
	<%@ include file="footer.jsp" %> 
</body>
</html>