package com.spring.restaurant.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.instrument.classloading.jboss.JBossLoadTimeWeaver;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("RestaurantDao")
public class RestaurantDao {
   Connection conn=null;
   PreparedStatement pstmt=null;
   ResultSet rs=null;
   
   @Autowired
   JdbcTemplate jdbcTemplate;
   
   public void insertRestaurant(RestaurantDo rdo) {
		System.out.println("insertRestaurant()(Spring JDBC) => Start !!");
		String sql = "insert into restaurant (name, tel, people, month, date, time) values (?,?,?,?,?,?)";		
		jdbcTemplate.update(sql, rdo.getName(), rdo.getTel(), rdo.getPeople(), rdo.getMonth(), rdo.getDate(), rdo.getTime());
		System.out.println("insertRestaurant()(Spring JDBC) => End !!");
	}
      
   
   public RestaurantDo getRestaurant(RestaurantDo rdo) {
      System.out.println("getRestaurant()(Spring JDBC) ==> ");      
      String sql = "select * from restaurant where num=?";
      Object[] args = {rdo.getNum()};
      return jdbcTemplate.queryForObject(sql, args, new RestaurantRowMapper());
      
   }
   
   public ArrayList<RestaurantDo> getRestaurantList(){      
      System.out.println("getRestaurantList()(Spring JDBC) ==> ");      
       
      String sql = "select * from restaurant";
      Object[] args = {};
      return (ArrayList<RestaurantDo>) jdbcTemplate.query(sql, args, new RestaurantRowMapper());   
   }
   
   public void updateRestaurant(RestaurantDo rdo) {      
      System.out.println("updateRestaurant()(Spring JDBC) ==> ");
      
      String sql = "update restaurant set tel=?, date=? where num=?";
      jdbcTemplate.update(sql, rdo.getTel(), rdo.getDate(), rdo.getNum());
   }
   
   public void  deleteRestaurant(RestaurantDo rdo) {
      System.out.println("deleteRestaurant()(Spring JDBC) ==> ");
      
      String sql = "delete from restaurant where num=?";
      jdbcTemplate.update(sql, rdo.getNum());
   }
   
   public ArrayList<RestaurantDo> searchRestaurantList(String searchCon, String searchKey) {
         System.out.println("searchRestaurantList()(Spring JDBC) ==> ");
         
         String sql="";
         if(searchCon.equals("name")) {
            sql = "select * from restaurant where name=? order by date";
         }
         else if(searchCon.equals("month")) {
            sql = "select * from restaurant where month=? order by date";
         }
         Object[] args = {searchKey};
         return (ArrayList<RestaurantDo>) jdbcTemplate.query(sql, args, new RestaurantRowMapper());
      }
}


class RestaurantRowMapper implements RowMapper<RestaurantDo>{

   @Override
   public RestaurantDo mapRow(ResultSet rs, int rowNum) throws SQLException {
      System.out.println("mapRow()(Spring JDBC Ã³¸®)==> ");
      
      RestaurantDo rdo = new RestaurantDo();
      rdo.setNum(rs.getInt(1));
      rdo.setName(rs.getString(2));
      rdo.setTel(rs.getString(3));
      rdo.setPeople(rs.getString(4));
      rdo.setMonth(rs.getString(5));
      rdo.setDate(rs.getString(6));
      rdo.setTime(rs.getString(7));
      
      return rdo;
   }

}