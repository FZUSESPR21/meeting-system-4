package dao;


import pojo.Forum;
import pojo.User;

import java.util.List;

public interface ChairmanDAO {
    int getTotal();

    void delete(int id) ;
    User get(int id);
    int getNum();
    int list(int start, int count) ;
    boolean isExist(String name) ;
    User get(String name) ;
    User get(String name, String password) ;
}
