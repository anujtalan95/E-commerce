package SearchDB;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductSearch
 */
@WebServlet("/ProductSearch")
public class ProductSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductSearch() {
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
		// TODO Auto-generated method stub
		String srch=request.getParameter("psearch");
		ArrayList<Integer> rslt=new ArrayList<Integer>();
		srch= "%"+srch+"%";
		Connection con = null;
		Statement st= null;
		ResultSet rs=null;
		try {	
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","MySQL"); 
			st= con.createStatement();
			rs=st.executeQuery("select product_id from product where name like '"+srch+"'");
			while(rs.next()){
				if(!(rslt.contains(rs.getInt(1)))){
					rslt.add(rs.getInt(1));
					int pid=rs.getInt(1);
					response.sendRedirect("product.jsp?id="+pid);
				}
			}
			rs.close();
			rs=st.executeQuery("select product_id from product where description like '"+srch+"'");
			while(rs.next()){
				if(!(rslt.contains(rs.getInt(1)))){
					rslt.add(rs.getInt(1));
				}
			}
			rs.close();
			rs=st.executeQuery("select product_id from product where category like '"+srch+"'");
			while(rs.next()){
				if(!(rslt.contains(rs.getInt(1)))){
					rslt.add(rs.getInt(1));
				}
			}
			
			System.out.println(rslt);
		} 
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try { if (rs != null) rs.close(); } catch (Exception e) {};
			try { if (st != null) st.close(); } catch (Exception e) {};
			try { if (con != null) con.close(); } catch (Exception e) {};
		}
	}

}
