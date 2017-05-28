/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author HARSH
 */
import myconnection.mycon;
import model.User;
import java.sql.*;
import java.util.*;
public class Userdao {
    
      Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    String sql;
    
    public boolean insertUser(User C)throws Exception
    {
        sql="insert into user values(?,?,?,?,?,?,?,?,?)";
        con=mycon.getConnection();
        ps=con.prepareStatement(sql);
        
         ps.setString(1,C.getFirstname());
         ps.setString(2,C.getLastname());
         ps.setString(3,C.getEmail());
         ps.setString(4,C.getAge());
         ps.setString(5,C.getPann());
         ps.setString(6,C.getGender());
         ps.setLong(7,C.getPhn());
         ps.setString(8,C.getPassword());
         ps.setString(9,C.getCategory());
          
         if(ps.executeUpdate()>0)
           return true;
          else
              return false;
          
    }
    
    public boolean insertFeedback(User C)throws Exception
    {
        sql="insert into feedback(Name,Email,Comment,time) values(?,?,?,?)";
        con=mycon.getConnection();
        ps=con.prepareStatement(sql);
        
         ps.setString(1,C.getFname());
         ps.setString(2,C.getFemail());
         ps.setString(3,C.getComment());
         ps.setString(4,C.getTim());
         if(ps.executeUpdate()>0)
           return true;
          else
              return false;
          
    }
     public boolean insertQuestion(User C)throws Exception
    {
        sql="insert into query(questions,time,name) values(?,?,?)";
        con=mycon.getConnection();
        ps=con.prepareStatement(sql);
        
         ps.setString(1,C.getQstn());
         ps.setString(2,C.getTim());
         ps.setString(3,C.getFname());
         if(ps.executeUpdate()>0)
           return true;
          else
              return false;
          
    }
    
    public boolean deleteEmployee(String pan)throws Exception
    {
        sql="delete from user where pann=?";
        con=mycon.getConnection();
        ps=con.prepareStatement(sql);
        
          ps.setString(1, pan);
          
           if(ps.executeUpdate()>0)
               return true;
           else
               return false;
    }
    
    public User search(String pan)throws Exception
    {
        sql="select * from user where pann=?";
        con=mycon.getConnection();
        ps=con.prepareStatement(sql);
        
          ps.setString(1,pan);
           
           rs=ps.executeQuery();
           
           User E=new User();
           
            if(rs.next())
            {
                E.setFirstname(rs.getString(1));
                E.setLastname(rs.getString(2));
                E.setEmail(rs.getString(3));
                E.setAge(rs.getString(4));
                E.setPann(rs.getString(5));
                E.setGender(rs.getString(6));
                E.setPhn(rs.getLong(7));
                E.setPassword(rs.getString(8));
                E.setCategory(rs.getString(9));
                
              return E;
            }
            else
            {
                return null;
            }
        
    }
    
    public boolean update(User S)throws Exception
    {
        sql="update user set email=?,phone=? where pann=?";
        con=mycon.getConnection();
        ps=con.prepareStatement(sql);
         
        
         
         ps.setString(1,S.getEmail());
         
       
         ps.setLong(2,S.getPhn());
         ps.setString(3,S.getPann());
          
           if(ps.executeUpdate()>0)
               return true;
           return false;
    }
    
    public boolean update1(User S)throws Exception
    {
        String sql1=null,sql2=null;
        PreparedStatement ps1=null;
        PreparedStatement ps2=null;
        
         sql1="update query set name6 = ( case when ( name5 is not null and name6 is null ) then ? else name6 end ),"
          + "name5 = ( case when ( name4 is not null and name5 is null ) then ? else name5 end ),"
          + "name4 = ( case when ( name3 is not null and name4 is null) then ? else name4 end ),"
          + "name3 = ( case when ( name2 is not null and name3 is null ) then ? else name3 end ),"
          + "name2 = ( case when ( name1 is not null and name2 is null ) then ? else name2 end ),"
          + "name1 = ( case when ( name1 is null) then ? else name1 end )"
          + " where questions=?";
       
         sql2="update query set time6 = ( case when ( time5 is not null and time6 is null ) then ? else time6 end ),"
          + "time5 = ( case when ( time4 is not null and time5 is null ) then ? else time5 end ),"
          + "time4 = ( case when ( time3 is not null and time4 is null) then ? else time4 end ),"
          + "time3 = ( case when ( time2 is not null and time3 is null ) then ? else time3 end ),"
          + "time2 = ( case when ( time1 is not null and time2 is null ) then ? else time2 end ),"
          + "time1 = ( case when ( time1 is null) then ? else time1 end )"
          + " where questions=?";
       
        sql="update query set ans6 = ( case when ( ans5 is not null and ans6 is null ) then ? else ans6 end ),"
          + "ans5 = ( case when ( ans4 is not null and ans5 is null ) then ? else ans5 end ),"
          + "ans4 = ( case when ( ans3 is not null and ans4 is null) then ? else ans4 end ),"
          + "ans3 = ( case when ( ans2 is not null and ans3 is null ) then ? else ans3 end ),"
          + "ans2 = ( case when ( ans1 is not null and ans2 is null ) then ? else ans2 end ),"
          + "ans1 = ( case when ( ans1 is null) then ? else ans1 end )"
          + " where questions=?";
        con=mycon.getConnection();
        ps1=con.prepareStatement(sql1);
        ps2=con.prepareStatement(sql2);
        ps=con.prepareStatement(sql);
          
         ps1.setString(1,S.getName1());
         ps1.setString(2,S.getName1());
         ps1.setString(3,S.getName1());
         ps1.setString(4,S.getName1());
         ps1.setString(5,S.getName1());
         ps1.setString(6,S.getName1());
         ps1.setString(7,S.getQstn());
        
         ps2.setString(1,S.getTime1());
         ps2.setString(2,S.getTime1());
         ps2.setString(3,S.getTime1());
         ps2.setString(4,S.getTime1());
         ps2.setString(5,S.getTime1());
         ps2.setString(6,S.getTime1());
         ps2.setString(7,S.getQstn());
         
         ps.setString(1,S.getAns1());
         ps.setString(2,S.getAns1());
         ps.setString(3,S.getAns1());
         ps.setString(4,S.getAns1());
         ps.setString(5,S.getAns1());
         ps.setString(6,S.getAns1());
         ps.setString(7,S.getQstn());
          
         ps1.executeUpdate();
         ps2.executeUpdate();
           if(ps.executeUpdate()>0)
               return true;
           return false;
    }
    
    
    public List<User> searchAll()throws Exception
    {
        sql="select * from user";
          con=mycon.getConnection();
        ps=con.prepareStatement(sql);
         
         List<User>mylist=new ArrayList<User>();
         rs=ps.executeQuery();
          while(rs.next())
          {
              User E=new User();
                E.setFirstname(rs.getString(1));
                E.setLastname(rs.getString(2));
                E.setEmail(rs.getString(3));
                E.setAge(rs.getString(4));
                E.setPann(rs.getString(5));
                E.setGender(rs.getString(6));
                E.setPhn(rs.getLong(7));
                E.setPassword(rs.getString(8));
                E.setCategory(rs.getString(9));
                 mylist.add(E);
             E=null;
          }
        return mylist;
        
    }
    public boolean checkLogin(String Pann,String Password)throws Exception
    {
        sql="select * from user where pann=? and password=?";
         con=mycon.getConnection();
        ps=con.prepareStatement(sql); 
        
          ps.setString(1,Pann);
          ps.setString(2,Password);
         rs=ps.executeQuery();
         if(rs.next())
        return true;
         return false;
        
    }
      public boolean updatePass(User S)throws Exception
    {
        sql="update user set Password=? where pann=?";
        con=mycon.getConnection();
        ps=con.prepareStatement(sql);
         
         ps.setString(1,S.getPassword());
         ps.setString(2,S.getPann());
          
           if(ps.executeUpdate()>0)
               return true;
           return false;
    }


