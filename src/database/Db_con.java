package database;

import java.sql.*;

public class Db_con {

	    private String database="ecom", username = "root", password = "MySQL";
	    private Connection con;
	    
	    public Connection getConnection() throws SQLException, ClassNotFoundException  {
	        Class.forName("com.mysql.jdbc.Driver"); 
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+database+"",""+username+"",""+password+""); 
	       // stm=con.createStatement(); 
	        return con;
	    }

}
