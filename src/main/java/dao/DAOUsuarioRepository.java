package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelLogin;

public class DAOUsuarioRepository {

	private Connection connection;

	public DAOUsuarioRepository() {
		connection = SingleConnectionBanco.getConnection();
	}

	public ModelLogin gravarUsuario(ModelLogin objeto, Long userLogado) throws Exception {

		if (objeto.isNovo()) {// GRAVA UM NOVO

			String sql = "INSERT INTO model_login(login, senha, nome, cpf, snome, email, cidade, estado, cep, usuario_id, perfil, sexo, pais) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
			PreparedStatement prepareSql = connection.prepareStatement(sql);

			prepareSql.setString(1, objeto.getLogin());
			prepareSql.setString(2, objeto.getSenha());
			prepareSql.setString(3, objeto.getNome());
			prepareSql.setString(4, objeto.getCpf());
			prepareSql.setString(5, objeto.getSnome());
			prepareSql.setString(6, objeto.getEmail());
			prepareSql.setString(7, objeto.getCidade());
			prepareSql.setString(8, objeto.getEstado());
			prepareSql.setString(9, objeto.getCep());
			prepareSql.setLong(10, userLogado);
			prepareSql.setString(11, objeto.getPerfil());
			prepareSql.setString(12, objeto.getSexo());
			prepareSql.setString(13, objeto.getPais());
			
			prepareSql.execute();
			connection.commit();

			if (objeto.getFotouser() != null && !objeto.getFotouser().isEmpty()) {
				sql = "update model_login set fotouser =?, extensaofotouser=? where login = ?";
				prepareSql = connection.prepareStatement(sql);

				prepareSql.setString(1, objeto.getFotouser());
				prepareSql.setString(2, objeto.getExtensaofotouser());
				prepareSql.setString(3, objeto.getLogin());

				prepareSql.execute();
				connection.commit();
			}

		} else {// ATUALIZA O REGISTRO ATUAL
			String sql = "UPDATE model_login SET login=?, senha=?, nome=?, cpf=?, snome=?, email=?, cidade=?, estado=?, cep=?, perfil=?, sexo=?, pais=? WHERE id = "
					+ objeto.getId() + ";";
			PreparedStatement prepareSql = connection.prepareStatement(sql);

			prepareSql.setString(1, objeto.getLogin());
			prepareSql.setString(2, objeto.getSenha());
			prepareSql.setString(3, objeto.getNome());
			prepareSql.setString(4, objeto.getCpf());
			prepareSql.setString(5, objeto.getSnome());
			prepareSql.setString(6, objeto.getEmail());
			prepareSql.setString(7, objeto.getCidade());
			prepareSql.setString(8, objeto.getEstado());
			prepareSql.setString(9, objeto.getCep());
			prepareSql.setString(10, objeto.getPerfil());
			prepareSql.setString(11, objeto.getSexo());
			prepareSql.setString(13, objeto.getPais());

			prepareSql.executeUpdate();
			connection.commit();

			if (objeto.getFotouser() != null && !objeto.getFotouser().isEmpty()) {
				sql = "update model_login set fotouser =?, extensaofotouser=? where id = ?";
				prepareSql = connection.prepareStatement(sql);

				prepareSql.setString(1, objeto.getFotouser());
				prepareSql.setString(2, objeto.getExtensaofotouser());
				prepareSql.setLong(3, objeto.getId());

				prepareSql.execute();
				connection.commit();
			}

		}

		return this.cosultaUsuario(objeto.getLogin(), userLogado);

	}

