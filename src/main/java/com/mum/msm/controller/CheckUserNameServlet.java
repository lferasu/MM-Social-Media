package com.mum.msm.controller;

import com.mum.msm.daoImpl.UserDao;
import com.mum.msm.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "checkUserName", urlPatterns = {"/checkUserName"})
public class CheckUserNameServlet extends HttpServlet {

    UserDao userDao = new UserDao();
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("userName");
        boolean validate = false;
        // check if the username is taken
        List<User> newUser = userDao.findWithUserName(userName);
        response.setContentType("text");
            if(newUser.size()!=0)
        {
            response.getWriter().write("duplicate");
        }
        else {
            response.getWriter().write("unique");
        }
    }

}
