package com.mum.msm.controller;

import com.google.gson.Gson;
import com.mum.msm.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "displayUserInfo", urlPatterns = {"/displayUserInfo"})
public class DisplayUserInfo extends HttpServlet {
//    private String USERNAME = "Admin";
//    private String PASSWORD = "admin";
//    private String ADMIN_EMAIL = "admin@mumsm.com";
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("logggedInUser");


//        User admin = new User(ADMIN_EMAIL, USERNAME, PASSWORD);
//        String adminUsername = admin.getUserName();

        response.setContentType("application/json");
        Gson gson = new Gson();
//        gson.toJson(user);
        response.getWriter().write(gson.toJson(user));
    }

    }
