package state.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




//import java.util.ArrayList;
//import java.util.List;

import state.domain.state;

/**
 * DDL functions performed in database
 */
public class stateDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "national_obesity_rate"; //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "gulag"; //TODO change password

	public state findBystate_id(Integer state_idP) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		state state = new state();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookstore", MySQL_user, MySQL_password);
		    String sql = "select * from state where ID=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,state_idP);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	Integer id = Integer.parseInt(resultSet.getString("ID"));
		    	if(id == state_idP){
		    		state.setState_id( Integer.parseInt(resultSet.getString("ID")));
		    		state.setCurrentState(resultSet.getString("currentstate"));
		    		state.setHealth_data_state(Integer.parseInt(resultSet.getString("health_data_state")));
		    		state.setDemographic_data_state(Integer.parseInt(resultSet.getString("demographic_data_state")));
		    		
		    	
		    	
		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return state;
	}	
	
	/**
	 * insert Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(state form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookstore", MySQL_user, MySQL_password);
			
			String sql = "insert into state (ID, currentstate, health_data_state, demographic_data_state) values(?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
			
		    preparestatement.setInt(1,form.getState_id());
		    preparestatement.setString(2,form.getCurrentState());
		    preparestatement.setInt(3,form.getHealth_data_state());
		    preparestatement.setInt(4,form.getDemographic_data_state());
		    
		    
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
	public void update(state form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookstore", MySQL_user, MySQL_password);
			
			String sql = "UPDATE state SET id = ?, currentstate = ?,health_data_state=? where demographic_data_state=?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    
		    
		    preparestatement.setInt(1,form.getState_id());
		    preparestatement.setString(2,form.getCurrentState());
			preparestatement.setInt(3,form.getHealth_data_state());
		    preparestatement.setInt(4,form.getDemographic_data_state());
		    
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
			
			String sql = "delete from state where id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,Integer.parseInt(id));
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
