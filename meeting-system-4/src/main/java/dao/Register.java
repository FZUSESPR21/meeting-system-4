package dao;

import pojo.User;

import java.util.List;

public class Register {
    public  Register(String id, String password, List<String>forums){
        UserDAO userDAO = new UserDAOImpl();
        User user = new User();
        user.setId(id);
        user.setName("用户");
        userDAO.add(user, password);
        userDAO.update(forums,id);
    }
    Register(){

    }
}
