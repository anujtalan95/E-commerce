package user;

import java.sql.*;

public class User {
    public String userEmail = null;
    public int userId = 0;
    public String username;
    
    
    public void setUserEmail (String userEmail) throws SQLException, ClassNotFoundException{
        this.userId = findUserId(userEmail);
        this.userEmail = userEmail;        
    }
    public String getUserEmail (){
        return userEmail;
    }
    public int getUserId (){
        return userId;
    }
    public String getUsername (){
        return username;
    }
    public int findUserId (String email) throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","MySQL"); 
		Statement st= con.createStatement(); 
		ResultSet rs=st.executeQuery("select client_id from client where email='"+email+"'");
		rs.next();
		int userId=rs.getInt(1);
        return userId;
    }
   
    
    public static void main (String args[]) throws SQLException, ClassNotFoundException{
       User user = new User ();
        user.getUsername();
       
    }
}
