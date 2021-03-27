package servlet;

import dao.ForumDAO;
import dao.ForumDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ForumServlet", value = "/ForumServlet")
public class ForumServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         ForumDAO forumDAO = new ForumDAOImpl();
         forumDAO.list("10001");
         PrintWriter out= response.getWriter();
         out.println(forumDAO.list("10001").get(0).getTime());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
