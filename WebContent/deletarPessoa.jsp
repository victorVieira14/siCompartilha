<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>

<%@ page language="java"  import="conexao.Conecta" %>



<%
	int id = Integer.parseInt(request.getParameter("id"));
	
	
	
	try {
		Connection conn = Conecta.getConnection();
		String sql = "DELETE FROM usuariolt WHERE id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		
		stmt.setInt(1,id);
		stmt.execute();
		stmt.close();
		conn.close();
		response.sendRedirect("index.jsp");
		
	}catch (SQLException e){
		
	} 
	
	
	
%>