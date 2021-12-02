package nation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




//import java.util.ArrayList;
//import java.util.List;

import nation.domain.nation;

/**
 * DDL functions performed in database
 */
public class nationDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "national_obesity_rate"; //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "gulag"; //TODO change password

	public nation findByid(Integer temp_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		nation nation = new nation();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookstore", MySQL_user, MySQL_password);
		    String sql = "SELECT * FROM nation WHERE id = ?;";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,temp_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	Integer id = Integer.parseInt(resultSet.getString("id"));
		    	if(id == temp_id){
		    		nation.setNation_id(Integer.parseInt(resultSet.getString("id")));
		    		nation.setState(resultSet.getString("state"));
		    		nation.setHealth_data_nation(Integer.parseInt(resultSet.getString("health_data_nation")));
		    		nation.setDemographic_data_nation(Integer.parseInt(resultSet.getString("demographic_data_nation")));

		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return nation;
	}	
	
	/**
	 * insert Nation
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(nation form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookstore", MySQL_user, MySQL_password);
			
			String sql = "INSERT INTO nation (ID, state, health_data_nation, demographic_data_nation) values(?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setInt(1,form.getNation_id());
		    preparestatement.setString(2,form.getState());
		    preparestatement.setInt(3,form.getHealth_data_nation());
		    preparestatement.setInt(4,form.getDemographic_data_nation());

		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param form
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void update(nation form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookstore", MySQL_user, MySQL_password);
			
			String sql = "UPDATE nation SET id = ?, state = ?,health_data_nation = ? where demographic_data_nation = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setInt(1,form.getNation_id());
		    preparestatement.setString(2,form.getState());
			preparestatement.setInt(3,form.getHealth_data_nation());
		    preparestatement.setInt(4,form.getDemographic_data_nation());
		    
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param username
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void delete(String id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookstore", MySQL_user, MySQL_password);
			
			String sql = "delete from nation where id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,Integer.parseInt(id));
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
