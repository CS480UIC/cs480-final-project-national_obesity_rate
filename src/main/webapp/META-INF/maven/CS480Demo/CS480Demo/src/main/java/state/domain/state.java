package state.domain;

/**
 * User object sas asa  tests
 * testing
 * @author Andy Hansana 
 * 
 */ 
public class state {
	/*
	 * Correspond to the user table
	 */

	private Integer id;
	private String currentState; 
	private Integer health_data_state;
	private Integer demographic_data_state;
	/**
	 * @return the state_id
	 */
	public Integer getState_id() {
		return id;
	}
	/**
	 * @param state_id the state_id to set
	 */
	public void setState_id(Integer state_id) {
		this.id = state_id;
	}
	/**
	 * @return the currentState
	 */
	public String getCurrentState() {
		return currentState;
	}
	/**
	 * @param currentState the currentState to set
	 */
	public void setCurrentState(String currentState) {
		this.currentState = currentState;
	}
	/**
	 * @return the health_data_state
	 */
	public Integer getHealth_data_state() {
		return health_data_state;
	}
	/**
	 * @param health_data_state the health_data_state to set
	 */
	public void setHealth_data_state(Integer health_data_state) {
		this.health_data_state = health_data_state;
	}
	/**
	 * @return the demographic_data_state
	 */
	public Integer getDemographic_data_state() {
		return demographic_data_state;
	}
	/**
	 * @param demographic_data_state the demographic_data_state to set
	 */
	public void setDemographic_data_state(Integer demographic_data_state) {
		this.demographic_data_state = demographic_data_state;
	}
	
	
	
}
