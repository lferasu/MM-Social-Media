package com.mum.msm.controller;

import com.google.gson.Gson;
import com.mum.msm.daoImpl.AdvertisementDao;
import com.mum.msm.daoImpl.PostDao;
import com.mum.msm.model.Advertisement;
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

        String addText = request.getParameter("text");
        HttpSession session = request.getSession();
        User admin = (User)session.getAttribute("logggedInUser");


        AdvertisementDao ad = new AdvertisementDao();
        Advertisement adOb = new Advertisement();
        adOb.setText(addText);
        ad.save(adOb);

//        response.setContentType("application/json");
        response.setContentType("text");

//        Gson gson = new Gson();
//        post.setId(2);
//        gson.toJson(post);
//        response.getWriter().write(gson.toJson(post));
        response.getWriter().write(addText);

    }
}
