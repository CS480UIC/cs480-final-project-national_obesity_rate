package state.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import state.dao.stateDao;
import state.domain.state;


/**
 * Servlet implementation class UserServlet
 */

public class stateServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public stateServletDelete() {
        super();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		stateDao stateDao = new stateDao();
		state state = null;
		if(method.equals("search"))
		{
			try {
				state = stateDao.findBystate_id(Integer.parseInt(request.getParameter("id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(state.getHealth_data_state()!=null){
						System.out.println(state);
						request.setAttribute("state", state);
						request.getRequestDispatcher("/jsps/state/state_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "state not found");
				request.getRequestDispatcher("/jsps/state/state_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				stateDao.delete(request.getParameter("id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "State Deleted");
			request.getRequestDispatcher("/jsps/state/state_read_output.jsp").forward(request, response);
		}
	}
}



