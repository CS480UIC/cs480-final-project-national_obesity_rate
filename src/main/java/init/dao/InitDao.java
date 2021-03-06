package init.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




//import java.util.ArrayList;
//import java.util.List;

import entity1.domain.Entity1;

/**
 * DDL functions performed in database
 */
public class InitDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "newuser"; //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "passw"; //TODO change password
	
	/**
	 * insert Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void initialize() throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookstore", MySQL_user, MySQL_password);
			
			String sql = "create table test(id int)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
}
