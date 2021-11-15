package init.service;


import entity1.dao.Entity1Dao;
import entity1.domain.Entity1;
import init.dao.InitDao;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class InitService {
	private InitDao initDao = new InitDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void initializeDB() throws InitException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		initDao.initialize();
	}
	
}
