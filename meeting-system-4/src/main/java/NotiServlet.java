package com.example.CommonUser;

import dao.NotiDAO;
import dao.NotiDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "NotiServlet", value = "/NotiServlet")
public class NotiServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        NotiDAO notiDAO=new NotiDAOImpl();
        notiDAO.list("10001");
        PrintWriter out= response.getWriter();
        out.println(notiDAO.list("10001").get(0).getSubForum());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
