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
        this.context.log("Requested URL" + uri);

        HttpSession session = req.getSession(false);

        if (session == null && !(uri.endsWith("jsp") || uri.endsWith("HomeServlet"))){
            this.context.log("Unauthorized access to MUM Social");
            response.setContentType("text/html");
            res.sendRedirect("login.jsp");
        } else {
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

//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//        out.print("filter is invoked before");
//
//        chain.doFilter(request,  response);//sends request to next resource
//
//        out.print("filter is invoked after");

    }
}
