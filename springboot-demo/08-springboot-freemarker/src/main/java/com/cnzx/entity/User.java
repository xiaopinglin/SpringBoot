package com.cnzx.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class User {
    private Integer userId;
    private String userName;
    private Integer age;
}
