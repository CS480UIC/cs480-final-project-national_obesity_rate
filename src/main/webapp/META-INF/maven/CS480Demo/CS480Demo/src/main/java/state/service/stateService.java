package state.service;


import state.dao.stateDao;
import state.domain.state;

/**
 * logic functions such as register, login
 * @author Andy Hansana 
 *
 */
public class stateService {
	private stateDao stateDao = new stateDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(state form) throws stateException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		state state_id = stateDao.findBystate_id(form.getState_id());
		if(state_id.getState_id()!=null && state_id.getState_id() == (form.getState_id())) throw new stateException("This state ID has been registered!");
		stateDao.add(form);
	}
	
}
