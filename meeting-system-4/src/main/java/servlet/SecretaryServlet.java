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
import java.util.List;
@WebServlet(name = "SecretaryServlet", value = "/SecretaryServlet")
public class SecretaryServlet extends HttpServlet {
    private UserDAO userDAO = new UserDAOImpl();
    private ForumDAO forumDAO = new ForumDAOImpl();
    private NotiDAO notiDAO = new NotiDAOImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        queryUserInfo(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        releaseNotices(request, response);
    }

    public void queryUserInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String thisforum = "分论坛1";
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

        request.setAttribute("users", users);
        request.getRequestDispatcher("/secretaryPage/userInfoPage.jsp").forward(request, response);
    }

    public void releaseNotices(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("ghgjlkjhg");
        String note = request.getParameter("notification");
        String thisforum = "分论坛1";
        Notification notification = new Notification();
        notification.setSubForum(thisforum);
        notification.setMessage(note);
        notiDAO.add(notification);
        request.getRequestDispatcher("/secretaryPage/releaseNotesPage.jsp").forward(request, response);
    }
}
