package dao;

import pojo.Forum;
import pojo.Notification;
import pojo.User;
import util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class NotiDAOImpl implements NotiDAO{

    @Override
    public int getTotal() {
        return 0;
    }

    @Override
    public void add(Notification notification) {

    }

    @Override
    public void update(Notification notification) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public User get(int id) {
        return null;
    }

    @Override
    public List<Notification> list(String Userid) {
        List<Notification> l  = new ArrayList<Notification>();
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select a.* from forumnotice as a,followedforum as b where a.subforum=b.subforum AND b.userid='"+Userid+"'";
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                String subforum=rs.getString("subforum");
                String message=rs.getString("message");
                Notification notification=new Notification();
                notification.setMessage(message);
                notification.setSubForum(subforum);
                l.add(notification);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return l;
    }

    @Override
    public List<Notification> list(int start, int count) {
        return null;
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
