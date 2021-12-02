package nation.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nation.dao.nationDao;
import nation.domain.nation;

/**
 * Servlet implementation class UserServlet
 */

public class nationServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public nationServletUpdate() {
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
				request.setAttribute("nation", nation);
				request.getRequestDispatcher("/jsps/nation/nation_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "Nation not found");
				request.getRequestDispatcher("/jsps/nation/nation_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			nation form = new nation();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			form.setNation_id(Integer.parseInt(info.get(1)));
			form.setState(info.get(2));
			form.setHealth_data_nation(Integer.parseInt(info.get(3)));		
			form.setDemographic_data_nation(Integer.parseInt(info.get(4)));		

			try {
				nationDao.update(form);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "Nation Updated");
			request.getRequestDispatcher("/jsps/nation/nation_read_output.jsp").forward(request, response);
		}
	}
}



