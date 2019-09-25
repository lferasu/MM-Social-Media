package com.mum.msm.controller;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter("/loginFilter")
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
            response.setContentType("text/html");
            res.sendRedirect("login.jsp");
        } else if(uri.contains("login") || uri.contains("registration")){
//            RequestDispatcher rd = req.getRequestDispatcher("/login");
//            rd.forward(req, res);

//            response.setContentType("text/html");
            res.sendRedirect("profile.jsp");
        }

        else {
            chain.doFilter(request, response);
        }

//        PrintWriter out=response.getWriter();
//
//        String password=request.getParameter("password");
//        if(password.equals("admin")){
//            chain.doFilter(request, response);
//
//        }
//        else{
//            out.print("username or password error!");
//            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
//            rd.include(request, response);
//        }



    }
}
