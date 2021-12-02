package nation.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nation.dao.nationDao;
import nation.domain.nation;


/**
 * Servlet implementation class UserServlet
 */

public class nationServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public nationServletDelete() {
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
		nationDao nationDao = new nationDao();
		nation nation = null;
		if(method.equals("search"))
		{
			try {
				nation = nationDao.findByid(Integer.parseInt(request.getParameter("id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(nation.getHealth_data_nation()!=null){
						System.out.println(nation);
						request.setAttribute("nation", nation);
						request.getRequestDispatcher("/jsps/nation/nation_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "Nation not found");
				request.getRequestDispatcher("/jsps/nation/nation_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				nationDao.delete(request.getParameter("id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "Nation Deleted");
			request.getRequestDispatcher("/jsps/nation/nation_read_output.jsp").forward(request, response);
		}
	}
}



