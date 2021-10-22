<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set scope="session" var="perfil"
	value='<%=request.getSession().getAttribute("perfil").toString()%>'></c:set>

<!-- Sidebar chat start -->
<aside class="main-sidebar hidden-print ">
	<section class="sidebar" id="sidebar-scroll">
		<!-- Sidebar Menu-->
		<ul class="sidebar-menu">
			<li class="nav-level"></li>
			<li class="active treeview"><a class="waves-effect waves-dark"
				href="<%=request.getContextPath()%>/principal/principal.jsp"> <i
					class="icon-speedometer"></i><span>Painel</span>
			</a></li>
			<li class="treeview"><a class="waves-effect waves-dark"
				href="#!"><i class="icon-briefcase"></i><span> Cadastros</span><i
					class="icon-arrow-down"></i></a>
				<ul class="treeview-menu">
					<c:if test="${perfil == 'ADMIN'}">
						<li><a class="waves-effect waves-dark"
							href="<%=request.getContextPath()%>/ServletUsuarioController?acao=listaUser"><i
								class="icon-arrow-right"></i> Usuarios</a></li>
					</c:if>
					<li><a class="waves-effect waves-dark" href="button.html"><i
							class="icon-arrow-right"></i> Pessoa</a></li>
					<li><a class="waves-effect waves-dark" href="label-badge.html"><i
							class="icon-arrow-right"></i> Regula��o</a></li>
					<li><a class="waves-effect waves-dark"
						href="bootstrap-ui.html"><i class="icon-arrow-right"></i>
							Preven��o</a></li>
					<li><a class="waves-effect waves-dark" href="color.html"><i
							class="icon-arrow-right"></i> Social</a></li>
					<li><a class="waves-effect waves-dark" href="light-box.html"><i
							class="icon-arrow-right"></i> Ultrasson</a></li>
					<!-- <li><a class="waves-effect waves-dark"
							href="notification.html"><i class="icon-arrow-right"></i>
								Notification</a></li>
						<li><a class="waves-effect waves-dark"
							href="panels-wells.html"><i class="icon-arrow-right"></i>
								Panels-Wells</a></li>
						<li><a class="waves-effect waves-dark" href="tabs.html"><i
								class="icon-arrow-right"></i> Tabs</a></li>
						<li><a class="waves-effect waves-dark" href="tooltips.html"><i
								class="icon-arrow-right"></i> Tooltips</a></li>
						<li><a class="waves-effect waves-dark" href="typography.html"><i
								class="icon-arrow-right"></i> Typography</a></li> -->
				</ul></li>

			<li class="treeview"><a class="waves-effect waves-dark"
				href="#!"><i class="icon-chart"></i><span> Relat�rios</span><i
					class="icon-arrow-down"></i></a>
				<ul class="treeview-menu">
					<li><a class="waves-effect waves-dark" href="float-chart.html"><i
							class="icon-arrow-right"></i> Regula��o</a></li>
					<li><a class="waves-effect waves-dark"
						href="morris-chart.html"><i class="icon-arrow-right"></i>
							Hist�rico</a></li>
				</ul></li>

			<!-- <li class="treeview"><a class="waves-effect waves-dark"
					href="#!"><i class="icon-book-open"></i><span> Forms</span><i
						class="icon-arrow-down"></i></a>
					<ul class="treeview-menu">
						<li><a class="waves-effect waves-dark"
							href="form-elements-bootstrap.html"><i
								class="icon-arrow-right"></i> Form Elements Bootstrap</a></li>

						<li><a class="waves-effect waves-dark"
							href="form-elements-advance.html"><i class="icon-arrow-right"></i>
								Form Elements Advance</a></li>
					</ul></li>

				<li class="treeview"><a class="waves-effect waves-dark"
					href="basic-table.html"> <i class="icon-list"></i><span>
							Table</span>
				</a></li>


			<li class="nav-level">--- More</li>

			<li class="treeview"><a class="waves-effect waves-dark"
				href="#!"><i class="icon-docs"></i><span>Pages</span><i
					class="icon-arrow-down"></i></a>
				<ul class="treeview-menu">
					<li class="treeview"><a href="#!"><i
							class="icon-arrow-right"></i><span> Authentication</span><i
							class="icon-arrow-down"></i></a>
						<ul class="treeview-menu">
							<li><a class="waves-effect waves-dark" href="register1.html"
								target="_blank"><i class="icon-arrow-right"></i> Register 1</a></li>

							<li><a class="waves-effect waves-dark" href="login1.html"
								target="_blank"><i class="icon-arrow-right"></i><span>
										Login 1</span></a></li>
							<li><a class="waves-effect waves-dark"
								href="forgot-password.html" target="_blank"><i
									class="icon-arrow-right"></i><span> Forgot Password</span></a></li>

						</ul></li>

					<li><a class="waves-effect waves-dark" href="404.html"
						target="_blank"><i class="icon-arrow-right"></i> Error 404</a></li>
					<li><a class="waves-effect waves-dark" href="sample-page.html"><i
							class="icon-arrow-right"></i> Sample Page</a></li>

				</ul></li>


			<li class="nav-level">--- Menu Level</li>

			<li class="treeview"><a class="waves-effect waves-dark"
				href="#!"><i class="icofont icofont-company"></i><span>Menu
						Level 1</span><i class="icon-arrow-down"></i></a>
				<ul class="treeview-menu">
					<li><a class="waves-effect waves-dark" href="#!"> <i
							class="icon-arrow-right"></i> Level Two
					</a></li>
					<li class="treeview"><a class="waves-effect waves-dark"
						href="#!"> <i class="icon-arrow-right"></i> <span>Level
								Two</span> <i class="icon-arrow-down"></i>
					</a>
						<ul class="treeview-menu">
							<li><a class="waves-effect waves-dark" href="#!"> <i
									class="icon-arrow-right"></i> Level Three
							</a></li>
							<li><a class="waves-effect waves-dark" href="#!"> <i
									class="icon-arrow-right"></i> <span>Level Three</span> <i
									class="icon-arrow-down"></i>
							</a>
								<ul class="treeview-menu">
									<li><a class="waves-effect waves-dark" href="#!"> <i
											class="icon-arrow-right"></i> Level Four
									</a></li>
									<li><a class="waves-effect waves-dark" href="#!"> <i
											class="icon-arrow-right"></i> Level Four
									</a></li>
								</ul></li>
						</ul></li>
				</ul></li> -->
		</ul>
	</section>
</aside>
