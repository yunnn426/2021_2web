<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="dto.Concert" %>
<%@ page import="dao.ConcertRepository" %>
<%

	request.setCharacterEncoding("UTF-8");
	
	String cartId = session.getId();
	
	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_country = "";
	String shipping_zipCode = "";
	String shipping_addressName = "";
	
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_country"))
				shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_zipCode"))
				shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_addressName"))
				shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}

%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>주문 정보</title>
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
			<h1 class="display-3">주문 정보</h1>
		</div>
	</div>
	
	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1>영수증</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>배송 주소</strong> <br> 성명 : <% out.println(shipping_name); %>		<br>
				우편번호 : <% out.println(shipping_zipCode); %><br>
				주소 : <% out.println(shipping_addressName); %>(<% out.println(shipping_country); %>) <br>
			</div>
			<div class="col-4" align="right">
				<p> <em>배송일: <% out.println(shipping_shippingDate); %></em>
			</div>
		</div>
		<div>
			<table class="table table-hover">
			<tr>
				<th class="text-center">상품</th>
				<th class="text-center">#</th>
				<th class="text-center">가격</th>
				<th class="text-center">소계</th>
			</tr>
			<%
				int sum = 0;
				ArrayList<Concert> cartList = (ArrayList<Concert>)session.getAttribute("cartlist");
				if (cartList == null) 
					cartList = new ArrayList<Concert>();
				for (int i = 0; i < cartList.size(); i++) {
					Concert concert = cartList.get(i);
					int total = concert.getUnitPrice() * concert.getQuantity();
					sum = sum + total;
			%>
			<tr>
				<td class="text-center"><em><%=concert.getCname() %></em></td>
				<td class="text-center"><%=concert.getQuantity() %></td>
				<td class="text-center"><%=concert.getUnitPrice() %>원</td>
				<td class="text-center"><%=total %>원</td>
			</tr>
			<%
				}
			%>
			<tr>
				<td></td>
				<td></td>
				<td class="text-right"><strong>총액: </strong></td>
				<td class="text-center text-danger"><strong><%=sum %></strong></td>
			</tr>
			</table>
			
			<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId %>" class="btn btn-secondary" role="button"> 이전 </a>
			<a href="./thankCustomer.jsp" class="btn btn-success" role="button"> 주문 완료 </a>
			<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
		</div>
	</div>
</body>
</html>