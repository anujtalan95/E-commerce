package loginRegister;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.User;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=null;
		Statement st=null;
		try{
			String name=request.getParameter("name");
			 
			String email=request.getParameter("email"); 
			String pwd=request.getParameter("pwd"); 
			Class.forName("com.mysql.jdbc.Driver"); 
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","MySQL"); 
			st= con.createStatement(); 
			
			int i=st.executeUpdate("insert into client(email,name,password) values ('"+email+"','"+name+"','"+pwd+"')"); 
			  if(i>0)
			  {
				  ResultSet rs=st.executeQuery("select * from client where email='"+email+"'");
				  rs.next();
				  HttpSession session = request.getSession();
              	System.out.println(session.getAttribute("client"));
              	 User user = new User();
                   user.setUserEmail(email);
                //   session.setAttribute("User", user);
                   session.setAttribute("client",rs.getInt(1));
                  response.sendRedirect("Home.jsp");
	          }
		}
		catch(Exception se)
        {
            se.printStackTrace();
        }
		finally{
			try { if (st != null) st.close(); } catch (Exception e) {};
			try { if (con != null) con.close(); } catch (Exception e) {};
		}
}
}
