package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CourseDao;
import com.model.Course;

/**
 * Servlet implementation class UpdateCourseSuccess
 */
@WebServlet("/UpdateCourseSuccess")
public class UpdateCourseSuccess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCourseSuccess() {
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
		Course courseObj = new Course();
		RequestDispatcher reqestDispatcher = request.getRequestDispatcher("UpdateCourseSuccess.jsp");
		courseObj.setCourseId(request.getParameter("course_id"));
		courseObj.setCourseName(request.getParameter("course_name"));
		courseObj.setCapacity(Integer.parseInt(request.getParameter("capacity")));
		CourseDao crseDao = new CourseDao();
		int result = crseDao.updateCourse(courseObj);
		if(result > 0){
			request.setAttribute("coursekey", courseObj);
			reqestDispatcher.forward(request, response);
		}
	}

}
