package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.Dbconnect;
import com.dao.UserDao;
import com.entitey.User;

/**
 * Servlet implementation class loginServlett
 */
@WebServlet("/loginServlett")
public class loginServlett extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlett() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("user_email");
		String password=req.getParameter("user_pass");
		
		System.out.println(email+" "+password);
		UserDao dao=new UserDao(Dbconnect.getConn());
		User u=dao.loginUser(email,password);
		HttpSession session=req.getSession();
		if(u!=null)
		{
			session.setAttribute("user",u);
			resp.sendRedirect("home.jsp");
			//System.out.println("User Available "+u);
		}
		else
		{
			session.setAttribute("invalid","Invalid Email And Password");
			resp.sendRedirect("login.jsp");
			//System.out.println("User Not Available "+u);
		}
		doGet(req, resp);
	}

}
