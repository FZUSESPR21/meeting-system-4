package servlet;

import dao.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import pojo.Forum;
import pojo.User;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String password = req.getParameter("password");
        List<String> forums= new ArrayList<String>();
        for (int i = 0; i < 3 ;i++){
            forums.add(req.getParameter("type"+i));
        }
        Register register = new Register(id,password,forums);
        req.getRequestDispatcher("/loginPage/login.jsp").forward(req,resp);
    }
}
