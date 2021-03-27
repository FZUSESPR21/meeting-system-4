package com.example.CommonUser;

import dao.ForumDAO;
import dao.ForumDAOImpl;
import dao.NotiDAO;
import dao.NotiDAOImpl;
import pojo.Forum;
import pojo.Notification;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "NotiServlet", value = "/NotiServlet")
public class NotiServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        NotiDAO notiDAO=new NotiDAOImpl();
        notiDAO.list("10001");

        List<Notification> list=new ArrayList<Notification>();
        list = notiDAO.list("10001");
        request.setAttribute("list",list );
        RequestDispatcher rd;
        rd=request.getRequestDispatcher("/index.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
