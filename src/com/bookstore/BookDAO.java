package com.bookstore;
import java.io.ObjectInputStream.GetField;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BookDAO
{
	public static Connection getConnection() throws SQLException 
	{
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://192.168.100.26/group011_bookstore","group011","welcome");
			System.out.println("CONNECTION ESTABLISED");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	public static int addUsers(Users u)
	{
		 int status=0;  
		    try{  
		 
		        Connection con=getConnection();
		        PreparedStatement ps=con.prepareStatement(  
		"insert into register(name, uname, upass, mobile, email, address, city, pin) values(?,?,?,?,?,?,?,?)");  
		        ps.setString(1,u.getName());
		        ps.setString(2,u.getUsername());  
		        ps.setString(3,u.getPassword());  
		        ps.setLong(4,u.getMobile());  
		        ps.setString(5,u.getEmail());  
		        ps.setString(6,u.getAddress()); 
		        ps.setString(7,u.getCity()); 
		        ps.setInt(8,u.getPin_Code()); 
		        status=ps.executeUpdate(); 
		        
		    }
		    catch(Exception e){System.out.println(e);}  
		    return status; 
	}
	
	public static int chkUser(String username, String password, Users usr)
	{
		
		int status = 0;
		try {
			Connection con = getConnection();
			
			PreparedStatement ps = con.prepareStatement("select * from register where uname=?");
			ps.setString(1, username);
			ResultSet res = ps.executeQuery();
			
			
			while (res.next())
			{
					usr.setId(res.getInt(1));
					usr.setName(res.getString(2));
					usr.setUsername(res.getString(3));
					usr.setPassword(res.getString(4));
					usr.setMobile(res.getLong(5));
					usr.setEmail(res.getString(6));
					usr.setAddress(res.getString(7));
					usr.setCity(res.getString(8));
					usr.setPin_Code(res.getInt(9));
							
			}
		
			String upass =usr.getPassword();
			
			System.out.println(usr);
			if (upass.equals(password))
			{
				return status=0;	
			}
			else {
				return status=-1;	
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return status;
	}
	
	public static int adminChk(String username, String password)
	{
		
		int status = 0;
		
		try {
			Connection con = getConnection();
			
			PreparedStatement ps = con.prepareStatement("select apass from adminlogin where aname=?");
			ps.setString(1, username);
			ResultSet res = ps.executeQuery();
			res.next();
			String upass =res.getString(1);
			
			System.out.println("Password  is : "+upass);
			if (upass.equals(password))
			{
				return status=0;	
			}
			else {
				return status=-1;	
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return status;
	}
	
	public static int addImg(String src, int bid)
	{
		
		System.out.println(src);
		System.out.println("Inside DAO : "+bid);
		int status = 0;
		try 
		{
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("update library set image =? where id =?");
			
			
			ps.setString(1, src);
			ps.setInt(2, bid);
			status = ps.executeUpdate();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		return status;
	}
	
	public static String getImg(int id)
	{
		String path = null;
		try 
		{
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select image from library where id = ?");
			ResultSet res = ps.executeQuery();
			res.next();
			path = res.getString(1);
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		return path;
	}
	
	
	public static int addBook(Book b){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement
	        		("insert into library(id,name,title,price,auther,descp) values(?,?,?,?,?,?)");  
	        ps.setInt(1, b.getId());
	        ps.setString(2,b.getName()); 
	        ps.setString(3, b.getBtitle());
	        ps.setInt(4,b.getPrice());  
	        ps.setString(5,b.getAuther());
	        ps.setString(6,b.getDescp()); 
	        
	        status=ps.executeUpdate(); 
	        
	    	}
	    catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	
	public static ResultSet getBooks()
	{
		ResultSet res = null;
		 try 
		 {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from library");
			
			res = ps.executeQuery();
		 }
		 
		 catch (SQLException e) {
			
			e.printStackTrace();
		}  
	      
		
		return res;	
	}

}
