package com.mum.msm.controller;

import com.google.gson.Gson;
import com.mum.msm.daoImpl.PostDao;
import com.mum.msm.model.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/getAllPost")
public class GetAllPost extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

         List<Post> listOfPosts = new PostDao().getAll();
         response.setContentType("application/json");
         Gson gson = new Gson();
         response.getWriter().write( gson.toJson(listOfPosts));
    }
}
