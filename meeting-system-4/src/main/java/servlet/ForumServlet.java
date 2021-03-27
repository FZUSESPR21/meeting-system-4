package com.example.CommonUser;

import dao.ForumDAO;
import dao.ForumDAOImpl;
import pojo.Forum;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ForumServlet", value = "/ForumServlet")
public class ForumServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         ForumDAO forumDAO = new ForumDAOImpl();
         List<Forum> list=new ArrayList<Forum>();
           list = forumDAO.list("10001");
         request.setAttribute("list",list );
         RequestDispatcher rd;
         rd=request.getRequestDispatcher("/index.jsp");
         rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
