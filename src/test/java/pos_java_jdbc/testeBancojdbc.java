package pos_java_jdbc;

import org.junit.Test;

import connection.SingleConnectionBanco;

public class testeBancojdbc {
	
	@Test
	public void initBanco() {
		SingleConnectionBanco.getConnection();
		
	}

}
