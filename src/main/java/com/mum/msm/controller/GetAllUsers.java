package com.mum.msm.controller;

import com.google.gson.Gson;
import com.mum.msm.daoImpl.PostDao;
import com.mum.msm.daoImpl.UserDao;
import com.mum.msm.model.Post;
import com.mum.msm.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/getAllUsers")
public class GetAllUsers extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<User> listOfUsers = new UserDao().getAll();
        request.getSession().setAttribute("myListOfUsers",listOfUsers);

//        response.getWriter().write(new Gson().toJson(listOfUsers));
    }
}
