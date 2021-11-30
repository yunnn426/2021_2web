<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Concert"%>
<%@ page import="dao.ConcertRepository"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("concerts.jsp");
		return;
	}
	
	ConcertRepository dao = ConcertRepository.getInstance();
	
	Concert concert = dao.getConcertById(id);
	if (concert == null) {
		response.sendRedirect("exceptionNoConcertId.jsp");
	}
	
	ArrayList<Concert> cartList = (ArrayList<Concert>)session.getAttribute("cartlist");
	Concert goodsQnt = new Concert();
	for (int i = 0; i < cartList.size(); i++) {
		goodsQnt = cartList.get(i);
		if (goodsQnt.getConcertId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("cart.jsp");
%>