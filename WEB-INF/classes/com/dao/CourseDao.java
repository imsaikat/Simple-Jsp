package com.dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.factory.DbFactory;
import com.model.Course;

public class CourseDao {
	
	PreparedStatement preparedStatement;
	int result;int capacity;
	String course;
	public int insertCourse(Course courseObj){
		
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("insert into course values(?,?,?,?,?,?,?)");
			preparedStatement.setString(1, courseObj.getCourseId());
			preparedStatement.setString(2, courseObj.getCourseName());
			preparedStatement.setInt(3, courseObj.getDuration());
			preparedStatement.setString(4, courseObj.getSchedule());
			preparedStatement.setString(5, courseObj.getStartDate());
			preparedStatement.setString(6, courseObj.getEndDate());
			preparedStatement.setInt(7, courseObj.getCapacity());
			result = preparedStatement.executeUpdate();
			//DbFactory.mySqlConnection().commit();
			DbFactory.mySqlClose();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	public int updateCourse(Course courseObj){
		
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("update course set capacity = ? where course_id = ?");
			preparedStatement.setString(2, courseObj.getCourseId());
			preparedStatement.setInt(1, courseObj.getCapacity());
			result = preparedStatement.executeUpdate();
			//DbFactory.mySqlConnection().commit();
			DbFactory.mySqlClose();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	public int deleteCourse(String courseObjId){
		
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("delete from course where course_id = ?");
			preparedStatement.setString(1, courseObjId);
			result = preparedStatement.executeUpdate();
			//DbFactory.mySqlConnection().commit();
			DbFactory.mySqlClose();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	public List<Course> dispCourses(String courseObjId){
		List<Course> list = new ArrayList<Course>();
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("select * from course where course_id=?");
			preparedStatement.setString(1, courseObjId);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(resultSet.next()){
				
				Course courseObj = new Course();
				courseObj.setCourseId(resultSet.getString(1));
				courseObj.setCourseName(resultSet.getString(2));
				courseObj.setDuration(resultSet.getInt(3));
				courseObj.setSchedule(resultSet.getString(4));
				courseObj.setStartDate(resultSet.getString(5));
				courseObj.setEndDate(resultSet.getString(6));
				courseObj.setCapacity(resultSet.getInt(7));
				list.add(courseObj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	public List<Course> dispAllCourses(){
		List<Course> list = new ArrayList<Course>();
		Course courseObj;
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("select * from course");
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				
				courseObj = new Course();
				courseObj.setCourseId(resultSet.getString(1));
				courseObj.setCourseName(resultSet.getString(2));
				courseObj.setDuration(resultSet.getInt(3));
				courseObj.setSchedule(resultSet.getString(4));
				courseObj.setStartDate(resultSet.getString(5));
				courseObj.setEndDate(resultSet.getString(6));
				courseObj.setCapacity(resultSet.getInt(7));
				list.add(courseObj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	public List<Course> getCourseId(){
		List<Course> list = new ArrayList<Course>();
		Course courseObj;
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("select course_id from course");
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				
				courseObj = new Course();
				courseObj.setCourseId(resultSet.getString(1));
				list.add(courseObj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	public int getCapacity(String courseObjId){
		
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("select capacity from course where course_id=?");
			preparedStatement.setString(1, courseObjId);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(resultSet.next()){
				
				capacity=resultSet.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return capacity;
	}
	public String getcourseObjId(String courseObjId){
		
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("select course_id from course where course_id=?");
			preparedStatement.setString(1, courseObjId);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(resultSet.next()){
				
				course=resultSet.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return course;
	}
}