package com.mum.msm.controller;

import com.mum.msm.daoImpl.UserDao;
import com.mum.msm.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet(name ="edit-profile", urlPatterns = {"/edit-profile"})
public class EditProfile extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        String fName = request.getParameter("first-name");
        String lName = request.getParameter("last-name");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        String occupation = request.getParameter("occupation");
        String dateString = request.getParameter("birth-date");
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
        }



        response.getWriter().write("Success");

    }
}
