package com.spring.restaurant.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcUtil {
   static String id="root";
   static String password = "111111";
   static String url = "jdbc:mysql://localhost:3306/springdb2?characterEncoding=utf-8";
   
   static Connection conn=null;
   static PreparedStatement pstmt=null;
   static ResultSet rs = null;
   
   public static Connection getConnection() {      
      try {
         //jdbc 드라이버 로딩   
         Class.forName("com.mysql.jdbc.Driver");
         //디비에 연결 
         conn = DriverManager.getConnection(url, id, password);
         System.out.println("MySQL 디비 연결 완료 ");
         return conn;
         
      } catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      return null;
   }
   
   public static void closeConnection(Connection conn, 
         PreparedStatement pstmt, ResultSet rs) {
      if(conn != null) {
         try {
            conn.close();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      }
      if(pstmt != null) {
         try {
            pstmt.close();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      }
      if(rs != null) {
         try {
            rs.close();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      }
      
   }
   
   
   
   

}