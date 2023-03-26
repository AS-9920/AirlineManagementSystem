package com.adarsh.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.adarsh.beans.DBConnector;

/**
 * Servlet implementation class Forgetps
 */
@WebServlet("/Forgetps")
public class Forgetps extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forgetps() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String uid, sq, ans, newps;
		uid = request.getParameter("uid");
		sq = request.getParameter("sq");
		ans = request.getParameter("ans");
				
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		try
		{
		DBConnector dbc = new DBConnector();
		con = dbc.getDbconnection();
		pst = con.prepareStatement("select * from userpersonal where uid=? and  sq=? and ans=?;");
		pst.setString(1, uid);
		pst.setString(2, sq);
		pst.setString(3, ans);
		rs=pst.executeQuery();
		if(rs.next())
		{
			out.println("User Identity Confirm..");
			newps=uid.substring(1, 4)+"$"+"786";
			out.println("<br>your new password is "+newps);
			pst=con.prepareStatement("update users set psw=? where uid=?;");
			pst.setString(1, newps);
			pst.setString(2, uid);
			pst.executeUpdate();
			out.println("<br>Password recovery done..login with new password");
		}
		else
		{
			out.println("User Identity Failed..");
		}
		con.close();
		out.println("<br><a href='index.jsp'>Login Now</a>");
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}

}
