package com.adarsh.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.adarsh.beans.DBConnector;

/**
 * Servlet implementation class Check
 */
@WebServlet("/Check")
public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		String uid, psw;
		uid = request.getParameter("uid");
		psw = request.getParameter("psw");
		try
		{
			DBConnector dbc = new DBConnector();
			con = dbc.getDbconnection();
			pst = con.prepareStatement("select * from users where uid=? and psw=? and ustatus='Active';");
			pst.setString(1, uid);
			pst.setString(2, psw);
			rs=pst.executeQuery();
			
			if(rs.next())
			{
				HttpSession ses = request.getSession(true);
				ses.setAttribute("uid", uid);				
				if(rs.getString("utyp").equals("Customer"))
					response.sendRedirect("Customer.jsp");
				if(rs.getString("utyp").equals("admin"))
					response.sendRedirect("Admin.jsp");
			}
			else
			{
				response.sendRedirect("Failure.jsp");
			}
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}
}
