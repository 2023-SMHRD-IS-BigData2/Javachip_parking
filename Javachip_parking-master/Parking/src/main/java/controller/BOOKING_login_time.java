package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.PARKING;
import model.PARKING_DAO;

@WebServlet("/BOOKING_login_time")
public class BOOKING_login_time extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String P_PLACE = request.getParameter("P_PLACE");
		System.out.println(P_PLACE);
		
		PARKING vo =  new PARKING(P_PLACE);
		PARKING loginParking = new PARKING_DAO().loginParking(vo);
		
		System.out.println(vo.toString());
		
		if (loginParking != null) {
			// 주차장 로그인(?) 성공
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("Parking", loginParking);
			response.sendRedirect("./booking_time.jsp");
		} else {
			System.out.println("로그인 실패...");
			response.sendRedirect("./booking.html");
		}
	}

}
