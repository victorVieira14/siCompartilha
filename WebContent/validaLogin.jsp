<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
    <%@ page language="java" import="conexao.Conecta" %>
    
    
    <%
    	
    	String txtUsuario = request.getParameter("txtUsuario");
  		String txtSenha = request.getParameter("txtSenha");
  		try{
  			String sql = "Select * from usuarios WHERE email = '" +  txtUsuario + "' and senha = '" + txtSenha +"'";
  	  		int numRows = 0;
  	  		Connection conn = Conecta.getConnection();
  	  		PreparedStatement sts = conn.prepareStatement(sql);
  	  		
  	  		ResultSet rs = sts.executeQuery(sql);
  	  		
  	  		while (rs.next()) {
  	  			numRows++;
  	  		}
  	  		
  	  		if (numRows > 0 ) {
  	  			session.setAttribute("logado", "LogadoComSucesso");
  	  			response.sendRedirect("index.jsp");
  	  		}else {
  	  			response.sendRedirect("login.jsp");
  	  		}
  	 	
  		}catch(SQLException e) {
  		
  			response.sendRedirect("login.jsp");
  	  		
  		}catch(Exception e) {
  			response.sendRedirect("login.jsp");
  		}
  		 		
    %>
