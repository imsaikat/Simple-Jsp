package com.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CourseDao;
import com.dao.StudentDao;
import com.model.Student;

/**
 * Servlet implementation class AddNewStudent
 */
@WebServlet("/AddNewStudent")
public class AddNewStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewStudent() {
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
		RequestDispatcher reqestDispatcher = request.getRequestDispatcher("StudentId.jsp");
		Student studentObj =new Student();
		studentObj.setStudentId(request.getParameter("student_name").toLowerCase().substring(0,2)+request.getParameter("phone_no")+request.getParameter("email_id").substring(0, 2));
		studentObj.setStudentName(request.getParameter("student_name"));
		studentObj.setFatherName(request.getParameter("father_name"));
		studentObj.setEmailId(request.getParameter("email_id"));
		studentObj.setGender(request.getParameter("gender"));
		studentObj.setPhoneNo(request.getParameter("phone_no"));
		studentObj.setStream(request.getParameter("stream"));
		studentObj.setQualification(request.getParameter("qualification"));
		studentObj.setAddress(request.getParameter("address"));
		studentObj.setCourseId(request.getParameter("course_id"));
		StudentDao studentDaoObj =new StudentDao();
		int registeredStudent=studentDaoObj.countStudent(request.getParameter("course_id"));
		CourseDao courseDaoObj =new CourseDao();
		int capacity = courseDaoObj.getCapacity(request.getParameter("course_id"));
		if(registeredStudent<capacity){
			
			int result=studentDaoObj.insertStudent(studentObj);
			if(result>0){
				request.setAttribute("studentkey", studentObj);
				reqestDispatcher.forward(request, response);
			}
		}
	}

}
