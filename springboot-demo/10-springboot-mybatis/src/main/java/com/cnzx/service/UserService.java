package com.cnzx.service;

import com.cnzx.entity.User;

import java.util.List;

public interface UserService {

    List<User> findUserAll();

    User findUserById(Integer id);

    void addUser(User user);

    void updateUser(User user);

    void deleteUserById(Integer id);
}
