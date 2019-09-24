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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "HelloServelt", urlPatterns = {"/hello", "login"})
public class LoginServlet extends HttpServlet {
    private String USERNAME = "Admin";
    private String PASSWORD = "admin";
    private String ADMIN_EMAIL = "admin@mumsm.com";

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");


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


        if (USERNAME.equals(username) && PASSWORD.equals(password)){
            User admin = new User(ADMIN_EMAIL, USERNAME, PASSWORD);
//            out.println("Welcome Admin!");
            request.setAttribute("welcome", "Welcome, ");
            request.setAttribute("user", admin);
            RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
            rd.include(request, response);

        } else {
            User theUser = null;
            UserDao usersFetched = new UserDao();
            List<User> users = usersFetched.findWithUserName(username);

            for (int i=0; i<users.size(); i++){
                if (users.get(i).getUserName().equals(username) && users.get(i).getPassword().equals(password)){
                    theUser = users.get(i);
                }
            }
            if (theUser != null) {
                User user = new User(theUser.getEmail(), theUser.getUserName(), theUser.getPassword());
                request.setAttribute("welcome", "Welcome, ");
                request.setAttribute("user", user);
                RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
                rd.include(request, response);
            }
        }

    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                doGet(request, response);
    }
}
