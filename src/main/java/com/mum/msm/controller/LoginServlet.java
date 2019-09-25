package com.mum.msm.controller;

import com.mum.msm.config.JpaEntityManagerFactory;
import com.mum.msm.daoImpl.UserDao;
import com.mum.msm.hibernate.Util;
import com.mum.msm.model.Advertisement;
import com.mum.msm.model.Picture;
import com.mum.msm.model.Post;
import com.mum.msm.model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "HelloServelt", urlPatterns = {"/login", "/profile"})
public class LoginServlet extends HttpServlet {
    private String USERNAME = "Admin";
    private String PASSWORD = "admin";
    private String ADMIN_EMAIL = "admin@mumsm.com";

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        HttpSession session = request.getSession();


//        User user = new User();
//        user.setFirstName("first names");
//        user.setLastName("lastName");
//
//        UserDao ud = new UserDao();
//        ud.save(user);
//
//        User returened = ud.get(1).orElse(null);
//
//        response.getWriter().write(returened.getFirstName());

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User theUser = null;
        UserDao usersFetched = new UserDao();
        List<User> users = usersFetched.findWithUserName(username);

        for (int i=0; i<users.size(); i++){
            if (users.get(i).getUserName().equals(username) && users.get(i).getPassword().equals(password)){
                theUser = users.get(i);
            }
        }

        if (USERNAME.equals(username) && PASSWORD.equals(password)){
            response.setContentType("text/html");
            User admin = new User(ADMIN_EMAIL, USERNAME, PASSWORD);
            String adminUsername = admin.getUserName();
//            out.println("Welcome Admin!");
            session.setAttribute("welcome", "Welcome, ");
            session.setAttribute("logggedInUser", admin);
            session.setAttribute("logggedInUserName", adminUsername);
            Cookie user = new Cookie("user", username);
            response.addCookie(user);
            response.sendRedirect("home.jsp");

        } else if (theUser != null) {
                response.setContentType("text/html");
//                User logggedInUser = new User(theUser.getEmail(), theUser.getUserName(), theUser.getPassword());
                session.setAttribute("welcome", "Welcome, ");
                session.setAttribute("logggedInUser", theUser);
                session.setAttribute("logggedInUserName", theUser.getFirstName());
                Cookie user = new Cookie("user", username);
                response.addCookie(user);
                response.sendRedirect("home.jsp");
            }
        else {
            response.setContentType("text/html");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
            out.println("<font color=red>Enter Correct Username and Password, Please!</font>");
            rd.include(request, response);
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                doGet(request, response);
    }
}
