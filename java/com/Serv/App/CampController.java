package com.Serv.App;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.App.*;
import com.Dao.App.Dao;

/**
 * Servlet implementation class ServController
 */
@WebServlet("/CampController")
public class CampController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CampController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String action = request.getParameter("action");
		Dao d = new Dao();

		if (action.equals("addCa")) {
			Log l = new Log();
			l.setName(request.getParameter("name"));
			l.setEmail(request.getParameter("email"));
			l.setPhone(request.getParameter("phone"));
			l.setDistrict(request.getParameter("district"));
			l.setUname(request.getParameter("uname"));
			l.setPword(request.getParameter("pword"));

			String done = d.addCadmin(l);
			if (done.equals("done")) {
				HttpSession ses = request.getSession();
				ses.setAttribute("uname", l.getUname());
				request.getRequestDispatcher("success.jsp").forward(request, response);
			}
		}

		if (action.equals("log")) {

			Log l = new Log();
			
			String uname = request.getParameter("uname");
			l.setUname(request.getParameter("uname"));
			l.setPword(request.getParameter("pword"));
			System.out.println(l.getPword()+l.getUname()+"**************************");
			HttpSession ses = request.getSession();

			String check = d.logUser(l);

			if (check.equals("done")) {
				if(l.getUname().equals("admin"))
				{
				 ses = request.getSession();
				ses.setAttribute("uname", l.getUname());
				request.getRequestDispatcher("AdminDash.jsp").forward(request, response);
				}
				else if(l.getUname().contains("camp"))
				{
				System.out.println("Here I am camp");
				ses.setAttribute("caname", uname);
				request.getRequestDispatcher("CampDash.jsp").forward(request, response);
			}
				else
				{
					System.out.println("Here I am");
					ses.setAttribute("uname", uname);
					request.getRequestDispatcher("userDash.jsp").forward(request, response);
				}
			}
		}
		
		if (action.equals("newCamp")) {
			Camp c = new Camp();
			c.setCname(request.getParameter("name"));
			c.setDist(request.getParameter("dist"));
			c.setTaluk(request.getParameter("tal"));
			c.setVillage(request.getParameter("vill"));
			c.setWard(request.getParameter("ward"));
			c.setAddress(request.getParameter("add"));
			c.setLocation(request.getParameter("loc"));
			c.setCanum(request.getParameter("phone"));
			c.setMax(request.getParameter("max"));
			c.setBed(request.getParameter("bed"));
			c.setBath(request.getParameter("bath"));
			c.setKitchen(request.getParameter("kitch"));
			c.setCaname(request.getParameter("caname"));

			String done = d.addCamp(c);
			if (done.equals("done")) {
				
				request.getRequestDispatcher("success.jsp").forward(request, response);
			}
		}
		
		
		if (action.equals("reg")) {
			User u= new User();
			u.setUname(request.getParameter("name"));
			u.setUemail(request.getParameter("email"));
			u.setPhone(request.getParameter("phone"));
			u.setAdhar(request.getParameter("adhar"));
			u.setDistrict(request.getParameter("dist"));
			u.setTaluk(request.getParameter("tal"));
			u.setWard(request.getParameter("war"));
			u.setAddress(request.getParameter("add"));
			u.setLocation(request.getParameter("loc"));
			
			u.setPword(request.getParameter("pword"));
			

			String done = d.addUser(u);
			if (done.equals("done")) {
				
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}
		
		if(action.equals("lock"))
		{
			Booking b = new Booking();
			
			b.setCname(request.getParameter("cname"));
			b.setCid(request.getParameter("cid"));
			
			b.setBooking(request.getParameter("cur"));
			b.setNeed(request.getParameter("need"));
			b.setUname(request.getParameter("uname"));
			
			String done = d.lockSpot(b);
			if (done.equals("done")) {
				
				request.getRequestDispatcher("success.jsp").forward(request, response);
			}
		}
		
		
	}

}
