package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CourseDao;
import com.model.Course;

/**
 * Servlet implementation class UpdateCourseInfo
 */
@WebServlet("/UpdateCourseInfo")
public class UpdateCourseInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCourseInfo() {
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
		CourseDao courseDaoObj = new CourseDao();
		List<Course> courseList = courseDaoObj.dispCourses(request.getParameter("course_id"));
		RequestDispatcher reqestDispatcher =request.getRequestDispatcher("UpdateCourseInfo.jsp");
		if(courseList.isEmpty())
		{
			
		}
		else{
			
			request.setAttribute("courselistkey", courseList);
			reqestDispatcher.forward(request, response);
		}
	}

}
