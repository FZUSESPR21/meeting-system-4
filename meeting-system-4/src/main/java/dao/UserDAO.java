package dao;

import pojo.Forum;
import pojo.User;

import java.util.List;

public interface UserDAO {
    int getTotal();
    void add(User user);
    void update(User user);
    void delete(String id) ;
    User get(String id);
    String getPassword(String id);
    List<User> list();
}
