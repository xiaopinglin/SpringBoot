package com.cnzx.mapper;

import com.cnzx.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {
    // 查询
    List<User> selectUserAll();
    // 根据Id查询
    User selectUserById(Integer Id);
    // 新增
    void insertUser(User user);
    // 修改
    void updateUser(User user);
    // 删除
    void deleteUserById(Integer Id);
}
