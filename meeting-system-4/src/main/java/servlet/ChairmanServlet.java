package com.example.CommonUser;

import dao.ChairmanDAO;
import dao.ChairmanDAOImpl;
import dao.ForumDAO;
import dao.ForumDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ChairmanServlet", value = "/ChairmanServlet")
public class ChairmanServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ChairmanDAO chairmanDAO=new ChairmanDAOImpl();
        int num=chairmanDAO.getTotal();
        request.setAttribute("num", num);
        RequestDispatcher rd;
        rd=request.getRequestDispatcher("/index.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
