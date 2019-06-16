<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*" %> 
<%@ page language="java" import="conexao.Conecta" %>

<%
	int id = Integer.parseInt(request.getParameter("id"));
	String nome = request.getParameter("nome");
	String ultNome = request.getParameter("uNome");
	String msg = request.getParameter("msg");
	
	try {
			Connection conn = Conecta.getConnection();
			String sql = "update usuariolt set primNome = ?, ultNome = ?, mensagem = ? WHERE id = " + id;
			
			
			PreparedStatement stmt = conn.prepareStatement(sql);
		
			//assemelha se ao bindParam
			stmt.setString(1, nome);
			stmt.setString(2, ultNome);
			stmt.setString(3, msg);
			
			
			stmt.execute();
			response.sendRedirect("index.jsp");
			
		}catch (SQLException e){
			out.print(e);
	}
	
%>