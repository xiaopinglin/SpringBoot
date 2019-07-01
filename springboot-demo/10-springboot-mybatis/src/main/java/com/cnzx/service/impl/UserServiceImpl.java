package com.cnzx.service.impl;

import com.cnzx.entity.User;
import com.cnzx.mapper.UserMapper;
import com.cnzx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    public List<User> findUserAll() {
        return this.userMapper.selectUserAll();
    }

    public User findUserById(Integer id) {
        return this.userMapper.selectUserById(id);
    }

    public void addUser(User user) {
        this.userMapper.insertUser(user);
    }

    public void updateUser(User user) {
        this.userMapper.updateUser(user);
    }

    public void deleteUserById(Integer id) {
        this.userMapper.deleteUserById(id);
    }
}
