package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.Dbconnect;
import com.dao.UserDao;
import com.entitey.User;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		try(PrintWriter out=response.getWriter())
		{
		String name=request.getParameter("user_name");
		String email=request.getParameter("user_email");
		String password=request.getParameter("user_name");
		String Gender=request.getParameter("gender");
		User u=new User(name,email,password,Gender);
		UserDao dao=new UserDao(Dbconnect.getConn());
	
		if(dao. userRegister(u))
		{
			out.println("done");
		    response.sendRedirect("login.jsp");
		}
		else
		{
			out.println("Error");
		}
	}
	}

}
