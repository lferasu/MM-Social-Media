package com.mum.msm.controller;

import com.mum.msm.daoImpl.UserDao;
import com.mum.msm.model.Picture;
import com.mum.msm.model.User;
import com.mysql.cj.jdbc.Blob;
import com.oreilly.servlet.MultipartRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.List;

@WebServlet(name ="edit-profile", urlPatterns = {"/edit-profile"})
@MultipartConfig
public class EditProfile extends HttpServlet {

    private final String UPLOAD_DIRECTORY = "/WEB-INF/uploads";


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fileName="";

        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);

                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        fileName = new File(item.getName()).getName();
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + fileName));
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


        String fName = request.getAttribute("first-name").toString();
        String lName = request.getAttribute("last-name").toString();
        String phone = request.getAttribute("phone").toString();
        String city = request.getAttribute("city").toString();
        String country = request.getAttribute("country").toString();
        String occupation = request.getAttribute("occupation").toString();
        String dateString = request.getAttribute("birth-date").toString();
        String[] dateStringArray = dateString.split("-");
        LocalDate birthDate = LocalDate.of(Integer.parseInt(dateStringArray[0]),Integer.parseInt(dateStringArray[1]),Integer.parseInt(dateStringArray[2]));

        UserDao userDao = new UserDao();

        User editUser = userDao.get(1).orElse(null);

        if(editUser!= null)
        {
            editUser.setFirstName(fName);
            editUser.setLastName(lName);
            editUser.setPhone(phone);
            editUser.setCountry(country);
            editUser.setOccupation(occupation);
            editUser.setBirthDate(birthDate);
            editUser.setProfilePicture(fileName);

            try {

                userDao.update(editUser,new String[] {editUser.getFirstName(),
                editUser.getLastName(),
                editUser.getPhone(),
                editUser.getCountry(),
                editUser.getOccupation(),
                editUser.getBirthDate().toString()
                });

            } catch (Exception e)
            {
                response.getWriter().write(e.getMessage());
            }

            RequestDispatcher rs = request.getRequestDispatcher("home.jsp");
            rs.forward(request, response);
        }
        }

    }

