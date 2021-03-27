package pojo;

import java.util.List;

public class User {
    private String id;
    private String name;
    private List<String> forum;

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public List<String> getForum() {
        return forum;
    }

    public void setForum(List<String> forum) {
        this.forum = forum;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setId(String id) {
        this.id = id;
    }
}
