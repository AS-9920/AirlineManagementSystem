package com.adarsh.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.adarsh.beans.DBConnector;

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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String uid, psw, unm, gen, mono, email, city, sq, ans;
		int age;
		uid = request.getParameter("uid");
		psw = request.getParameter("psw");
		unm = request.getParameter("unm");
		age = Integer.parseInt(request.getParameter("age"));
		gen = request.getParameter("gen");
		mono = request.getParameter("mono");
		email = request.getParameter("email");
		city = request.getParameter("city");
		sq  = request.getParameter("sq");
		ans = request.getParameter("ans");
		
		Connection con;
		PreparedStatement pst;
		try
		{
			DBConnector dbc = new DBConnector();
			con = dbc.getDbconnection();
			pst = con.prepareStatement("insert into users values(?,?,?,default);");
			pst.setString(1, uid);
			pst.setString(2, psw);
			pst.setString(3, unm);
			pst.executeUpdate();
			
			pst = con.prepareStatement("insert into userpersonal values(?,?,?,?,?,?,?,?);");
			pst.setString(1, uid);
			pst.setInt(2, age);
			pst.setString(3, gen);
			pst.setString(4, mono);
			pst.setString(5, email);
			pst.setString(6, city);
			pst.setString(7, sq);
			pst.setString(8, ans);
			pst.executeUpdate();
			response.sendRedirect("RegSuccess.jsp");
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}
}
