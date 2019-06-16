<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*" %> 
<%@ page language="java" import="conexao.Conecta" %>
    
    
<%
				int id = Integer.parseInt(request.getParameter("id"));
				String nome = null;
				String ultimo = null;
				String msg = null;

				try{
						Connection conn = Conecta.getConnection();
						String sql = "SELECT * FROM usuariolt WHERE id = "+id;
						PreparedStatement psm = conn.prepareStatement(sql);
						ResultSet rs = psm.executeQuery(sql);
						
						while(rs.next()){
							nome = rs.getString("primNome");
							ultimo = rs.getString("ultNome");
							msg = rs.getString("mensagem");
						}
								
				}catch(SQLException e){
					System.out.print("ERROR" + e);
				}
							
							
	%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="shortcut icon" href="/IMG/si.jpg"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" type="text/css" href="../static/CSS/all.min.css">
    <!-- Footer CSS -->
    <link rel="stylesheet" type="text/css" href="../static/CSS/footer.css" >
    <!-- DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="../static/CSS/dataTables.bootstrap4.min.css" >

    <title>SiCompartilha - editar</title>
    <style>
         html,
        body,
        header,
        .view {
        height: 100%;
        }

        @media (max-width: 740px) {
        html,
        body,
        header,
        .view {
            height: 1000px;
        }
        }

        @media (min-width: 800px) and (max-width: 850px) {
        html,
        body,
        header,
        .view {
            height: 650px;
        }
        }
    </style>

  </head>
  <body>

    <!-- Imagem de fundo -->
    <div class="view" style="background-image: url(IMG/fundo.jpg); background-repeat: no-repeat; background-size: cover;">

        <!-- Mascara e Configuração de posicionamento dos elementos-->
        <div class="d-flex justify-content-center align-items-center text-center">

            <div class="container mt-5 p-5">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <form action="editPessoa.jsp?id=<%out.print(id);%>" method="POST">
                            <div class="card p-4">
                                <a href="index.jsp" class="btn btn-light mr-auto" data-toggle="tooltip" data-placement="bottom" title="Voltar">
                                    <i class="fa fa-arrow-left"></i>
                                </a>
                                <div class="card-body bg-white">
                                    
                                    <h1 class="display-4 mb-4" style="font-size: 40px;">
                                        <i class="fa fa-sync mr-2"></i> Atualizar Informações
                                    </h1>
									
                                    <div class="row">
                                    	<div class="col-sm-12 col-md-1 col-lg-1">
                                            <div class="form-group">
                                                <label for="codigoPessoa">Código</label>
                                                <input type="text" class="form-control" name="id" value="<% out.print(id); %>" disabled>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-md-6 col-lg-6">
                                            <div class="form-group">
                                                <label for="nomePessoa">Nome</label>
                                                <input type="text" class="form-control" value="<% out.print(nome); %>" name="nome" required>
                                                <small class="form-text text-muted">Ex.: Victor</small>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-md-5 col-lg-5">
                                            <div class="form-group">
                                                <label for="sobrenomePessoa">Último nome</label>
                                                <input type="text" class="form-control" value="<% out.print(ultimo); %>" name="uNome" required>
                                                <small class="form-text text-muted">Vieira da Silva.</small>
                                            </div>
                                        </div>
                                    </div>

									<div class="row">
                                        <div class="col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label for="sobrenomePessoa">Mensagem</label>
                                                <input type="text" class="form-control" value="<% out.print(msg); %>" name="msg" required>
                                            </div>
                                        </div>
                                    </div>

                                    <button class="btn btn-lg btn-block btn-success mt-3" type="submit">
                                        Atualizar <i class="fa fa-check ml-1"></i>
                                    </button>

                                </div>
                            </div>
                            
                            
                        </form>
                    </div>
                </div>
            </div>

        </div>

    </div>


  	<script src="js/all.min.js" type="text/javascript"></script>

  </body>
</html>