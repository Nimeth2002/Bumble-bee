

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @param rd 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response, RequestDispatcher rd) throws ServletException, IOException {
		response.setContentType("text/jsp");
		PrintWriter out = response.getWriter();
		
		String CustomerID = request.getParameter("customer_id");
		String FullName = request.getParameter("fullname");
		String DateofBirth = request.getParameter("dob");
		String LoanBalance = request.getParameter("loan_balance");
		String UsedAmount = request.getParameter("used_amount");
		String InstallementPlan = request.getParameter("installement_plan\"");
		//com.microsoft.sqlserver.jdbc.SQLServerDriver
		//jdbc:sqlserver://;serverName=localhost;databaseName=master
		try {
			Class.forName("com.misrosoft.sqlserver.jdbc.SQLServerDriver");
			Connection con = DriverManager.getConnection("jdbc:sqlserver://;serverName=DESKTOP-K5LPK1E\\SQLEXPRESS;databaseName=bee");
			PreparedStatement ps = con.prepareStatement("insert into Customer_Registration values (?,?,?,?,?,?)");
			ps.setString(1,CustomerID);
			ps.setString(2,FullName);
			ps.setString(3,DateofBirth);
			ps.setString(4,LoanBalance);
			ps.setString(5,UsedAmount);
			ps.setString(6,InstallementPlan );
			int i = ps.executeUpdate();
			if (i>0)
			{
				out.print("Successfully registered to the database");
				RequestDispatcher ed = request.getRequestDispatcher("Login.jsp");
				ed.include(request,response);
			}
		}catch (Exception e) {
			
		}
		
		
	}

}
