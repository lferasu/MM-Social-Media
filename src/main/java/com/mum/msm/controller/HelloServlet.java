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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HelloServelt", urlPatterns = {"/hello"})
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        User user = new User();
        user.setFirstName("first names");
        user.setLastName("lastName");

        UserDao ud = new UserDao();
        ud.save(user);

        User returened = ud.get(1).orElse(null);

        response.getWriter().write(returened.getFirstName());




    }

    private static class EntityManagerHolder {
        private static final EntityManager ENTITY_MANAGER = new JpaEntityManagerFactory(
                new Class[]{User.class, Picture.class, Post.class, Advertisement.class}).getEntityManager();
    }

    public static EntityManager getJpaEntityManager() {
        return EntityManagerHolder.ENTITY_MANAGER;
    }
}
