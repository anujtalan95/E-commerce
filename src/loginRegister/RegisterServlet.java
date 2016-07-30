
package loginRegister;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        try{
        
        //loading drivers for mysql
        Class.forName("com.mysql.jdbc.Driver");

	//creating connection with the database 
          Connection  con=DriverManager.getConnection
                     ("jdbc:mysql:/ /localhost:3306/register","root","MySQL");

        PreparedStatement ps=con.prepareStatement
                  ("insert into userdetails values(?,?,?)");

        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, pass);
        int i=ps.executeUpdate();
        
          if(i>0)
          {
            out.println("You are sucessfully registered");
          }
        
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
	}

}
