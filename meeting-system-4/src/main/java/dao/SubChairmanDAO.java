package dao;

import pojo.SubChairman;

public interface SubChairmanDAO {
    int getTotal();
    String getSubForum(String id);
    void delete(int id) ;
    SubChairman get(int id);
    int getNum();
    int list(int start, int count) ;
    boolean isExist(String name) ;
    SubChairman get(String name) ;
    SubChairman get(String name, String password) ;
}
