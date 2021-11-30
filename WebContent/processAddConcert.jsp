<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%
	String filename="";
	String realFolder = "C:\\upload";
	int maxSize = 5 * 1024 * 1024;
	String encType = "utf-8";
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	PreparedStatement pstmt = null;
	String sql = "insert into concert values(?,?,?,?,?,?,?,?)";
	
	String concertId = multi.getParameter("concertId");
	String name = multi.getParameter("name");
	String artist = multi.getParameter("artist");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String category = multi.getParameter("category");
	String date = multi.getParameter("date");
	
	Integer price;
	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, concertId);
	pstmt.setString(2, name);
	pstmt.setString(3, artist);
	pstmt.setInt(4, price);
	pstmt.setString(5, description);
	pstmt.setString(6, category);
	pstmt.setString(7, fileName);
	pstmt.setString(8, date);
	pstmt.executeUpdate();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("welcome.jsp");
%>