package dao;

import pojo.SubChairman;
import pojo.User;
import util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SubChairmanDAOImpl implements SubChairmanDAO{
    @Override
    public int getTotal() {
        int total = 0;
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select count(*) from subchairman";
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
    public SubChairman get(int id) {
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
    public SubChairman get(String name) {
        return null;
    }

    @Override
    public SubChairman get(String name, String password) {
        return null;
    }

    @Override
    public String getPassword(String id){
        String password = new String();
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select * from subchairman where id = '"+id+"'";
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                password =rs.getString("password");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return password;
    }
}
