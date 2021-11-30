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
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from concert where c_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, concertId);
	rs = pstmt.executeQuery();
	
	if (rs.next()) {
		if (fileName != null) {
			sql = "UPDATE concert SET c_name=?, c_artist=?, c_unitPrice=?, c_description=?, c_category=?, c_fileName=?, c_date=? WHERE c_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, artist);
			pstmt.setInt(3, price);
			pstmt.setString(4, description);
			pstmt.setString(5, category);
			pstmt.setString(6, fileName);
			pstmt.setString(7, date);
			pstmt.setString(8, concertId);
			pstmt.executeUpdate();
		}
		else {
			sql = "UPDATE concert SET c_name=?, c_artist=?, c_unitPrice=?, c_description=?, c_category=?, c_date=? WHERE c_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, artist);
			pstmt.setInt(3, price);
			pstmt.setString(4, description);
			pstmt.setString(5, category);
			pstmt.setString(6, date);
			pstmt.setString(7, concertId);
			pstmt.executeUpdate();
		}
	}
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("editConcert.jsp?edit=update");
%>
