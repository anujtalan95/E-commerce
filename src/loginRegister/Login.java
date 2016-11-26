package loginRegister;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.User;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		
		try{
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","MySQL"); 
		st= con.createStatement(); 
		rs=st.executeQuery("select * from client where email='"+email+"'");
		if(rs.next()){
                if (rs.getString(4).equals(pwd)) {
                	HttpSession session = request.getSession();
                	System.out.println(session.getAttribute("client"));
                	 User user = new User();
                     user.setUserEmail(email);
                  //   session.setAttribute("User", user);
                     session.setAttribute("client",rs.getInt(1));
                    response.sendRedirect("Home.jsp");
                   
                  }
                else {
                    
                    out.println( "Password does not match with the password during registeration... Please re-login with correct password");
                    out.println("<html><body>");
                   //out.println("<a href="Home.jsp">Home</a>");
                    out.println("</html></body>");
                }
			}
		}
		catch(Exception se)
        {
            se.printStackTrace();
        }
		finally{
			try { if (rs != null) rs.close(); } catch (Exception e) {};
			try { if (st != null) st.close(); } catch (Exception e) {};
			try { if (con != null) con.close(); } catch (Exception e) {};
		}
}
}
