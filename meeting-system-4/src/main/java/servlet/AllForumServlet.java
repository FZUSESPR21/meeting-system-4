package servlet;

import dao.ForumDAO;
import dao.ForumDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;


@WebServlet("/AllForumServlet")
public class AllForumServlet extends HttpServlet {

    private ForumDAO forumDAO = new ForumDAOImpl();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List forums = (List) req.getAttribute("forums");// 取得共享里面的数据
        if (forums == null){
            forumDAO = new ForumDAOImpl();
            forums = forumDAO.list();
        }
        // 接收分页页面传递过来的页面数
        String strNum = req.getParameter("pageNum");
        int pageNum = 0;// 表示当前要显示的页面数
        int maxPage = 0;// 最大页
        int pageCount = forums.size();// 得到查询出来的所有数据的数目
        // 如果是第一次执行,就会接收不到数据
        if (strNum == null) {
            strNum = "0";
        } else {// 接收到了用户点击的第几(pageNum)页
            pageNum = Integer.parseInt(strNum);
        }
        // 计算出要分多少页
        if (pageCount % 4 == 0) {
            maxPage = pageCount / 4;
        } else {
            maxPage = pageCount / 4 + 1;
        }
        req.setAttribute("maxPage", maxPage);// 存储最大页数
        req.setAttribute("pageNum", pageNum);// 将当前页面存储起来,给分页页面使用
        req.setAttribute("forums", forums);
        req.getRequestDispatcher("/1.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
