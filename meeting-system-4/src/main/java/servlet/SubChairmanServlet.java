package servlet;

import dao.*;
import pojo.Notification;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SubChairmanServlet", value = "/SubChairmanServlet")
public class SubChairmanServlet extends HttpServlet {
    private UserDAO userDAO = new UserDAOImpl();
    private ForumDAO forumDAO = new ForumDAOImpl();
    private NotiDAO notiDAO = new NotiDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        countNum(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        releaseNotices(request, response);
    }

    public void countNum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String thisforum = "分论坛2";
        int num = forumDAO.getSubForumFollowers(thisforum);
        request.setAttribute("numOfFollowers", num);
        request.getRequestDispatcher("/subchairmanPage/peopleNumPage.jsp").forward(request, response);
    }

    public void releaseNotices(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String note = request.getParameter("notification");
        String thisforum = "分论坛2";
        Notification notification = new Notification();
        notification.setSubForum(thisforum);
        notification.setMessage(note);
        notiDAO.add(notification);
        request.getRequestDispatcher("/subchairmanPage/releaseNotesPage.jsp").forward(request, response);
    }
}
