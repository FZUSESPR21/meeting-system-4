package dao;

import pojo.Chairman;
import util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public interface ChairmanDAO {
    int getTotal();
    void delete(int id) ;
    Chairman get(int id);
    int getNum();
    int list(int start, int count) ;
    boolean isExist(String name) ;
    Chairman get(String name) ;
    Chairman get(String name, String password) ;
    String getPassword(String id);
}
