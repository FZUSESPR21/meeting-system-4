package servlet;

import dao.UserDAO;
import dao.UserDAOImpl;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import pojo.User;

import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        UserDAO userDAO = new UserDAOImpl();
        User user = new User();
        if (userDAO.get(id)!=null){
            request.setAttribute("error","用户名已存在！");
            request.getRequestDispatcher("/registerPage/1.jsp");

        } else {
            user.setId(id);
            userDAO.add(user,password);
            request.setAttribute("log","注册成功！");
            request.getRequestDispatcher("userPage/1.jsp");
        }
    }
}
