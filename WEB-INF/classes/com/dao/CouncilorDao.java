package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.factory.DbFactory;

public class CouncilorDao {
	PreparedStatement preparedStatement;
	int variable;
	public int getUserName(String user, String pw){
		
		try {
			preparedStatement = DbFactory.mySqlConnection().prepareStatement("select * from councilor where user_name=? and password=?");
			preparedStatement.setString(1, user);
			preparedStatement.setString(2, pw);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(resultSet.next()){
				
				variable=1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		}
		
		return variable;
	}
	
}
