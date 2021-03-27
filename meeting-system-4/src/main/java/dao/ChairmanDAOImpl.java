package dao;


import pojo.Forum;
import pojo.Notification;
import pojo.User;
import util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class ChairmanDAOImpl implements ChairmanDAO{
    @Override
    public int getTotal() {
        int total = 0;
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select count(*) from user";
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;
    }






    @Override
    public void delete(int id) {

    }

    @Override
    public User get(int id) {
        return null;
    }

    @Override
    public int getNum() {

        return 0;
    }

    @Override
    public int list(int start, int count) {
        return 0;
    }

    @Override
    public boolean isExist(String name) {
        return false;
    }

    @Override
    public User get(String name) {
        return null;
    }

    @Override
    public User get(String name, String password) {
        return null;
    }
}
