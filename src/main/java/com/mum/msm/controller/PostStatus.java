package com.mum.msm.controller;

import com.google.gson.Gson;
import com.mum.msm.daoImpl.PostDao;
import com.mum.msm.model.Post;
import com.mum.msm.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "postStatus", urlPatterns = {"/postStatus"})
public class PostStatus  extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String postText = request.getParameter("text");
        // we will get it from session
        User postUser = new User();
        postUser.setId(1);

        Post post = new Post();
        PostDao postDao = new PostDao();
        post.setText(postText);
        post.setUser(postUser);
        postDao.save(post);
        // return Json
        response.setContentType("application/json");

         Gson gson = new Gson();
         post.setId(2);
         gson.toJson(post);
         response.getWriter().write( gson.toJson(post));

    }
}
