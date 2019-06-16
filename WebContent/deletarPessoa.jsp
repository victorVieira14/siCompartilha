<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>

<%@ page language="java"  import="conexao.Conecta" %>



<%
	int id = Integer.parseInt(request.getParameter("id"));
	
	
	
	try {
		Connection conn = Conecta.getConnection();
		String sql = "DELETE FROM usuariolt WHERE id = ?";
		PreparedStatement sts = conn.prepareStatement(sql);
		
		sts.setInt(1,id);
		sts.execute();
		sts.close();
		conn.close();
		response.sendRedirect("index.jsp");
		
	}catch (SQLException e){
		
	} 
	
	
	
%>