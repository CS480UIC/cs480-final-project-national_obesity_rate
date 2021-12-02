package nation.service;


import nation.dao.nationDao;
import nation.domain.nation;

/**
 * logic functions such as register, login
 * @author Andy Hansana
 *
 */
public class nationService {
	private nationDao nationDao = new nationDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(nation form) throws nationException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		nation id = nationDao.findByid(form.getNation_id());
		if(id.getNation_id()!=null && id.getNation_id() == (form.getNation_id())) throw new nationException("This nation id has been registered before!");
		nationDao.add(form);
	}
	/**
	 * Login function
	 * @param form
	 * @return
	 * @throws UserException 
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
//	public void login(nation form) throws nationException, ClassNotFoundException, InstantiationException, IllegalAccessException {
//		nation user = nationDao.findByid(form.getUsername());
//		if(user.getUsername()==null) throw new nationException("The user is not in the database");
//		
//		String password = user.getPassword();
//		
//		if(password!=null && !password.equals(form.getPassword()))
//			throw new nationException(" The password is not right");
//		
//	}
}
