package nation.domain;

/**
 * User object sas asa  tests
 * testing
 * @author Andy Hansana
 * 
 */ 
public class nation {
	
	private Integer nation_id;
	/**
	 * @return the nation_id
	 */
	public Integer getNation_id() {
		return nation_id;
	}
	/**
	 * @param nation_id the nation_id to set
	 */
	public void setNation_id(Integer nation_id) {
		this.nation_id = nation_id;
	}
	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}
	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}
	/**
	 * @return the health_data_nation
	 */
	public Integer getHealth_data_nation() {
		return health_data_nation;
	}
	/**
	 * @param health_data_nation the health_data_nation to set
	 */
	public void setHealth_data_nation(Integer health_data_nation) {
		this.health_data_nation = health_data_nation;
	}
	/**
	 * @return the demographic_data_nation
	 */
	public Integer getDemographic_data_nation() {
		return demographic_data_nation;
	}
	/**
	 * @param demographic_data_nation the demographic_data_nation to set
	 */
	public void setDemographic_data_nation(Integer demographic_data_nation) {
		this.demographic_data_nation = demographic_data_nation;
	}
	private String state; 
	private Integer health_data_nation;
	private Integer demographic_data_nation;
	
	//nation_id, state, health_data_natiuon, demographic_data_nation
	
}
