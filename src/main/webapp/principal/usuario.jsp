<%@page import="model.ModelLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt">
<head>
<title>Cadastro de Usuario</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="codedthemes">
<meta name="keywords"
	content=", Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
<meta name="author" content="codedthemes">

<!-- Favicon icon -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/assets/images/favicon.png"
	type="image/x-icon">
<link rel="icon"
	href="<%=request.getContextPath()%>/assets/images/favicon.ico"
	type="image/x-icon">

<!-- Google font-->
<link href="https://fonts.googleapis.com/css?family=Ubuntu:400,500,700"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!--ico Fonts-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/icon/icofont/css/icofont.css">

<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/plugins/bootstrap/css/bootstrap.min.css">

<!-- waves css -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/plugins/Waves/waves.min.css">

<!-- Style.css -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/main.css">

<!-- Responsive.css-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/responsive.css">

<!--color css-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/color/color-1.min.css"
	id="color" />

</head>

<jsp:include page="head.jsp"></jsp:include>


<body class="sidebar-mini fixed">
	<!-- <div class="loader-bg">
		<div class="loader-bar"></div>
	</div> -->
	<div class="wrapper">
		<!-- Navbar-->
		<header class="main-header-top hidden-print">
			<a href="principal/principal.jsp" class="logo"><img
				class="img-fluid able-logo"
				src="<%=request.getContextPath()%>/assets/images/logo.png"
				alt="Theme-logo"></a>
			<jsp:include page="navbar.jsp"></jsp:include>
		</header>
		<!-- Side-Nav-->
		<jsp:include page="main-sidebar.jsp"></jsp:include>


		<div class="content-wrapper">
			<!-- Container-fluid starts -->
			<!-- Main content starts -->
			<div class="container-fluid">
				<div class="row">
					<div class="card-header">
						<!-- Textual inputs starts -->
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h2>Cadastro de Usuário</h2>
									<!-- <div class="f-right">
										<a href="" data-toggle="modal"
											data-target="#textual-input-Modal"><i
											class="icofont icofont-code-alt"></i></a>
									</div> -->
								</div>
								<div class="modal fade modal-flex" id="textual-input-Modal"
									tabindex="-1" role="dialog">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<!-- <button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h5 class="modal-title">Code Explanation For Textual
													Input Types</h5> -->
											</div>
											<!-- end of modal-header -->
											<div class="modal-body">
												<pre class="brush: html">
                      	<!-- &lt;note&gt; This Code Write inside &lt;form&gt; tag -->

				/* use for text textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-text-input" class="col-xs-2 col-form-label form-control-label"&gt;Text&lt;label&gt;
								&lt;div class="col-sm-10"&gt;
									&lt;input class="form-control" type="text" value="Artisanal kale" id="example-text-input"&gt;
								&lt;/div&gt;
						&lt;/div&gt;

						/* use for search textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-search-input" class="col-xs-2 col-form-label form-control-label"&gt;Search&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input class="form-control" type="search" value="How do I shoot web" id="example-search-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for email textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-email-input" class="col-xs-2 col-form-label form-control-label"&gt;Email&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input class="form-control" type="email" value="bootstrap@example.com" id="example-email-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for Url textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-url-input" class="col-xs-2 col-form-label form-control-label"&gt;URL&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input class="form-control" type="url" value="https://getbootstrap.com" id="example-url-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for Telephone textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-tel-input" class="col-xs-2 col-form-label form-control-label"&gt;Telephone&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input class="form-control" type="tel" value="1-(555)-555-5555" id="example-tel-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for Password textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-password-input" class="col-xs-2 col-form-label form-control-label"&gt;Password&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input class="form-control" type="password" value="hunter2" id="example-password-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for Static Control textual input */

						&lt;div class="form-group row"&gt;
							&lt;label class="col-sm-2 col-form-label form-control-label"&gt;Static Control&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;p class="form-control-static"&gt;email@example.com&lt;/p&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						 /* use for Number textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-number-input" class="col-xs-2 col-form-label form-control-label"&gt;Number&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input class="form-control" type="number" value="42" id="example-number-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for Date and Time textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-datetime-local-input" class="col-xs-2 col-form-label form-control-label"&gt;Date and time&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input class="form-control" type="datetime-local" value="2011-08-19T13:45:00" id="example-datetime-local-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for Date textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-date-input" class="col-xs-2 col-form-label form-control-label"&gt;Date&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input class="form-control" type="date" value="2011-08-19" id="example-date-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for Month textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-month-input" class="col-xs-2 col-form-label form-control-label"&gt;Month&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input class="form-control" type="month" value="2011-08" id="example-month-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for Week textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-week-input" class="col-xs-2 col-form-label form-control-label"&gt;Week&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input class="form-control" type="week" value="2011-W33" id="example-week-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for Time textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-time-input" class="col-xs-2 col-form-label form-control-label"&gt;Time&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input class="form-control" type="time" value="13:45:00" id="example-time-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for Color textual input */

						&lt;div class="form-group row"&gt;
							&lt;label for="example-color-input" class="col-xs-2 col-form-label form-control-label"&gt;Color&lt;/label&gt;
							&lt;div class="col-sm-10"&gt;
								&lt;input type="color" class="" name="favcolor" value="#1b8bf9" id="example-color-input"&gt;
							&lt;/div&gt;
						&lt;/div&gt;

						/* use for File Upload Textual */

						&lt;div class="form-group row"&gt;
							&lt;label for="file" class="col-md-2 col-form-label form-control-label">File input&lt;/label&gt;
							&lt;div class="col-md-9"&gt;
								&lt;label for="file" class="custom-file"&gt;
									&lt;input type="file" id="file" class="custom-file-input"&gt;
									&lt;span class="custom-file-control"&gt;&lt;/span&gt;
								&lt;/label&gt;
							&lt;/div&gt;
						&lt;/div&gt;
                     </pre>
											</div>
											<!-- end of modal-body -->
										</div>
										<!-- end of modal-content -->
									</div>
									<!-- end of modal-dialog -->
								</div>
								<!-- end of modal -->
								<div class="card-block">
									<form class="form-material" enctype="multipart/form-data"
										action="<%=request.getContextPath()%>/ServletUsuarioController"
										method="post" id="formUser">

										<input type="hidden" name="acao" id="acao" value="">

										<div class="form-group row">
											<label for="id"
												class="col-xs-2 col-form-label form-control-label">ID</label>
											<div class="col-sm-10">
												<input class="form-control" type="text" id="id" name="id"
													readonly="readonly" value="${modelLogin.id}">
											</div>
										</div>

										<div class="form-group row">
											<label for="id"
												class="col-xs-2 col-form-label form-control-label">Foto</label>
											<!-- VERIFICA SE TIVER FOTO CARREGA A FOTO DO BANCO, SENÃO CARREGA UMA IMAGEM PADRÃO-->
											<c:if
												test="${modelLogin.fotouser != '' && modelLogin.fotouser != null}">
												<a
													href="<%= request.getContextPath()%>/ServletUsuarioController?acao=downloadFoto&id=${modoLogin.id}">
													<img alt="imagem user" id="fotoembase64"
													src="${modelLogin.fotouser}" width="180px">
												</a>
											</c:if>

											<c:if
												test="${modelLogin.fotouser == '' || modelLogin.fotouser == null}">
												<img alt="imagem user" id="fotoembase64"
													src="assets/images/default.jpg" width="90px">
											</c:if>

											<br> <br>

											<div class="input-group mb-3">
												<input type="file" class="form-control" id="fileFoto"
													name="fileFoto" accept="image/*"
													onchange="visualizarImg('fotoembase64','fileFoto');">
											</div>

										</div>

										<div class="form-group row">
											<label for="login"
												class="col-xs-2 col-form-label form-control-label">Login</label>
											<div class="col-sm-10">
												<input class="form-control" type="text" id="login"
													name="login" required="required"
													value="${modelLogin.login}">
											</div>
										</div>
										<div class="form-group row">
											<label for="login"
												class="col-xs-2 col-form-label form-control-label">Perfil
												de Usuário</label>
											<div class="col-sm-10">
												<select class="form-select form-control"
													aria-label="Default select example" name="perfil">
													<!-- SELECT QUE TRAZ NO COMBO O PERFIL DO USUARIO, TRAZIDO NA BUSCA  -->
													<option disabled="disabled">Selecione uma Perfil</option>
													<option value="ADMIN"
														<%ModelLogin modelLogin = (ModelLogin) request.getAttribute("modolLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("ADMIN")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Administrator</option>

													<option value="SIMPLE"
														<%modelLogin = (ModelLogin) request.getAttribute("modolLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("SIMPLE")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");

}%>>Simple</option>

													<option value="INTER"
														<%modelLogin = (ModelLogin) request.getAttribute("modolLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("INTER")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");

}%>>intermediary</option>


													<option value="AVANCE"
														<%modelLogin = (ModelLogin) request.getAttribute("modolLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("AVANCE")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");

}%>>Avance</option>
												</select>
											</div>
										</div>

										<div class="form-group row">
											<label for="nome"
												class="col-xs-2 col-form-label form-control-label">Senha</label>
											<div class="col-sm-10">
												<input class="form-control" type="password" id="senha"
													name="senha" required="required" autocomplete="off"
													value="${modelLogin.senha}">
											</div>
										</div>

										<div class="form-group row">
											<label for="nome"
												class="col-xs-2 col-form-label form-control-label">
												Nome</label>
											<div class="col-sm-10">
												<input class="form-control" type="text" id="nome"
													name="nome" required="required" value="${modelLogin.nome}">
											</div>
										</div>
										<!-- RADIO QUE TRAZ TICADO O SEXO DO USUARIO, TRAZIDO NA BUSCA  -->
										<div class="form-group form-default form-static-label">
											<input type="radio" name="sexo" checked="checked"
												value="MASCULINO"
												<%modelLogin = (ModelLogin) request.getAttribute("modolLogin");

