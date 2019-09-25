package com.mum.msm.controller;

import com.google.gson.Gson;
import com.mum.msm.daoImpl.PostDao;
import com.mum.msm.daoImpl.UserDao;
import com.mum.msm.model.Picture;
import com.mum.msm.model.Post;
import com.mum.msm.model.User;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "postStatus", urlPatterns = {"/statusPost"})
public class PostStatus  extends HttpServlet {
    private final String UPLOAD_DIRECTORY = "uploads/posts";
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fileName="";

        ServletContext servletContext = getServletContext();
        String contextPath = servletContext.getRealPath(File.separator);

        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);

                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        fileName = new File(item.getName()).getName();
                        item.write( new File(contextPath + File.separator + UPLOAD_DIRECTORY + File.separator + fileName));
                    }
                    else
                    {
                        String fieldname = item.getFieldName();
                        String fieldvalue = item.getString();
                        request.setAttribute(fieldname,fieldvalue);
                    }
                }

                //File uploaded successfully
                request.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
                request.setAttribute("message", "File Upload Failed due to " + ex);
            }

        }else{
            request.setAttribute("message",
                    "Sorry this Servlet only handles file upload request");
        }


        String postText = request.getAttribute("postText").toString();
        // we will get it from session
        User postUser = new UserDao().get(5).orElse(null);

        Post post = new Post();
        PostDao postDao = new PostDao();
        post.setText(postText);
        post.setUser(postUser);
        post.setPicture(fileName);
        postDao.save(post);
        // return Json
        response.setContentType("application/json");

         Gson gson = new Gson();
         post.setId(2);
         gson.toJson(post);
         response.getWriter().write( gson.toJson(post));

    }
}





