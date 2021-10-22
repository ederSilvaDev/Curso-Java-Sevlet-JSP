package Servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.codec.binary.Base64;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.fasterxml.jackson.databind.ObjectMapper;

import dao.DAOUsuarioRepository;
import model.ModelLogin;

@MultipartConfig
@WebServlet(urlPatterns = { "/ServletUsuarioController" })
public class ServletUsuarioController extends ServletGenericUtil {
	private static final long serialVersionUID = 1L;

	private DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();

	public ServletUsuarioController() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String acao = request.getParameter("acao");

			if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("deletar")) {
				String idUser = request.getParameter("id");
				daoUsuarioRepository.deletarUser(idUser);

				List<ModelLogin> modeLogins = daoUsuarioRepository.consultaUsuarioList(super.getUserLogado(request));
				request.setAttribute("modelLogins", modeLogins);

				request.setAttribute("msg", "Registro Excluido !");
				request.getRequestDispatcher("principal/usuario.jsp").forward(request, response);

			} else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("deletarajax")) {
				String idUser = request.getParameter("id");
				daoUsuarioRepository.deletarUser(idUser);
				request.setAttribute("msg", "Registro Excluido !");

			} else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarUserAjax")) {
				String nomeBusca = request.getParameter("nomeBusca");
				List<ModelLogin> dadosJsonUser = daoUsuarioRepository.consultaUsuarioList(nomeBusca,
						super.getUserLogado(request));

				ObjectMapper mapper = new ObjectMapper();
				String json = mapper.writeValueAsString(dadosJsonUser);

				response.getWriter().write(json);

				// daoUsuarioRepository.deletarUser(idUser);
				// request.setAttribute("msg", "Registro Excluido !");

			}

			else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarEditar")) {
				String id = request.getParameter("id");

				ModelLogin modelLogin = daoUsuarioRepository.cosultaUsuarioId(id, super.getUserLogado(request));

				/*
				 * List<ModelLogin> modelLogins = daoUsuarioRepository.consultaUsuarioList();
				 * request.setAttribute("modelLogins", modelLogins);
				 */

				request.setAttribute("msg", "Edição de Registro!");
				request.setAttribute("modelLogin", modelLogin);
				request.getRequestDispatcher("principal/usuario.jsp").forward(request, response);
			}

			else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("listaUser")) {

				List<ModelLogin> modelLogins = daoUsuarioRepository.consultaUsuarioList(super.getUserLogado(request));

				request.setAttribute("msg", "Carregando Usuarios!");
				request.setAttribute("modelLogins", modelLogins);
				request.getRequestDispatcher("principal/usuario.jsp").forward(request, response);

			}

			else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("downloadFoto")) {

				String id = request.getParameter("id");
				ModelLogin modelLogin = daoUsuarioRepository.cosultaUsuarioIds(id, super.getUserLogado(request));

				if (modelLogin.getFotouser() != null && !modelLogin.getFotouser().isEmpty()) {

					response.setHeader("Content-Disposition",
							"attachment;filename=arquivo." + modelLogin.getExtensaofotouser());
					response.getOutputStream()
							.write(new Base64().decodeBase64(modelLogin.getFotouser().split("\\,")[1]));
				}

			}

			else {
				request.getRequestDispatcher("principal/usuario.jsp").forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String msg = "Operação Realizada com Sucesso !";

			String id = request.getParameter("id");
			String nome = request.getParameter("nome");
			String cpf = request.getParameter("cpf");
			String snome = request.getParameter("snome");
			String cidade = request.getParameter("cidade");
			String email = request.getParameter("email");
			String estado = request.getParameter("estado");
			String cep = request.getParameter("cep");
			String login = request.getParameter("login");
			String senha = request.getParameter("senha");
			String perfil = request.getParameter("perfil");
			String sexo = request.getParameter("sexo");
			String pais = request.getParameter("pais");
			

			ModelLogin modelLogin = new ModelLogin();

			modelLogin.setId(id != null && !id.isEmpty() ? Long.parseLong(id) : null);
			modelLogin.setNome(nome);
			modelLogin.setCpf(cpf);
			modelLogin.setSnome(snome);
			modelLogin.setCidade(cidade);
			modelLogin.setEmail(email);
			modelLogin.setEstado(estado);
			modelLogin.setCep(cep);
			modelLogin.setLogin(login);
			modelLogin.setSenha(senha);
			modelLogin.setPerfil(perfil);
			modelLogin.setSexo(sexo);
			modelLogin.setPais(pais);
						

			if (ServletFileUpload.isMultipartContent(request)) {

				Part part = request.getPart("fileFoto");

				if (part.getSize() > 0) {
					byte[] foto = IOUtils.toByteArray(part.getInputStream());
					String imagemBase64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64,"
							+ new Base64().encodeBase64String(foto);

					modelLogin.setFotouser(imagemBase64);
					modelLogin.setExtensaofotouser(part.getContentType().split("\\/")[1]);
				}

			}

			if (daoUsuarioRepository.validaLogin(modelLogin.getLogin()) && modelLogin.getId() == null) {
				msg = "Login de Usuário já existente, Informe um outro Login !";
			} else {
				if (modelLogin.isNovo()) {
					msg = "Gravado com Sucesso !";
				} else {
					msg = "Atualizado com Sucesso !";
				}
				modelLogin = daoUsuarioRepository.gravarUsuario(modelLogin, super.getUserLogado(request));
			}

			List<ModelLogin> modelLogins = daoUsuarioRepository.consultaUsuarioList(super.getUserLogado(request));
			request.setAttribute("modelLogins", modelLogins);
			request.setAttribute("msg", msg);
			request.setAttribute("modelLogin", modelLogin);
			request.getRequestDispatcher("principal/usuario.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);

		}

	}

}
