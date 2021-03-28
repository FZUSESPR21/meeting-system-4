package servlet;

import dao.*;
import pojo.Forum;
import pojo.Notification;
import pojo.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
@WebServlet(name = "SecretaryServlet", value = "/SecretaryServlet")
public class SecretaryServlet extends HttpServlet {
    private UserDAO userDAO = new UserDAOImpl();
    private ForumDAO forumDAO = new ForumDAOImpl();
    private NotiDAO notiDAO = new NotiDAOImpl();
    private SecretaryDAO secretaryDAO = new SecretaryDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        queryUserInfo(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        releaseNotices(request, response);
    }

    public void queryUserInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("secretaryId");
        String thisforum = secretaryDAO.getSubForum(id);
        ArrayList<User> users = new ArrayList<>();
        ArrayList<String> userIdList = (ArrayList<String>) userDAO.userIdList(thisforum);

        for (String uid:userIdList) {
            ArrayList<String> forums = new ArrayList<>();
            for (Forum uf:forumDAO.list(uid)) {
                forums.add(uf.getName());
            }
            User user = userDAO.get(uid);
            user.setForum(forums);
            users.add(user);
        }

        request.setAttribute("sForum", thisforum);
        request.setAttribute("users", users);
        request.getRequestDispatcher("/secretaryPage/userInfoPage.jsp").forward(request, response);
    }

    public void releaseNotices(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String note = request.getParameter("notification");
        String id = request.getParameter("secretaryId");
        String thisforum = secretaryDAO.getSubForum(id);
        Notification notification = new Notification();
        notification.setSubForum(thisforum);
        notification.setMessage(note);
        notiDAO.add(notification);
        request.getRequestDispatcher("/secretaryPage/releaseNotesPage.jsp").forward(request, response);
    }
}
