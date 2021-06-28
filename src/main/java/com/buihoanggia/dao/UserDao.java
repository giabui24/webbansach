package com.buihoanggia.dao;

import java.util.List;

import com.buihoanggia.entity.User;

public interface UserDao {

    User findByUserName(String userName);
    void save(User user);
    List<User> LayAllUser();
}
