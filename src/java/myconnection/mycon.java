/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package myconnection;

/**
 *
 * @author kapil
 */
 import java.sql.*;
    public class mycon 
{
   static Connection con=null;
   
    public static Connection getConnection()
    {
         try
         {
             Class.forName("com.mysql.jdbc.Driver");
             System.out.println("Driver loaded successfully");
         }
         catch(ClassNotFoundException e)
         {
             System.out.println(e);
         }
         try
         {
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taxfunda","root","root");
             System.out.println("Database Connected");
             
         }
             
         catch(SQLException e)
                 {
                     System.out.println(e);
                 }
         return con;
    }
   
    
}
