package dao;

import pojo.Forum;
import pojo.User;
import util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ForumDAOImpl implements ForumDAO{
    @Override
    public int getTotal() {
        return 0;
    }

    @Override
    public void add(Forum forum) {

    }

    @Override
    public void update(Forum forum) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public User get(int id) {
        return null;
    }

    @Override
    public List<Forum> list(String Userid) {
        List<Forum> l  = new ArrayList<Forum>();
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select a.* from subforuminfo as a,followedforum as b where a.id=b.id AND a.id='"+Userid+"'";
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                String name=rs.getString("name");
                String subchairman=rs.getString("subchairman");
                String secretary=rs.getString("secretary");
                String topic =rs.getString("topic");
                String time= rs.getString("time");
                Forum forum=new Forum();
                forum.setName(name);
                forum.setSecretary(secretary);
                forum.setSubChairman(subchairman);
                forum.setTopic(topic);
                forum.setTime(time);
                l.add(forum);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return l;
    }

    @Override
    public List<Forum> list(int start, int count) {
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
