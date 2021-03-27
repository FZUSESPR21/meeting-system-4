package dao;

import pojo.Notification;
import pojo.User;

import java.util.List;

public interface NotiDAO {
    int getTotal();
    void add(Notification notification);
    void update(Notification notification);
    void delete(int id) ;
    User get(int id);
    List<Notification> list(String Userid);
    List<Notification> list(int start, int count) ;
    boolean isExist(String name) ;
    User get(String name) ;
    User get(String name, String password) ;
}
