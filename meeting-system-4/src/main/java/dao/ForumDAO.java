package dao;

import pojo.Forum;
import pojo.User;

import java.util.List;

public interface ForumDAO {
    int getTotal();
    void add(Forum forum);
    void update(Forum forum);
    void delete(int id) ;
    User get(int id);
    List<Forum> list();
    List<Forum> list(String Userid);
    List<Forum> list(int start, int count) ;
    boolean isExist(String name) ;
    User get(String name) ;
    User get(String name, String password) ;
}