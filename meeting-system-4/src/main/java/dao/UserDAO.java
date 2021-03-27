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
    List<String> userIdList(String forum);//返回该会议的关注者的id列表
}
