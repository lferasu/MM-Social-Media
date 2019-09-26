package com.mum.msm.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
//        String name = (String)session.getAttribute("logggedInUserName");
//        session.removeAttribute(name);
        session.removeAttribute("logggedInUser");
        session.invalidate();
        response.sendRedirect("login.jsp");

//        response.setContentType("text/html");
//        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
//        rd.forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
