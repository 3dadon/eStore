package com.eStore.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConnectionServlet extends HttpServlet
{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException
	{
		String userName = req.getParameter("userName");
		List<String> testUsers = new ArrayList<String>();
		testUsers.add("test");
		testUsers.add("BOURJADEAN");
		
		
		//Juste pour les tests
		if (userName != null && !testUsers.contains(userName)) {
			req.setAttribute("connectionFailedError", "Connection failed !");
		}
		
		dispatch("/connection.jsp", req, resp);
	}
	
	private void dispatch(String destinationFile, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher(destinationFile).forward(req, resp);
	}

}
