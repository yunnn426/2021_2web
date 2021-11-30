<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Concert" %>
<%@ page import="dao.ConcertRepository" %>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery.js"></script>
<%
	ConcertRepository dao = ConcertRepository.getInstance();
	ArrayList<Concert> operaList = dao.getOperaList();
%>
<html>
<head>
<title>오페라</title>
</head>
<style type="text/css">
body {
	background: #C9D6FF;  /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #E2E2E2, #C9D6FF);  /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #E2E2E2, #C9D6FF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}
</style>
<body>
	<%@ include file="menu.jsp" %>
	<br><br><br>
	
	<div class="container">
	<div class="row">
<%
	for (int i = 0; i < operaList.size(); i++) {
		Concert concert = operaList.get(i);
%>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="./resources/image/<%=concert.getFilename() %>" alt="cImage" width="280" height="400">
					<div class="caption">
						<br>
						<h3><%=concert.getCname() %></h3><br>
						<p><% String s = concert.getDescription(); 
							s = s.replace("\n", "<br>");
							out.println(s);
						%></p><br>
						<p>
							<a href="./concert.jsp?id=<%=concert.getConcertId() %>" class="btn btn-primary" role="button">예매하기</a>
						</p>
				</div>
			</div>
		</div>
<%
	}
%>
	</div>
	
	<%@ include file="footer.jsp"%>
</div>
</body>
</html>