<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*" %> 
<%@ page language="java" import="conexao.Conecta" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
    <link rel="icon" type="text/css" href="IMG/si.jpg"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" type="text/css" href="../static/CSS/all.min.css">
    <!-- Footer CSS -->
    <link rel="stylesheet" type="text/css" href="../static/CSS/footer.css" >
    <!-- DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="../static/CSS/dataTables.bootstrap4.min.css" >

    <title>SiCompartilha - listagem</title>

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

            <div class="container-fluid" style="margin-top: 17%;">
                <div class="row mt-5">
                    <div class="col-sm-12 col-md-7 col-lg-7">
                        <!-- Manter a Aparência -->
                    </div>
                    <div class="col-sm-12 col-md-5 col-lg-5">
                        <div class="card bg-transparent" style="margin-right: 10%; border: none;">
                            <h1 class="display-4 mb-2 mt-3 text-white">Seja Bem-Vindo</h1>
                            <div class="card-body mt-3">
                                
                                <a class="btn btn-outline-light btn-lg" href="#inicio">
                                    <i class="fa fa-arrow-down"></i>
                                </a>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <div class="container-fluid p-5" id="inicio">

        <h1 class="display-4 text-center" style="margin-bottom: 4.5%;">
            <i class="fa fa-clipboard-list"></i> Lista de Pessoas
        </h1>

        <table class="table table-hover" id="listaPessoas">
            <thead>
                <tr class="text-center">
                	<th>Código</th>
                    <th>Primeiro nome</th>
                    <th>Ultimo nome</th>
                    <th>Mensagem</th>
                    <th></th>
                   	<th></th>   
                </tr>
            </thead>
            <tbody>

				<%
					try{
																Connection conn = Conecta.getConnection();
																String sql = "SELECT * FROM usuariolt";
																PreparedStatement stmt = conn.prepareStatement(sql);
																ResultSet resultado = stmt.executeQuery(sql);
																
																//puxa os dados do bd
																while(resultado.next()){
																	out.print("<tr><td class='text-center'>" + resultado.getInt("id") + " <td class='text-center'>"
															+ resultado.getString("primNome") + " <td class='text-center'>"
															+ resultado.getString("ultNome")+ " <td class='text-center'>"
																	+ resultado.getString("mensagem")
									+ " <td > <a href='atualizarPessoa.jsp?id="
									+ resultado.getInt("id")
									+ "'class='text-primary' style='font-size:1.3em;'><i title='Alter Dados' class='fas fa-edit'></i></a><td ><a href='deletarPessoa.jsp?id="
									+ resultado.getInt("id")
									+ "'  class='text-danger' style='font-size:1.3em;'><i title='Deletar reserva' class='far fa-trash-alt'></i></a></tr>");
						}

					} catch (Exception e) {

					}
				%>

            </tbody>
        </table>

        <a href="cadastrarPessoa.jsp" style=" background-color: #27408B;" class="btn text-white btn-lg btn-block mt-5">
            <i class="fa fa-user-plus mr-2"></i> Adicionar Pessoa
        </a>
        
        <br>
        
    

    </div>

    <footer class="footer text-center p-3">
      <div class="container">
        <span class="text-muted">© 2019 Copyright Victor Vieira</span>
      </div>
    </footer>
     
  </body>
  
  <script src="js/all.min.js" type="text/javascript"></script>
  
</html>