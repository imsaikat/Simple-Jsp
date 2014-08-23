package com.dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.factory.DbFactory;
import com.model.Student;

public class StudentDao {
	
	PreparedStatement preparedStatement;
	int result;
	public int insertStudent(Student student){
		
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?)");
			preparedStatement.setString(1, student.getStudentId());
			preparedStatement.setString(2, student.getStudentName());
			preparedStatement.setString(3, student.getFatherName());
			preparedStatement.setString(4, student.getEmailId());
			preparedStatement.setString(5, student.getGender());
			preparedStatement.setString(6, student.getPhoneNo());
			preparedStatement.setString(7, student.getStream());
			preparedStatement.setString(8, student.getQualification());
			preparedStatement.setString(9, student.getAddress());
			preparedStatement.setString(10, student.getCourseId());
			result = preparedStatement.executeUpdate();
			//DbFactory.mySqlConnection().commit();
			DbFactory.mySqlClose();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	public int updateStudent(Student student){
		
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("update student set phone_no = ? where student_id = ?");
			preparedStatement.setString(2, student.getStudentId());
			preparedStatement.setString(1, student.getPhoneNo());
			result = preparedStatement.executeUpdate();
			//DbFactory.mySqlConnection().commit();
			DbFactory.mySqlClose();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	public int deleteStudent(String studentId){
		
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("delete from student where student_id = ?");
			preparedStatement.setString(1, studentId);
			result = preparedStatement.executeUpdate();
			//DbFactory.mySqlConnection().commit();
			DbFactory.mySqlClose();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	public List<Student> dispStudents(String studentId){
		List<Student> list = new ArrayList<Student>();
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("select * from student where student_id=?");
			preparedStatement.setString(1, studentId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				
				Student student = new Student();
				student.setStudentId(resultSet.getString(1));
				student.setStudentName(resultSet.getString(2));
				student.setFatherName(resultSet.getString(3));
				student.setEmailId(resultSet.getString(4));
				student.setGender(resultSet.getString(5));
				student.setPhoneNo(resultSet.getString(6));
				student.setStream(resultSet.getString(7));
				student.setQualification(resultSet.getString(8));
				student.setAddress(resultSet.getString(9));
				student.setCourseId(resultSet.getString(10));
				list.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	public List<Student> dispAllStudents(){
		List<Student> list = new ArrayList<Student>();
		Student student;
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("select * from student");
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				
				student = new Student();
				student.setStudentId(resultSet.getString(1));
				student.setStudentName(resultSet.getString(2));
				student.setFatherName(resultSet.getString(3));
				student.setEmailId(resultSet.getString(4));
				student.setGender(resultSet.getString(5));
				student.setPhoneNo(resultSet.getString(6));
				student.setStream(resultSet.getString(7));
				student.setQualification(resultSet.getString(8));
				student.setAddress(resultSet.getString(9));
				student.setCourseId(resultSet.getString(10));
				list.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	public int countStudent(String courseObjId){
		int count = 0;
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("select count(student_id) from student where course_id=?");
			preparedStatement.setString(1, courseObjId);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(resultSet.next()){
				
				count=resultSet.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
}