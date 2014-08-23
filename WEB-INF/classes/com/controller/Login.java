package com.controller;

import java.io.IOException;






import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CouncilorDao;
import com.dao.RegisrarDao;



//import com.dao.UserDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session= request.getSession(true);
		String user = request.getParameter("user");
		String password = request.getParameter("passwd");
		session.setAttribute("userkey", user);
		RegisrarDao registerDaoObj=new RegisrarDao();
		int resultr=registerDaoObj.getUserName(user,password);
		CouncilorDao councilorDaoObj=new CouncilorDao();
		int resultc=councilorDaoObj.getUserName(user, password);
		if(resultr==1){
			response.sendRedirect("Registrar.jsp");
		}
		else if(resultc==1){
			response.sendRedirect("Counciler");
		}
		else
			response.sendRedirect("Error.jsp");
	}

}
