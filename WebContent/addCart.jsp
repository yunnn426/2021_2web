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
	
	ArrayList<Concert> goodsList = dao.getAllConcert();
	Concert goods = new Concert();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getConcertId().equals(id)) {
			break;
		}
	}
	
	ArrayList<Concert> list = (ArrayList<Concert>) session.getAttribute("cartlist");
	if (list == null) {
		list = new ArrayList<Concert>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt = 0;
	Concert goodsQnt = new Concert();

	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getConcertId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	
	if (cnt == 0) {
		goods.setQuantity(1);
		list.add(goods);
	}
	
	response.sendRedirect("concert.jsp?id=" + id);
%>