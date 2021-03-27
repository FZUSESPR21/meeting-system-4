package pojo;

public class Forum {
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSecretary() {
        return secretary;
    }

    public void setSecretary(String secretary) {
        this.secretary = secretary;
    }

    public String getSubChairman() {
        return subChairman;
    }

    public void setSubChairman(String subChairman) {
        this.subChairman = subChairman;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    private String name;
    private String secretary;
    private String subChairman;
    private String time;
    private String topic;
}