    public List<User> fsearchAll()throws Exception
    {
        sql="SELECT * FROM feedback Order By Sno Desc";
          con=mycon.getConnection();
        ps=con.prepareStatement(sql);
         
         List<User>mylist=new ArrayList<User>();
         rs=ps.executeQuery();
          while(rs.next())
          {
              User E=new User();
                E.setFname(rs.getString(2));
                E.setFemail(rs.getString(3));
                E.setComment(rs.getString(4));
                E.setTim(rs.getString(5));
                 mylist.add(E);
             E=null;
          }
        return mylist;
 }
    
    public List<User> QsearchAll(int start,int total )throws Exception
    {
        sql="SELECT * FROM query Order BY Sno Desc limit "+(start-1)+","+total +"" ;
          con=mycon.getConnection();
        ps=con.prepareStatement(sql);
         
         List<User>mylist=new ArrayList<User>();
         rs=ps.executeQuery();
          while(rs.next())
          {
              User E=new User();
                E.setQstn(rs.getString(2));
                E.setTim(rs.getString(4));
                E.setAns1(rs.getString(5));
                E.setAns2(rs.getString(8));
                E.setAns3(rs.getString(11));
                E.setAns4(rs.getString(14));  
                E.setAns5(rs.getString(17));
                E.setAns6(rs.getString(20));
                E.setFname(rs.getString(3));
                mylist.add(E);
             E=null;
          }
        return mylist;
 }
      public List<User> QsearchAl()throws Exception
    {
        sql="SELECT * FROM query " ;
          con=mycon.getConnection();
        ps=con.prepareStatement(sql);
         
         List<User>mylist=new ArrayList<User>();
         rs=ps.executeQuery();
          while(rs.next())
          {
              User E=new User();
                E.setQstn(rs.getString(2));
                E.setTim(rs.getString(3));
                E.setAns1(rs.getString(4));
                E.setAns2(rs.getString(5));
                E.setAns3(rs.getString(6));
                E.setAns4(rs.getString(7));  
                E.setAns5(rs.getString(8));
                E.setAns6(rs.getString(9));
                E.setFname(rs.getString(10));
                mylist.add(E);
             E=null;
          }
        return mylist;
 }
 
       public User searchques(String ques)throws Exception
    {
        sql="select * from query where REPLACE(questions,' ','')=?";
        con=mycon.getConnection();
        ps=con.prepareStatement(sql);
        
          ps.setString(1,ques);
           
           rs=ps.executeQuery();
           
           User E=new User();
           
            if(rs.next())
            {
                
                E.setQstn(rs.getString(2));
                E.setFname(rs.getString(3));
                E.setTim(rs.getString(4));
                E.setAns1(rs.getString(5));
                E.setName1(rs.getString(6));
                E.setTime1(rs.getString(7));
                E.setAns2(rs.getString(8));
                E.setName2(rs.getString(9));
                E.setTime2(rs.getString(10));
                E.setAns3(rs.getString(11));
                E.setName3(rs.getString(12));
                E.setTime3(rs.getString(13));
                E.setAns4(rs.getString(14));
                E.setName4(rs.getString(15));
                E.setTime4(rs.getString(16));
                E.setAns5(rs.getString(17));
                E.setName5(rs.getString(18));
                E.setTime5(rs.getString(19));
                E.setAns6(rs.getString(20));
                E.setName6(rs.getString(21));
                E.setTime6(rs.getString(22));
                
                
              return E;
            }
            else
            {
                return null;
            }
        
    }
}
