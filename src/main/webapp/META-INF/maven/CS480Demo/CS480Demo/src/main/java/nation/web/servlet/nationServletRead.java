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

public class nationServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public nationServletRead() {
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
		nation nation = null;
		nationDao nationDao = new nationDao();
		
		try {
			nation = nationDao.findByid(Integer.parseInt(request.getParameter("id")));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(nation.getNation_id()!=null){
					System.out.println(nation);
					request.setAttribute("nation", nation);
					request.getRequestDispatcher("/jsps/nation/nation_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "Nation not found");
			request.getRequestDispatcher("/jsps/nation/nation_read_output.jsp").forward(request, response);
		}
	}
}



