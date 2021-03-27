package dao;

import util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SecretaryDAOImpl implements SecretaryDAO{

    public String getSubForum(String id) {
        String subForum = "";
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select subforum from secretary where id='" + id + "'";
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                subForum = rs.getString("subforum");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return subForum;
    }

    @Override
    public String getPassword(String id){
        String password = new String();
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select * from secretary where id = '"+id+"'";
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

