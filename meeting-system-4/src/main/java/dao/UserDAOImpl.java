package dao;

import pojo.Forum;
import pojo.User;
import util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
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
            ps.setString(1, user.getId());
            ps.setString(2, password);
            ps.setString(3, user.getName());
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(List<String> forums,String id) {
        for (int i = 0;i<forums.size();i++){
            String sql = "insert into followedforum values(? ,?)";
            try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql)) {
                ps.setString(1, id);
                ps.setString(2, forums.get(i));
                ps.execute();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
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

    public List<String> userIdList(String forum) {
        List<String> userIdList = new ArrayList<>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try{
            conn = DBUtil.getConnection();
            stmt = conn.createStatement();
            String sql = "select * from followedforum where subforum='" + forum + "'";
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                userIdList.add(rs.getString("userid"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, stmt, conn);
        }
        return userIdList;
    }

    @Override
    public List<User> list() {
        return null;
    }
}
