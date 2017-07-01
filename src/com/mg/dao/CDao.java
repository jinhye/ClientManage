package com.mg.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mg.dto.CDto;


public class CDao {
	
	DataSource dataSource;
	
	public CDao(){
		
		try{
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/OracleDB");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public ArrayList<CDto> list(){
		ArrayList<CDto> dtos = new ArrayList<CDto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try{
			connection = dataSource.getConnection();
			
			String query = "select * from MGClient";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()){
				int cId = resultSet.getInt("cId");
				String cName = resultSet.getString("cName");
				String cGender = resultSet.getString("cGender");
				String cAddress = resultSet.getString("cAddress");
				String cCity = resultSet.getString("cCity");
				String cProvince = resultSet.getString("cProvince");
				String cPostal = resultSet.getString("cPostal");
				String cPhone = resultSet.getString("cPhone");
				String cEmail = resultSet.getString("cEmail");
				String cVin = resultSet.getString("cVin");
				
				CDto dto = new CDto(cId, cName, cGender, cAddress, cCity, cProvince, cPostal, cPhone, cEmail, cVin);
				dtos.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(resultSet != null)
					resultSet.close();
				if(preparedStatement != null)
					preparedStatement.close();
				if(connection != null)
					connection.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return dtos;
	}
	
	public ArrayList<CDto> view(String Name, String Gender, String City, String Province, String Postal, String Vin){
		ArrayList<CDto> dtos = new ArrayList<CDto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try{
			connection = dataSource.getConnection();
						
			String query = "select * from MGClient where cName=? and cGender=? and cCity=? and cProvince=? and cPostal=? and cVin=?";
			preparedStatement = connection.prepareStatement(query);
			
			//match data from form and data from database using replaceAll("\\s", "");
			//if(preparedStatement.setString(1, "cName").replaceAll("\\s", "") == resultSet.getString("cName").replaceAll("\\s", "")){}
			
			preparedStatement.setString(1, Name);
			preparedStatement.setString(2, Gender);
			preparedStatement.setString(3, City);
			preparedStatement.setString(4, Province);
			preparedStatement.setString(5, Postal);
			//preparedStatement.setString(6, "cPhone");
			//preparedStatement.setString(7, "cEmail");
			preparedStatement.setString(6, Vin);
						
			resultSet = preparedStatement.executeQuery();
					
			
			while(resultSet.next()){
				int cId = resultSet.getInt("cId");
				String cName = resultSet.getString("cName");
				String cGender = resultSet.getString("cGender");
				String cAddress = resultSet.getString("cAddress");
				String cCity = resultSet.getString("cCity");
				String cProvince = resultSet.getString("cProvince");
				String cPostal = resultSet.getString("cPostal");
				String cPhone = resultSet.getString("cPhone");
				String cEmail = resultSet.getString("cEmail");
				String cVin = resultSet.getString("cVin");
				
				CDto dto = new CDto(cId, cName, cGender, cAddress, cCity, cProvince, cPostal, cPhone, cEmail, cVin);
				dtos.add(dto);
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(resultSet != null)
					resultSet.close();
				if(preparedStatement != null)
					preparedStatement.close();
				if(connection != null)
					connection.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}	
		return dtos;	
	}
	
	public void insert(String Name, String Gender, String Address, String City, String Province, String Postal, String Phone, String Email, String Vin){
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try{
			connection = dataSource.getConnection();
						
			String query = "insert into MGClient(cId, cName, cGender, cAddress, cCity, cProvince, cPostal, cPhone, cEmail, cVin)"
					+ "values(MGClient_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, Name);
			preparedStatement.setString(2, Gender);
			preparedStatement.setString(3, Address);
			preparedStatement.setString(4, City);
			preparedStatement.setString(5, Province);
			preparedStatement.setString(6, Postal);
			preparedStatement.setString(7, Phone);
			preparedStatement.setString(8, Email);
			preparedStatement.setString(9, Vin);
			
			int rn = preparedStatement.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(preparedStatement != null)
					preparedStatement.close();
				if(connection != null)
					connection.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
	}

	public void delete(String cId){
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try{
			connection = dataSource.getConnection();
						
			String query = "delete from MGClient where cId=?";
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setInt(1, Integer.parseInt(cId));
			int rn = preparedStatement.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(preparedStatement != null)
					preparedStatement.close();
				if(connection != null)
					connection.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}	
	}
	
	public void modify(String Id, String Gender, String Address, String City, String Province, String Postal, String Phone, String Email){
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try{
			connection = dataSource.getConnection();
						
			String query = "update MGClient set cGender=?, cAddress=?, cCity=?, cProvince=?, cPostal=?, cPhone=?, cEmail=? where cId=?";
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, Gender);
			preparedStatement.setString(2, Address);
			preparedStatement.setString(3, City);
			preparedStatement.setString(4, Province);
			preparedStatement.setString(5, Postal);
			preparedStatement.setString(6, Phone);
			preparedStatement.setString(7, Email);
			preparedStatement.setInt(8, Integer.parseInt(Id));
			
			int rn = preparedStatement.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(preparedStatement != null)
					preparedStatement.close();
				if(connection != null)
					connection.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
	}	
	
}