	// TRAZ TODOS OS USUARIOS
	public List<ModelLogin> consultaUsuarioList(Long userLogado) throws Exception {

		List<ModelLogin> retorno = new ArrayList<ModelLogin>();

		String sql = "select * from model_login where useradmin is false and usuario_id = " + userLogado;
		PreparedStatement statement = connection.prepareStatement(sql);

		ResultSet resultado = statement.executeQuery();

		while (resultado.next()) { /* percorrer as linhas de resultado do SQL */

			ModelLogin modelLogin = new ModelLogin();

			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setLogin(resultado.getString("login"));
			/* modelLogin.setSenha(resultado.getString("senha")) */;
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setSnome(resultado.getString("snome"));
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setCidade(resultado.getString("cidade"));
			modelLogin.setEstado(resultado.getString("estado"));
			modelLogin.setCep(resultado.getString("cep"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setSexo(resultado.getString("sexo"));
			modelLogin.setFotouser(resultado.getString("fotouser"));
			modelLogin.setExtensaofotouser(resultado.getString("extensaofotouser"));
			modelLogin.setPais(resultado.getString("pais"));
					
	
			retorno.add(modelLogin);
		}

		return retorno;
	}

	public List<ModelLogin> consultaUsuarioList(String nome, Long userLogado) throws Exception {

		List<ModelLogin> retorno = new ArrayList<ModelLogin>();

		String sql = "select * from model_login where upper(nome) like upper(?) and useradmin is false and usuario_id = ?";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, "%" + nome + "%");
		statement.setLong(2, userLogado);

		ResultSet resultado = statement.executeQuery();

		while (resultado.next()) { /* percorrer as linhas de resultado do SQL */

			ModelLogin modelLogin = new ModelLogin();

			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setLogin(resultado.getString("login"));
			/* modelLogin.setSenha(resultado.getString("senha")) */;
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setSnome(resultado.getString("snome"));
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setCidade(resultado.getString("cidade"));
			modelLogin.setEstado(resultado.getString("estado"));
			modelLogin.setCep(resultado.getString("cep"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setSexo(resultado.getString("sexo"));
			modelLogin.setFotouser(resultado.getString("fotouser"));
			modelLogin.setExtensaofotouser(resultado.getString("extensaofotouser"));
			modelLogin.setPais(resultado.getString("pais"));
			

			retorno.add(modelLogin);
		}

		return retorno;
	}

	// CONSULTA POR LOGIN VINDO DO SERVETGENERIC
	public ModelLogin cosultaUsuario(String login) throws Exception {

		ModelLogin modelLogin = new ModelLogin();

		String sql = "SELECT * FROM model_login where upper(login) = upper('" + login + "') and useradmin is false ";
		PreparedStatement statememt = connection.prepareStatement(sql);

		ResultSet resultado = statememt.executeQuery();

		while (resultado.next()) {

			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setSnome(resultado.getString("snome"));
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setCidade(resultado.getString("cidade"));
			modelLogin.setEstado(resultado.getString("estado"));
			modelLogin.setCep(resultado.getString("cep"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setSexo(resultado.getString("sexo"));
			modelLogin.setFotouser(resultado.getString("fotouser"));
			modelLogin.setExtensaofotouser(resultado.getString("extensaofotouser"));
			modelLogin.setPais(resultado.getString("pais"));
			

		}

		return modelLogin;
	}

	// METODO QUE CARREGAS OS USUARIOS LOGADOS
	public ModelLogin consultaUsuarioLogado(String login) throws Exception {

		ModelLogin modelLogin = new ModelLogin();

		String sql = "SELECT * FROM model_login where upper(login) = upper('" + login + "')";
		PreparedStatement statememt = connection.prepareStatement(sql);

		ResultSet resultado = statememt.executeQuery();

		while (resultado.next()) {

			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setSnome(resultado.getString("snome"));
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setCidade(resultado.getString("cidade"));
			modelLogin.setEstado(resultado.getString("estado"));
			modelLogin.setCep(resultado.getString("cep"));
			modelLogin.setUseradmin(resultado.getBoolean("useradmin"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setSexo(resultado.getString("sexo"));
			modelLogin.setFotouser(resultado.getString("fotouser"));
			modelLogin.setExtensaofotouser(resultado.getString("extensaofotouser"));
			modelLogin.setPais(resultado.getString("pais"));
			

		}

		return modelLogin;
	}

	// CONSULTA POR LOGIN LEVANDO EM CONSIDERAÇÃO O USERLOGADO
	public ModelLogin cosultaUsuario(String login, Long userLogado) throws Exception {

		ModelLogin modelLogin = new ModelLogin();

		String sql = "SELECT * FROM model_login where upper(login) = upper('" + login
				+ "') and useradmin is false and usuario_id = " + userLogado;
		PreparedStatement statememt = connection.prepareStatement(sql);

		ResultSet resultado = statememt.executeQuery();

		while (resultado.next()) {

			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setSnome(resultado.getString("snome"));
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setCidade(resultado.getString("cidade"));
			modelLogin.setEstado(resultado.getString("estado"));
			modelLogin.setCep(resultado.getString("cep"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setSexo(resultado.getString("sexo"));
			modelLogin.setFotouser(resultado.getString("fotouser"));
			modelLogin.setExtensaofotouser(resultado.getString("extensaofotouser"));
			modelLogin.setPais(resultado.getString("pais"));
			

		}

		return modelLogin;
	}

	public ModelLogin cosultaUsuarioId(String id, Long userLogado) throws Exception {

		ModelLogin modelLogin = new ModelLogin();

		String sql = "SELECT * FROM model_login where id = ? and useradmin is false and usuario_id = ?";
		PreparedStatement statememt = connection.prepareStatement(sql);
		statememt.setLong(1, Long.parseLong(id));
		statememt.setLong(2, userLogado);

		ResultSet resultado = statememt.executeQuery();

		while (resultado.next()) {

			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setSnome(resultado.getString("snome"));
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setCidade(resultado.getString("cidade"));
			modelLogin.setEstado(resultado.getString("estado"));
			modelLogin.setCep(resultado.getString("cep"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setSexo(resultado.getString("sexo"));
			modelLogin.setFotouser(resultado.getString("fotouser"));
			modelLogin.setExtensaofotouser(resultado.getString("extensaofotouser"));
			modelLogin.setPais(resultado.getString("pais"));
		}

		return modelLogin;
	}
	public ModelLogin cosultaUsuarioIds(String id, Long userLogado) throws Exception {

		ModelLogin modelLogin = new ModelLogin();

		String sql = "SELECT * FROM model_login where id = ? and useradmin is false and usuario_id = ?";
		PreparedStatement statememt = connection.prepareStatement(sql);
		statememt.setLong(1, Long.parseLong(id));
		statememt.setLong(2, userLogado);

		ResultSet resultado = statememt.executeQuery();

		while (resultado.next()) {

			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setSnome(resultado.getString("snome"));
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setCidade(resultado.getString("cidade"));
			modelLogin.setEstado(resultado.getString("estado"));
			modelLogin.setCep(resultado.getString("cep"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setSexo(resultado.getString("sexo"));
			modelLogin.setFotouser(resultado.getString("fotouser"));
			modelLogin.setExtensaofotouser(resultado.getString("extensaofotouser"));
			modelLogin.setPais(resultado.getString("pais"));
		}

		return modelLogin;
	}

	public boolean validaLogin(String login) throws Exception {

		String sql = "SELECT COUNT(1) > 0 as existe FROM  model_login where upper(login) = upper('" + login + "');";
		PreparedStatement statement = connection.prepareStatement(sql);

		ResultSet resultado = statement.executeQuery();

		resultado.next();
		return resultado.getBoolean("existe");

	}

	public void deletarUser(String idUser) throws SQLException {

		String sql = "DELETE FROM public.model_login WHERE id = ? and useradmin is false;";
		PreparedStatement prepareSql = connection.prepareStatement(sql);
		prepareSql.setLong(1, Long.parseLong(idUser));

		prepareSql.executeUpdate();
		connection.commit();

	}

}
