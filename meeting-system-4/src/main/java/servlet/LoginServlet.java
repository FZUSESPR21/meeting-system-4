package servlet;

import dao.UserDAO;
import dao.UserDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO user = new UserDAOImpl();

        String type = request.getParameter("type");
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        if (type.equals("user")) {
            if (password.equals(user.getPassword(id))) {
                request.getRequestDispatcher("/mainPage/1.jsp").forward(request, response);
            } else {
                request.setAttribute("id", id);
                request.setAttribute("error", "输入的用户名或密码错误！请重新输入");
                request.getRequestDispatcher("/loginPage/login.jsp").forward(request, response);
            }
        }

        if (type.equals("secretary")) {
            if (password.equals(user.getPassword(id))) {
                request.getRequestDispatcher("/secretaryPage/userInfoPage.jsp?secretaryId="+id).forward(request, response);
            } else {
                request.setAttribute("id", id);
                request.setAttribute("error", "输入的用户名或密码错误！请重新输入");
                request.getRequestDispatcher("/loginPage/login.jsp").forward(request, response);
            }
        }

        if (type.equals("subchairman")) {
            if (password.equals(user.getPassword(id))) {
                request.getRequestDispatcher("/subchairmanPage/peopleNumPage.jsp?subchairmanId="+id).forward(request, response);
            } else {
                request.setAttribute("id", id);
                request.setAttribute("error", "输入的用户名或密码错误！请重新输入");
                request.getRequestDispatcher("/loginPage/login.jsp").forward(request, response);
            }
        }

        if (type.equals("chairman")) {
            if (password.equals(user.getPassword(id))) {
                request.getRequestDispatcher("/chairmanPage/1.jsp").forward(request, response);
            } else {
                request.setAttribute("id", id);
                request.setAttribute("error", "输入的用户名或密码错误！请重新输入");
                request.getRequestDispatcher("/loginPage/login.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
