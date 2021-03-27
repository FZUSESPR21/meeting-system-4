package servlet;

import dao.ForumDAO;
import dao.ForumDAOImpl;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import pojo.Forum;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LoadServlet", value = "/LoadServlet")
public class LoadServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = req.getMethod();
        if (method.equals("get")){
            this.doGet(req, resp);
            return;
        }
        List<Forum> forum = new ArrayList<Forum>();
        ForumDAO forumDAO = new ForumDAOImpl();
        forum = forumDAO.list();
        req.setAttribute("forums", forum);
        req.getRequestDispatcher("registerPage/register.jsp").forward(req, resp);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
