package com.mum.msm.controller;

import com.mum.msm.daoImpl.UserDao;
import com.mum.msm.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "registerServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

    UserDao userDao = new UserDao();

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String confirmPassword = request.getParameter("confirmPassword");

        boolean validate = false;
        // check if the username is taken
        List<User> newUser = userDao.findWithUserName(userName);
        if(newUser.size()==0){
            User user = new User(email, userName,password);
            userDao.save(user);
            Cookie users = new Cookie("user", userName);
            response.addCookie(users);
            response.sendRedirect("edit_profile.jsp");
        }

    }


}
