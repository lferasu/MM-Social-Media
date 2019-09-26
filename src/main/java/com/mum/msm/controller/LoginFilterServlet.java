package com.mum.msm.controller;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(urlPatterns = {"/login", "/profile", "/home"},
        filterName = "LoginFilterServlet")
public class LoginFilterServlet implements Filter {

    private ServletContext context;

    public void init(FilterConfig fConfig) throws ServletException {
        this.context = fConfig.getServletContext();
        this.context.log("LoginFilterServlet initialized");
    }
//    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String uri = req.getRequestURI();
//        this.context.log("Requested URL" + uri);

        HttpSession session = req.getSession(false);

        if (session == null && !(uri.endsWith("jsp") || uri.contains("servlet"))){


            this.context.log("Unauthorized access to MUM Social");
            res.setContentType("text/html");
            res.sendRedirect("/login");
        } else if(uri.contains("login") || uri.contains("registration")){

            RequestDispatcher rd = req.getRequestDispatcher("/loginServlet");
            rd.forward(req, res);

//            response.setContentType("text/html");
//            res.sendRedirect("home.jsp");

        }

        else {
            chain.doFilter(request, response);
        }

    }
}
