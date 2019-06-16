<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import="java.sql.*"
    
%>

<%@ page language="java"  import="conexao.Conecta" %>

<%
		String nome = request.getParameter("nome");
		String ultNome = request.getParameter("uNome");
		String mens = request.getParameter("msg");

		try {
			Connection conn = Conecta.getConnection();
			String sql = "INSERT INTO usuariolt (primNome, ultNome, mensagem) VALUES (?, ?, ?)";
			
			PreparedStatement stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, nome);
			stmt.setString(2, ultNome);
			stmt.setString(3, mens);
			
			stmt.execute();
			stmt.close();
			conn.close();
			response.sendRedirect("index.jsp");
			
		}catch (SQLException e){
			out.print("Deu erro" + e);
		     
		} 

%>