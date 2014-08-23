package com.controller;

import java.io.IOException;




import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CourseDao;
import com.model.Course;

/**
 * Servlet implementation class InsertEmployee
 */
@WebServlet("/AddNewCourse")
public class AddNewCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewCourse() {
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
		Random random = new Random();
		int randomId = random.nextInt(10000);
		Course courseObj = new Course();
		RequestDispatcher reqestDispatcher = request.getRequestDispatcher("CourseAddSuccess.jsp");
		courseObj.setCourseId(request.getParameter("course_name").toUpperCase().replaceAll("\\s+", "")+randomId);
		courseObj.setCourseName(request.getParameter("course_name"));
		courseObj.setDuration(Integer.parseInt(request.getParameter("duration")));
		courseObj.setSchedule(request.getParameter("schedule"));
		courseObj.setStartDate(request.getParameter("start_date"));
		courseObj.setEndDate(request.getParameter("end_date"));
		courseObj.setCapacity(Integer.parseInt(request.getParameter("capacity")));
		CourseDao courseDaoObj = new CourseDao();
		int result = courseDaoObj.insertCourse(courseObj);
		if(result > 0){
			request.setAttribute("coursekey", courseObj);
			reqestDispatcher.forward(request, response);
		}
	}

}
