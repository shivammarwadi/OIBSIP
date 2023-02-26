package com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.entitey.User;
import com.dao.UserDao;
import com.conn.Dbconnect;

/**
 * Servlet implementation class EditServlet
 */
@MultipartConfig
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("user_name");
		String userEmail=request.getParameter("user_email");
		String userpass=request.getParameter("user_pass");
		System.out.println(username);
		HttpSession ss=request.getSession();
		User user=(User)ss.getAttribute("user");
		
		user.setName(username);
		user.setEmail(userEmail);
		user.setPassword(userpass);

		UserDao dao=new UserDao(Dbconnect.getConn());
		PrintWriter out=response.getWriter();
		boolean ans = dao.updateUser(user);
		if(ans)
		{			
			out.println("Profile updated");	
			response.sendRedirect("home.jsp");
		}
		else
		{
			out.println("Not Updated");
		}	

	}	
}
