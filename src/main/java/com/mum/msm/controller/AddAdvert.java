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
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "postAdds", urlPatterns = {"/postAdds"})
public class AddAdvert extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String addText = request.getParameter("adds");
        HttpSession session = request.getSession();
        User admin = (User)session.getAttribute("logggedInUser");

        Post post = new Post();
        PostDao postDao = new PostDao();
        post.setText(addText);
        post.setUser(admin);
        postDao.save(post);

        response.setContentType("application/json");

        Gson gson = new Gson();
//        post.setId(2);
//        gson.toJson(post);
        response.getWriter().write(gson.toJson(post));

    }
}