if (modelLogin != null && modelLogin.getSexo().equals("MASCULINO")) {

	out.print(" ");
	out.print("checked=\"checked\"");
	out.print(" ");
}%>>Masculino</>

											<input type="radio" name="sexo" value="FEMININO"
												<%modelLogin = (ModelLogin) request.getAttribute("modolLogin");

if (modelLogin != null && modelLogin.getSexo().equals("FEMININO")) {

	out.print(" ");
	out.print("checked=\"checked\"");
	out.print(" ");
}%>>Feminino</>

										</div>

										<div class="form-group row">
											<label for="nome"
												class="col-xs-2 col-form-label form-control-label">
												CPF</label>
											<div class="col-sm-10">
												<input class="form-control" type="text" id="cpf" name="cpf"
													required="required" value="${modelLogin.cpf}">
											</div>
										</div>

										<div class="form-group row">
											<label for="snome"
												class="col-xs-2 col-form-label form-control-label">
												Sobre Nome</label>
											<div class="col-sm-10">
												<input class="form-control" type="text" id="snome"
													name="snome" required="required"
													value="${modelLogin.snome}">
											</div>
										</div>

										<div class="form-group row">
											<label for="email"
												class="col-xs-2 col-form-label form-control-label">
												Email </label>
											<div class="col-sm-10">
												<input class="form-control" type="email" id="email"
													name="email" required="required" autocomplete="off"
													value="${modelLogin.email}">
											</div>
										</div>

										<div class="form-group row">
											<label for="cep"
												class="col-xs-2 col-form-label form-control-label">
												CEP</label>
											<div class="col-sm-10">
												<input class="form-control" type="text" id="cep" name="cep"
													value="${modelLogin.cep}">
											</div>
										</div>

										<div class="form-group row">
											<label for="rua"
												class="col-xs-2 col-form-label form-control-label">
												Rua</label>
											<div class="col-sm-10">
												<input class="form-control" type="text" id="rua" name="rua"
													value="${modelLogin.rua}">
											</div>
										</div>

										<div class="form-group row">
											<label for="bairro"
												class="col-xs-2 col-form-label form-control-label">
												Bairro</label>
											<div class="col-sm-10">
												<input class="form-control" type="text" id="bairro"
													name="bairro" value="${modelLogin.bairro}">
											</div>
										</div>

										<div class="form-group row">
											<label for="cidade"
												class="col-xs-2 col-form-label form-control-label">
												Cidade</label>
											<div class="col-sm-10">
												<input class="form-control" type="text" id="cidade"
													name="cidade" value="${modelLogin.cidade}">
											</div>
										</div>


										<div class="form-group row">
											<label for="numero"
												class="col-xs-2 col-form-label form-control-label">
												Número</label>
											<div class="col-sm-10">
												<input class="form-control" type="text" id="numero"
													name="numero" value="${modelLogin.numero}">
											</div>
										</div>

										<div class="form-group row">
											<label for="estado"
												class="col-xs-2 col-form-label form-control-label">
												Estado</label>
											<div class="col-sm-10" class="autocomplete">
												<input class="form-control" type="text" id="estado"
													name="estado" value="${modelLogin.estado}">


											</div>
										</div>

										<!--Make sure the form has the autocomplete function switched off:-->
										<div class="form-group row">
											<label for="pais"
												class="col-xs-2 col-form-label form-control-label">
												Pais</label>
											<div class="col-sm-10">
												<input class="form-control" type="text" id="pais"
													name="pais" value="${modelLogin.pais}">
											</div>
										</div>

										<div>
											<div class="col-md-2">
												<button type="button"
													class="btn btn-primary btn-md btn-block waves-effect"
													onclick="limparForm();">Novo</button>
											</div>
										</div>
										<div>
											<div class="col-md-2">
												<button
													class="btn btn-primary btn-md btn-block waves-effect">
													Editar</button>
											</div>
										</div>
										<div>
											<div class="col-md-2">
												<button
													class="btn btn-primary btn-md btn-block waves-effect">
													Salvar</button>
											</div>
										</div>
										<div>
											<div class="col-md-2">
												<button type="button"
													class="btn btn-danger btn-md btn-block waves-effect"
													onclick="excluir();" data-toggle="modal"
													data-target="#exampleModalUsuario">Excluir</button>

											</div>
										</div>
										<div>
											<div class="col-md-2">
												<button type="button"
													class="btn btn-light btn-md btn-block waves-effect"
													data-toggle="modal" data-target="#pesquisaModalUsuario">Pesquisar</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<span>${msg}</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="javascript.jsp"></jsp:include>

	<!-- Modal -->
	<div class="modal fade" id="pesquisaModalUsuario" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Pesquisa de
						Registros</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="Pesquisa"
							aria-label="nome" id="nomeBusca" aria-describedby="basic-addon2">
					</div>
					<div style="height: 180px; overflow: scroll;">
						<table class="table" id="tabelaresultados">
							<!-- <caption>Registros</caption> -->
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Nome</th>
									<th scope="col">Email</th>
									<th scope="col">CPF</th>
									<th scope="col">Cep</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
					<span id="totalResultados"></span>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Fechar</button>
						<button type="button" class="btn btn-primary"
							onclick="buscarRegUser();">Buscar</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<span id="totalResultados"></span>

	<script type="text/javascript">
		function verEditar(id) {
			var urlAction = document.getElementById('formUser').action;

			window.location.href = urlAction + '?acao=buscarEditar&id=' + id;

		}

		function buscarRegUser() {
			var nomeBusca = document.getElementById('nomeBusca').value;

			if (nomeBusca != null && nomeBusca != '' && nomeBusca.trim() != '') { /*Validando que tem que ter valor pra buscar no banco*/

				var urlAction = document.getElementById('formUser').action;

				$
						.ajax(
								{

									method : "get",
									url : urlAction,
									data : "nomeBusca=" + nomeBusca
											+ '&acao=buscarUserAjax',
									success : function(response) {

										var json = JSON.parse(response);

										$('#tabelaresultados > tbody > tr')
												.remove();

										for (var p = 0; p < json.length; p++) {
											$('#tabelaresultados > tbody')
													.append(
															'<tr> <td>'
																	+ json[p].id
																	+ '</td> <td>'
																	+ json[p].nome
																	+ '</td> <td>'
																	+ json[p].email
																	+ '</td> <td>'
																	+ json[p].cpf
																	+ '</td> <td>'
																	+ json[p].cep
																	+ '</td> <td><button onclick="verEditar('
																	+ json[p].id
																	+ ')" type="button" class="btn btn-info">Ver</button></td></tr>');
										}

										document
												.getElementById('totalResultados').textContent = 'Resultados: '
												+ json.length;

									}

								}).fail(
								function(xhr, status, errorThrown) {
									alert('Erro ao buscar usuário por nome: '
											+ xhr.responseText);
								});
			}

		}

		function excluircomAjax() {
			if (confirm("Deseja Excluir o Resgitro ?")) {

				var urlAction = document.getElementById("formUser").action;
				var idUser = document.getELementById("id").value;

				$.ajax({

					method : "get",
					url : urlAction,
					data : "id=" + idUser + '&acao=deletarajax',
					success : function(response) {

						limparForm();
						document.getElementById('msg').textContent = response;
					}

				}).fail(
						function(xhr, status, errorThrown) {
							alert('Erro ao deletar usuario por Id:'
									+ xhr.responseText);
						});
			}

		}

		function excluir() {
			if (confirm("Deseja Excluir o Resgitro ?")) {

				document.getElementById("formUser").method = 'get';
				document.getElementById("acao").value = 'deletar';
				document.getElementById("formUser").submit();
			}
		}

		function limparForm() {
			var elementos = document.getElementById("formUser").elements;
			for (i = 0; i < elementos.length; i++) {
				elementos[i].value = '';

			}

		}

		function visualizarImg(fotoembase64, filefoto) {

			//alert('Chamou !')

			var preview = document.getElementById(fotoembase64);
			var fileUser = document.getElementById(filefoto).files[0];
			var reader = new FileReader();

			reader.onloadend = function() {
				preview.src = reader.result;
			};

			if (fileUser) {
				reader.readAsDataURL(fileUser);
			} else {
				preview.src = '';
			}
		}

		function autocomplete(inp, arr) {
			/*the autocomplete function takes two arguments,
			the text field element and an array of possible autocompleted values:*/
			var currentFocus;
			/*execute a function when someone writes in the text field:*/
			inp
					.addEventListener(
							"input",
							function(e) {
								var a, b, i, val = this.value;
								/*close any already open lists of autocompleted values*/
								closeAllLists();
								if (!val) {
									return false;
								}
								currentFocus = -1;
								/*create a DIV element that will contain the items (values):*/
								a = document.createElement("DIV");
								a.setAttribute("id", this.id
										+ "autocomplete-list");
								a.setAttribute("class", "autocomplete-items");
								/*append the DIV element as a child of the autocomplete container:*/
								this.parentNode.appendChild(a);
								/*for each item in the array...*/
								for (i = 0; i < arr.length; i++) {
									/*check if the item starts with the same letters as the text field value:*/
									if (arr[i].substr(0, val.length)
											.toUpperCase() == val.toUpperCase()) {
										/*create a DIV element for each matching element:*/
										b = document.createElement("DIV");
										/*make the matching letters bold:*/
										b.innerHTML = "<strong>"
												+ arr[i].substr(0, val.length)
												+ "</strong>";
										b.innerHTML += arr[i]
												.substr(val.length);
										/*insert a input field that will hold the current array item's value:*/
										b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
										/*execute a function when someone clicks on the item value (DIV element):*/
										b
												.addEventListener(
														"click",
														function(e) {
															/*insert the value for the autocomplete text field:*/
															inp.value = this
																	.getElementsByTagName("input")[0].value;
															/*close the list of autocompleted values,
															(or any other open lists of autocompleted values:*/
															closeAllLists();
														});
										a.appendChild(b);
									}
								}
							});
			/*execute a function presses a key on the keyboard:*/
			inp.addEventListener("keydown", function(e) {
				var x = document.getElementById(this.id + "autocomplete-list");
				if (x)
					x = x.getElementsByTagName("div");
				if (e.keyCode == 40) {
					/*If the arrow DOWN key is pressed,
					increase the currentFocus variable:*/
					currentFocus++;
					/*and and make the current item more visible:*/
					addActive(x);
				} else if (e.keyCode == 38) { //up
					/*If the arrow UP key is pressed,
					decrease the currentFocus variable:*/
					currentFocus--;
					/*and and make the current item more visible:*/
					addActive(x);
				} else if (e.keyCode == 13) {
					/*If the ENTER key is pressed, prevent the form from being submitted,*/
					e.preventDefault();
					if (currentFocus > -1) {
						/*and simulate a click on the "active" item:*/
						if (x)
							x[currentFocus].click();
					}
				}
			});
			function addActive(x) {
				/*a function to classify an item as "active":*/
				if (!x)
					return false;
				/*start by removing the "active" class on all items:*/
				removeActive(x);
				if (currentFocus >= x.length)
					currentFocus = 0;
				if (currentFocus < 0)
					currentFocus = (x.length - 1);
				/*add class "autocomplete-active":*/
				x[currentFocus].classList.add("autocomplete-active");
			}
			function removeActive(x) {
				/*a function to remove the "active" class from all autocomplete items:*/
				for (var i = 0; i < x.length; i++) {
					x[i].classList.remove("autocomplete-active");
				}
			}
			function closeAllLists(elmnt) {
				/*close all autocomplete lists in the document,
				except the one passed as an argument:*/
				var x = document.getElementsByClassName("autocomplete-items");
				for (var i = 0; i < x.length; i++) {
					if (elmnt != x[i] && elmnt != inp) {
						x[i].parentNode.removeChild(x[i]);
					}
				}
			}
			/*execute a function when someone clicks in the document:*/
			document.addEventListener("click", function(e) {
				closeAllLists(e.target);
			});
		}

		/*An array containing all the country names in the world:*/
		var countries = [ "Afghanistan", "Albania", "Algeria", "Andorra",
				"Angola", "Anguilla", "Antigua & Barbuda", "Argentina",
				"Armenia", "Aruba", "Australia", "Austria", "Azerbaijan",
				"Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus",
				"Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia",
				"Bosnia & Herzegovina", "Botswana", "Brazil",
				"British Virgin Islands", "Brunei", "Bulgaria", "Burkina Faso",
				"Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde",
				"Cayman Islands", "Central Arfrican Republic", "Chad", "Chile",
				"China", "Colombia", "Congo", "Cook Islands", "Costa Rica",
				"Cote D Ivoire", "Croatia", "Cuba", "Curacao", "Cyprus",
				"Czech Republic", "Denmark", "Djibouti", "Dominica",
				"Dominican Republic", "Ecuador", "Egypt", "El Salvador",
				"Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia",
				"Falkland Islands", "Faroe Islands", "Fiji", "Finland",
				"France", "French Polynesia", "French West Indies", "Gabon",
				"Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece",
				"Greenland", "Grenada", "Guam", "Guatemala", "Guernsey",
				"Guinea", "Guinea Bissau", "Guyana", "Haiti", "Honduras",
				"Hong Kong", "Hungary", "Iceland", "India", "Indonesia",
				"Iran", "Iraq", "Ireland", "Isle of Man", "Israel", "Italy",
				"Jamaica", "Japan", "Jersey", "Jordan", "Kazakhstan", "Kenya",
				"Kiribati", "Kosovo", "Kuwait", "Kyrgyzstan", "Laos", "Latvia",
				"Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein",
				"Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar",
				"Malawi", "Malaysia", "Maldives", "Mali", "Malta",
				"Marshall Islands", "Mauritania", "Mauritius", "Mexico",
				"Micronesia", "Moldova", "Monaco", "Mongolia", "Montenegro",
				"Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia",
				"Nauro", "Nepal", "Netherlands", "Netherlands Antilles",
				"New Caledonia", "New Zealand", "Nicaragua", "Niger",
				"Nigeria", "North Korea", "Norway", "Oman", "Pakistan",
				"Palau", "Palestine", "Panama", "Papua New Guinea", "Paraguay",
				"Peru", "Philippines", "Poland", "Portugal", "Puerto Rico",
				"Qatar", "Reunion", "Romania", "Russia", "Rwanda",
				"Saint Pierre & Miquelon", "Samoa", "San Marino",
				"Sao Tome and Principe", "Saudi Arabia", "Senegal", "Serbia",
				"Seychelles", "Sierra Leone", "Singapore", "Slovakia",
				"Slovenia", "Solomon Islands", "Somalia", "South Africa",
				"South Korea", "South Sudan", "Spain", "Sri Lanka",
				"St Kitts & Nevis", "St Lucia", "St Vincent", "Sudan",
				"Suriname", "Swaziland", "Sweden", "Switzerland", "Syria",
				"Taiwan", "Tajikistan", "Tanzania", "Thailand", "Timor L'Este",
				"Togo", "Tonga", "Trinidad & Tobago", "Tunisia", "Turkey",
				"Turkmenistan", "Turks & Caicos", "Tuvalu", "Uganda",
				"Ukraine", "United Arab Emirates", "United Kingdom",
				"United States of America", "Uruguay", "Uzbekistan", "Vanuatu",
				"Vatican City", "Venezuela", "Vietnam", "Virgin Islands (US)",
				"Yemen", "Zambia", "Zimbabwe" ];

		/*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
		autocomplete(document.getElementById("pais"), countries);
	</script>
</body>
</html>

