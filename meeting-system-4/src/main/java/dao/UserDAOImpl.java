package dao;

import pojo.Forum;
import pojo.User;
import util.DBUtil;

import java.sql.*;
import java.util.List;

public class UserDAOImpl implements UserDAO{

    @Override
    public int getTotal() {
        return 0;
    }

    @Override
    public void add(User user, String password) {
        String sql = "insert into user values(? ,? ,?)";
        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(0, user.getId());
            ps.setString(1, password);
            ps.setString(2, user.getName());
            ps.execute();
        } catch (SQLException e) {

            e.printStackTrace();
        }
    }

    @Override
    public void update(User user) {

    }

    @Override
    public void delete(String id) {

    }

    @Override
    public String getPassword(String id){
        String password = new String();
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select * from user where id = \'"+id+"\'";
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                String password1 =rs.getString("password");
                password = password1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return password;
    }

    @Override
    public User get(String id) {
        User user = new User();
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select * from user where id = \'"+id+"\'";
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                String name=rs.getString("name");
                String id1= rs.getString("id");
               user.setName(name);
               user.setId(id1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }




    @Override
    public List<User> list() {
        return null;
    }
}
